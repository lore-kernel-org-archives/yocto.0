Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C28EE0086E; Wed, 28 Jan 2015 03:20:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EFBDE00757
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 03:20:48 -0800 (PST)
Received: by mail-qc0-f171.google.com with SMTP id s11so15928499qcv.2
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 03:20:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=OUrVxh8P/aYsXMb09hkFc/lE7aQwqDIgFrFhMNPfZrY=;
	b=D0SwfpaQpAQoCs/WVGw1IF1echfXpDKr1fYCQvrI2w2GfynEOGmtwU5G61FTthKXKH
	x/RV5wrrD5wtoYpx+QoA3rdobmFpeHMjPp/wNRGks/8cLtrCumZjWX636gKFjdctRxNI
	n1kkAzdqyCtRBryMyqMZPJ82C46p6shkr7etGNNxV+hQGnytf6Fc5HEnaFpzv+quZeXv
	zyWaTpHuAkqFTYZ3X++UzCQAVJMWiREQvwvKEMVji8W2XjqPYYGIo2fnIiN/GxBm1Zaa
	apSFLY3A2+QQkje1EiBX2/6dy77AqCuDM1Ygp3tZoEhEE99YGXRrCtHqCsoVkY/Q8Y6A
	Z+4w==
X-Gm-Message-State: ALoCoQkE7Nsx/QRFa/La6FVWRMqKZXa1pI1ul/nK3SWvQgX16gEJZZwD8sJoVRrJbIt7+ez3tI3w
X-Received: by 10.140.39.179 with SMTP id v48mr11361332qgv.77.1422444048216;
	Wed, 28 Jan 2015 03:20:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Wed, 28 Jan 2015 03:20:27 -0800 (PST)
In-Reply-To: <CAJ2CSBtmYoA+z-hWpUR=-99CTWssLjY74MUh1hm5+Oi70nG7sw@mail.gmail.com>
References: <CAJ2CSBtmYoA+z-hWpUR=-99CTWssLjY74MUh1hm5+Oi70nG7sw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Jan 2015 11:20:27 +0000
Message-ID: <CAJTo0LYss1AsRY3RRLrpMg3FyuDbacoM6sP3HO9_gueX-ovjeA@mail.gmail.com>
To: "Damian, Alexandru" <alexandru.damian@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: HEADSUP - CVE 2015-023 remote code execution in glibc
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
X-List-Received-Date: Wed, 28 Jan 2015 11:20:51 -0000
Content-Type: multipart/alternative; boundary=001a11c131f63509c9050db490df

--001a11c131f63509c9050db490df
Content-Type: text/plain; charset=UTF-8

On 28 January 2015 at 11:17, Damian, Alexandru <alexandru.damian@intel.com>
wrote:

> Do we need to open a bug to track this ?
>

Probably for the best to ensure it goes into all the branches we support.

Ross

--001a11c131f63509c9050db490df
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 January 2015 at 11:17, Damian, Alexandru <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:alexandru.damian@intel.com" target=3D"_blank">alexandru.damian@=
intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cla=
ss=3D"gmail_default"><font face=3D"tahoma, sans-serif">Do we need to open a=
 bug to track this ?</font></div><span class=3D"HOEnZb"><font color=3D"#888=
888"><div class=3D"gmail_default"></div></font></span></blockquote></div><b=
r>Probably for the best to ensure it goes into all the branches we support.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross<=
/div></div>

--001a11c131f63509c9050db490df--
