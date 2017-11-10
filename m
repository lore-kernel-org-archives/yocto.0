Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 087B6E00D18; Fri, 10 Nov 2017 00:06:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD80DE00CE2
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 00:06:22 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id z3so885288wme.5
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 00:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=r6Upu1+Jc4B4VdYLWE9RGhneqKnm1DOu7M3OeECvFls=;
	b=icYSwtYr/Vvn1QHXlZuiDs/R3Jy6ye05JJ04l16vxUdEGfHA3kv3MIs+AwtT1Asv/+
	hO27IJy7c017ztLUSlrcu6d8c5+SkckqgpPVrY4z4kZKtgb+FjeSh6mopY6AqUPTF0nL
	d1QO7XmohsGfPMvzauOOjoZ4kisc4Zq5QpPGvekfzvEoQcXdkVxMZx5RE+FBkzJOTgaE
	SZcLaSKsGu1/2radf+r5wBuQzGu17ZGEao6OsoEKACH8CTagTPOdyNid9XRBugS3I/Hh
	i3yeLBunnoMvLfriXkSIZeWkP+az1WDh+jIjirZR7RY+S1mcc6BnJ5iwbQAUsdQUF53z
	0YQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=r6Upu1+Jc4B4VdYLWE9RGhneqKnm1DOu7M3OeECvFls=;
	b=HZL31hmDIK2Y5kHeyUomCtbUG8rnWKI9OcSXKS4Kp+fA+EhNSGG5GHBG2O/mc9b27f
	P86VjBlH6c3rUJQ2pOKESDU6QKuor9dYArIbQwjSr5rmIEeMz7yeLRWqg9BWnOdkSWts
	SKCeElC4XbSvmDEn6X6wV5kTp8oY/3JVB15nLdQp/FHoyazXOccg7Er2u9qp0YDtsMrk
	b0MU6BqyCSMDfIoXW1lLNitsZE6gsQPzqGOFVBVMI3d/kWs1kpHZoBQgf6hDe/1GpDNB
	8JvaMPvvZJHrJI+QAdNon1Ib0JvHO3oUwopV0duUBeTbsF2YoV/n7yzl+N8pp8dJ6V84
	Nsvg==
X-Gm-Message-State: AJaThX6u43SzxeFd5DT6VFi3T/DpyJPmlr/voiOG9l5wU6iB8jYeJhHx
	IfqW9Fg9FL+h4kraRFwj8kwdtTM2jxTPt26oEUA=
X-Google-Smtp-Source: ABhQp+RhtS8TH/WVnFaolmxkwkXCRu2L0x3MXwlNzp6J9VdCBrxW+k1PGN4S8oC4SdEWYQOrTdDDHpLs7c2CQgd6jn4=
X-Received: by 10.80.192.27 with SMTP id r27mr1408388edb.138.1510301181376;
	Fri, 10 Nov 2017 00:06:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.135.197 with HTTP; Fri, 10 Nov 2017 00:06:20 -0800 (PST)
In-Reply-To: <CAJ2oMhLuRMSvyZkjcdek6AUVHLw81semMer1+=nmZPQ8eQOP0w@mail.gmail.com>
References: <CAJ2oMhLQJGBZZW8uCG5C9HJDFU7=LiLB9f28Sv6D1Cm+wFiPWg@mail.gmail.com>
	<CAJTo0LZ4WA8cRS3OcryYQubQTBFPyA=Gkf_e_Er1rV7T4wRdsA@mail.gmail.com>
	<CAJ2oMhKQ=R615oVu2i-_verahERksqhMtxKq0RkjcxCmXnbKkQ@mail.gmail.com>
	<CAJTo0LYW2tz6BryyNBLMpBkQPURB-VTqe_mW+a0+O8E7Uz+nng@mail.gmail.com>
	<CAJ2oMh+0YBDwjFLu+_1fUQ6XyC6=j0jC_yR_n9D1msxRK-qn4g@mail.gmail.com>
	<CAJTo0LZvizhPiiOA5jxsoYPRRDZcoKq601gkk6APHwmCUg0HdQ@mail.gmail.com>
	<CAJ2oMhLuRMSvyZkjcdek6AUVHLw81semMer1+=nmZPQ8eQOP0w@mail.gmail.com>
From: Ran Shalit <ranshalit@gmail.com>
Date: Fri, 10 Nov 2017 10:06:20 +0200
Message-ID: <CAJ2oMhLej=EWrQCjXkywWOO0jtuWeKZmVXPU5cW_+qcJ7go3YQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 10 Nov 2017 08:06:24 -0000
Content-Type: multipart/alternative; boundary="94eb2c1cd14a6b81c7055d9c658d"

--94eb2c1cd14a6b81c7055d9c658d
Content-Type: text/plain; charset="UTF-8"

If I can please ask one last on this issue:

We decided to try "smart", but it seems that its mirrors list are all
empty.
Can you please point me as to how to fill the mirror list (I tried to
search on this, but haven't found information) ?

Thank you very much,
Ran



On Thu, Nov 9, 2017 at 5:11 PM, Ran Shalit <ranshalit@gmail.com> wrote:

> I now see that I have smart:
> root@lec-imx6:~# smart
> Usage: smart command [options] [arguments]
>
> I was not familiar with "smart" command before, so that is good enough.
>
> The image is based on fsl-image-qt5 image  (lec-imx6 from adlink)
>
> Thanks,
> Ran
>
> On Thu, Nov 9, 2017 at 5:01 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> > What release?  Until recently we used smart not yum.
> >
> > Ross
> >
> > On 9 November 2017 at 14:56, Ran Shalit <ranshalit@gmail.com> wrote:
> >>
> >> I've added in local.conf both:
> >> PACKAGE_CLASSES = "package_rpm"
> >> IMAGE_FEATURES += "package-management"
> >>
> >> Yet, I don't have yum command, only rpm command.
> >>
> >> Regards,
> >> Ran
> >>
> >> On Thu, Nov 9, 2017 at 1:25 PM, Burton, Ross <ross.burton@intel.com>
> >> wrote:
> >> > (adding yocto@ back to CC)
> >> >
> >> > I don't know where you saw that but that is very wrong.
> >> >
> >> > Set PACKAGE_CLASSES to the package manager that you want to use.  If
> you
> >> > want to use opkg, then PACKAGE_CLASSES should be package_ipk
> (historical
> >> > naming).  If you want opkg to be present in the images ensure
> >> > IMAGE_FEATURES
> >> > contains package-management.
> >> >
> >> > PACKAGE_CLASSES controls what package formats are generated, and
> >> > multiple
> >> > are supported for flexibility and testing purposes.  For real world
> use
> >> > there's no need to have more than one.  The first entry is the package
> >> > type
> >> > that is actually used in the rootfs generation.
> >> >
> >> > package-management needs to be in IMAGE_FEATURES to both get the tools
> >> > installed (opkg in your case, apt-get for dpkg, yum for rpm) and to
> keep
> >> > the
> >> > package management database on the disk.  By removing
> package-management
> >> > from IMAGE_FEATURES all traces of the package manager will be removed
> >> > from
> >> > the rootfs, which is useful if you don't want to support on-target use
> >> > of
> >> > the package manager.
> >> >
> >> > Ross
> >> >
> >> > On 9 November 2017 at 06:45, Ran Shalit <ranshalit@gmail.com> wrote:
> >> >>
> >> >> Hi,
> >> >>
> >> >> We also consider using opkg.
> >> >>
> >> >> Now, I have some confusion as to how to install opkg.
> >> >> I see in some documentation that it should be installed as following:
> >> >>
> >> >> PACKAGE_CLASSES ?= "package_rpm package_ipk"
> >> >> IMAGE_INSTALL_append = " opkg "
> >> >>
> >> >> Does it mean there are 2 package managers active ?
> >> >> How can we know which of them is active ?
> >> >>
> >> >>
> >> >> If "?=" means that it shall be defined only if not defined
> previously,
> >> >> so if it is already defined as  package_rpm , it might not install
> >> >> package_ipk?
> >> >> Doesn't it mean that "opkg" might be installed without the required
> >> >> package_ipk ?
> >> >>
> >> >> Thank you,
> >> >> Ran
> >> >>
> >> >> On Wed, Nov 8, 2017 at 9:26 PM, Burton, Ross <ross.burton@intel.com>
> >> >> wrote:
> >> >> > Set PACKAGE_CLASSES to package_deb, and then ensure IMAGE_FEATURES
> >> >> > includes
> >> >> > package-management.
> >> >> >
> >> >> > Ross
> >> >> >
> >> >> > On 8 November 2017 at 19:16, Ran Shalit <ranshalit@gmail.com>
> wrote:
> >> >> >>
> >> >> >> Hello,
> >> >> >>
> >> >> >> Is there a way to add "apt-get" command (and package manager) in
> >> >> >> yocto
> >> >> >> ?
> >> >> >>
> >> >> >> Thank you,
> >> >> >> Ran
> >> >> >> --
> >> >> >> _______________________________________________
> >> >> >> yocto mailing list
> >> >> >> yocto@yoctoproject.org
> >> >> >> https://lists.yoctoproject.org/listinfo/yocto
> >> >> >
> >> >> >
> >> >
> >> >
> >
> >
>

--94eb2c1cd14a6b81c7055d9c658d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>If I can please ask one last on this issue:=
<div><br></div><div>We decided to try &quot;smart&quot;, but it seems that =
its mirrors list are all empty.=C2=A0</div><div>Can you please point me as =
to how to fill the mirror list (I tried to search on this, but haven&#39;t =
found information) ?<br></div><div><br></div><div>Thank you very much,</div=
><div>Ran</div><div><br></div><div><br></div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Thu, Nov 9, 2017 at 5:11 PM, Ran Shali=
t <span dir=3D"ltr">&lt;<a href=3D"mailto:ranshalit@gmail.com" target=3D"_b=
lank">ranshalit@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">I now see that I have smart:<br>
root@lec-imx6:~# smart<br>
Usage: smart command [options] [arguments]<br>
<br>
I was not familiar with &quot;smart&quot; command before, so that is good e=
nough.<br>
<br>
The image is based on fsl-image-qt5 image=C2=A0 (lec-imx6 from adlink)<br>
<br>
Thanks,<br>
Ran<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Thu, Nov 9, 2017 at 5:01 PM, Burton, Ross &lt;<a href=3D"mailto:ross.bur=
ton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt; What release?=C2=A0 Until recently we used smart not yum.<br>
&gt;<br>
&gt; Ross<br>
&gt;<br>
&gt; On 9 November 2017 at 14:56, Ran Shalit &lt;<a href=3D"mailto:ranshali=
t@gmail.com">ranshalit@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ve added in local.conf both:<br>
&gt;&gt; PACKAGE_CLASSES =3D &quot;package_rpm&quot;<br>
&gt;&gt; IMAGE_FEATURES +=3D &quot;package-management&quot;<br>
&gt;&gt;<br>
&gt;&gt; Yet, I don&#39;t have yum command, only rpm command.<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Ran<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Nov 9, 2017 at 1:25 PM, Burton, Ross &lt;<a href=3D"mailto=
:ross.burton@intel.com">ross.burton@intel.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; (adding yocto@ back to CC)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I don&#39;t know where you saw that but that is very wrong.<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Set PACKAGE_CLASSES to the package manager that you want to u=
se.=C2=A0 If you<br>
&gt;&gt; &gt; want to use opkg, then PACKAGE_CLASSES should be package_ipk =
(historical<br>
&gt;&gt; &gt; naming).=C2=A0 If you want opkg to be present in the images e=
nsure<br>
&gt;&gt; &gt; IMAGE_FEATURES<br>
&gt;&gt; &gt; contains package-management.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; PACKAGE_CLASSES controls what package formats are generated, =
and<br>
&gt;&gt; &gt; multiple<br>
&gt;&gt; &gt; are supported for flexibility and testing purposes.=C2=A0 For=
 real world use<br>
&gt;&gt; &gt; there&#39;s no need to have more than one.=C2=A0 The first en=
try is the package<br>
&gt;&gt; &gt; type<br>
&gt;&gt; &gt; that is actually used in the rootfs generation.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; package-management needs to be in IMAGE_FEATURES to both get =
the tools<br>
&gt;&gt; &gt; installed (opkg in your case, apt-get for dpkg, yum for rpm) =
and to keep<br>
&gt;&gt; &gt; the<br>
&gt;&gt; &gt; package management database on the disk.=C2=A0 By removing pa=
ckage-management<br>
&gt;&gt; &gt; from IMAGE_FEATURES all traces of the package manager will be=
 removed<br>
&gt;&gt; &gt; from<br>
&gt;&gt; &gt; the rootfs, which is useful if you don&#39;t want to support =
on-target use<br>
&gt;&gt; &gt; of<br>
&gt;&gt; &gt; the package manager.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Ross<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On 9 November 2017 at 06:45, Ran Shalit &lt;<a href=3D"mailto=
:ranshalit@gmail.com">ranshalit@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; We also consider using opkg.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Now, I have some confusion as to how to install opkg.<br>
&gt;&gt; &gt;&gt; I see in some documentation that it should be installed a=
s following:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; PACKAGE_CLASSES ?=3D &quot;package_rpm package_ipk&quot;<=
br>
&gt;&gt; &gt;&gt; IMAGE_INSTALL_append =3D &quot; opkg &quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Does it mean there are 2 package managers active ?<br>
&gt;&gt; &gt;&gt; How can we know which of them is active ?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; If &quot;?=3D&quot; means that it shall be defined only i=
f not defined previously,<br>
&gt;&gt; &gt;&gt; so if it is already defined as=C2=A0 package_rpm , it mig=
ht not install<br>
&gt;&gt; &gt;&gt; package_ipk?<br>
&gt;&gt; &gt;&gt; Doesn&#39;t it mean that &quot;opkg&quot; might be instal=
led without the required<br>
&gt;&gt; &gt;&gt; package_ipk ?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thank you,<br>
&gt;&gt; &gt;&gt; Ran<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Wed, Nov 8, 2017 at 9:26 PM, Burton, Ross &lt;<a href=
=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt;<br>
&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; Set PACKAGE_CLASSES to package_deb, and then ensure =
IMAGE_FEATURES<br>
&gt;&gt; &gt;&gt; &gt; includes<br>
&gt;&gt; &gt;&gt; &gt; package-management.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Ross<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; On 8 November 2017 at 19:16, Ran Shalit &lt;<a href=
=3D"mailto:ranshalit@gmail.com">ranshalit@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Hello,<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Is there a way to add &quot;apt-get&quot; comman=
d (and package manager) in<br>
&gt;&gt; &gt;&gt; &gt;&gt; yocto<br>
&gt;&gt; &gt;&gt; &gt;&gt; ?<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Thank you,<br>
&gt;&gt; &gt;&gt; &gt;&gt; Ran<br>
&gt;&gt; &gt;&gt; &gt;&gt; --<br>
&gt;&gt; &gt;&gt; &gt;&gt; ______________________________<wbr>_____________=
____<br>
&gt;&gt; &gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@=
yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listin=
fo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<=
wbr>org/listinfo/yocto</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--94eb2c1cd14a6b81c7055d9c658d--
