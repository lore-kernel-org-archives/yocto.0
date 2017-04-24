Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC924E00A9B; Mon, 24 Apr 2017 08:55:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.175 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92DB0E00AB6
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 08:55:51 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id g60so117606639qtd.3
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 08:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=shvaJK6pfAesEeDQXLFHt6M3f73qYYrgFWAgI6fle2o=;
	b=LtJKpTcOiY2M2IBkHM8WwECzV6/zD8Bx6nwrE5o+E5qC6cHl/gqbXmAfulEnR4jzl/
	EKaZEZZuF7Mjf+sbkyK6kgkXAN94y7OSzq12nV0yqvd9RM5C4lEidakyGzU8T+FEWGpa
	q3xC/V7SZqJPapICZcumRmcQZHE9mMwI5ed0/5N1MyqAeROv8P/TUGW+ZBlXO7Hx9big
	XFMaUu90P9LKV/jVEEbGAUEjDCMsCN509lkZUIgKuBIeJrxbc1PEcSLENN1wdOxHefrV
	2EoElJkdj+RQJO2tt5z8gOk/zljJAL0RONh5cJ/W08DjOulo9pXKuOlWJK458p5+6ICi
	Mpjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=shvaJK6pfAesEeDQXLFHt6M3f73qYYrgFWAgI6fle2o=;
	b=bsXS2cNDNZyvEi3lew0+apvPXEHYlbV301Z023TYsVPcgdnQWBdgQ926+jcAfi04tF
	0qMZDiYlv+UHPQ73xNe1CxOHWz9kKeQpLmN4JIApTluoTc7MOqGbN+cbnTsjI5MbEjGQ
	eiblviKbZJQSZsOlNsX0MA/OfKP+M0mrZ7Di1T7T7Hw1mnLSpqI9pK/rgG+F46Z4iXs9
	IXNGlzwKLNxcDlmfErormMVFobKJ/P2nGmAFpRu6vacGXcImOJd2mQiwfUAhssmzVLf4
	6N7wlDQZJjmI6qstS7KHegyBryZGgxTNdAcqzRlq4uVyakn6/VULCpHYgiByduGtiUAn
	2bdQ==
X-Gm-Message-State: AN3rC/4bc89qNY4ewL7pKvD8+kEc3FhfASqbkGJzxw8kSVMnueueJFXJ
	M9IoglQZ573EsI0zOGZK1Kb8m36iKNXM
X-Received: by 10.200.34.162 with SMTP id f31mr27887617qta.65.1493049350583;
	Mon, 24 Apr 2017 08:55:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 08:55:30 -0700 (PDT)
In-Reply-To: <CACDGP4F3DJA5JRX5tek3_qZ5eSv2WT+o820JvP3xicj3LUYgnw@mail.gmail.com>
References: <CACDGP4GBGn6KNH8m+UHhbWajbKTMppPW4g8ePKqfhm9fdpXE2g@mail.gmail.com>
	<20170421185026.GA8444@linux-uys3>
	<CACDGP4F4jTRdLuZD0e98qe9H5qcQEL2Yo+n2wKPePUrOtTUi+g@mail.gmail.com>
	<CACDGP4F3DJA5JRX5tek3_qZ5eSv2WT+o820JvP3xicj3LUYgnw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 16:55:30 +0100
Message-ID: <CAJTo0LZ8p7bwZuwg7A4Xmb0rnqJSp9yKt0MmJWmX6xkwbUP=3Q@mail.gmail.com>
To: David Bensoussan <dbensoussan@synapticon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake core-image-base -c do_populate_sdk fails with glibc (unmet dependencies)
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
X-List-Received-Date: Mon, 24 Apr 2017 15:55:56 -0000
Content-Type: multipart/alternative; boundary=001a114027ec2c9d27054deba487

--001a114027ec2c9d27054deba487
Content-Type: text/plain; charset=UTF-8

On 23 April 2017 at 09:40, David Bensoussan <dbensoussan@synapticon.com>
wrote:

> I managed to track down how to create the SDK. Sorry for the long answer
> but it might help people googling it.
>

Honestly no idea why this doesn't work for you:

$ MACHINE=qemuarm64 bitbake core-image-base -c do_populate_sdk
Parsing recipes: 100%
|################################################################################################|
Time: 00:00:05
Parsing of 899 .bb files complete (0 cached, 899 parsed). 1330 targets, 62
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Debian-8.6"
TARGET_SYS        = "aarch64-poky-linux"
MACHINE           = "qemuarm64"
DISTRO            = "poky"
DISTRO_VERSION    = "2.0.3"
TUNE_FEATURES     = "aarch64"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "HEAD:e08994ce953ff5ab49b260e7763a40bfad4285ca"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 3297 tasks of which 1609 didn't need to be
rerun and all succeeded.

Jefro branch, standard config with just package_deb and DL_DIR set.

Every time we do a test build on the autobuilder we probably build about 20
SDKs, so they should work.  Can you replicate with a qemu machine with no
other layers?  All the fiddling you're doing shouldn't be required, unless
meta-raspberrypi is breaking something.

Ross

--001a114027ec2c9d27054deba487
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 April 2017 at 09:40, David Bensoussan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:dbensoussan@synapticon.com" target=3D"_blank">dbensoussan@synapt=
icon.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I man=
aged to track down how to create the <span class=3D"gmail-m_-24689346749084=
39271gmail-il">SDK</span>. Sorry for the long answer but it might help peop=
le googling it.<br><div></div></div></blockquote></div><br>Honestly no idea=
 why this doesn&#39;t work for you:</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra"><div class=3D"gmail_extra">$ MACHINE=3Dqemuar=
m64 bitbake core-image-base -c do_populate_sdk</div><div class=3D"gmail_ext=
ra">Parsing recipes: 100% |################################################=
################################################| Time: 00:00:05</div><div =
class=3D"gmail_extra">Parsing of 899 .bb files complete (0 cached, 899 pars=
ed). 1330 targets, 62 skipped, 0 masked, 0 errors.</div><div class=3D"gmail=
_extra">NOTE: Resolving any missing task queue dependencies</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Build Configuration:<=
/div><div class=3D"gmail_extra">BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &=
quot;1.28.0&quot;</div><div class=3D"gmail_extra">BUILD_SYS =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div class=3D"gmail_extra">=
NATIVELSBSTRING =C2=A0 =3D &quot;Debian-8.6&quot;</div><div class=3D"gmail_=
extra">TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;aarch64-poky-linux&q=
uot;</div><div class=3D"gmail_extra">MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;qemuarm64&quot;</div><div class=3D"gmail_extra">DISTRO =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div class=
=3D"gmail_extra">DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;2.0.3&quot;</div><di=
v class=3D"gmail_extra">TUNE_FEATURES =C2=A0 =C2=A0 =3D &quot;aarch64&quot;=
</div><div class=3D"gmail_extra">TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D =
&quot;&quot;</div><div class=3D"gmail_extra">meta</div><div class=3D"gmail_=
extra">meta-yocto</div><div class=3D"gmail_extra">meta-yocto-bsp =C2=A0 =C2=
=A0=3D &quot;HEAD:e08994ce953ff5ab49b260e7763a40bfad4285ca&quot;</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">NOTE: Preparing =
RunQueue</div><div class=3D"gmail_extra">NOTE: Executing SetScene Tasks</di=
v><div class=3D"gmail_extra">NOTE: Executing RunQueue Tasks</div><div class=
=3D"gmail_extra">NOTE: Tasks Summary: Attempted 3297 tasks of which 1609 di=
dn&#39;t need to be rerun and all succeeded.</div></div><div class=3D"gmail=
_extra"><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Jef=
ro branch, standard config with just package_deb and DL_DIR set.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Every time we do=
 a test build on the autobuilder we probably build about 20 SDKs, so they s=
hould work.=C2=A0 Can you replicate with a qemu machine with no other layer=
s?=C2=A0 All the fiddling you&#39;re doing shouldn&#39;t be required, unles=
s meta-raspberrypi is breaking something.</div><div class=3D"gmail_extra"><=
br></div><div class=3D"gmail_extra">Ross</div></div></div>

--001a114027ec2c9d27054deba487--
