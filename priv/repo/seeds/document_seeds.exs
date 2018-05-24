alias JsonApi.Repo
alias JsonApi.Management.Document

Repo.insert!(%Document{
    name: "test name",
    content: "test content",
    view_count: 0,
    published: false,
    project_id: 1
})