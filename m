Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDAC0E01847
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:17:21 -0800 (PST)
Received: by mail-wi0-f179.google.com with SMTP id fb10so2716470wid.0
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:17:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=dUiucSe3YphqsJ4bkc72DdLEDkAvH1ueM3V9W4jdSwA=;
	b=DSFrLR3kHkopj7BX43oK7iVPvSdenq4k3hXH7kVT0j45eO4raDTXymbi8laXp5mK5Z
	7UcKwCV1NSSYMjN0kxF1fuoujtqeP/4do3wv1nLhMiQtHQC06K3+vqhIPH0ZWd50OBgl
	cWbQiXgcvfJgEp3ijQqOGcQ+3Z069ge54+5ZPCmMJF/R2nmdpGMlBr9eysHLc8IUmbrG
	YgNnBsNL02H1YLe4eBLVTNy4FP1wa1V1EPR2Hc/GCj0amOvJmCYvsJp4viO6Upq/8Ako
	/85EFLMKWCO5EEK7PFRJSC9Pn9NtXQK+7U0LwPXLUA7xZ2sdlMn8rDpLJP0mUIAmJ/wh
	1JcQ==
X-Gm-Message-State: ALoCoQk+NMAhBxo09cC6Q61s15OfZ+Ee/2FyGgbpD0n5HiUvkRHuzhLAysKzx5C1aN+XACF+mLjI
X-Received: by 10.180.187.41 with SMTP id fp9mr3258036wic.33.1384442239580;
	Thu, 14 Nov 2013 07:17:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Thu, 14 Nov 2013 07:16:59 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384359566-32315-2-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
	<1384359566-32315-2-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 14 Nov 2013 17:16:59 +0200
Message-ID: <CAK18fxFr5NMs0NYW6i-cM4X1jjnYkbseAfYh87wUQT8E6B4f5w@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 2/6] linux-raspberrypi: Update available versions to HEAD
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
X-List-Received-Date: Thu, 14 Nov 2013 15:17:22 -0000
Content-Type: multipart/alternative; boundary=001a11c3844ce71b4304eb2493a5

--001a11c3844ce71b4304eb2493a5
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Update 3.11.0 to 3.11.7 HEAD.
> Update 3.6.11 to HEAD.
>
> Change-Id: Iacd8f78b418b0bd6d8513b97ce57ce0108057850
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-kernel/linux/linux-raspberrypi_3.11.0.bb | 6 ------
>  recipes-kernel/linux/linux-raspberrypi_3.11.7.bb | 6 ++++++
>  recipes-kernel/linux/linux-raspberrypi_3.6.11.bb | 2 +-
>  3 files changed, 7 insertions(+), 7 deletions(-)
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.7.bb
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bbb/recipes-kernel/linux/
> linux-raspberrypi_3.11.0.bb
> deleted file mode 100644
> index 1ae39b2..0000000
> --- a/recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -SRCREV = "d7474694bdc9836af17f4b4d839509f9aad7ffa7"
> -SRC_URI = "git://
> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
> -           file://sl030raspberrypii2ckernel.patch \
> -          "
> -
> -require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.11.7.bbb/recipes-kernel/linux/
> linux-raspberrypi_3.11.7.bb
> new file mode 100644
> index 0000000..68c890c
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.11.7.bb
> @@ -0,0 +1,6 @@
> +SRCREV = "b975d0aab6816dd1dc4ff938a0c95bc551831163"
> +SRC_URI = "git://
> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.11.y \
> +           file://sl030raspberrypii2ckernel.patch \
> +          "
> +
> +require linux-raspberrypi.inc
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bbb/recipes-kernel/linux/
> linux-raspberrypi_3.6.11.bb
> index 5314f5d..ba2c704 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> @@ -1,4 +1,4 @@
> -SRCREV = "cbd6672e7e1b2dc5026f5dc7929a13a9a68f2a62"
> +SRCREV = "10bc58289a7ebf6b1ab724636e0a16116278e339"
>  SRC_URI = "git://
> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
>             file://sl030raspberrypii2ckernel.patch \
>            "
> --
> 1.8.1.4
>
>
Merged.

ag

--001a11c3844ce71b4304eb2493a5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">Update 3.11.0 to 3.11.7 HE=
AD.<br>
Update 3.6.11 to HEAD.<br>
<br>
Change-Id: Iacd8f78b418b0bd6d8513b97ce57ce0108057850<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
</div>=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.11.0.bb=
" target=3D"_blank">linux-raspberrypi_3.11.0.bb</a> | 6 ------<br>
=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.11.7.bb" targ=
et=3D"_blank">linux-raspberrypi_3.11.7.bb</a> | 6 ++++++<br>
<div class=3D"im">=A0recipes-kernel/linux/<a href=3D"http://linux-raspberry=
pi_3.6.11.bb" target=3D"_blank">linux-raspberrypi_3.6.11.bb</a> | 2 +-<br>
=A03 files changed, 7 insertions(+), 7 deletions(-)<br>
=A0delete mode 100644 recipes-kernel/linux/<a href=3D"http://linux-raspberr=
ypi_3.11.0.bb" target=3D"_blank">linux-raspberrypi_3.11.0.bb</a><br>
=A0create mode 100644 recipes-kernel/linux/<a href=3D"http://linux-raspberr=
ypi_3.11.7.bb" target=3D"_blank">linux-raspberrypi_3.11.7.bb</a><br>
<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.11.=
0.bb" target=3D"_blank">linux-raspberrypi_3.11.0.bb</a> b/recipes-kernel/li=
nux/<a href=3D"http://linux-raspberrypi_3.11.0.bb" target=3D"_blank">linux-=
raspberrypi_3.11.0.bb</a><br>


deleted file mode 100644<br>
</div>index 1ae39b2..0000000<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.11.0.bb" t=
arget=3D"_blank">linux-raspberrypi_3.11.0.bb</a><br>
+++ /dev/null<br>
@@ -1,6 +0,0 @@<br>
<div class=3D"im">-SRCREV =3D &quot;d7474694bdc9836af17f4b4d839509f9aad7ffa=
7&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.11.y" target=3D"_blank">github.com/raspberry=
pi/linux.git;protocol=3Dgit;branch=3Drpi-3.11.y</a> \<br>
</div>- =A0 =A0 =A0 =A0 =A0 file://sl030raspberrypii2ckernel.patch \<br>
- =A0 =A0 =A0 =A0 =A0&quot;<br>
<div class=3D"im">-<br>
-require linux-raspberrypi.inc<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.11.=
7.bb" target=3D"_blank">linux-raspberrypi_3.11.7.bb</a> b/recipes-kernel/li=
nux/<a href=3D"http://linux-raspberrypi_3.11.7.bb" target=3D"_blank">linux-=
raspberrypi_3.11.7.bb</a><br>


new file mode 100644<br>
</div>index 0000000..68c890c<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.11.7.bb" t=
arget=3D"_blank">linux-raspberrypi_3.11.7.bb</a><br>
@@ -0,0 +1,6 @@<br>
<div class=3D"im">+SRCREV =3D &quot;b975d0aab6816dd1dc4ff938a0c95bc55183116=
3&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.11.y" target=3D"_blank">github.com/raspberry=
pi/linux.git;protocol=3Dgit;branch=3Drpi-3.11.y</a> \<br>
</div>+ =A0 =A0 =A0 =A0 =A0 file://sl030raspberrypii2ckernel.patch \<br>
+ =A0 =A0 =A0 =A0 =A0&quot;<br>
<div class=3D"im">+<br>
+require linux-raspberrypi.inc<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.6.1=
1.bb" target=3D"_blank">linux-raspberrypi_3.6.11.bb</a> b/recipes-kernel/li=
nux/<a href=3D"http://linux-raspberrypi_3.6.11.bb" target=3D"_blank">linux-=
raspberrypi_3.6.11.bb</a><br>


</div>index 5314f5d..ba2c704 100644<br>
<div class=3D"im">--- a/recipes-kernel/linux/<a href=3D"http://linux-raspbe=
rrypi_3.6.11.bb" target=3D"_blank">linux-raspberrypi_3.6.11.bb</a><br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.6.11.bb" t=
arget=3D"_blank">linux-raspberrypi_3.6.11.bb</a><br>
@@ -1,4 +1,4 @@<br>
-SRCREV =3D &quot;cbd6672e7e1b2dc5026f5dc7929a13a9a68f2a62&quot;<br>
+SRCREV =3D &quot;10bc58289a7ebf6b1ab724636e0a16116278e339&quot;<br>
</div>=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/l=
inux.git;protocol=3Dgit;branch=3Drpi-3.6.y" target=3D"_blank">github.com/ra=
spberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.6.y</a> \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://sl030raspberrypii2ckernel.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br>Merged.
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">ag</d=
iv></div>

--001a11c3844ce71b4304eb2493a5--
