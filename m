Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37769E00BC6; Fri, 11 Sep 2015 07:09:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71D1EE00939
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 07:09:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t8BE9IEB022559
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Sep 2015 07:09:23 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.235.1; Fri, 11 Sep 2015 07:09:16 -0700
To: <maninder1.s@samsung.com>
References: <205051265.113801430888822142.JavaMail.weblogic@epmlwas03a>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <55F2E08B.1010206@windriver.com>
Date: Fri, 11 Sep 2015 09:09:15 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <205051265.113801430888822142.JavaMail.weblogic@epmlwas03a>
Cc: "v.narang@samsung.com" <v.narang@samsung.com>, yocto@yoctoproject.org,
	AKHILESH KUMAR <akhilesh.k@samsung.com>
Subject: Re: [EDT] [PATCH] [prelink-cross] realloc fix memory leak
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 11 Sep 2015 14:09:29 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Merged to the staging branch.

On 5/6/15 12:07 AM, Maninder Singh wrote:
>  EP-F6AA0618C49C4AEDA73BFF1B39950BAB
> 
> Hi Mark,
> 
> Free previously allocated memory if realloc fails.
> 
> Signed-off-by: Maninder Singh <maninder1.s@samsung.com>
> Signed-off-by: Vaneet narang <v.narang@samsung.com>
> Reviewed-by: Akhilesh Kumar <akhilesh.k@samsung.com>
> ---
>  trunk/src/doit.c    |    4 +++-
>  trunk/src/gather.c  |    4 +++-
>  trunk/src/undoall.c |    4 +++-
>  3 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/trunk/src/doit.c b/trunk/src/doit.c
> index c94fc53..0995fce 100644
> --- a/trunk/src/doit.c
> +++ b/trunk/src/doit.c
> @@ -53,7 +53,7 @@ prelink_ent (struct prelink_entry *ent)
>    DSO *dso;
>    struct stat64 st;
>    struct prelink_link *hardlink;
> -  char *move = NULL;
> +  char *move = NULL, *move_temp;
>    size_t movelen = 0;
>  
>    for (i = 0; i < ent->ndepends; ++i)
> @@ -176,9 +176,11 @@ prelink_ent (struct prelink_entry *ent)
>        if (len + sizeof (".#prelink#") > movelen)
>  	{
>  	  movelen = len + sizeof (".#prelink#");
> +	  move_temp = move;
>  	  move = realloc (move, movelen);
>  	  if (move == NULL)
>  	    {
> +		  free(move_temp);
>  	      error (0, ENOMEM, "Could not hardlink %s to %s",
>  		     hardlink->canon_filename, ent->canon_filename);
>  	      movelen = 0;
> diff --git a/trunk/src/gather.c b/trunk/src/gather.c
> index c3d3128..733b49f 100644
> --- a/trunk/src/gather.c
> +++ b/trunk/src/gather.c
> @@ -64,7 +64,7 @@ gather_deps (DSO *dso, struct prelink_entry *ent)
>    const char *argv[6];
>    const char *envp[5];
>    char *line = NULL, *p, *q = NULL;
> -  const char **depends = NULL;
> +  const char **depends = NULL, **depends_temp;
>    size_t ndepends = 0, ndepends_alloced = 0;
>    size_t len = 0;
>    ssize_t n;
> @@ -261,11 +261,13 @@ gather_deps (DSO *dso, struct prelink_entry *ent)
>        if (ndepends == ndepends_alloced)
>  	{
>  	  ndepends_alloced += 10;
> +	  depends_temp = depends;
>  	  depends =
>  	    (const char **) realloc (depends,
>  				     ndepends_alloced * sizeof (char *));
>  	  if (depends == NULL)
>  	    {
> +		  free(depends_temp);
>  	      error (0, ENOMEM, "%s: Could not record dependencies",
>  		     ent->filename);
>  	      goto error_out;
> diff --git a/trunk/src/undoall.c b/trunk/src/undoall.c
> index 90e9240..6163da3 100644
> --- a/trunk/src/undoall.c
> +++ b/trunk/src/undoall.c
> @@ -33,7 +33,7 @@ undo_one (void **p, void *info)
>    DSO *dso;
>    struct stat64 st;
>    struct prelink_link *hardlink;
> -  char *move = NULL;
> +  char *move = NULL, *move_temp;
>    size_t movelen = 0;
>  
>    if (ent->done != 2)
> @@ -116,9 +116,11 @@ undo_one (void **p, void *info)
>        if (len + sizeof (".#prelink#") > movelen)
>  	{
>  	  movelen = len + sizeof (".#prelink#");
> +	  move_temp = move;
>  	  move = realloc (move, movelen);
>  	  if (move == NULL)
>  	    {
> +		  free(move_temp);
>  	      error (0, ENOMEM, "Could not hardlink %s to %s",
>  		     hardlink->canon_filename, ent->canon_filename);
>  	      movelen = 0;
> 


