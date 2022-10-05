@ require_POST
def comment_create(request, article_pk):
    if not request.user.is_authenticated:
        return redirect('accounts:login')

    article = get_object_or_404(Article, pk= (a)article_pk)
    comment_form = CommentForm(request.POST)
    if comment_form.is_valid():
        comment = comment_form.save(__(b)__) commit=Fasle
        comment.author = __(c)__ request.user
        comment.article = __(d)__ article
        __(e)__ comment.save()
        return redirect('articles:detail', article.pk)
    
    context = {
        'article': article,
        'comment_form': comment_form,
    }
    return render(request, 'articles/detail.html', context)

