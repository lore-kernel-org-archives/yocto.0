Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48B05E00C5B; Wed,  6 Apr 2016 03:33:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A506E00B37
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 03:33:24 -0700 (PDT)
Received: by mail-ig0-f179.google.com with SMTP id g8so38099568igr.0
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 03:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aHU86Y80hqQrEmAHZC5LN+Ze76sh2MxhbfTKLQVxBMA=;
	b=HsdZ1cJCPWhHEsKkrniU0oNGBFnjoEWxDwG5PpU07jLfJvPPLnmfmvjLaaPjKtUUrL
	j6WWS2Vf+HYEZ+ClSlEMNPk3g/rSNESn/56tKljdaUTeG7bccIgTcEGAypoMCugUIKNP
	MZpUsXUu0NH/YpHyjFTUQvo/P/LkIaaQTMJD0R1x5V/kxLDpfWXcRLaN1aA/OH9IhY+U
	7z0jSOZwYucy9V9R80JHeP72DI/ywGPxLJ9JmSn+P0VqDKp8qa8TFIbr+o6fGlgg9fzj
	2YTENoSPd9NNbffxKgaCjTPWfP9pFp+xtwm8s205fFVtcWqz/iR1tbA6LVXsnihCamIF
	QB2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aHU86Y80hqQrEmAHZC5LN+Ze76sh2MxhbfTKLQVxBMA=;
	b=lemFawGpS/UcNQxkniTvvQOmHOWQJiVcjLTQ/jR9BrtbP+RGpHCHHG15ucUae+E4uQ
	PTdyPYDykIVvZ2aUQr1NHLy6VZPxziKO838CQCohRv0bU+IlNMAXm0ooJQU99cvlE67a
	uBuu3KmQhjBxmYNf2GVJMYdhIBEpWLQIg7jR2tadNHNik8j2lHWPSI+jfHJyW/0GeOON
	Gkf6zcKHcruVTcuZ4oUpayy+PBdo3rqVes6Mokrkh2LyPLxHwB3ZwINvROcoEigDQoXz
	hE4SBXf6hksCBYI8vwhc5zn3Yid6fXjIDAHBIksnzkLeziYa5N0GG2qPQwe9Q3ba83Vz
	YPfg==
X-Gm-Message-State: AD7BkJI8FuBe1EpTC9DDwuKRdul7YmEc1hP8qUlpieDvMhHjtb1fWJktr+a/fdRsgD/PDI9HKcOTuJDPc5/xstV3
X-Received: by 10.50.78.8 with SMTP id x8mr22889780igw.78.1459938804147; Wed,
	06 Apr 2016 03:33:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Wed, 6 Apr 2016 03:33:04 -0700 (PDT)
In-Reply-To: <CALRMKQrWwR03YyenAefS1GaPQ34GhmRCz0r5GS=rR+1gx45Jqg@mail.gmail.com>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
	<25644105.gyxDGl902X@rjs-zotac.streifs.net>
	<CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
	<CAJTo0LaW9jWNK8x_MuxoSjJUsWVTBTA5mN4EtmaFFYLhAC4Edw@mail.gmail.com>
	<CALRMKQrWwR03YyenAefS1GaPQ34GhmRCz0r5GS=rR+1gx45Jqg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Apr 2016 11:33:04 +0100
Message-ID: <CAJTo0LYYRHjZGezVmKBzhv9tEtEJmAEDdMPGMCmcFy==xQVOXQ@mail.gmail.com>
To: Ronald Oakes <ronaldo@brc2.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Wed, 06 Apr 2016 10:33:28 -0000
Content-Type: multipart/alternative; boundary=089e01183a4cd0db15052fce7d85

--089e01183a4cd0db15052fce7d85
Content-Type: text/plain; charset=UTF-8

On 5 April 2016 at 23:17, Ronald Oakes <ronaldo@brc2.com> wrote:

> I'm basing off of poky-jethro-14.0.1.tar.bz as downloaded from
> yoctoproject.org.  I've also got meta-intel from the git of that name
> to support the corei7, my eventual target.
>

The full compile and install logs would be helpful.

Cheers,
Ross

--089e01183a4cd0db15052fce7d85
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 April 2016 at 23:17, Ronald Oakes <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ronaldo@brc2.com" target=3D"_blank">ronaldo@brc2.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":ebk" class=3D"a3s" style=
=3D"overflow:hidden">I&#39;m basing off of <a href=3D"http://poky-jethro-14=
.0.1.tar.bz" rel=3D"noreferrer" target=3D"_blank">poky-jethro-14.0.1.tar.bz=
</a> as downloaded from<br>
<a href=3D"http://yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">yo=
ctoproject.org</a>.=C2=A0 I&#39;ve also got meta-intel from the git of that=
 name<br>
to support the corei7, my eventual target.<br></div></blockquote></div><br>=
The full compile and install logs would be helpful.</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Cheers,</div><div class=3D"gm=
ail_extra">Ross</div></div>

--089e01183a4cd0db15052fce7d85--
