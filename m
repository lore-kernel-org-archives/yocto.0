Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8553EE00CF3; Wed, 27 Sep 2017 06:05:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8571E00C62
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 06:05:56 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id d192so6987132itd.1
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 06:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QfYKXk+tCi8T0I1zaX7GMIIAxqnPIaZWS4TwhID29h8=;
	b=iHFNFbCIr4nnXP88Fu5fe2r7pngOoWUTYOGvqd920g4JZqYe6xlbbSYM2lQgPnCFn2
	AYSfyGKXDATGf6JacHp/Wdv2bNkTMJ3cemRSs9xzFGodTXhgbfUaVm8f2Ni28UlllKV6
	Z+YJYwNu4Ho6gNQv1kN6CUkE7bBGxHrmVoBflEW9JWgH8Jc0hABrfROabuanjPHj9LaC
	6qguKs5qvjaEzBHOG+BhWzIqlnQlHOCIwYNH8Dxgxc05ifFGKjRdzgZtxu9xIH7mAXNi
	y+k8so4TNWOA/L1eH+huNYVzZoviKAlDzoAH5b1U7YA26gBXDVsbyjMHoBUs1Eid01KW
	4uHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QfYKXk+tCi8T0I1zaX7GMIIAxqnPIaZWS4TwhID29h8=;
	b=dDR0DW2bEoWj2aF5VDD+yA8Z73fZY4LMBh3MZSSFG2W0UXEP/8WpEUHsTM3KZV0GEX
	LK2ecVi8yUYCYi2KfA9wZjSoD8aq6fUuzo+pdmvSixDaQeItljMb879NuI45/uax8CHA
	s5rAwGob29v2YoEDneTNLRtOZXEoS7OiVt/SXZjAvS4bPvbEREYk2NoN1Oboog7hkmGz
	rYRfS7kDm4OuNoe3aXzoCPFsiQfBc71KxN7/CeUINsAOawBGGGf4+RiNF+aniRj7hpYz
	Qq+umT9lYrkG6yhQ8sP+DOH4uFKN7PSXMmUKnAJo8xc/mURMWlPxO7z/Dj/GEYPG32Xw
	DBAQ==
X-Gm-Message-State: AHPjjUjTvBK/P35PgLEviZKDmFoHGLEwUG852+Hq4pWIcZVBi9hx/trW
	KRL/+Fyb+9+ymXmCaPtkwO4V3DXYurSkK2EQ9t6eKg==
X-Google-Smtp-Source: AOwi7QAlNm4F55UtO32qrPyRK8pziAyxq2O5QNPqmgfX2PJKWQ4S9c1l1sSxM4rI/QgO/jOJWtY8c5ro3DgB+TfvLwU=
X-Received: by 10.36.162.67 with SMTP id o3mr427411iti.27.1506517556281; Wed,
	27 Sep 2017 06:05:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Wed, 27 Sep 2017 06:05:35 -0700 (PDT)
In-Reply-To: <DM5PR05MB2954E471F11F1ADF08E544CABB780@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LYWJFAChPkcOeU4ESOzCZ0XkrVswRnsh7jz=4QnKZ6uWA@mail.gmail.com>
	<DM5PR05MB29543B944CF11354749DE3C6BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LZ3+prEXi4eJH-0qcg_mp7CShyVzGg2=nY3c3s585CQ9A@mail.gmail.com>
	<DM5PR05MB2954E471F11F1ADF08E544CABB780@DM5PR05MB2954.namprd05.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Sep 2017 14:05:35 +0100
Message-ID: <CAJTo0LavAJr8D+kuQ_6FkjA-D-XotT7BcrCA3W7bv_HL2EpuxA@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Wed, 27 Sep 2017 13:05:57 -0000
Content-Type: multipart/alternative; boundary="f403045fb2a2ca5874055a2b7379"

--f403045fb2a2ca5874055a2b7379
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 27 September 2017 at 13:57, Bryan Evenson <bevenson@melinkcorp.com>
wrote:

>
> Feel free to compress and email it directly to me, but simply grepping fo=
r
> EINVAL (invalid argument error) might be enough.
>
>
>
> I did a search on EINVAL and I got a bunch of entries of that look like
> this:
>
>
>
>   linkat(AT_FDCWD, =E2=80=9C<source_full_path>=E2=80=9D, AT_FDCWD, =E2=80=
=9C<dest_full_path>=E2=80=9D, 0)
> =3D -1 EINVAL (Invalid argument)
>
>
>
> I checked a few entries by doing a stat on the source and destination.  I=
n
> each case, the source file exists at the specified path, was owned by the
> user account with which I=E2=80=99m doing the build, and had access right=
s of
> 0644.  Also in each case, the destination file did not exist but the
> destination directory did exist, the destination directory was owned by t=
he
> user account with which I=E2=80=99m doing the build, and the destination =
directory
> had access rights of 0755.  From reading the man page for linkat, linkat
> should only return EINVAL if the flags argument is invalid, and 0 should =
be
> a valid value for flags.
>
>
>
> I think there may be something missing from WSL=E2=80=99s implementation =
of
> linkat.  I am doing OPKG packages, so I=E2=80=99m guessing there is somet=
hing
> different about the resulting function calls in the libc-package class as
> opposed to the package_ipk class.  I think I may enable the other package
> types to see if it is as successfully with RPMs and DEB packages.  I=E2=
=80=99m also
> going to see if there is an easier way to reproduce the problem to report
> the issue to Microsoft.
>

Good digging.  At least you can replicate it on demand, and have a strace
showing it.  This bit of packaging happens before the rpm/opkg/deb specific
code, so changing the packaging format won't help.

Ross

--f403045fb2a2ca5874055a2b7379
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 27 September 2017 at 13:57, Bryan Evenson <span dir=3D"=
ltr">&lt;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">beven=
son@melinkcorp.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_-3689249494315933624WordSection1">
<div><div><span class=3D""><p class=3D"MsoNormal" style=3D"margin-left:.5in=
"><br>Feel free to compress and email it directly to me, but simply greppin=
g for EINVAL (invalid argument error) might be enough.<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
</span><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif">I did a search on EINVAL and I got a bunch o=
f entries of that look like this:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">=C2=A0 linkat(AT_FDCWD, =E2=80=9C&lt;source_full_pa=
th&gt;=E2=80=9D, AT_FDCWD, =E2=80=9C&lt;dest_full_path&gt;=E2=80=9D, 0) =3D=
 -1 EINVAL (Invalid argument)<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">I checked a few entries by doing a stat on the sour=
ce and destination.=C2=A0 In each case, the source file exists at the speci=
fied path, was owned by the user account with which
 I=E2=80=99m doing the build, and had access rights of 0644.=C2=A0 Also in =
each case, the destination file did not exist but the destination directory=
 did exist, the destination directory was owned by the user account with wh=
ich I=E2=80=99m doing the build, and the destination
 directory had access rights of 0755.=C2=A0 From reading the man page for l=
inkat, linkat should only return EINVAL if the flags argument is invalid, a=
nd 0 should be a valid value for flags.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif">I think there may be something missing from WSL=E2=
=80=99s implementation of linkat.=C2=A0 I am doing OPKG packages, so I=E2=
=80=99m guessing there is something different about the resulting function
 calls in the libc-package class as opposed to the package_ipk class.=C2=A0=
 I think I may enable the other package types to see if it is as successful=
ly with RPMs and DEB packages.=C2=A0 I=E2=80=99m also going to see if there=
 is an easier way to reproduce the problem to report
 the issue to Microsoft.</span></p></div></div></div></div></blockquote><di=
v><br></div><div>Good digging.=C2=A0 At least you can replicate it on deman=
d, and have a strace showing it.=C2=A0 This bit of packaging happens before=
 the rpm/opkg/deb specific code, so changing the packaging format won&#39;t=
 help.</div><div><br></div><div>Ross</div></div></div></div>

--f403045fb2a2ca5874055a2b7379--
