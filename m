Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0741E00F39; Mon, 22 Aug 2016 06:39:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A0F7E00E4C
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:39:28 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id m101so109945460ioi.2
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7avYzOvMjz6gHwoiN/m8P9pNHWw1xlHQni5HgzkbG5k=;
	b=GlxXB1ekWOinXDMMjxhHYqTzSkXJSYARkSIHycUM8i7vK1ixTwqJs9KSY4sr54XhN5
	kGu8QIGh1VoI9m4mIJCXOk4hbzbfZMpSzsWhfTLqbrRCfWjitxnxDt6tTj84DD92Le4H
	/Fb4w+ASH/pJ0EYfQ52iOMkIgMFZKNGgqpWTG4ADbR8nj1LQaLQQlkNaBVdx47ghNN8T
	T2B/RNbrIbhiHSpBObX16JEroP0ebl1hVk2xVa55xHqzcY6CWD8x3hMx13GTz31DXB5F
	rISlA1pJ4V6xUrZgtleyJJvRX4W5qI7pu+rqk/+jN/w6ohn2m6NsY+rIOJqpZtHxxm8u
	poqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7avYzOvMjz6gHwoiN/m8P9pNHWw1xlHQni5HgzkbG5k=;
	b=NPVSBpb72F8NPLPVZ3Jq47cYFb9lfhvUtXk6fkvpP0EVCTCQhzpBcSzab1volbnn2V
	DPcMXUHytK9uL5mrILyCGmNdUncC6WHKJFhP5CRhZXesJJcSi/bj3pCm7c26wg7wWKSn
	q4e69nrJawD64M+GogauWGnBFTBfLCL0Cdkrtq29fPId/Ac0+laG/L17G0mHX1n/Icu0
	PFh0gmrAk2UD9vMe5FG5PxbaNpV64hVRwvKaS2198b3vivdeecS87li8LdkrNPM3Td4w
	iDQjN+yZLHYvEhY4qZIb4eOgcHMvjr9w+qJLV6i51W+N3DwiyKyGXN9tRRn574JiCRnB
	c+JA==
X-Gm-Message-State: AEkoouvT/wOjMmRHEJL+FUcp6vFphQC2pF7aw7hvu702ouzb4CVA7Zc4ZTzSTmiGXdhZFJ8cClIS4/X57ZPA7gcS
X-Received: by 10.107.154.196 with SMTP id c187mr22758607ioe.99.1471872694469; 
	Mon, 22 Aug 2016 06:31:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Mon, 22 Aug 2016 06:31:14 -0700 (PDT)
In-Reply-To: <BN3PR1201MB096367B23D96E0998DA7C22BA5160@BN3PR1201MB0963.namprd12.prod.outlook.com>
References: <BN3PR1201MB096367B23D96E0998DA7C22BA5160@BN3PR1201MB0963.namprd12.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Aug 2016 14:31:14 +0100
Message-ID: <CAJTo0Lbxd4fx+R91H1TGD-SRgakUo-gnaro2RNhbgx6-3rwN+A@mail.gmail.com>
To: Richard Zhang <richard.zhang@pica8.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to run a runqemu with intel-corei7-64?
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
X-List-Received-Date: Mon, 22 Aug 2016 13:39:31 -0000
Content-Type: multipart/alternative; boundary=001a1140e81e1c284b053aa9111f

--001a1140e81e1c284b053aa9111f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 19 August 2016 at 02:50, Richard Zhang <richard.zhang@pica8.com> wrote:

> After built an =E2=80=98intel-corei7-64=E2=80=99 image with Toaster, I tr=
y to run a
> runqemu, it can=E2=80=99t run.
>
> ERROR: unable to classify arg [intel-corei7-64].
>
> Does intel-corei7-64 could be run with runqemu?
>
>
Currently, not out of the box, although it should be possible if you run
qemu directly.

There is work ongoing to allow BSPs to extend runqemu so this could work,
but for now if you wish to run images in qemu frequently then it's
recommended to use the qemux86-64 machine, as it will include a few pieces
(kernel modules, graphics drivers, etc) which increase performance inside
qemu.

Ross

--001a1140e81e1c284b053aa9111f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 August 2016 at 02:50, Richard Zhang <span dir=3D"ltr">&lt;<a href=3D"=
mailto:richard.zhang@pica8.com" target=3D"_blank">richard.zhang@pica8.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNorma=
l" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">After built an =E2=80=
=98intel-corei7-64=E2=80=99 image with Toaster, I try to run a runqemu, it =
can=E2=80=99t run.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">ER=
ROR: unable to classify arg [intel-corei7-64].<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-indent:21.0pt"><span lang=3D"EN-US">Do=
es intel-corei7-64 could be run with runqemu?<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>Currently, not out of the=
 box, although it should be possible if you run qemu directly.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">There is work ongo=
ing to allow BSPs to extend runqemu so this could work, but for now if you =
wish to run images in qemu frequently then it&#39;s recommended to use the =
qemux86-64 machine, as it will include a few pieces (kernel modules, graphi=
cs drivers, etc) which increase performance inside qemu.</div><div class=3D=
"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1140e81e1c284b053aa9111f--
