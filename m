Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFF53E00D32; Tue, 17 Oct 2017 07:12:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B854BE00D35
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 07:12:10 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id b189so4136852wmd.4
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 07:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=22+iyHHggiuegKudKeWnfyk7l0bczHBA4lFTXta9zI4=;
	b=ARLYpG15Dl9FGj8+0UftS6ckVLh3K8MiUMfWnjl4M7pTajFAwT8xKblQ8vw9AlFbeZ
	LvsiXNVMBRT3+dpyU8P7pxJGQeZfROFJ1+0OVLxBA7N80K1jb307D28xUt1EDXct8PzV
	5hS4RE3xbdzwMKA+CwRqZ9xygncZ6pNFin7VLrhygAEjHgsBeNJl7aIJ6xxGEKvrfGbN
	WPrVgPz/f3EO8mU0lJ+qNiaUSPi9Z6LBh9cf54iX/Il2xPRSGcoZwGstTCuakHFKrs/s
	tq2Yg8dtTwQji5xrufDp9qigntKfq/61hGXdCjCWACxJUp1ZtxB2vT3LCrnFeEtj/3Zn
	Cmyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=22+iyHHggiuegKudKeWnfyk7l0bczHBA4lFTXta9zI4=;
	b=Fd+jwKkNA6H1bkG06q3+8zCBdJ2AA1WbE/f8qzo6C+HvCWKhkR20QByja7tl8uA3GE
	A+rO9nduMWGP3MiW2BL+23+xSoftrweKToIhtppv4al+5O/VXr2nQJMInVhtS2ScBNlw
	6Th+y6BOKX/RRnIvujMiY9hiWIpw/IUd3nqOGbSBFK7Koe6kz1sb0jkJah7Q7mtWtLUi
	ai8iMyG5+axb7eTk3BeGHLXN2tiv1XIaWmSbDOxGsBLLRTGcYIIrPn4z66ZEDw/MJu+9
	FHoMUZgD7FAL/q0Z6txB7WQNYJ2+F+hje+fgciTM96PZRl/+SZGB5jbWQbgY3O6RZv1q
	hM0g==
X-Gm-Message-State: AMCzsaWOakNRRrgiMmz+pWr0F4BYySt+jtGQjp1v7asG11cSxIXHkfY/
	9SKg0gMwrSIGfl5wW1YiTq4wgXfLYYJXTtGX3cU=
X-Google-Smtp-Source: ABhQp+S3nm2X7XZ1ksGlw9uQ4zGSBXqkH30e74NgCMjBzikiPDZRgxV/l1rrFhG7xmRrHjCA+n+fO/CTpfc8oBYWA6E=
X-Received: by 10.28.211.69 with SMTP id k66mr3642603wmg.1.1508249529741; Tue,
	17 Oct 2017 07:12:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.183.212 with HTTP; Tue, 17 Oct 2017 07:12:08 -0700 (PDT)
In-Reply-To: <20171017133121.19524-1-git@andred.net>
References: <20171017133121.19524-1-git@andred.net>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 17 Oct 2017 16:12:08 +0200
Message-ID: <CA+chaQcKnSR81PFJZfRkE0RphmuuGvGGD-B=+m6Z3ELxVE=+Ug@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <git@andred.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [pyro][bitbake][PATCH] bitbake: Replace deprecated git branch parameter "--set-upstream"
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
X-List-Received-Date: Tue, 17 Oct 2017 14:12:12 -0000
Content-Type: multipart/alternative; boundary="001a114672fc740e81055bbeb58e"

--001a114672fc740e81055bbeb58e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It should go to bitbake-devel ML and the subject should say bitbake branch
(which is 1.34 not pyro).

On Tue, Oct 17, 2017 at 3:31 PM, Andr=C3=A9 Draszik <git@andred.net> wrote:

> From: Andre Rosa <andre.rosa@lge.com>
>
> Since 2017-08-17 (git version 2.14.1.473.g3ec7d702a) using deprecated
> git branch parameter "--set-upstream" causes a fetcher error. Replace
> it by "--set-upstream-to".
>
> https://git.kernel.org/pub/scm/git/git.git/commit/?id=3D
> 52668846ea2d41ffbd87cda7cb8e492dea9f2c4d
> says, it's deprecated since 2012-08-30 so hopefully all still supported
> host distributions have new enough git to support "--set-upstream-to".
>
> ERROR: PACKAGE do_unpack: Fetcher failure: ...;
> git -c core.fsyncobjectfiles=3D0 branch --set-upstream master origin/mast=
er
> failed with exit code 128, output:
> fatal: the '--set-upstream' option is no longer supported. Please use
> '--track' or '--set-upstream-to' instead.
>
> ERROR: PACKAGE do_unpack: Function failed: base_do_unpack
>
> (Bitbake rev: 2ab50074c1a6c56a8a178755de108447d7b7acaf)
>
> Signed-off-by: Andre Rosa <andre.rosa@lge.com>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> (cherry picked from commit 20d0282c6048fe11b303e538dbf9109ccb0c467d)
> Signed-off-by: Andr=C3=A9 Draszik <adraszik@tycoint.com>
> ---
>  bitbake/lib/bb/fetch2/git.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index 2550bde838..7442f84414 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -326,7 +326,7 @@ class Git(FetchMethod):
>                  branchname =3D  ud.branches[ud.names[0]]
>                  runfetchcmd("%s checkout -B %s %s" % (ud.basecmd,
> branchname, \
>                              ud.revisions[ud.names[0]]), d,
> workdir=3Ddestdir)
> -                runfetchcmd("%s branch --set-upstream %s origin/%s" %
> (ud.basecmd, branchname, \
> +                runfetchcmd("%s branch %s --set-upstream-to origin/%s" %
> (ud.basecmd, branchname, \
>                              branchname), d, workdir=3Ddestdir)
>              else:
>                  runfetchcmd("%s checkout %s" % (ud.basecmd,
> ud.revisions[ud.names[0]]), d, workdir=3Ddestdir)
> --
> 2.15.0.rc1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114672fc740e81055bbeb58e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It should go to bitbake-devel ML and the subject should sa=
y bitbake branch (which is 1.34 not pyro).</div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On Tue, Oct 17, 2017 at 3:31 PM, Andr=C3=A9 =
Draszik <span dir=3D"ltr">&lt;<a href=3D"mailto:git@andred.net" target=3D"_=
blank">git@andred.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">From: Andre Rosa &lt;<a href=3D"mailto:andre.rosa@lge.com">andre.rosa@lg=
e.com</a>&gt;<br>
<br>
Since 2017-08-17 (git version 2.14.1.473.g3ec7d702a) using deprecated<br>
git branch parameter &quot;--set-upstream&quot; causes a fetcher error. Rep=
lace<br>
it by &quot;--set-upstream-to&quot;.<br>
<br>
<a href=3D"https://git.kernel.org/pub/scm/git/git.git/commit/?id=3D52668846=
ea2d41ffbd87cda7cb8e492dea9f2c4d" rel=3D"noreferrer" target=3D"_blank">http=
s://git.kernel.org/pub/<wbr>scm/git/git.git/commit/?id=3D<wbr>52668846ea2d4=
1ffbd87cda7cb8e49<wbr>2dea9f2c4d</a><br>
says, it&#39;s deprecated since 2012-08-30 so hopefully all still supported=
<br>
host distributions have new enough git to support &quot;--set-upstream-to&q=
uot;.<br>
<br>
ERROR: PACKAGE do_unpack: Fetcher failure: ...;<br>
git -c core.fsyncobjectfiles=3D0 branch --set-upstream master origin/master=
 failed with exit code 128, output:<br>
fatal: the &#39;--set-upstream&#39; option is no longer supported. Please u=
se &#39;--track&#39; or &#39;--set-upstream-to&#39; instead.<br>
<br>
ERROR: PACKAGE do_unpack: Function failed: base_do_unpack<br>
<br>
(Bitbake rev: 2ab50074c1a6c56a8a178755de1084<wbr>47d7b7acaf)<br>
<br>
Signed-off-by: Andre Rosa &lt;<a href=3D"mailto:andre.rosa@lge.com">andre.r=
osa@lge.com</a>&gt;<br>
Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com">M=
artin.Jansa@gmail.com</a>&gt;<br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org">richard.purdie@<wbr>linuxfoundation.org</a>&gt;<br>
<br>
(cherry picked from commit 20d0282c6048fe11b303e538dbf910<wbr>9ccb0c467d)<b=
r>
Signed-off-by: Andr=C3=A9 Draszik &lt;<a href=3D"mailto:adraszik@tycoint.co=
m">adraszik@tycoint.com</a>&gt;<br>
---<br>
=C2=A0bitbake/lib/bb/fetch2/git.py | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py<br=
>
index 2550bde838..7442f84414 100644<br>
--- a/bitbake/lib/bb/fetch2/git.py<br>
+++ b/bitbake/lib/bb/fetch2/git.py<br>
@@ -326,7 +326,7 @@ class Git(FetchMethod):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0branchname =
=3D=C2=A0 ud.branches[ud.names[0]]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0runfetchcmd(&=
quot;%s checkout -B %s %s&quot; % (ud.basecmd, branchname, \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ud.revisions[ud.names[0]]), d, workdir=3Ddes=
tdir)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 runfetchcmd(&quot;=
%s branch --set-upstream %s origin/%s&quot; % (ud.basecmd, branchname, \<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 runfetchcmd(&quot;=
%s branch %s --set-upstream-to origin/%s&quot; % (ud.basecmd, branchname, \=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0branchname), d, workdir=3Ddestdir)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0runfetchcmd(&=
quot;%s checkout %s&quot; % (ud.basecmd, ud.revisions[ud.names[0]]), d, wor=
kdir=3Ddestdir)<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.15.0.rc1<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114672fc740e81055bbeb58e--
