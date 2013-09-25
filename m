Return-Path: <mulhern@gmail.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A45E01621
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 15:02:48 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id db12so277175veb.14
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 15:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=yVHZW19Uy9Ls21u4ngYiumIRbRoNTdifVxI58Q5pdPU=;
	b=sM/P7c+3Z8ibAYzMq2drgnRYQWSXlgCE3tTYiPv+Lh8otw+7w5Gr0QjkyjMUH684f8
	Popder2pRgQ2iHahOs7OSXIMzoDmDn5yu9bRtZm0HeYgHZY4lgue2Q5JqsKdsdrRezfF
	UpsLojsMvlQVhiLNFh/gf1REIhMj1tCTIaq15CKOMUORGl94BjJHCFCywiz4ZVGc1Lib
	XpL2uqyOlLfD/qojLJVaQcZV7qgZfxQnaRL5XorX4jziAs3IooOAD7HZNopp/qc55ucg
	ENf/MyCUKaVRjwbyLo4b57nLzjXqvrIw0uxhaRetlSjr4vWeJW6Mb4BRy9wgVXcSSyDO
	oe6g==
MIME-Version: 1.0
X-Received: by 10.52.103.101 with SMTP id fv5mr4113552vdb.31.1380146568157;
	Wed, 25 Sep 2013 15:02:48 -0700 (PDT)
Received: by 10.58.161.46 with HTTP; Wed, 25 Sep 2013 15:02:48 -0700 (PDT)
In-Reply-To: <CADM5y7vv4Vvd2tbewtVdURnJ=RVqp2mAbKtsb+aXQ0-oXtgjvw@mail.gmail.com>
References: <1379650814-18256-1-git-send-email-joe@deserted.net>
	<1379650814-18256-2-git-send-email-joe@deserted.net>
	<CADM5y7vv4Vvd2tbewtVdURnJ=RVqp2mAbKtsb+aXQ0-oXtgjvw@mail.gmail.com>
Date: Wed, 25 Sep 2013 18:02:48 -0400
Message-ID: <CADM5y7uXi6webXYPZpRh4GcGwas5q99re5vWGaO53=o7TQ+-5A@mail.gmail.com>
From: mulhern <mulhern@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-security][PATCH 1/2] Bastille: make questions files writable
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
X-List-Received-Date: Wed, 25 Sep 2013 22:02:49 -0000
Content-Type: multipart/alternative; boundary=047d7bacb98eeedd4504e73c69e4

--047d7bacb98eeedd4504e73c69e4
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: mulhern <mulhern@gmail.com>
Date: Wed, Sep 25, 2013 at 6:00 PM
Subject: Re: [yocto] [meta-security][PATCH 1/2] Bastille: make questions
files writable
To: Joe MacDonald <joe@deserted.net>


Hi!

Thanks for the patch, however the problem addressed by patch 1/2 already
has a fix in progress, see
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5177.

- mulhern


On Fri, Sep 20, 2013 at 12:20 AM, Joe MacDonald <joe@deserted.net> wrote:

> do_install would fail when trying to update the questions files during the
> set_required_questions.py stage since the default permissions in the
> Questions/ did not allow writing.  So the shutil.move() in
> set_required_questions.py would raise and IOError:
>
> Fatal error reading config file: [Errno 13] Permission denied:
> '[...]/bastille/3.2.1-r0/Bastille/Questions/AccountSecurity.txt'
>
> for each Questions file.  The most direct approach seems to work
> reasonably well here, jump in before set_required_questions.py gets run
> and make sure we have write permission on the files we're going to write.
>
> Signed-off-by: Joe MacDonald <joe@deserted.net>
> ---
>  recipes-security/bastille/bastille_3.2.1.bb |    1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-security/bastille/bastille_3.2.1.bbb/recipes-security/bastille/
> bastille_3.2.1.bb
> index ef697d7..d506399 100644
> --- a/recipes-security/bastille/bastille_3.2.1.bb
> +++ b/recipes-security/bastille/bastille_3.2.1.bb
> @@ -143,6 +143,7 @@ do_install () {
>         install -m 0644 OSMap/OSX.bastille    ${D}${datadir}/Bastille/OSMap
>         install -m 0644 OSMap/OSX.system    ${D}${datadir}/Bastille/OSMap
>
> +       chmod +w Questions/*.txt
>         ${THISDIR}/files/set_required_questions.py ${WORKDIR}/config
> Questions
>
>         install -m 0777 ${WORKDIR}/config ${D}${sysconfdir}/Bastille/config
> --
> 1.7.10.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bacb98eeedd4504e73c69e4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">---------- Forwarded me=
ssage ----------<br>From: <b class=3D"gmail_sendername">mulhern</b> <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:mulhern@gmail.com">mulhern@gmail.com</a>&g=
t;</span><br>
Date: Wed, Sep 25, 2013 at 6:00 PM<br>Subject: Re: [yocto] [meta-security][=
PATCH 1/2] Bastille: make questions files writable<br>To: Joe MacDonald &lt=
;<a href=3D"mailto:joe@deserted.net">joe@deserted.net</a>&gt;<br><br><br>
<div dir=3D"ltr">Hi!<div><br></div><div>Thanks for the patch, however the p=
roblem addressed by patch 1/2 already has a fix in progress, see=A0<a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5177" target=3D"_bl=
ank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5177</a>.</div>
<span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div>- mulher=
n</div></font></span></div><div class=3D"HOEnZb"><div class=3D"h5"><div cla=
ss=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, Sep 20, 2013 =
at 12:20 AM, Joe MacDonald <span dir=3D"ltr">&lt;<a href=3D"mailto:joe@dese=
rted.net" target=3D"_blank">joe@deserted.net</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">do_install would fail when trying to update =
the questions files during the<br>
set_required_questions.py stage since the default permissions in the<br>
Questions/ did not allow writing. =A0So the shutil.move() in<br>
set_required_questions.py would raise and IOError:<br>
<br>
Fatal error reading config file: [Errno 13] Permission denied: &#39;[...]/b=
astille/3.2.1-r0/Bastille/Questions/AccountSecurity.txt&#39;<br>
<br>
for each Questions file. =A0The most direct approach seems to work<br>
reasonably well here, jump in before set_required_questions.py gets run<br>
and make sure we have write permission on the files we&#39;re going to writ=
e.<br>
<br>
Signed-off-by: Joe MacDonald &lt;<a href=3D"mailto:joe@deserted.net" target=
=3D"_blank">joe@deserted.net</a>&gt;<br>
---<br>
=A0recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb" target=3D=
"_blank">bastille_3.2.1.bb</a> | =A0 =A01 +<br>
=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb"=
 target=3D"_blank">bastille_3.2.1.bb</a> b/recipes-security/bastille/<a hre=
f=3D"http://bastille_3.2.1.bb" target=3D"_blank">bastille_3.2.1.bb</a><br>
index ef697d7..d506399 100644<br>
--- a/recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb" target=
=3D"_blank">bastille_3.2.1.bb</a><br>
+++ b/recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb" target=
=3D"_blank">bastille_3.2.1.bb</a><br>
@@ -143,6 +143,7 @@ do_install () {<br>
=A0 =A0 =A0 =A0 install -m 0644 OSMap/OSX.bastille =A0 =A0${D}${datadir}/Ba=
stille/OSMap<br>
=A0 =A0 =A0 =A0 install -m 0644 OSMap/OSX.system =A0 =A0${D}${datadir}/Bast=
ille/OSMap<br>
<br>
+ =A0 =A0 =A0 chmod +w Questions/*.txt<br>
=A0 =A0 =A0 =A0 ${THISDIR}/files/set_required_questions.py ${WORKDIR}/confi=
g Questions<br>
<br>
=A0 =A0 =A0 =A0 install -m 0777 ${WORKDIR}/config ${D}${sysconfdir}/Bastill=
e/config<br>
<span><font color=3D"#888888">--<br>
1.7.10.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>
</div></div></div><br></div>

--047d7bacb98eeedd4504e73c69e4--
