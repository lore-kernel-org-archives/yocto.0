Return-Path: <akorsos@kranzetech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8592EE00911; Tue,  8 Mar 2016 16:05:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48069E008E1
	for <yocto@yoctoproject.org>; Tue,  8 Mar 2016 16:05:34 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id c203so23451198oia.2
	for <yocto@yoctoproject.org>; Tue, 08 Mar 2016 16:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kranzetech.com; s=google;
	h=mime-version:date:message-id:subject:from:to;
	bh=kfimLjGP3Q9gRAi/LmftEJRSHNt9DPs84PrYX4Hlkyw=;
	b=n/OpxD6Y35j+iZfCT1sMspBIg+WuNbdOVNYTTK/AMOSWqkK96uQWvR4hMVZAIyJKvC
	ObMxmWp5zPPBJlpr33ad6cKm3yLYYE5Cd9a9rFe/+5Wx+qlUlcoXcp6p3FXQn6ZGFzeX
	oPqT4JlidOfkPti9ypeNsQ1lJMFPOpjZBuTQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=kfimLjGP3Q9gRAi/LmftEJRSHNt9DPs84PrYX4Hlkyw=;
	b=FsYV5zNpZBTVLyRLmK3GrURsYQP6HlAqAy+KzLIPogBQwyEx8WuXbUiEQEgzfHLs9M
	z5BVab5ZO7zHaXcIgHL1Y9GnNHxHzBAQGEU2QBB0Jl5+7iiZQ3NY6U8MDrRqaPVQCY48
	5xWq5NZcY5YtzkYjr+JsBlKtGkU35etAMztggBNysie/+K9HAamo3BtwPBdVq51fsc0E
	Z232wrAIUQ8s+2I5L/MRM0+cc1OBYFrNVJir9AqU8gFepeUSlJb9kyLvzoO0iV+Z0wjg
	9MmLQc5ECvgfARUNmYn+nZUc8rgEtcpQtZ9Co9k+M8bNKFr5JgvHSOJWWO+G0p2Bh+Tr
	g6uQ==
X-Gm-Message-State: AD7BkJLFtNUE3lxlAdcusXzfryM20/TvqBxVbn3CFp0fCioStFRz5kkoP8E5aU92G1aquP4jvk6HUCOPmKTemDBs
MIME-Version: 1.0
X-Received: by 10.202.175.148 with SMTP id y142mr6450909oie.107.1457481934380; 
	Tue, 08 Mar 2016 16:05:34 -0800 (PST)
Received: by 10.76.171.202 with HTTP; Tue, 8 Mar 2016 16:05:34 -0800 (PST)
Date: Tue, 8 Mar 2016 18:05:34 -0600
Message-ID: <CAGqgsEjaz=RYL5U9kqcAOLm7ws4apuh4HBQHRzzwcXaAL62sig@mail.gmail.com>
From: Alexander Korsos <akorsos@kranzetech.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 09 Mar 2016 09:03:05 -0800
Subject: Yocto Dizzy -- eth0 doesn't appear as a network option
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
X-List-Received-Date: Wed, 09 Mar 2016 00:05:38 -0000
Content-Type: multipart/alternative; boundary=001a113cf5acf73921052d927435

--001a113cf5acf73921052d927435
Content-Type: text/plain; charset=UTF-8

Hi,

I'm running Yocto Dizzy (core-image-base built with BitBake) on a LogicPD
DM3730 / AM3730 Torpedo + Wireless SOM. When I perform "ifconfig -a" I do
not see eth0 as a network option. I do see lo, tunl0, usb0, and wlan0. The
root file system is a clean build but the kernel (linux-omap3) has been
modified (by an individual no longer with the company). I've gone through
the kernel and enabled options that make sense (i.e. Device Drivers >
Network Device Support > Ethernet Drivers etc) but I can't seem to get my
kernel to see its ethernet port. I'm just curious is anyone could identify
my errors or possibly point me in the direction of good documentation. I
would be happy to share my deconfig file.

Thanks!
Alex

--001a113cf5acf73921052d927435
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m running Yocto Dizzy (core-i=
mage-base built with BitBake) on a LogicPD DM3730 / AM3730 Torpedo + Wirele=
ss SOM. When I perform &quot;ifconfig -a&quot; I do not see eth0 as a netwo=
rk option. I do see lo, tunl0, usb0, and wlan0. The root file system is a c=
lean build but the kernel (linux-omap3) has been modified (by an individual=
 no longer with the company). I&#39;ve gone through the kernel and enabled =
options that make sense (i.e. Device Drivers &gt; Network Device Support &g=
t; Ethernet Drivers etc) but I can&#39;t seem to get my kernel to see its e=
thernet port. I&#39;m just curious is anyone could identify my errors or po=
ssibly point me in the direction of good documentation. I would be happy to=
 share my deconfig file.</div><div><br></div><div>Thanks!</div><div>Alex</d=
iv></div>

--001a113cf5acf73921052d927435--
