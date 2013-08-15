Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D921E0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 14:04:26 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id f4so2046353iea.23
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 14:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dcjBavLzVUv9ackQIawmaI35uqV1csD5jdCXIfk+Whk=;
	b=k1oxyLHwZrj1OWkQb8JWmSWt7s3Bjyd8/agjwhfnfT6lVCgZvF721yiHVRrmthqgMM
	83XjlRlmP+lnBaIccwHdtdeq5jq5ZaAMZUO6CmPk+RAAsG+r9Uw+3KiAl/nixrrv66Sw
	lYaSKSKYgTkR6lDb8UH2d/sRvxtChe8n/OwHqOwMep0P66gqnNaPL4MpoPioyyCfYgpg
	g5jE8S1bmCQba/HVsflZBmMIXVm4+TWGzbAilhlKc4mHJAhGC/vv1eonFw4HgR2IGNaq
	LngNK7eQxXHhPb+hhg+qlpHo8XF13IjFOaG2p2k+EU2v1JDV2O9G/GttbWVqNnoGAOTQ
	AUXQ==
X-Received: by 10.50.26.36 with SMTP id i4mr3083975igg.33.1376600666156; Thu,
	15 Aug 2013 14:04:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.216.195 with HTTP; Thu, 15 Aug 2013 14:03:56 -0700 (PDT)
In-Reply-To: <CALb224_XTEf-9eX9d9ERZpHv7RRm_hGM8N8N6d+x-oSswrH-qA@mail.gmail.com>
References: <CALb224_XTEf-9eX9d9ERZpHv7RRm_hGM8N8N6d+x-oSswrH-qA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Aug 2013 14:03:56 -0700
Message-ID: <CAMKF1sqWdxTaejsvtzwJVHjgxPNGrPJPRWVhJ=CoY6DdSKp5zw@mail.gmail.com>
To: Leo Schwab <lschwab@sensity.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How Does Yocto Fill In UBOOT_MACHINE?
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
X-List-Received-Date: Thu, 15 Aug 2013 21:04:28 -0000
Content-Type: multipart/alternative; boundary=047d7bd76fe0b435db04e402d125

--047d7bd76fe0b435db04e402d125
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 15, 2013 at 11:15 AM, Leo Schwab <lschwab@sensity.com> wrote:

> meta-belis3/recipes-bsp/u-boot/u-boot-imx_2009.08.bbappend):
>
> ----
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
> SRC_URI_append_ourboard =3D "file://u-boot-ourboard.patch"
>
> UBOOT_MACHINE_ourboard =3D "mx6_ourboard_config"
>


=E2=80=8Bthe above would mean when MACHINE is ourboard then value for UBOOT=
_MACHINE
will be mx6_ourboard_config=E2=80=8B



> ----
>
> I then ran 'bitbake u-boot', and was rewarded with a u-boot image
> built for 'ourboard' -- the logs confirm it was built using the target
> mx6_ourboard_config.
>
> ...Except I never told it to build 'ourboard';
>


=E2=80=8BI doubt that. Whats your default MACHINE may be in your local.conf=
 ?=E2=80=8B



> I haven't modified
> conf/machine/ourboard.conf yet.  It should still be building
> mx6dl_sabresd_config.  So UBOOT_MACHINE is magically picking up a
> different value.  If I remove my .bbappend file, then it resumes using
> the target mx6dl_sabresd_config.
>
> So:  What are the rules governing how UBOOT_MACHINE acquires its final
> value?  What did I neglect to consider?  Is my .bbappend bogus?  Is
> there some magic setting buried somewhere else I need to be aware of?
> Thank you in advance for all suggestions.
>
>

--047d7bd76fe0b435db04e402d125
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Aug 15, 2013 at 11:15 AM, Leo Schwab <span dir=3D"ltr">&lt;<a href=
=3D"mailto:lschwab@sensity.com" target=3D"_blank">lschwab@sensity.com</a>&g=
t;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":2ga" style=3D"overflow:hidden">m=
eta-belis3/recipes-bsp/u-boot/u-boot-imx_2009.08.bbappend):<br>
<br>
----<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
SRC_URI_append_ourboard =3D &quot;file://u-boot-ourboard.patch&quot;<br>
<br>
UBOOT_MACHINE_ourboard =3D &quot;mx6_ourboard_config&quot;<br></div></block=
quote><div><br></div><div><br></div><div><div style=3D"font-family:&#39;cou=
rier new&#39;,monospace;font-size:small" class=3D"gmail_default">=E2=80=8Bt=
he above would mean when MACHINE is ourboard then value for UBOOT_MACHINE w=
ill be mx6_ourboard_config=E2=80=8B</div>

<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2ga" =
style=3D"overflow:hidden">
----<br>
<br>
I then ran &#39;bitbake u-boot&#39;, and was rewarded with a u-boot image<b=
r>
built for &#39;ourboard&#39; -- the logs confirm it was built using the tar=
get<br>
mx6_ourboard_config.<br>
<br>
...Except I never told it to build &#39;ourboard&#39;; </div></blockquote><=
div><br></div><div><br></div><div><div style=3D"font-family:&#39;courier ne=
w&#39;,monospace;font-size:small" class=3D"gmail_default">=E2=80=8BI doubt =
that. Whats your default MACHINE may be in your local.conf ?=E2=80=8B</div>

<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2ga" =
style=3D"overflow:hidden">I haven&#39;t modified<br>
conf/machine/ourboard.conf yet. =C2=A0It should still be building<br>
mx6dl_sabresd_config. =C2=A0So UBOOT_MACHINE is magically picking up a<br>
different value. =C2=A0If I remove my .bbappend file, then it resumes using=
<br>
the target mx6dl_sabresd_config.<br>
<br>
So: =C2=A0What are the rules governing how UBOOT_MACHINE acquires its final=
<br>
value? =C2=A0What did I neglect to consider? =C2=A0Is my .bbappend bogus? =
=C2=A0Is<br>
there some magic setting buried somewhere else I need to be aware of?<br>
Thank you in advance for all suggestions.<br>
<br></div></blockquote></div><br><br></div></div>

--047d7bd76fe0b435db04e402d125--
