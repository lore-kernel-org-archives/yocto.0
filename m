Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 820FAE00A90; Mon, 17 Oct 2016 13:57:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01E91E00A21
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 13:57:47 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id 83so169027020vkd.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 13:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=s3HYCWPigOyWx0nD/I3zu/OsUZP8Pwo43cuR/aKmjWQ=;
	b=nJp5sjtWTmmJT6vmIa5HUJr3/UzrW024FwKaqHiDuZLLXgaWt3vQ0FkNTK9r9aKjb3
	7S2no5al/5XasbF7+zZA2CdIp8NWEmcIMHK8XZz5VNdEZBRXKjYI+ZQNnbXfhcJ/ytuC
	599f4hGcVlHlnC3TD/OCl5Epy5zL0VX7T6iFNtSzmUCb5wG0QJnJKQ4K/2nkWuQhuj7d
	Xx92lX0uhVWpcIHVw0kLK7qElA1FkLHAq/oTKV2/PJOBEoAlumya53aATfD5s/cWbKkq
	pHUA+5RsMTx+J19sqk9Po9SaffZxnE8w9ldPXf4I0z94AR7F8fbGj8Y8qPtU3RhUlSxK
	I4kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=s3HYCWPigOyWx0nD/I3zu/OsUZP8Pwo43cuR/aKmjWQ=;
	b=mP9K5Z0M/EyMYHQ7FVkGFPubEVNpldRfCpRfphk96JR1MYVZSVA8P4kpAEsUTftMuC
	fpOFLnJqx2JspxM/WS61D7y0wCtBJLnpVtO+AKUnxTmq/7bOmSTen2uxK7P8cMKSGnQr
	zbymAheZfiPy1JGIb6DT8MDmMmDOgeNnlc3SCUOShRju+J68eFDo4ZKLRwUbNgCefV3Y
	YrEUhGJQgCPq2/JzBMmJdnqvfqzp3Q8SifjS4R2brtTWPRf8SydEYXt89+TNfx7ilUP1
	cu5oZvQ0xo+xwzMeBzTNU2TB/S9zfDsgo9USTGoeFEpu0i51+RR/KG7EqJ8YmLTNS11l
	E6vA==
X-Gm-Message-State: AA6/9RnI4ikUp4uF5dxd7Jx/z3OzZUz3AMK3R8lMyrFGRbNPIy+ixsoihv6qmeJATHQ3w7GtWbTQJWDXhnoIFQ==
X-Received: by 10.31.15.65 with SMTP id 62mr9722594vkp.93.1476737867132; Mon,
	17 Oct 2016 13:57:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Mon, 17 Oct 2016 13:57:16 -0700 (PDT)
In-Reply-To: <BY1PR15MB0038AAAE06F9194440713E42BCD00@BY1PR15MB0038.namprd15.prod.outlook.com>
References: <BY1PR15MB0038AAAE06F9194440713E42BCD00@BY1PR15MB0038.namprd15.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 17 Oct 2016 13:57:16 -0700
Message-ID: <CAMKF1sqnE4OJdvtfvFf_-5wmfNnWNr67aMKrOyeKo6DBmN5e=w@mail.gmail.com>
To: "Clark, Mark A" <Mark.Clark2@nov.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about meta-intel
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
X-List-Received-Date: Mon, 17 Oct 2016 20:57:49 -0000
X-Groupsio-MsgNum: 32454
Content-Type: multipart/related; boundary=001a1143618aff509d053f15d301

--001a1143618aff509d053f15d301
Content-Type: multipart/alternative; boundary=001a1143618aff5099053f15d300

--001a1143618aff5099053f15d300
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 17, 2016 at 8:07 AM, Clark, Mark A <Mark.Clark2@nov.com> wrote:

> Yocto gurus.  See below.  I have built the corei7 and core2-32 images for
> core-image-rt-sdk.  These build and run fine.  The i586 is listed
> (intel-quark) in the linux-yocto-rt_4.1.bbappend but fails to build.
>


=E2=80=8Bits building 4.4 and not 4.1 so may be you need to forward port th=
e 4.1
bbappend changes ?=E2=80=8B



>
>
> Is this a bug or is the i586 not a valid target?
>
>
>
>
>
> *NOTE*: Resolving any missing task queue dependencies
>
>
>
> Build Configuration:
>
> BB_VERSION        =3D "1.30.0"
>
> BUILD_SYS         =3D "x86_64-linux"
>
> NATIVELSBSTRING   =3D "universal"
>
> TARGET_SYS        =3D "i586-poky-linux"
>
> MACHINE           =3D "intel-quark"
>
> DISTRO            =3D "poky"
>
> DISTRO_VERSION    =3D "2.1.1"
>
> TUNE_FEATURES     =3D "m32 i586-nlp"
>
> TARGET_FPU        =3D ""
>
> meta
>
> meta-poky
>
> meta-yocto-bsp    =3D "krogoth:204b2bae4a5958735fdd19c63a69f4ed3780bba7"
>
> meta-intel        =3D "krogoth:b8c199201ffe026485a14e1fcfc398e2b3551512"
>
>
>
> *NOTE*: Preparing RunQueue
>
> *NOTE*: Executing SetScene Tasks
>
> *NOTE*: Executing RunQueue Tasks
>
> WARNING: lttng-modules-2.7.1+gitAUTOINC+45e0ebd91f-r0 do_package:
> lttng-modules: no modules were created; this may be due to
> CONFIG_TRACEPOINTS not being enabled in your kernel.
>
> WARNING: quilt-0.64-r0 do_package_qa: QA Issue:
> /usr/lib/quilt/ptest/quilt/scripts/remove-trailing-ws contained in
> package quilt-ptest requires /bin/perl, but no providers found in
> RDEPENDS_quilt-ptest? [file-rdeps]
>
> ERROR: linux-yocto-rt-4.4.14+gitAUTOINC+870134f4bf_3f35359cf6-r0
> do_package_qa: QA Issue: Architecture did not match (3 to 62) on
> work/i586-nlp-32-intel-common-poky-linux/linux-yocto-rt/4.4.
> 14+gitAUTOINC+870134f4bf_3f35359cf6-r0/packages-split/
> kernel-vmlinux/boot/vmlinux-4.4.13-rt3-yocto-preempt-rt [arch]
>
> ERROR: linux-yocto-rt-4.4.14+gitAUTOINC+870134f4bf_3f35359cf6-r0
> do_package_qa: QA run found fatal errors. Please consider fixing them.
>
> ERROR: linux-yocto-rt-4.4.14+gitAUTOINC+870134f4bf_3f35359cf6-r0
> do_package_qa: Function failed: do_package_qa
>
> ERROR: Logfile of failure stored in: /opt/novapps/yocto/poky/build/
> tmp/work/i586-nlp-32-intel-common-poky-linux/linux-yocto-
> rt/4.4.14+gitAUTOINC+870134f4bf_3f35359cf6-r0/temp/log.do_package_qa.9741
>
> ERROR: Task 61 (/opt/novapps/yocto/poky/meta/recipes-kernel/linux/linux-
> yocto-rt_4.4.bb, do_package_qa) failed with exit code '1'
>
> *NOTE*: Tasks Summary: Attempted 4628 tasks of which 3921 didn't need to
> be rerun and 1 failed.
>
> Waiting for 0 running tasks to finish:
>
>
>
> Summary: 1 task failed:
>
>   /opt/novapps/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb=
,
> do_package_qa
>
> Summary: There were 3 WARNING messages shown.
>
> Summary: There were 3 ERROR messages shown, returning a non-zero exit cod=
e.
>
>
>
>
>
>
>
> *Mark Clark*
>
> Embedded Software Engineer
>
> Embedded Software, Cedar Park, TX
>
> [image: Description: Description: Description: Description: National
> Oilwell Varco Logo Color CMYK.jpg]
>
>  Wellbore Technologies =E2=80=93 Dynamic Drilling Solutions
>
> Global Software Engineering
>
> Office: (512) 340-5435
>
> Mobile: (512) 736-9396
>
> *=E2=80=9COne Team =E2=80=93 Infinite Solutions=E2=80=9D*
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1143618aff5099053f15d300
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Mon, Oct 17, 2016 at 8:07 AM, Clark, Mark A <span dir=3D"ltr">&lt;=
<a href=3D"mailto:Mark.Clark2@nov.com" target=3D"_blank">Mark.Clark2@nov.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"m_9030694815686877177WordSection1">
<div style=3D"border:none;border-bottom:double windowtext 2.25pt;padding:0i=
n 0in 1.0pt 0in">
<p class=3D"MsoNormal" style=3D"border:none;padding:0in">Yocto gurus.=C2=A0=
 See below.=C2=A0 I have built the corei7 and core2-32 images for core-imag=
e-rt-sdk.=C2=A0 These build and run fine.=C2=A0 The i586 is listed (intel-q=
uark) in the linux-yocto-rt_4.1.bbappend but fails to build.</p></div></div=
></div></blockquote><div><br></div><div><br></div><div><div class=3D"gmail_=
default" style=3D"font-family:monospace,monospace">=E2=80=8Bits building 4.=
4 and not 4.1 so may be you need to forward port the 4.1 bbappend changes ?=
=E2=80=8B</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div class=3D"m_9030694815=
686877177WordSection1"><div style=3D"border:none;border-bottom:double windo=
wtext 2.25pt;padding:0in 0in 1.0pt 0in"><p class=3D"MsoNormal" style=3D"bor=
der:none;padding:0in"><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><u></u>=C2=A0<u></=
u></p>
<p class=3D"MsoNormal" style=3D"border:none;padding:0in">Is this a bug or i=
s the i586 not a valid target?<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"border:none;padding:0in"><u></u>=C2=A0<u></=
u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-size:9.0pt;font-family:&quot;Lucida Console&quot;">NOTE</span></b><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">: Resolving =
any missing task queue dependencies<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Build Configuration:<u></u=
><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">BB_VERSION=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.30.0&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">BUILD_SYS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<u></u><u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">NATIVELSBSTRING=C2=A0=C2=
=A0 =3D &quot;universal&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">TARGET_SYS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;i586-poky-linux&quot;<u></u><u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">MACHINE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;intel-quark&quot;<u></=
u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">DISTRO=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<u></u=
><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">DISTRO_VERSION=C2=A0=C2=A0=
=C2=A0 =3D &quot;2.1.1&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">TUNE_FEATURES=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;m32 i586-nlp&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">TARGET_FPU=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">meta<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">meta-poky<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">meta-yocto-bsp=C2=A0=C2=A0=
=C2=A0 =3D &quot;krogoth:<wbr>204b2bae4a5958735fdd19c63a69f4<wbr>ed3780bba7=
&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">meta-intel=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;krogoth:<wbr>b8c199201ffe026485a14e1f=
cfc398<wbr>e2b3551512&quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-size:9.0pt;font-family:&quot;Lucida Console&quot;">NOTE</span></b><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">: Preparing =
RunQueue<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-size:9.0pt;font-family:&quot;Lucida Console&quot;">NOTE</span></b><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">: Executing =
SetScene Tasks<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-size:9.0pt;font-family:&quot;Lucida Console&quot;">NOTE</span></b><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">: Executing =
RunQueue Tasks<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#ffff40">WARNING</spa=
n><span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#bfbf00">lttng-modules-2.7.1+<wbr>gitAUTOINC+45e0ebd91=
f-r0 do_package: lttng-modules: no modules were created; this may be due to=
 CONFIG_TRACEPOINTS not being enabled in your kernel.<u></u><u></u></span><=
/span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#ffff40">WARNING</spa=
n><span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#bfbf00">quilt-0.64-r0 do_package_qa: QA Issue: /usr/l=
ib/quilt/ptest/quilt/<wbr>scripts/remove-trailing-ws contained in package q=
uilt-ptest requires /bin/perl, but no providers found in RDEPENDS_quilt-pte=
st? [file-rdeps]<u></u><u></u></span></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#ff4040">ERROR</span>=
<span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#bf0000">linux-yocto-rt-4.4.14+<wbr>gitAUTOINC+870134f=
4bf_<wbr>3f35359cf6-r0 do_package_qa: QA Issue: Architecture did not match =
(3 to 62) on work/i586-nlp-32-intel-common-<wbr>poky-linux/linux-yocto-rt/4=
.4.<wbr>14+gitAUTOINC+870134f4bf_<wbr>3f35359cf6-r0/packages-split/<wbr>ker=
nel-vmlinux/boot/vmlinux-4.<wbr>4.13-rt3-yocto-preempt-rt
 [arch]<u></u><u></u></span></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#ff4040">ERROR</span>=
<span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#bf0000">linux-yocto-rt-4.4.14+<wbr>gitAUTOINC+870134f=
4bf_<wbr>3f35359cf6-r0 do_package_qa: QA run found fatal errors. Please con=
sider fixing them.<u></u><u></u></span></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#ff4040">ERROR</span>=
<span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#bf0000">linux-yocto-rt-4.4.14+<wbr>gitAUTOINC+870134f=
4bf_<wbr>3f35359cf6-r0 do_package_qa: Function failed: do_package_qa<u></u>=
<u></u></span></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#ff4040">ERROR</span>=
<span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#bf0000">Logfile of failure stored in: /opt/novapps/yo=
cto/poky/build/<wbr>tmp/work/i586-nlp-32-intel-<wbr>common-poky-linux/linux=
-yocto-<wbr>rt/4.4.14+gitAUTOINC+<wbr>870134f4bf_3f35359cf6-r0/temp/<wbr>lo=
g.do_package_qa.9741<u></u><u></u></span></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;;color:#ff4040">ERROR</span>=
<span style=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">:
<span style=3D"color:#bf0000">Task 61 (/opt/novapps/yocto/poky/meta/<wbr>re=
cipes-kernel/linux/<a href=3D"http://linux-yocto-rt_4.4.bb" target=3D"_blan=
k">linux-<wbr>yocto-rt_4.4.bb</a>, do_package_qa) failed with exit code &#3=
9;1&#39;<u></u><u></u></span></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><b><span style=3D"font=
-size:9.0pt;font-family:&quot;Lucida Console&quot;">NOTE</span></b><span st=
yle=3D"font-size:9.0pt;font-family:&quot;Lucida Console&quot;">: Tasks Summ=
ary: Attempted 4628 tasks of which 3921 didn&#39;t need to be rerun
 and 1 failed.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Waiting for 0 running task=
s to finish:<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;"><u></u>=C2=A0<u></u></span=
></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Summary: 1 task failed:<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">=C2=A0 /opt/novapps/yocto/=
poky/meta/<wbr>recipes-kernel/linux/<a href=3D"http://linux-yocto-rt_4.4.bb=
" target=3D"_blank">linux-<wbr>yocto-rt_4.4.bb</a>, do_package_qa<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Summary: There were 3 WARN=
ING messages shown.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Lucida Console&quot;">Summary: There were 3 ERRO=
R messages shown, returning a non-zero exit code.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"color:#0070c0">Mark Clark<u></u><u=
></u></span></b></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070c0">Embedded Software Engi=
neer<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070c0">Embedded Software, Ced=
ar Park, TX<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Gi=
ll Sans MT&quot;,sans-serif;color:#1f497d"><img width=3D"245" height=3D"24"=
 style=3D"width:2.552in;height:.25in" id=3D"m_9030694815686877177Picture_x0=
020_1" src=3D"cid:image001.png@01D2285E.0B924D60" alt=3D"Description: Descr=
iption: Description: Description: National Oilwell Varco Logo Color CMYK.jp=
g"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1f497d">=C2=A0Wellbore Technologies =E2=80=93 Dy=
namic Drilling Solutions<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#1f497d">Global Software Engineering<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070c0">Office: <a href=3D"tel=
:%28512%29%20340-5435" value=3D"+15123405435" target=3D"_blank">(512) 340-5=
435</a></span><span style=3D"color:#0070c0"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#0070c0">Mobile: <a href=3D"tel=
:%28512%29%20736-9396" value=3D"+15127369396" target=3D"_blank">(512) 736-9=
396</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><i><span style=3D"font-family:&quot;Times New Roman&=
quot;,serif;color:#0070c0">=E2=80=9COne Team =E2=80=93 Infinite Solutions=
=E2=80=9D</span></i><span style=3D"font-family:&quot;Times New Roman&quot;,=
serif;color:#0070c0"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--001a1143618aff5099053f15d300--

--001a1143618aff509d053f15d301
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <image001.png@01D2285E.0B924D60>
X-Attachment-Id: 970ea15203f09eac_0.0.1

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

--001a1143618aff509d053f15d301--
