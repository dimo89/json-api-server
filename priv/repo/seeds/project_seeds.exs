alias JsonApi.Repo
alias JsonApi.Management.Project

Repo.insert!(%Project{
  title: "title",
  description: "description"
})