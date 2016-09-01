Return-Path: <neil@controltechonline.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75AE2E00B52; Thu,  1 Sep 2016 11:42:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68661E00720
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 11:42:48 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id i32so158179909uai.2
	for <yocto@yoctoproject.org>; Thu, 01 Sep 2016 11:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=controltechonline-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=1K5NwUhEwoOIdnYuqmth59Q/e4RgkIKA7ASoxRc6PRU=;
	b=AmRxJCG/a3p4HAXnJ18/K5ALZrN3cF0DWeYQjSYUbYJngOuY56FYWV1Kg2BNyTsebf
	gIbWql6xtB9RoYaWcTuH3j4W0lnOSCiHqbeQI22SxzVFmpsUGa8db3iUby+S6d5tavkt
	laHPU1UZ5BxtdcPTS2HueEe+gXLelGYS8CC9xTewAJWo1FvDXIXWPtcoyJq3k9Bt07Za
	/mDTCOrc18JQU/lrvRKUDWTjjoGs/8eAnu7K023uRxLuqMRqGzGUs1WlteHs8T3DzrYI
	jcIJcN07ONxI6grHhCVEX2rV3kkzin/k+4qZtJUlgCfwBWdX4Vq3KylyNjqBCIHt5qhY
	1fOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1K5NwUhEwoOIdnYuqmth59Q/e4RgkIKA7ASoxRc6PRU=;
	b=D26KL3jxF8a5E6SMIvlKTZgmRv+YUErountcGErv8rGdaGiuf/dQ/pkbYf73TXZYQ0
	NcfU/sWZ9xTfmiMmvE9Ub6fGUoiKANpEwch57WZMH7WSeHLQ5DyzKvI2oT6ZOAZI6a8a
	QmUyBtLm+rFyRnZt3Ev73akVZojUVUkUxuSM5SHQuHz1Ca5mlxhtBPZrZvWT8W7M2xyN
	FPi7a4UELo6BlOX1PhNWq1Nw0HaPVU/TJ8XIE5anoFuPXfcbzfLS7bhQXisdwFr+LNSA
	o7kF0MIR/AqtBgWbKMBIH4H3NLbLlGUlBMfSsAXCQdYbqO7UTZgaot0UsA5g2g2ZXTld
	mmug==
X-Gm-Message-State: AE9vXwNoYn7frsoW7hMxUwLh64H3vQRg387fCIFIokmo7hk/YrI/33QO8P6nqXKybIUscKtr1M7MQQj7RNcTyGZ3
X-Received: by 10.159.39.6 with SMTP id a6mr10285062uaa.33.1472755367561; Thu,
	01 Sep 2016 11:42:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.66.7 with HTTP; Thu, 1 Sep 2016 11:42:47 -0700 (PDT)
From: Neil Shivkar <neil@controltechonline.com>
Date: Thu, 1 Sep 2016 13:42:47 -0500
Message-ID: <CABJNX1xehB1dthNg4z+3hjanh-Vo6bv1YoPDY9eGSLMfuwmQhQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Choosing splash screen during run time
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
X-List-Received-Date: Thu, 01 Sep 2016 18:42:50 -0000
Content-Type: multipart/alternative; boundary=94eb2c123f5086658f053b769450

--94eb2c123f5086658f053b769450
Content-Type: text/plain; charset=UTF-8

I am trying to show a specific splash screen based on a setting.

Right now I have this in my psplash_git.bbappend

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SPLASH_IMAGES = "file://logo1.png;outsuffix=One \
file://logo2.png;outsuffix=Two"

1) I can only show one image at the moment but only when the outsuffix is
set to default
2) How do I choose to show either One or Two without having to make
different builds?
3) What would be a good way to store a flag that lets me switch between the
two?

Thanks,
Neil

--94eb2c123f5086658f053b769450
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to show a specific splash screen based on a se=
tting.<br><br>Right now I have this in my psplash_git.bbappend<div><br></di=
v><div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;</div=
><div><br></div><div>SPLASH_IMAGES =3D &quot;file://logo1.png;outsuffix=3DO=
ne \</div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pr=
e">					</span>file://logo2.png;outsuffix=3DTwo&quot;</div></div><div><br><=
/div><div>1) I can only show one image at the moment but only when the outs=
uffix is set to default</div><div>2) How do I choose to show either One or =
Two without having to make different builds?</div><div>3) What would be a g=
ood way to store a flag that lets me switch between the two?</div><div><br>=
</div><div>Thanks,</div><div>Neil</div></div>

--94eb2c123f5086658f053b769450--
