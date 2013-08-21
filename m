Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C436E013DF
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 06:14:25 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id n5so412038wev.34
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 06:14:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=qmycKXGPIh5rpUPQ1iZ5qJ4UTGMqjFIkHq2KzUI06m4=;
	b=U8God1tclmwDeLvvVbYADFQtSc1qfbpAFQ7H1RUNxoHesUQsJ7vLQSkt1WhqrHBtDb
	x1mcRDBwwbGN57/zUgf1hns8SAtDL6zXUe5gpyiblU5xG65jEiwb/01f5xQafMD2cgJL
	xU1abDXW3TP9CkIyi8aW/UTsEKgXRLXbRxWZFLDNLhWojpTIdbI1sQtc3d5ybHjjOkp9
	QeT32Ae6nnagsU0pi6It3fmaXOATbUDxpVYCVLKxnZEu+MOA8kULzV2hkEn0uT9D1pNo
	StGsPw+B9bDmEjk0GzTl8JGEC0gRS900LcBGnwTmcIErS1At0uMpgwA5crXcxS42tAWl
	F1lw==
X-Gm-Message-State: ALoCoQnXqYUG5WJG3amPzMYcA8hWZeQsqEL05ZTzbiLkEdSLjHPlTMbxeSUF7C+CgxC7mI/jBfzB
X-Received: by 10.194.78.78 with SMTP id z14mr5807173wjw.32.1377090864365;
	Wed, 21 Aug 2013 06:14:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Wed, 21 Aug 2013 06:14:04 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 21 Aug 2013 16:14:04 +0300
Message-ID: <CAK18fxHjLozNSoQD7oPT00J1JXq18=wna++GHSrRoo=gyBtz2w@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 01/11] README: Add info about extra apps / omxplayer
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
X-List-Received-Date: Wed, 21 Aug 2013 13:14:26 -0000
Content-Type: multipart/alternative; boundary=047d7bf0d524cb579804e474f347

--047d7bf0d524cb579804e474f347
Content-Type: text/plain; charset=ISO-8859-1

1-11 Patches merged.


On Tue, Aug 20, 2013 at 8:02 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  README |   23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
>
> diff --git a/README b/README
> index 920d063..db88066 100644
> --- a/README
> +++ b/README
> @@ -34,7 +34,9 @@ Contents:
>      2.C. Add purchased license codecs
>      2.D. Disable overscan
>      2.E. Set overclocking options
> -3. Contribution
> +3. Extra apps
> +    3.A. omxplayer
> +4. Contribution
>
>
>
> @@ -94,16 +96,11 @@ URI: git://git.yoctoproject.org/poky
>  branch: master
>  revision: HEAD
>
> -URI: git://git.openembedded.org/meta-openembedded
> -branch: master
> -revision: HEAD
> -
>  How to use it:
>
>  1. source poky/oe-init-build-env rpi-build
> -2. Add needed layers to bblayers.conf:
> +2. Add needed layer to bblayers.conf:
>      - meta-raspberrypi
> -    - meta-openembedded/meta-oe
>  3  Set MACHINE to raspberrypi in local.conf
>  4. bitbake rpi-hwup-image
>  5. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is
> used)
> @@ -155,8 +152,18 @@ SDRAM_FREQ = "500"
>  OVER_VOLTAGE = "6"
>
>
> +3. Extra apps
> +=============
> +
> +3.A. omxplayer
> +==============
> +omxplayer depends on libav which has a commercial license. So in order to
> be
> +able to compile omxplayer you will need to whiteflag the commercial
> license
> +adding to you local.conf:
> +LICENSE_FLAGS_WHITELIST = "commercial"
> +
>
> -3. Contributing
> +4. Contributing
>  ===============
>
>  To contribute to this layer you should send the patches for review to the
> --
> 1.7.9.5
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7bf0d524cb579804e474f347
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">1-11 Patches merged.</div><div class=3D"gmail_extra"><br><=
br><div class=3D"gmail_quote">On Tue, Aug 20, 2013 at 8:02 PM, Andrei Gherz=
an <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_bl=
ank">andrei@gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: Andrei Gherzan &lt;<a href=3D=
"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0README | =A0 23 +++++++++++++++--------<br>
=A01 file changed, 15 insertions(+), 8 deletions(-)<br>
<br>
diff --git a/README b/README<br>
index 920d063..db88066 100644<br>
--- a/README<br>
+++ b/README<br>
@@ -34,7 +34,9 @@ Contents:<br>
=A0 =A0 =A02.C. Add purchased license codecs<br>
=A0 =A0 =A02.D. Disable overscan<br>
=A0 =A0 =A02.E. Set overclocking options<br>
-3. Contribution<br>
+3. Extra apps<br>
+ =A0 =A03.A. omxplayer<br>
+4. Contribution<br>
<br>
<br>
<br>
@@ -94,16 +96,11 @@ URI: git://<a href=3D"http://git.yoctoproject.org/poky"=
 target=3D"_blank">git.yoctoproject.org/poky</a><br>
=A0branch: master<br>
=A0revision: HEAD<br>
<br>
-URI: git://<a href=3D"http://git.openembedded.org/meta-openembedded" targe=
t=3D"_blank">git.openembedded.org/meta-openembedded</a><br>
-branch: master<br>
-revision: HEAD<br>
-<br>
=A0How to use it:<br>
<br>
=A01. source poky/oe-init-build-env rpi-build<br>
-2. Add needed layers to bblayers.conf:<br>
+2. Add needed layer to bblayers.conf:<br>
=A0 =A0 =A0- meta-raspberrypi<br>
- =A0 =A0- meta-openembedded/meta-oe<br>
=A03 =A0Set MACHINE to raspberrypi in local.conf<br>
=A04. bitbake rpi-hwup-image<br>
=A05. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz i=
s used)<br>
@@ -155,8 +152,18 @@ SDRAM_FREQ =3D &quot;500&quot;<br>
=A0OVER_VOLTAGE =3D &quot;6&quot;<br>
<br>
<br>
+3. Extra apps<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+<br>
+3.A. omxplayer<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+omxplayer depends on libav which has a commercial license. So in order to =
be<br>
+able to compile omxplayer you will need to whiteflag the commercial licens=
e<br>
+adding to you local.conf:<br>
+LICENSE_FLAGS_WHITELIST =3D &quot;commercial&quot;<br>
+<br>
<br>
-3. Contributing<br>
+4. Contributing<br>
=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
=A0To contribute to this layer you should send the patches for review to th=
e<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--047d7bf0d524cb579804e474f347--
