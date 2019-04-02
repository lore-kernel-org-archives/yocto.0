Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBC52E00C1E; Tue,  2 Apr 2019 10:32:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2716CE00BC8
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 10:32:08 -0700 (PDT)
Received: by mail-ed1-f65.google.com with SMTP id a25so12399762edc.8
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 10:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sF9cluF8UbgoCDCvOM47gqgMreFXUdLz7Ec7Mg5ta2Y=;
	b=tr87gcWN8mfXTfpDFA7MDOwYIr5EMe8pZLEJxL5v3QHJyeMJuXxg8UqiKJHfW4BzW/
	/rPpASXrBbXlOlcQTTZZ8+kRP+CC2OAs0CnP37gbz9euRmvcHbqV08rrCGjcrOVcxp1u
	li4U3ZbMQJhy2wlnJYJguKOCen5Jw/0fp1wXfJk5ODnvcbvdVfTI8wl1jdKcC7wFVNoi
	N+83VFn2POE8XTxNteNS74voGspZWOXlti8ZNq2UpZq7/RjvAN/mbIJSX8MMGH2wmPF0
	DeiTHaW1qdaw//KRBlAXZjX+gohJtY6OTCoR63BwzSHVQwtMA08wJ6Ar/RMaBsFSTO36
	pxww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sF9cluF8UbgoCDCvOM47gqgMreFXUdLz7Ec7Mg5ta2Y=;
	b=JmjPeI+aWJGtVmodFUrTJ4FK9FPEIKWTzlGmRDfngmz+wRNlncm7YDnVpzu0XpZrMj
	BEeGLfCSV8C+QQzAM3WMDLtnUpFbsuujytjb+6eLwhpoYkB0HRol01k5qfDprOb2tZ/+
	DlGLHS3fGOKLuJNImvAimryrky1JbwWM15TSrU+/q3kczKYMjCBVOydackX9d+QUbE9i
	C1rF9pLChFfwOYRwm9QalUuQswSzSsYA5lb313SJ4S/zK06m6ndTJ4jlCwIi7Iz/PZ3s
	XQv+YWZCkgZPjss1kKKDhTjyc91zae8z8t6MpDL0c+P21897o5GcJy0ez5KOHxUDkypS
	gZLw==
X-Gm-Message-State: APjAAAVR6rCSK5jBBpFMTNXyO9K9YPBZ5f1zgBfchDu5I5sYS/dO0GkM
	LgHnwa5c0h+uPReCz1l0SpJpCeq01tv/3VnOx9k=
X-Google-Smtp-Source: APXvYqy6RtlsLZyN2FEQjrRMgWtbgVSfK/ifwUmymsz+YJee6KcLwlDO+zJZhviTl1NrIwpO0GkSI8U74NISS5VazAc=
X-Received: by 2002:a50:8bb4:: with SMTP id m49mr48938806edm.28.1554226328195; 
	Tue, 02 Apr 2019 10:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190329093212.29347-1-costamagnagianfranco@yahoo.it>
In-Reply-To: <20190329093212.29347-1-costamagnagianfranco@yahoo.it>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 2 Apr 2019 10:31:56 -0700
Message-ID: <CAFNP8OufxP962HYWJ0Nigk9qejR0qjt3ZE6g9AaQvpUqG9pGYA@mail.gmail.com>
To: Gianfranco Costamagna <costamagna.gianfranco@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Gianfranco Costamagna <costamagnagianfranco@yahoo.it>,
	Gianfranco Costamagna <locutusofborg@debian.org>
Subject: Re: [PATCH] Documentation: unify the spacing for questions in various places e.g. before the [Y/n] there should be a space, and before "?" there should be none. Unify the questions where the system expect an answer from the end user
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
X-List-Received-Date: Tue, 02 Apr 2019 17:32:10 -0000
Content-Type: multipart/alternative; boundary="00000000000031562805858f8481"

--00000000000031562805858f8481
Content-Type: text/plain; charset="UTF-8"

Hi,

I applied changes for docs.  Someone else needs to get the changes into the
*.sh files.
See inline comments for links to adjusted text.

Scott

On Fri, Mar 29, 2019 at 2:33 AM Gianfranco Costamagna <
costamagna.gianfranco@gmail.com> wrote:

> Signed-off-by: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>
> Signed-off-by: Gianfranco Costamagna <locutusofborg@debian.org>
> ---
>  documentation/kernel-dev/kernel-dev-common.xml                | 2 +-
>  documentation/sdk-manual/sdk-extensible.xml                   | 2 +-
>  documentation/sdk-manual/sdk-using.xml                        | 2 +-
>  meta/files/toolchain-shar-extract.sh                          | 4 ++--
>  .../initrdscripts/files/init-install-efi-testfs.sh            | 2 +-
>  5 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/documentation/kernel-dev/kernel-dev-common.xml
> b/documentation/kernel-dev/kernel-dev-common.xml
> index 7ff4cba3b0..7d8826fa35 100644
> --- a/documentation/kernel-dev/kernel-dev-common.xml
> +++ b/documentation/kernel-dev/kernel-dev-common.xml
> @@ -185,7 +185,7 @@
>       Poky (Yocto Project Reference Distro) Extensible SDK installer
> version &DISTRO;
>
> ============================================================================
>       Enter target directory for SDK (default: ~/poky_sdk):
> -     You are about to install the SDK to "/home/scottrif/poky_sdk".
> Proceed[Y/n]? Y
> +     You are about to install the SDK to "/home/scottrif/poky_sdk".
> Proceed [Y/n]? Y
>

See step 6 for this doc change -
https://yoctoproject.org/docs/2.7/kernel-dev/kernel-dev.html#getting-ready-to-develop-using-devtool


      Extracting SDK......................................done
>       Setting it up...
>       Extracting buildtools...
> diff --git a/documentation/sdk-manual/sdk-extensible.xml
> b/documentation/sdk-manual/sdk-extensible.xml
> index 09f06088d2..9be082d8ba 100644
> --- a/documentation/sdk-manual/sdk-extensible.xml
> +++ b/documentation/sdk-manual/sdk-extensible.xml
> @@ -157,7 +157,7 @@
>       Poky (Yocto Project Reference Distro) Extensible SDK installer
> version 2.5
>
> ==========================================================================
>       Enter target directory for SDK (default: ~/poky_sdk):
> -     You are about to install the SDK to "/home/scottrif/poky_sdk".
> Proceed[Y/n]? Y
> +     You are about to install the SDK to "/home/scottrif/poky_sdk".
> Proceed [Y/n]? Y
>

See the output here -
https://yoctoproject.org/docs/2.7/sdk-manual/sdk-manual.html#sdk-installing-the-extensible-sdk


      Extracting SDK..............done
>       Setting it up...
>       Extracting buildtools...
> diff --git a/documentation/sdk-manual/sdk-using.xml
> b/documentation/sdk-manual/sdk-using.xml
> index dd220c340b..06fdb573ed 100644
> --- a/documentation/sdk-manual/sdk-using.xml
> +++ b/documentation/sdk-manual/sdk-using.xml
> @@ -149,7 +149,7 @@
>       Poky (Yocto Project Reference Distro) SDK installer version &DISTRO;
>       ===============================================================
>       Enter target directory for SDK (default: /opt/poky/&DISTRO;):
> -     You are about to install the SDK to "/opt/poky/&DISTRO;".
> Proceed[Y/n]? Y
> +     You are about to install the SDK to "/opt/poky/&DISTRO;". Proceed
> [Y/n]? Y
>

See the output here -
https://yoctoproject.org/docs/2.7/sdk-manual/sdk-manual.html#sdk-installing-the-sdk


      Extracting SDK........................................
> ..............................done
>       Setting it up...done
>       SDK has been successfully set up and is ready to be used.
> diff --git a/meta/files/toolchain-shar-extract.sh
> b/meta/files/toolchain-shar-extract.sh
> index 9eabd62630..156085b500 100644
> --- a/meta/files/toolchain-shar-extract.sh
> +++ b/meta/files/toolchain-shar-extract.sh
> @@ -185,11 +185,11 @@ fi
>
>  if [ -e "$target_sdk_dir/environment-setup-@REAL_MULTIMACH_TARGET_SYS@"
> ]; then
>         echo "The directory \"$target_sdk_dir\" already contains a SDK for
> this architecture."
> -       printf "If you continue, existing files will be overwritten!
> Proceed[y/N]? "
> +       printf "If you continue, existing files will be overwritten!
> Proceed [y/N]? "
>
>         default_answer="n"
>  else
> -       printf "You are about to install the SDK to \"$target_sdk_dir\".
> Proceed[Y/n]? "
> +       printf "You are about to install the SDK to \"$target_sdk_dir\".
> Proceed [Y/n]? "
>
>         default_answer="y"
>  fi
> diff --git
> a/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
> b/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
> index 9c4b263d54..b351985a61 100644
> --- a/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
> +++ b/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
> @@ -27,7 +27,7 @@ do
>                  # Try sleeping here to avoid getting kernel messages
>                  # obscuring/confusing user
>                  sleep 5
> -                echo "Found drive at /dev/${device}. Do you want to
> install this image there ? [y/n]"
> +                echo "Found drive at /dev/${device}. Do you want to
> install this image there? [y/n]"
>                  read answer
>                  if [ "$answer" = "y" ] ; then
>                      break
> --
> 2.17.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000031562805858f8481
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi=
,</div><div><br></div><div>I applied changes for docs.=C2=A0 Someone else n=
eeds to get the changes into the *.sh files.</div><div>See inline comments =
for links to adjusted text.</div><div><br></div><div>Scott<br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 2=
9, 2019 at 2:33 AM Gianfranco Costamagna &lt;<a href=3D"mailto:costamagna.g=
ianfranco@gmail.com">costamagna.gianfranco@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Signed-off-by: Gianfran=
co Costamagna &lt;<a href=3D"mailto:costamagnagianfranco@yahoo.it" target=
=3D"_blank">costamagnagianfranco@yahoo.it</a>&gt;<br>
Signed-off-by: Gianfranco Costamagna &lt;<a href=3D"mailto:locutusofborg@de=
bian.org" target=3D"_blank">locutusofborg@debian.org</a>&gt;<br>
---<br>
=C2=A0documentation/kernel-dev/kernel-dev-common.xml=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0documentation/sdk-manual/sdk-extensible.xml=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A0documentation/sdk-manual/sdk-using.xml=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0meta/files/toolchain-shar-extract.sh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++--<br>
=C2=A0.../initrdscripts/files/init-install-efi-testfs.sh=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A05 files changed, 6 insertions(+), 6 deletions(-)<br>
<br>
diff --git a/documentation/kernel-dev/kernel-dev-common.xml b/documentation=
/kernel-dev/kernel-dev-common.xml<br>
index 7ff4cba3b0..7d8826fa35 100644<br>
--- a/documentation/kernel-dev/kernel-dev-common.xml<br>
+++ b/documentation/kernel-dev/kernel-dev-common.xml<br>
@@ -185,7 +185,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 Poky (Yocto Project Reference Distro) Extensible SDK i=
nstaller version &amp;DISTRO;<br>
=C2=A0 =C2=A0 =C2=A0 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>
=C2=A0 =C2=A0 =C2=A0 Enter target directory for SDK (default: ~/poky_sdk):<=
br>
-=C2=A0 =C2=A0 =C2=A0You are about to install the SDK to &quot;/home/scottr=
if/poky_sdk&quot;. Proceed[Y/n]? Y<br>
+=C2=A0 =C2=A0 =C2=A0You are about to install the SDK to &quot;/home/scottr=
if/poky_sdk&quot;. Proceed [Y/n]? Y<br></blockquote><div><br></div><div>See=
 step 6 for this doc change - <a href=3D"https://yoctoproject.org/docs/2.7/=
kernel-dev/kernel-dev.html#getting-ready-to-develop-using-devtool">https://=
yoctoproject.org/docs/2.7/kernel-dev/kernel-dev.html#getting-ready-to-devel=
op-using-devtool</a><br></div><div><br></div><div> <br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
=C2=A0 =C2=A0 =C2=A0 Extracting SDK......................................do=
ne<br>
=C2=A0 =C2=A0 =C2=A0 Setting it up...<br>
=C2=A0 =C2=A0 =C2=A0 Extracting buildtools...<br>
diff --git a/documentation/sdk-manual/sdk-extensible.xml b/documentation/sd=
k-manual/sdk-extensible.xml<br>
index 09f06088d2..9be082d8ba 100644<br>
--- a/documentation/sdk-manual/sdk-extensible.xml<br>
+++ b/documentation/sdk-manual/sdk-extensible.xml<br>
@@ -157,7 +157,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 Poky (Yocto Project Reference Distro) Extensible SDK i=
nstaller version 2.5<br>
=C2=A0 =C2=A0 =C2=A0 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>
=C2=A0 =C2=A0 =C2=A0 Enter target directory for SDK (default: ~/poky_sdk):<=
br>
-=C2=A0 =C2=A0 =C2=A0You are about to install the SDK to &quot;/home/scottr=
if/poky_sdk&quot;. Proceed[Y/n]? Y<br>
+=C2=A0 =C2=A0 =C2=A0You are about to install the SDK to &quot;/home/scottr=
if/poky_sdk&quot;. Proceed [Y/n]? Y<br></blockquote><div><br></div><div>See=
 the output here - <a href=3D"https://yoctoproject.org/docs/2.7/sdk-manual/=
sdk-manual.html#sdk-installing-the-extensible-sdk">https://yoctoproject.org=
/docs/2.7/sdk-manual/sdk-manual.html#sdk-installing-the-extensible-sdk</a><=
br></div><div><br></div><div> <br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
=C2=A0 =C2=A0 =C2=A0 Extracting SDK..............done<br>
=C2=A0 =C2=A0 =C2=A0 Setting it up...<br>
=C2=A0 =C2=A0 =C2=A0 Extracting buildtools...<br>
diff --git a/documentation/sdk-manual/sdk-using.xml b/documentation/sdk-man=
ual/sdk-using.xml<br>
index dd220c340b..06fdb573ed 100644<br>
--- a/documentation/sdk-manual/sdk-using.xml<br>
+++ b/documentation/sdk-manual/sdk-using.xml<br>
@@ -149,7 +149,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 Poky (Yocto Project Reference Distro) SDK installer ve=
rsion &amp;DISTRO;<br>
=C2=A0 =C2=A0 =C2=A0 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
=C2=A0 =C2=A0 =C2=A0 Enter target directory for SDK (default: /opt/poky/&am=
p;DISTRO;):<br>
-=C2=A0 =C2=A0 =C2=A0You are about to install the SDK to &quot;/opt/poky/&a=
mp;DISTRO;&quot;. Proceed[Y/n]? Y<br>
+=C2=A0 =C2=A0 =C2=A0You are about to install the SDK to &quot;/opt/poky/&a=
mp;DISTRO;&quot;. Proceed [Y/n]? Y<br></blockquote><div><br></div><div>See =
the output here - <a href=3D"https://yoctoproject.org/docs/2.7/sdk-manual/s=
dk-manual.html#sdk-installing-the-sdk">https://yoctoproject.org/docs/2.7/sd=
k-manual/sdk-manual.html#sdk-installing-the-sdk</a><br></div><div><br></div=
><div> <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
=C2=A0 =C2=A0 =C2=A0 Extracting SDK........................................=
 ..............................done<br>
=C2=A0 =C2=A0 =C2=A0 Setting it up...done<br>
=C2=A0 =C2=A0 =C2=A0 SDK has been successfully set up and is ready to be us=
ed.<br>
diff --git a/meta/files/toolchain-shar-extract.sh b/meta/files/toolchain-sh=
ar-extract.sh<br>
index 9eabd62630..156085b500 100644<br>
--- a/meta/files/toolchain-shar-extract.sh<br>
+++ b/meta/files/toolchain-shar-extract.sh<br>
@@ -185,11 +185,11 @@ fi<br>
<br>
=C2=A0if [ -e &quot;$target_sdk_dir/environment-setup-@REAL_MULTIMACH_TARGE=
T_SYS@&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;The directory \&quot;$target_sdk_dir=
\&quot; already contains a SDK for this architecture.&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0printf &quot;If you continue, existing files wi=
ll be overwritten! Proceed[y/N]? &quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0printf &quot;If you continue, existing files wi=
ll be overwritten! Proceed [y/N]? &quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default_answer=3D&quot;n&quot;<br>
=C2=A0else<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0printf &quot;You are about to install the SDK t=
o \&quot;$target_sdk_dir\&quot;. Proceed[Y/n]? &quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0printf &quot;You are about to install the SDK t=
o \&quot;$target_sdk_dir\&quot;. Proceed [Y/n]? &quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 default_answer=3D&quot;y&quot;<br>
=C2=A0fi<br>
diff --git a/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.=
sh b/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh<br>
index 9c4b263d54..b351985a61 100644<br>
--- a/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh<br>
+++ b/meta/recipes-core/initrdscripts/files/init-install-efi-testfs.sh<br>
@@ -27,7 +27,7 @@ do<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Try sleepin=
g here to avoid getting kernel messages<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# obscuring/c=
onfusing user<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sleep 5<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;Found d=
rive at /dev/${device}. Do you want to install this image there ? [y/n]&quo=
t;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;Found d=
rive at /dev/${device}. Do you want to install this image there? [y/n]&quot=
;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0read answer<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;$a=
nswer&quot; =3D &quot;y&quot; ] ; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0break<br>
-- <br>
2.17.1<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div></div></div>

--00000000000031562805858f8481--
