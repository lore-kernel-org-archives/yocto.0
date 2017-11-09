Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9CB0E00CE8; Thu,  9 Nov 2017 03:26:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF3BCE00CE8
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 03:26:13 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id l196so10321422itl.4
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 03:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=nspULrgDenD7SQdVony76+UNDwfvMzjytmGOxLwoK0U=;
	b=anFEG7r4L/M5Bq+bZeEaCTJ49zR7UXY8d8lXNRRpSVqv9yDlokFPVqBDJK7xNp7Vvo
	QT+6mCsgbceEceU8P40uMp7ChfakiGIT1mCa4Sjj26LJc0DM8ixN5hFQEeI6lt2J0KoJ
	3vSFV09xgZ3fM20gN0KbZtm2Hv9Spyd8ITZ2c/qQmLz2pM23VZ3ahcQBDmIkMsbUH1TT
	utokhnP/FO61dHCbOBUm4XH2unOxoOX9XNnpY8fyh7pVDcEcwZhO2HPb+x0jp8GrPd7M
	RYxHLC4uAmiW9L50pid65mmkLM27XICROMJZVenJTVPUw5FzT+wYCL/aMbWm9psyTDmS
	NfQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=nspULrgDenD7SQdVony76+UNDwfvMzjytmGOxLwoK0U=;
	b=YzH7AYFJrja6QH/klREkIiGCD6MlgM12L+az0ap6J0BrYw1KiBHokjvOZ2ZNsoG5QL
	6PwUbLlLvwBbr0XOUxaaX3VaB8fzRSs46alq3se779dQREJUHVpcn9elwEv6KkWPS/nW
	p2YMvVBsrBWEDqlytvqRAHiTQZZe45YhuK7XzHFT0POvnhi9wd4Bw5IojHDradc55Xrf
	Fm6ztnoKgrIdjFIjW9tByWPD/2kFWYrd6bCa41YJdGQL0+DEfc2SPCWASohU1FBz6JV+
	4hAVObu3CbxWUElLhldNePguHoDLYkRCGBkRBKhfa/PNYdL0PSzehRBChga2Ry4Way1/
	He2Q==
X-Gm-Message-State: AJaThX5/NUbj0x3d0NP5EDUQdg3S1hXkewMTuCBS9fW8NnPhs7JVVWDI
	TB9LWSLbGJPgfsrC8xoAFCaTF5swmS0cdXVPnRx+Sg==
X-Google-Smtp-Source: AGs4zMYHP/IhK6H7wDwlkHjB1CZ63ZYUtdohBLMlz1aaBqVJNvWfwZ4LoiNpi4xJzei6j9ho892yJMiTmElEh8oOeVA=
X-Received: by 10.36.81.21 with SMTP id s21mr111384ita.144.1510226773009; Thu,
	09 Nov 2017 03:26:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Thu, 9 Nov 2017 03:25:52 -0800 (PST)
In-Reply-To: <CAJ2oMhKQ=R615oVu2i-_verahERksqhMtxKq0RkjcxCmXnbKkQ@mail.gmail.com>
References: <CAJ2oMhLQJGBZZW8uCG5C9HJDFU7=LiLB9f28Sv6D1Cm+wFiPWg@mail.gmail.com>
	<CAJTo0LZ4WA8cRS3OcryYQubQTBFPyA=Gkf_e_Er1rV7T4wRdsA@mail.gmail.com>
	<CAJ2oMhKQ=R615oVu2i-_verahERksqhMtxKq0RkjcxCmXnbKkQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Nov 2017 11:25:52 +0000
Message-ID: <CAJTo0LYW2tz6BryyNBLMpBkQPURB-VTqe_mW+a0+O8E7Uz+nng@mail.gmail.com>
To: Ran Shalit <ranshalit@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: apt-get
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
X-List-Received-Date: Thu, 09 Nov 2017 11:26:15 -0000
Content-Type: multipart/alternative; boundary="001a113a714655fdcd055d8b1236"

--001a113a714655fdcd055d8b1236
Content-Type: text/plain; charset="UTF-8"

(adding yocto@ back to CC)

I don't know where you saw that but that is very wrong.

Set PACKAGE_CLASSES to the package manager that you want to use.  If you
want to use opkg, then PACKAGE_CLASSES should be package_ipk (historical
naming).  If you want opkg to be present in the images ensure
IMAGE_FEATURES contains package-management.

PACKAGE_CLASSES controls what package formats are generated, and multiple
are supported for flexibility and testing purposes.  For real world use
there's no need to have more than one.  The first entry is the package type
that is actually used in the rootfs generation.

package-management needs to be in IMAGE_FEATURES to both get the tools
installed (opkg in your case, apt-get for dpkg, yum for rpm) and to keep
the package management database on the disk.  By removing
package-management from IMAGE_FEATURES all traces of the package manager
will be removed from the rootfs, which is useful if you don't want to
support on-target use of the package manager.

Ross

On 9 November 2017 at 06:45, Ran Shalit <ranshalit@gmail.com> wrote:

> Hi,
>
> We also consider using opkg.
>
> Now, I have some confusion as to how to install opkg.
> I see in some documentation that it should be installed as following:
>
> PACKAGE_CLASSES ?= "package_rpm package_ipk"
> IMAGE_INSTALL_append = " opkg "
>
> Does it mean there are 2 package managers active ?
> How can we know which of them is active ?
>
>
> If "?=" means that it shall be defined only if not defined previously,
> so if it is already defined as  package_rpm , it might not install
> package_ipk?
> Doesn't it mean that "opkg" might be installed without the required
> package_ipk ?
>
> Thank you,
> Ran
>
> On Wed, Nov 8, 2017 at 9:26 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> > Set PACKAGE_CLASSES to package_deb, and then ensure IMAGE_FEATURES
> includes
> > package-management.
> >
> > Ross
> >
> > On 8 November 2017 at 19:16, Ran Shalit <ranshalit@gmail.com> wrote:
> >>
> >> Hello,
> >>
> >> Is there a way to add "apt-get" command (and package manager) in yocto ?
> >>
> >> Thank you,
> >> Ran
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>

--001a113a714655fdcd055d8b1236
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>(adding yocto@ back to CC)</div><div><br></div>I don&=
#39;t know where you saw that but that is very wrong.<div><br></div><div>Se=
t PACKAGE_CLASSES to the package manager that you want to use.=C2=A0 If you=
 want to use opkg, then PACKAGE_CLASSES should be package_ipk (historical n=
aming).=C2=A0 If you want opkg to be present in the images ensure IMAGE_FEA=
TURES contains package-management.</div><div><br></div><div>PACKAGE_CLASSES=
 controls what package formats are generated, and multiple are supported fo=
r flexibility and testing purposes.=C2=A0 For real world use there&#39;s no=
 need to have more than one.=C2=A0 The first entry is the package type that=
 is actually used in the rootfs generation.</div><div><br></div><div>packag=
e-management needs to be in IMAGE_FEATURES to both get the tools installed =
(opkg in your case, apt-get for dpkg, yum for rpm) and to keep the package =
management database on the disk.=C2=A0 By removing package-management from =
IMAGE_FEATURES all traces of the package manager will be removed from the r=
ootfs, which is useful if you don&#39;t want to support on-target use of th=
e package manager.</div><div><br></div><div>Ross</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On 9 November 2017 at 06:45, Ran=
 Shalit <span dir=3D"ltr">&lt;<a href=3D"mailto:ranshalit@gmail.com" target=
=3D"_blank">ranshalit@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi,<br>
<br>
We also consider using opkg.<br>
<br>
Now, I have some confusion as to how to install opkg.<br>
I see in some documentation that it should be installed as following:<br>
<br>
PACKAGE_CLASSES ?=3D &quot;package_rpm package_ipk&quot;<br>
IMAGE_INSTALL_append =3D &quot; opkg &quot;<br>
<br>
Does it mean there are 2 package managers active ?<br>
How can we know which of them is active ?<br>
<br>
<br>
If &quot;?=3D&quot; means that it shall be defined only if not defined prev=
iously,<br>
so if it is already defined as=C2=A0 package_rpm , it might not install<br>
package_ipk?<br>
Doesn&#39;t it mean that &quot;opkg&quot; might be installed without the re=
quired<br>
package_ipk ?<br>
<br>
Thank you,<br>
Ran<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Wed, Nov 8, 2017 at 9:26 PM, Burton, Ross &lt;<a href=3D"mailto:ross.bur=
ton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt; Set PACKAGE_CLASSES to package_deb, and then ensure IMAGE_FEATURES inc=
ludes<br>
&gt; package-management.<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On 8 November 2017 at 19:16, Ran Shalit &lt;<a href=3D"mailto:ranshali=
t@gmail.com">ranshalit@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt; Is there a way to add &quot;apt-get&quot; command (and package man=
ager) in yocto ?<br>
&gt;&gt;<br>
&gt;&gt; Thank you,<br>
&gt;&gt; Ran<br>
&gt;&gt; --<br>
&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/y=
octo</a><br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a113a714655fdcd055d8b1236--
