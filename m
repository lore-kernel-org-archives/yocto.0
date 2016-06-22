Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B739BE00A6D; Wed, 22 Jun 2016 07:40:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AF2FE009F6
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:40:40 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id f6so40286477ith.0
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wLjDAKk63EAWkY3yXZOfZTUqlJbyQUXa1uPExl3FN0E=;
	b=p2T3/RZSaBzrm2bg6n7EnP+wsq4B5fMY3IH0xcXuYuyvkujJJfmqR7U3sMqiWb/j01
	LZHf9+asCGo1MqF8rtfTSUiwp73KMlYi6yx4Lx1W7QvGOMUCmKIKH/nJBomxzetKmJ5y
	lPKj0PiX+I8GTiPXQG5425cOLkJFgwLTpfmBkmzkOtOWCmA29mPNIP/fDTThqMApOFF1
	4IK7SPJ8ik0dnGwIMPSTwFHJxP4lfMGx14gg9SJuNWRqcz2CDdbVBTaSqiOzenwFGS/q
	guTDjEWoiNUuFdKERAq+rdQ4kmoAcrN+AOl3Fox9ZXblyxFNna3oa7LreU0lOjDA9jKV
	jjPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wLjDAKk63EAWkY3yXZOfZTUqlJbyQUXa1uPExl3FN0E=;
	b=YbaiCFI5kU60LzfaMNwjSMeRFcy6w4iSh14FID6ttLEAGDnmnXX+OCTpel+vzaOByq
	GMq3ugndPTtjwvxDkyxIfuTFqvo7L1UVzgtceYLFR6lScOA3SkHnVbL8KjcUHlNUWZIS
	c4PimUGDiWtXj1oH9lTJJ7vz2LVR1CeQeepnfGdozmVe1kLOvA8GiZTiHg346oSwouYJ
	G/vMJ38rkyoiBDQ+ppldZSUihD9fJLP0CnEBiRncV6HviD98jQG+m+YY259kpd1u4wMb
	4C9s6BMurtCN00YisU6krvQ4XPxMyXvHehegyDoobsEq3jragaZUdy0aIv25yDwd+bgr
	r46w==
X-Gm-Message-State: ALyK8tL5JavdlQGddiMQNImH+FbzKYL3w9hx/aGaXVcZF0k2OSQcmDBAxC32tNW9vki9mK4V33doSP9rkai105AY
X-Received: by 10.36.57.211 with SMTP id l202mr14994828ita.22.1466606440515;
	Wed, 22 Jun 2016 07:40:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 22 Jun 2016 07:40:21 -0700 (PDT)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA600CE1@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA600CE1@RCHEXMBP1.fnc.net.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 Jun 2016 15:40:21 +0100
Message-ID: <CAJTo0LYWdLr=uBy_vZ9GeiNQhxjRZbYubNSCzfOd3dFFDfJ-og@mail.gmail.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error applying patch - openvswitch
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
X-List-Received-Date: Wed, 22 Jun 2016 14:40:44 -0000
Content-Type: multipart/alternative; boundary=001a114ab3cae9a1c20535deebeb

--001a114ab3cae9a1c20535deebeb
Content-Type: text/plain; charset=UTF-8

On 22 June 2016 at 15:34, Rajasekaran, Monica <
Monica.Rajasekaran@us.fujitsu.com> wrote:

> |diff --git
> data/users/mrajase/l100_label_based_r100poc/repo/poky/build/tmp/work/core2-64-enea-linux/openvswitch/2.0.0-r0/openvswitch-2.0.0/ofproto/ofproto.c
> data/users/mrajase/extra/ofproto.c
>
> |index ea812ad..76c355f 100644
>
> |---
> data/users/mrajase/l100_label_based_r100poc/repo/poky/build/tmp/work/core2-64-enea-linux/openvswitch/2.0.0-r0/openvswitch-2.0.0/ofproto/ofproto.c
>
> |+++ data/users/mrajase/extra/ofproto.c
>
>
This is the problem, your filename paths are messed up because of how you
generated the patch: it looks like your data/ directory is git-managed so
git did what you told it and generated a patch with the full paths in.

The easy solution here is to use "devtool modify" (see the manual) but you
can hand-edit the patch to remove everything from data/ to 2.0.0-r0/ and it
should apply.

Ross

--001a114ab3cae9a1c20535deebeb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 June 2016 at 15:34, Rajasekaran, Monica <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" target=3D"_blank">Monica.Raja=
sekaran@us.fujitsu.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><p class=3D"MsoNormal">|diff --git data/users/mrajase/l100_label_based_=
r100poc/repo/poky/build/tmp/work/core2-64-enea-linux/openvswitch/2.0.0-r0/o=
penvswitch-2.0.0/ofproto/ofproto.c data/users/mrajase/extra/ofproto.c<u></u=
><u></u></p>
<p class=3D"MsoNormal">|index ea812ad..76c355f 100644<u></u><u></u></p>
<p class=3D"MsoNormal">|--- data/users/mrajase/l100_label_based_r100poc/rep=
o/poky/build/tmp/work/core2-64-enea-linux/openvswitch/2.0.0-r0/openvswitch-=
2.0.0/ofproto/ofproto.c<u></u><u></u></p>
<p class=3D"MsoNormal">|+++ data/users/mrajase/extra/ofproto.c<u></u><u></u=
></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>This is the problem, your=
 filename paths are messed up because of how you generated the patch: it lo=
oks like your data/ directory is git-managed so git did what you told it an=
d generated a patch with the full paths in.</div><div class=3D"gmail_extra"=
><br></div><div class=3D"gmail_extra">The easy solution here is to use &quo=
t;devtool modify&quot; (see the manual) but you can hand-edit the patch to =
remove everything from data/ to 2.0.0-r0/ and it should apply.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114ab3cae9a1c20535deebeb--
