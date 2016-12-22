Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D3E7E010F8; Thu, 22 Dec 2016 13:47:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-yb0-f175.google.com (mail-yb0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64632E00ECB
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 13:47:06 -0800 (PST)
Received: by mail-yb0-f175.google.com with SMTP id 84so17395911ybe.3
	for <yocto@yoctoproject.org>; Thu, 22 Dec 2016 13:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AlyUnlzoL2O26rowDsN/Ymtxf9gBW1raUStthxpSOvc=;
	b=qKVGaDA4CPuK+n6qNeBA/EgjeNYNm27deGvqL2ISRtt0nZ1titaeRGlqLIUC594JD4
	oukN50TLPYpkPItzIScmlz2mfcJQUUQGC1eqynHQ1ccLKc7G8cViQ6/WOtEurl+94BKn
	ClqalD/BtFG4efn0kcUgAk8Vd9r358MzKaLffd7AaCHBvCUwJffgEQ7atKYS8HTYx3c+
	TWQniHwriQHZ1qT5noEJlWJeViN+rCnAo8WdahqU7TWxi+kowk1aXMIxHKNKJQ8SeQsW
	brWhOzrqG3v90+dFRCA4hpeR0LAU2Ul0kP4wiRKUvO0T0a5ewHmIFKkTEeId1XQfOLZW
	BCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AlyUnlzoL2O26rowDsN/Ymtxf9gBW1raUStthxpSOvc=;
	b=YvX83ebBmsdiNomMWlgSu1NM7s2bBEKZiQ1gbgNZZf/lg09FI/azld1lJXqn1PFNx7
	iCz+nxomAAX/RPJPiMxxZOKqkXCxBDIpC1TCUnma2voXUzlrENTtG3A9sWXtCr+ObXn6
	Y3TtAkZHQSdfDI2y48MWYo+6C1ceZJsfUOrj8JE5c+HgtlaWsCVkZDmXJ1VtOCMXDqkH
	zcwLA0CyioUHJ9kFr52wmAajiM38YAzSlvbGOV4wrpm3ekSoyMAzH9Q9CH6G8CwjzilQ
	LOrc1GONaWw0YeambyVT8TKAteHWdFhviea6ola8fO4aacrejmkDyJWHw9S+34BiNcew
	d/Zg==
X-Gm-Message-State: AIkVDXJh8ZmjlJQnc+7dDM4TkwtOFVqz4+92DIuXkPCyGK/fO/KHw5MglB1HmbYtPGB4wBKHe3oHfh0QN78p+Y+T
X-Received: by 10.37.34.194 with SMTP id i185mr8258444ybi.49.1482443225626;
	Thu, 22 Dec 2016 13:47:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.15.69 with HTTP; Thu, 22 Dec 2016 13:47:04 -0800 (PST)
Received: by 10.37.15.69 with HTTP; Thu, 22 Dec 2016 13:47:04 -0800 (PST)
In-Reply-To: <7411EC580D08984EBA0A1730211182191AA8E97E@kihagwinex01.int.kistler.com>
References: <7411EC580D08984EBA0A1730211182191AA8E7A2@kihagwinex01.int.kistler.com>
	<CAPLgG=kHYWHWzYPiaGdW7avoxzjQy1WnJkMnRDXaXsDH3ODAaA@mail.gmail.com>
	<7411EC580D08984EBA0A1730211182191AA8E7C3@kihagwinex01.int.kistler.com>
	<CAPLgG==_xUCSGDEitJNj_OY-wvOUB50_eagrdW+58n4aXreX_w@mail.gmail.com>
	<7411EC580D08984EBA0A1730211182191AA8E7ED@kihagwinex01.int.kistler.com>
	<CAPLgG==LF60y5yevKR32jJp3V78+dcfqAWTowh=35MZina_RRw@mail.gmail.com>
	<7411EC580D08984EBA0A1730211182191AA8E97E@kihagwinex01.int.kistler.com>
From: Rick Altherr <raltherr@google.com>
Date: Thu, 22 Dec 2016 13:47:04 -0800
Message-ID: <CAPLgG=khSBFSFS3jztQmh0BweavdeV1FjNWXMR6R7OpFacxppQ@mail.gmail.com>
To: Hamish Guthrie <Hamish.Guthrie@kistler.com>
Cc: yocto@yoctoproject.org
Subject: Re: fitImage and initramfs
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
X-List-Received-Date: Thu, 22 Dec 2016 21:47:10 -0000
Content-Type: multipart/alternative; boundary=001a11c03862dd79af054446358e

--001a11c03862dd79af054446358e
Content-Type: text/plain; charset=UTF-8

That makes sense. The zImage bundling and fitImage bundling run as separate
tasks that are both dependent on INITRAMFS_IMAGE being generated. Once the
dependency is finished, they'll both can run in parallel.  I need to read
up on what 'set +e' does in this context.

On Dec 22, 2016 7:07 AM, "Hamish Guthrie" <Hamish.Guthrie@kistler.com>
wrote:

> Hi Rick,
>
> I found the cause of the problem, but I possibly still do not understand
> why this happens. It turns out that in fact two processes try to decompress
> the cpio.xxx file concurrently when building the fitImage. There is
> something similar which happens with tar - see this commit:
> 8c5f3454971074d3f1de7bcde9481e881221e076.
>
> This patch fixes the issue
>
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index fa598cf..395973f 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -160,6 +160,7 @@ EXTRA_OEMAKE = " HOSTCC="${BUILD_CC}"
> HOSTCPP="${BUILD_CPP}""
>  KERNEL_ALT_IMAGETYPE ??= ""
>
>  copy_initramfs() {
> +       set +e
>         echo "Copying initramfs into ./usr ..."
>         # In case the directory is not created yet from the first pass
> compile:
>         mkdir -p ${B}/usr
>
> - Hamish
>
>
> On Wed, Dec 21, 2016 at 10:11 AM, Hamish Guthrie <
> Hamish.Guthrie@kistler.com> wrote:
> Hi Rick,
>
> >> What happens if you use core-image-minimal-initramfs for
> INITRAMFS_IMAGE?
>
> I just tried that and Yocto complains with Nothing PROVIDES
> 'core-image-minimal-initramfs'
>
> >> I think the main problem is that you are telling Yocto to include the
> full rootfs image as an initramfs instead of the reduced, special-purpose
> initramfs image.
>
> I am not sure that Yocto should give a damn about what I am trying to put
> into my initramfs, if I am stupid enough to include a 100G image into my
> initramfs, it is my problem, not Yocto's! If I am stupid enough to do that,
> knowing that I only have 256M RAM, I should be the one bitten!
>
> I have tried doing the same thing with a special reduced filesystem for
> our update software (which is about 4M, by the way), and I get the same
> error with (Unexpected end of input), so I do not believe for a moment it
> is the size of the initramfs. I suspect something in the kernel.bbclass,
> but for the life of me I cannot see why it would fail. It should just WORK!
>
> Hamish
>
>

--001a11c03862dd79af054446358e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">That makes sense. The zImage bundling and fitImage bundli=
ng run as separate tasks that are both dependent on INITRAMFS_IMAGE being g=
enerated. Once the dependency is finished, they&#39;ll both can run in para=
llel.=C2=A0 I need to read up on what &#39;set +e&#39; does in this context=
.</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Dec 22,=
 2016 7:07 AM, &quot;Hamish Guthrie&quot; &lt;<a href=3D"mailto:Hamish.Guth=
rie@kistler.com">Hamish.Guthrie@kistler.com</a>&gt; wrote:<br type=3D"attri=
bution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">Hi Rick,<br>
<br>
I found the cause of the problem, but I possibly still do not understand wh=
y this happens. It turns out that in fact two processes try to decompress t=
he cpio.xxx file concurrently when building the fitImage. There is somethin=
g similar which happens with tar - see this commit: 8c5f3454971074d3f1de7bc=
de9481e<wbr>881221e076.<br>
<br>
This patch fixes the issue<br>
<br>
diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass<br>
index fa598cf..395973f 100644<br>
--- a/meta/classes/kernel.bbclass<br>
+++ b/meta/classes/kernel.bbclass<br>
@@ -160,6 +160,7 @@ EXTRA_OEMAKE =3D &quot; HOSTCC=3D&quot;${BUILD_CC}&quot=
; HOSTCPP=3D&quot;${BUILD_CPP}&quot;&quot;<br>
=C2=A0KERNEL_ALT_IMAGETYPE ??=3D &quot;&quot;<br>
<br>
=C2=A0copy_initramfs() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0set +e<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;Copying initramfs into ./usr ...&quo=
t;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # In case the directory is not created yet from=
 the first pass compile:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mkdir -p ${B}/usr<br>
<br>
- Hamish<br>
<br>
<br>
On Wed, Dec 21, 2016 at 10:11 AM, Hamish Guthrie &lt;<a href=3D"mailto:Hami=
sh.Guthrie@kistler.com">Hamish.Guthrie@kistler.com</a>&gt; wrote:<br>
Hi Rick,<br>
<br>
&gt;&gt; What happens if you use core-image-minimal-initramfs for INITRAMFS=
_IMAGE?=C2=A0<br>
<br>
I just tried that and Yocto complains with Nothing PROVIDES &#39;core-image=
-minimal-initramfs&#39;<br>
<br>
&gt;&gt; I think the main problem is that you are telling Yocto to include =
the full rootfs image as an initramfs instead of the reduced, special-purpo=
se initramfs image.<br>
<br>
I am not sure that Yocto should give a damn about what I am trying to put i=
nto my initramfs, if I am stupid enough to include a 100G image into my ini=
tramfs, it is my problem, not Yocto&#39;s! If I am stupid enough to do that=
, knowing that I only have 256M RAM, I should be the one bitten!<br>
<br>
I have tried doing the same thing with a special reduced filesystem for our=
 update software (which is about 4M, by the way), and I get the same error =
with (Unexpected end of input), so I do not believe for a moment it is the =
size of the initramfs. I suspect something in the kernel.bbclass, but for t=
he life of me I cannot see why it would fail. It should just WORK!<br>
<br>
Hamish<br>
<br>
</blockquote></div></div>

--001a11c03862dd79af054446358e--
