document.addEventListener("DOMContentLoaded", function () {
    const repoUrl = "https://api.github.com/repos/cristianapneto/material_aulas/contents/";
    const fileListDiv = document.getElementById("file-list");

    function fetchFiles(path = "") {
        const url = `${repoUrl}${path}`;
        fetch(url)
            .then((response) => response.json())
            .then((data) => renderFiles(data))
            .catch((error) => {
                console.error("Error fetching repository contents:", error);
                fileListDiv.textContent = "Failed to load files.";
            });
    }

    function renderFiles(contents) {
        fileListDiv.innerHTML = ""; // Clear previous content

        contents.forEach((item) => {
            const listItem = document.createElement("div");

            if (item.type === "file") {
                const fileLink = document.createElement("a");
                fileLink.textContent = item.name;

                if (item.name.endsWith(".pdf")) {
                    fileLink.href = item.download_url;
                    fileLink.target = "_blank"; // Open in new tab
                } else {
                    fileLink.href = item.html_url;
                    fileLink.target = "_blank";
                }

                listItem.appendChild(fileLink);
            } else if (item.type === "dir") {
                const folderLink = document.createElement("a");
                folderLink.textContent = item.name;
                folderLink.href = "#";
                folderLink.onclick = function (event) {
                    event.preventDefault();
                    fetchFiles(item.path); // Load folder contents
                };

                listItem.appendChild(folderLink);
            }

            fileListDiv.appendChild(listItem);
        });
    }

    fetchFiles(); // Fetch root directory
});
