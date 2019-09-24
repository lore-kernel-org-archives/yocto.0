Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C082E00B33; Tue, 24 Sep 2019 05:36:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E85DCE009E6
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 05:36:29 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id z67so1501690qkb.12
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 05:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gc1UsHnAgtGctekOgUgUm1D/NVfV2oJ4Mr3iH/r00Cc=;
	b=xBD4sSljUIocGck6aZBetE0OWpWCQgWLRoJR40zVWV4WEwWVQd5FtOMZKVyHig6Moi
	jnyKmbd3WAiwuan7FyLMHfSve269BSE8RxNvO74wLPg6GmVfHTQ5FRdeojSxUbpLhqbv
	6AW2DJeAvAHxwqUyyUxROacQkCYVZ7gnoK+ln4HmyLGCz8L8AmMlg/NOBY0KIk7W8qAN
	3OzWW5AiUdZb/t2nd1H/Q7OZkA0xVJC5DIm+VZMIi7YuJdxF2D8nrEs2HDlTp+8nszOo
	naFhr+3Vz6u4G9+QQHelKdTW7QNrFB/bCxlW0sLLQzbajXaDcPppUk5dd9Pl4HS3EIuG
	uZ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gc1UsHnAgtGctekOgUgUm1D/NVfV2oJ4Mr3iH/r00Cc=;
	b=kKK2kpny4qhG2dUAsKp9BYkwee9I+cTY8pbE1mJ/6sOx5WybWR6GcJQgnQXkrYF9sr
	MIupZxP8NOgHQDFJFu1doV4Pfz9vvD+UTYcgbL1rovzK92m4ciBoPvx6xSAmsFuG+O/r
	dJsbf/wolJvwKefyndIa3nAYktp8NOJSaQ08+FZI64clX5eaCQCMvK06u4PKgBMEzsNi
	1kwRZ0ATNIilY0Y3502DlFtSw5t/7a0Z+p89Kp45kR0x0doUS4dkqTmbp8ted16xySLN
	R3xntMqG0xmIqXo3J+VZuuN0bG6ge22F+tbrLDFkjmhoFW0oFtjAI3PJQ4st6A9XKkGW
	x0Lw==
X-Gm-Message-State: APjAAAWW1qc3JqkJoZIScsyBepGSs8p4zq7VjRyldWc8h1/lkatZk44M
	VCHSpCsnifXwmYeeNfGgV3xOG9YRYm2nRh+Y7oeMhg==
X-Google-Smtp-Source: APXvYqxne2pp9R+WeNFpLd+VCzMaQRa0EIL7Zdc0jWH4seTeVupQsATWJvvppo0K9xdUUuaoOmDzK64mXG9npPznUOk=
X-Received: by 2002:a37:9b0e:: with SMTP id d14mr1991522qke.315.1569328589016; 
	Tue, 24 Sep 2019 05:36:29 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=imYTN+JCcHZU4eUfkur1wxwDRNnQzg6Y+W+OUrHar0R9zA@mail.gmail.com>
In-Reply-To: <CA+4=imYTN+JCcHZU4eUfkur1wxwDRNnQzg6Y+W+OUrHar0R9zA@mail.gmail.com>
From: Thomas Goodwin <btgoodwin@geontech.com>
Date: Tue, 24 Sep 2019 08:36:17 -0400
Message-ID: <CABudRdy-ut1=4gReM6TEqwx0NWJT=w7eiCP_DOKQS4qwV_Hpcg@mail.gmail.com>
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: yocto@yoctoproject.org, Simon Spannagel <simon.spannagel@cern.ch>,
	bunk@stusta.de
Subject: Re: gitlab-ci helper scripts for OpenEmbedded builds
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
X-List-Received-Date: Tue, 24 Sep 2019 12:36:31 -0000
Content-Type: multipart/alternative; boundary="00000000000015a5d605934bc91c"

--00000000000015a5d605934bc91c
Content-Type: text/plain; charset="UTF-8"

Hi Yann,

Thanks for sharing! We're working through something similar using a tweak
to the CROPS docker containers and GitLab-CI (we started with autobuilder
2, so we've actually merged quite a bit of that experience with our GitLab
setup).

Using docker runners as our cluster, we setup volume mounts to the host
system for caching the shared state and downloads directories (as well as
other artifacts upon successful build).  As part of the CI setup, we then
insert a build/conf/auto.conf file that enforces the usage of that volume
(DL_DIR and SSTATE_DIR).  At the deploy stage (package feeds, etc. like
you're doing), we did the same thing -- copy out to that path so that it
ends up on the network share rather than the container.

Also like you, we're using the "include" and "extends" instructions
throughout so that we have a top-level "common" set of CI YAML includes
alongside a growing set of repositories for each machine-specific build.
Each of those repositories follows the Yocto release branching style so
that we can trace build success to newer releases by simply creating a
branch and using the branch name for the initial clone of the layers.

One thing that came directly from our autobuilder 2 experience is a way to
inject extra variables into the autoconf.  AB2 called this *EXTRAARGS*,
which was simply a list of variables to add.  For our common CI "setup"
stage, we check for a file of the same name (extraargs.conf) and append it
to the auto.conf if it exists.  In this way our downstream projects can
simply include that file if necessary and version control it as new release
branches are added.

One of the drawbacks we've seen in going this route is that every
repository has its own build timeout limit, which is always laughably
small.  There's a backlog issue on GitLab for a global definition of this
value, but it's slated for 12.7 (I think).

I'm hoping to put a write-up out soon with examples for how this all worked
together, but I want to hold off until we can get the CROPS changes we
needed upstreamed in a way that doesn't break those containers for everyone
else (something about the entrypoint doesn't appreciate the runner's
bash/shell detection script).

Cheers,

Thomas

Geon Technologies, LLC


On Mon, Sep 23, 2019 at 5:50 PM Yann Dirson <yann.dirson@blade-group.com>
wrote:

> Hi all,
>
> We released our scripts to help in setting up continuous integration
> of a yocto-based project
> using Gitlab-CI.  You'll find the repository at
> https://github.com/BladeGroup/gitlab-oe
>
> Although we're using this in production, it still has a couple of
> rough edges and may need
> tuning for different usages.  We'd love to hear how well it fits (or
> doesn't fit ;) with other use
> cases, and will gladly consider evolutions to make it more generally
> usable.
>
> Best regards,
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000015a5d605934bc91c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Yann,<input name=3D"virtru-metadata" t=
ype=3D"hidden" value=3D"{&quot;email-policy&quot;:{&quot;state&quot;:&quot;=
closed&quot;,&quot;expirationUnit&quot;:&quot;days&quot;,&quot;disableCopyP=
aste&quot;:false,&quot;disablePrint&quot;:false,&quot;disableForwarding&quo=
t;:false,&quot;enableNoauth&quot;:false,&quot;persistentProtection&quot;:fa=
lse,&quot;expandedWatermarking&quot;:false,&quot;expires&quot;:false,&quot;=
isManaged&quot;:false},&quot;attachments&quot;:{},&quot;compose-id&quot;:&q=
uot;21&quot;,&quot;compose-window&quot;:{&quot;secure&quot;:false}}"><div><=
br></div><div>Thanks for sharing! We&#39;re working through something simil=
ar using a tweak to the CROPS docker containers and GitLab-CI (we started w=
ith autobuilder 2, so we&#39;ve actually merged quite a bit of that experie=
nce with our GitLab setup).</div><div><br></div><div>Using docker runners a=
s our cluster, we setup volume mounts to the host system for caching the sh=
ared state and downloads directories (as well as other artifacts upon succe=
ssful build).=C2=A0 As part of the CI setup,=C2=A0we then insert a build/co=
nf/auto.conf file that enforces the usage of that volume (DL_DIR and SSTATE=
_DIR).=C2=A0 At the deploy stage (package feeds, etc. like you&#39;re doing=
), we did the same thing -- copy out to that path so that it ends up on the=
 network share rather than the container.</div><div><br></div><div>Also lik=
e you, we&#39;re using the &quot;include&quot; and &quot;extends&quot; inst=
ructions throughout so that we have a top-level &quot;common&quot; set of C=
I YAML includes alongside a growing set of repositories for each machine-sp=
ecific build.=C2=A0 Each of those repositories follows the Yocto release br=
anching style so that we can trace build success to newer releases by simpl=
y creating a branch and using the branch name for the initial clone of the =
layers.</div><div><br></div><div>One thing that came directly from our auto=
builder 2 experience is a way to inject extra variables into the autoconf.=
=C2=A0 AB2 called this <i>EXTRAARGS</i>, which was simply a list of variabl=
es to add.=C2=A0 For our common CI &quot;setup&quot; stage, we check for a =
file of the same name (extraargs.conf) and append it to the auto.conf if it=
 exists.=C2=A0 In this way our downstream projects can simply include that =
file if necessary and version control it as new release branches are added.=
</div><div><br></div><div>One of the drawbacks we&#39;ve seen in going this=
 route is that every repository has its own build timeout limit, which is a=
lways laughably small.=C2=A0 There&#39;s a backlog issue on GitLab for a gl=
obal definition of this value, but it&#39;s slated for 12.7 (I think).</div=
><div><br></div><div>I&#39;m hoping to put a write-up out soon with example=
s for how this all worked together, but I want to hold off until we can get=
 the CROPS changes we needed upstreamed in a way that doesn&#39;t break tho=
se containers for everyone else (something about the entrypoint doesn&#39;t=
 appreciate the runner&#39;s bash/shell detection script).</div><div><br></=
div><div>Cheers,</div><div><br></div><div>Thomas</div><div><br></div><div>G=
eon Technologies, LLC</div><div><br></div><div></div></div><br><div class=
=3D"gmail_quote" style=3D""><div dir=3D"ltr" class=3D"gmail_attr">On Mon, S=
ep 23, 2019 at 5:50 PM Yann Dirson &lt;<a href=3D"mailto:yann.dirson@blade-=
group.com">yann.dirson@blade-group.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hi all,<br>
<br>
We released our scripts to help in setting up continuous integration<br>
of a yocto-based project<br>
using Gitlab-CI.=C2=A0 You&#39;ll find the repository at<br>
<a href=3D"https://github.com/BladeGroup/gitlab-oe" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/BladeGroup/gitlab-oe</a><br>
<br>
Although we&#39;re using this in production, it still has a couple of<br>
rough edges and may need<br>
tuning for different usages.=C2=A0 We&#39;d love to hear how well it fits (=
or<br>
doesn&#39;t fit ;) with other use<br>
cases, and will gladly consider evolutions to make it more generally usable=
.<br>
<br>
Best regards,<br>
-- <br>
Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" target=3D"_blank">y=
ann@blade-group.com</a>&gt;<br>
Blade / Shadow -- <a href=3D"http://shadow.tech" rel=3D"noreferrer" target=
=3D"_blank">http://shadow.tech</a><br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--00000000000015a5d605934bc91c--
