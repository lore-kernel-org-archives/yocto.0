Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5966FE00CCC; Wed, 28 Sep 2016 06:44:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 171A2E00815
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 06:44:45 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id 92so58737323iol.2
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 06:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hWFszJKvQYUurWSURfijSsA1PmLSRWo2aGfVg9DQmiY=;
	b=RBRplIir7L/NeqjShwnLYfRYAPE0KLirAiR9tFwwfUtOB6750M5uOyAhxTwLPGNPjx
	175ts44Jv+T4LUEV2C7TeFdFCSdQ6O3ZLWgaq0zOePJPFEj/6zMJIc2+VgXlbCWr9AXy
	PSo2mLtlaq3XF2sjtdGjPSmlEHpxJ0lbupPHp5GvbPJX4Zr4Mz4XEUaxG32JojqGMeke
	WEGyGsvkynHsMfZ6cm/TPKko9G22vH6ugmyaLkZLR7NKwtZx07BObE6/MP/2hSU577ob
	nVj9zwh79bwMihWOK6czr+dERIk9p0/bFjNLc4cUeVxNywHLl5MkinGS5PuhmzVCYXih
	EbTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hWFszJKvQYUurWSURfijSsA1PmLSRWo2aGfVg9DQmiY=;
	b=NGKZbdjdEhceBPVPYRPliE6mCDjiXWJzRQ0A3E4a6FAXTgubJEuwB0inl22/81T0ft
	6vGbWpPL76a+xosxIP9cUcnkXvg8gH0i60bJXGQM1i15rhw7lhokdyJk63anN1pgFlv+
	E8MygbtceEe/CJm14YheycWjWQAJR7rBBti7ZWmrzEi9ZSDpptSAWZvXlCvcR1h+iUiM
	/N6IjdSN0vUJmemVO3nitKV+DJy2vigQm41HwU4rnY66kpaw4JlRCqSFlE92EULKA25z
	a4PAjaoVMSFVoDuNzhgAZ2WyQ7cBa+ZLZmFY+Dq2sSVQYHF1Q5nZ6rgzc7PRpxUQ8NiM
	uW+g==
X-Gm-Message-State: AA6/9Rnbo0MkXTryX/B9ncqBMEviC5CZpK2N4+aRglg0/fuWoBNGgwiTxyNNri8sZwlKfXiLFk5sp4YSSTyihQxD
X-Received: by 10.36.109.3 with SMTP id m3mr2442775itc.20.1475070282451; Wed,
	28 Sep 2016 06:44:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.155.66 with HTTP; Wed, 28 Sep 2016 06:44:22 -0700 (PDT)
In-Reply-To: <OF54BA18D9.07777704-ONC125803C.0049D432-C125803C.004B1BCC@esa-grimma.de>
References: <OF54BA18D9.07777704-ONC125803C.0049D432-C125803C.004B1BCC@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Sep 2016 14:44:22 +0100
Message-ID: <CAJTo0LYW-gtrvFjRzVc2cpu2_cw_E5-xftjQyA16SZ4nrtXwNA@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the common way to extend an package without bbappend?
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
X-List-Received-Date: Wed, 28 Sep 2016 13:44:50 -0000
Content-Type: multipart/alternative; boundary=001a1146f5d8347c0d053d91906e

--001a1146f5d8347c0d053d91906e
Content-Type: text/plain; charset=UTF-8

On 28 September 2016 at 14:40, <S.Jaritz@esa-grimma.de> wrote:

> When populate_sysroot is called in myweb.bb finishes with the error:
>
> myweb-1.0-r0 do_populate_sysroot: The recipe myweb is trying to install
> files into a shared area when those files already exist. Those files and
> their manifest location are:
>    /home/user/myTC/poky/build/tmp/sysroots/sama5d3xek/usr/
> share/apache2/htdocs/index.html
>
> because the index.html needs to be overwritten.
>
> Is there a easy way to overwrite or tell bitbake to uses my index.html?
>

Put the myweb content into an entirely new directory and drop a
configuration file in that tells apache to server from your own directory?

Ross

--001a1146f5d8347c0d053d91906e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 September 2016 at 14:40,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.J=
aritz@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-se=
rif">When populate_sysroot is called in <a href=3D"http://myweb.bb" target=
=3D"_blank">myweb.bb</a>
finishes with the error:</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">myweb-1.0-r0 do_populate_sysroot: =
The
recipe myweb is trying to install files into a shared area when those files
already exist. Those files and their manifest location are:</font>
<br><font size=3D"2" face=3D"sans-serif">=C2=A0 =C2=A0/home/user/myTC/poky/=
build/<wbr>tmp/sysroots/sama5d3xek/usr/<wbr>share/apache2/htdocs/index.<wbr=
>html</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">because the index.html needs to be=
 overwritten.</font>
<br>
<br><font size=3D"2" face=3D"sans-serif">Is there a easy way to overwrite o=
r
tell bitbake to uses my index.html?</font>
<br></blockquote></div><br></div><div class=3D"gmail_extra">Put the myweb c=
ontent into an entirely new directory and drop a configuration file in that=
 tells apache to server from your own directory?</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1146f5d8347c0d053d91906e--
