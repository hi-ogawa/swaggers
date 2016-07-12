# Swagger Editor/UI on Github Page

File/Directory structure:

```
.
├── README.md
├── Makefile
├── .gitmodules
├── swagger-editor (git submodule)
├── swagger-ui (git submodule)
├── doc
│   ├── some-api.swagger.json
│   └── ...
├── index.html
├── editor
│   ├── index.html
│   └── ...
└── ui
     ├── index.html
     └── ...
```

Build:

```
$ make build-editor
$ make build-ui
```

Update submodules:

```
$ git submodule init
$ git submodule update --remote
```

# References

- https://github.com/swagger-api/swagger-editor
- https://github.com/swagger-api/swagger-ui
- git submodule: https://git-scm.com/book/en/v2/Git-Tools-Submodules
- rsync: http://askubuntu.com/questions/56401/backing-up-files-from-specific-folders-in-rsync
