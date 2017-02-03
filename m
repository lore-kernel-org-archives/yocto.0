Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD3EAE00510; Fri,  3 Feb 2017 15:20:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C78AE004D2
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 15:20:48 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id w20so54967970qtb.1
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 15:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Qt++StFy1jiN5vNwhOHFsW3JaAxamCUFkTUmL+btqtU=;
	b=i+EhyFEQw5RJAhcujiunXgDFqA3lXLck9HmY9nf9fG+Gquxn686h9ou844cjCKcV0r
	bhc1yuKzKbfyTRuhGMqN03V8u7Yym8biOprM0b+0WtZj2iWjLDjGubFkvs0EO3HdYFxo
	Xj8cG2lLX+/1OFP5oh7ZrOJ7vUkOmDfoFWi18x2eFBgDLkriTe27m1e/Q/r6a8R+Terb
	Y4bN4FZOBWE4SoMHi2uyOH6gKdW72wMug0XByRonWZPIvEamNkr5wfNKj938VlF5oskm
	wkcUwVC1xQW5kDVYZ5qrKYGxtDfXxMELpYGCnn9WFrSg8nqDPP1nISGkhWSNIOhCfWzO
	96Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Qt++StFy1jiN5vNwhOHFsW3JaAxamCUFkTUmL+btqtU=;
	b=ok51jXGgowMvG4Cl/7UYMKSrhZv07NbwrGVKfxczbEc6+TEjW0avNYnex/+Sl1u/Sb
	rVWwfzVBrJToJ7KN3nrk+o4FNB1+TLN2Ks0U6SPJaaLq17TZJWLcU0JQ4LK1KpyCVUbs
	PFc+XGAh4DFiIWs52sXiOmSm3nUa9MIKZ5xryFdapf0mZh529haeAACyTMrsRd92ZtLQ
	xo+ZAydQv6uxv6IrHDY205NBOkBZufYCeGkLiJ1QIdraO7DnDUQhcsSPO79iAJmVNyAu
	IhL0HNnr2S+GK6TMAKhA3sleOwTiEoLRnyV9VtUxvDSvXOQZJyoz31B3b8G+nx9XhnOj
	jlEQ==
X-Gm-Message-State: AIkVDXJ2JTR64y50BPFMheTuABJYnI5SuvAkNTPiq65RW3LXdtjaad6E6nitHq8KHX+8WSo+RQSwO9Q9ESyJZwDJ
X-Received: by 10.200.45.247 with SMTP id q52mr16373720qta.197.1486164048217; 
	Fri, 03 Feb 2017 15:20:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Fri, 3 Feb 2017 15:20:27 -0800 (PST)
In-Reply-To: <DM5PR0101MB295332119B0A4D1653E73F98B64F0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB295332119B0A4D1653E73F98B64F0@DM5PR0101MB2953.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 3 Feb 2017 23:20:27 +0000
Message-ID: <CAJTo0LZyg6+pD7DKUb9c42=m_G5ngWyoqmxafLvSZP5Xn-JkJA@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: genericx86 vs qemux86
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
X-List-Received-Date: Fri, 03 Feb 2017 23:20:49 -0000
Content-Type: multipart/alternative; boundary=001a1139cdf02c1da90547a888e0

--001a1139cdf02c1da90547a888e0
Content-Type: text/plain; charset=UTF-8

On 3 February 2017 at 23:16, Takashi Matsuzawa <tmatsuzawa@xevo.com> wrote:

> Sorry, I am still a bit confused with genericx86 and qemux86 targets.
> What is their difference and which one to choose.
> Both are x86 target and maybe genericx86 has more support for PC hardware?
>  qemux86 has v86d?
> genericx86 is from poky and qemux86 is from openembeded?
>

qemux86 is specifically for use in qemu, so it targets a CPU that qemu is
good at executing and has the virtualised hardware drivers in.  genericx86
is an attempt at a "all purpose" x86 machine that runs most places
acceptably.

My recommendation would be to use qemux86 (-64) for virtual environments
and a machine from meta-intel (intel-corei7-64 or intel-core2-32) for real
hardware.  The genericx86 machine, being part of poky, is basically for QA
purposes and if you are targetting Intel hardware then the Intel BSPs are
better.

Ross

--001a1139cdf02c1da90547a888e0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 February 2017 at 23:16, Takashi Matsuzawa <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:tmatsuzawa@xevo.com" target=3D"_blank">tmatsuzawa@xevo.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Sorry,=C2=A0I am s=
till=C2=A0a bit confused with genericx86 and qemux86 targets.=C2=A0 What is=
 their difference and which one to choose.</div>
<div>Both are x86 target and maybe genericx86 has more support for PC hardw=
are? =C2=A0qemux86 has v86d?</div>
<div>genericx86 is from poky and qemux86 is from openembeded?</div>
<div></div></blockquote></div><br>qemux86 is specifically for use in qemu, =
so it targets a CPU that qemu is good at executing and has the virtualised =
hardware drivers in. =C2=A0genericx86 is an attempt at a &quot;all purpose&=
quot; x86 machine that runs most places acceptably.</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">My recommendation would be to=
 use qemux86 (-64) for virtual environments and a machine from meta-intel (=
intel-corei7-64 or intel-core2-32) for real hardware.=C2=A0 The genericx86 =
machine, being part of poky, is basically for QA purposes and if you are ta=
rgetting Intel hardware then the Intel BSPs are better.</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1139cdf02c1da90547a888e0--
