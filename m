Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB6A4E00D1B; Wed, 30 Jan 2019 23:26:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
	[209.85.167.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F6FE00BED
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 23:26:17 -0800 (PST)
Received: by mail-lf1-f50.google.com with SMTP id i26so1565117lfc.0
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2019 23:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jJdIzAK0xRlmPbsM+2f0JTkyevzALH20AG2uP+tf+ig=;
	b=ueS5maEIE/kHwNKHUFL0iRQKVf+jNjSSHX+brbzbq6/P7OOrJftawQ/4Ap+2titp3K
	SbsVM5/lH9mx3p2HLZd/KTmJP9FozSNVnnajPFpKti0QMs+5jaAH0gzA0PXitL32HW+u
	ncD6JdAJyHU1TkbE7vKT97ZErydgektEp5LgQunlGUxvOgBRnugMUheJkOUzsjFNOkRF
	V43DD6P1lfvx9vB9OTWszGgAHXphHfYKrVNuzb7KbBnutY0g8mkrUKz9ZnqKexHqwaT2
	tKEZMXzwsXdqxug+HhVPFQtwBuUMbCe4uOhkaUI5WUT7Lje2ydT0EhEv1O1pXrqVpSgP
	x6Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jJdIzAK0xRlmPbsM+2f0JTkyevzALH20AG2uP+tf+ig=;
	b=GuQ26MqzTB74HLu20ujMF+1xNC5mURqAPTuxDopJDaiKF5cRjJWwPVu/UJwzT7mGT0
	FYiOeHh5/VgZliaBa9yPEyus7QEf+iwb6IzjI5Kbop4NUCASL1d+fGszN118KbidS9xm
	YcI3PD4+m+Co2efYiOt6qpgvGbIEJyzCNJp4OXUMGePPMUOw9TlBXqCLEzU1jT/UB/An
	CtaE+B79tKJJ9slBaezGUTZOLOCP3u2EuZ1qI17qT53sETAxUhjS01ClG+m2Tb96aL+Z
	W9P6L90s4BH5iSaBEIhL4n8LYfuvwsfRx9O9JxeaRiTs/3/k8kFCyGmh1VGHTfZYYJTr
	cjSw==
X-Gm-Message-State: AJcUukfXokPxMBFF8DZqBlZ1s3hYy30Z16aoBsWFRPuUOAGxzPqHjKTe
	LVnPFnxwTy84orOOEQSyRGfC+mY23mA0nJGePnZBsQt5
X-Google-Smtp-Source: ALg8bN4df1O8FqsZ6G6KGDKkD+1yNFMIsZYn/+v1U3IEv2rGWSM7kKwmMckD7yiKtietQTuygiHSoI5k92XG2OnUfNA=
X-Received: by 2002:a19:c995:: with SMTP id z143mr25731433lff.79.1548919575961;
	Wed, 30 Jan 2019 23:26:15 -0800 (PST)
MIME-Version: 1.0
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 31 Jan 2019 02:26:04 -0500
Message-ID: <CAHUNapTBZZRA4+RiFLVHYX6CAkAC8_s9jA0KrFc8Rvs0ksLG-Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembedded-members@lists.openembedded.org, 
	openembedded-devel <openembedded-devel@lists.openembedded.org>
Subject: OE Summit @ SCaLE 17x - Sunday March 10th 2019 - Pasadena CA
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
X-List-Received-Date: Thu, 31 Jan 2019 07:26:18 -0000
Content-Type: multipart/alternative; boundary="0000000000001c67090580bbf15b"

--0000000000001c67090580bbf15b
Content-Type: text/plain; charset="UTF-8"

We're excited to announce the inaugural "OpenEmbedded Summit" taking place
Sunday March 10th 2019 as part of the Southern California Linux Expo
(SCaLE) 17x at the Pasadena Convention Center.

For the past few years there's been an ever-growing OpenEmbedded event as
part of SCaLE. This year, with the missing Spring ELC, we felt it was time
to do something more "formally" so OE enthusiasts could get together
without having to wait until August.

The initial suggestion for this summit came at last year's OEDEM in
Edinburgh. At that time an idea was also floated to hold this year's OEDAM
at the same time. Just to be absolutely clear: this suggestion was
rejected; there will be no OEDAM at the OE Summit at SCaLE 17x. However,
this summit is taking place with the full approval of the OpenEmbedded
Board of Directors, many of whom have also been helping out with its
organization.

The schedule for the OE Summit has been posted:
https://www.socallinuxexpo.org/scale/17x/schedule/sunday
https://www.socallinuxexpo.org/scale/17x/open-embedded-summit-0

So if you're in the Southern California area, or are generally interested
in hanging out with some OpenEmbedded people, please join us in Pasadena on
March 10th!

Your OE Summit organizing committee:
  Tom King
  Behan Webster
  Trevor Woerner

--0000000000001c67090580bbf15b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We&#39;re excited to announce the inaugural &quot;Ope=
nEmbedded Summit&quot; taking place Sunday March 10th 2019 as part of the S=
outhern California Linux Expo (SCaLE) 17x at the Pasadena Convention Center=
.</div><div><br></div><div>For the past few years there&#39;s been an ever-=
growing OpenEmbedded event as part of SCaLE. This year, with the missing Sp=
ring ELC, we felt it was time to do something more &quot;formally&quot; so =
OE enthusiasts could get together without having to wait until August.</div=
><div><br></div><div>The initial suggestion for this summit came at last ye=
ar&#39;s OEDEM in Edinburgh. At that time an idea was also floated to hold =
this year&#39;s OEDAM at the same time. Just to be absolutely clear: this s=
uggestion was rejected; there will be no OEDAM at the OE Summit at SCaLE 17=
x. However, this summit is taking place with the full approval of the OpenE=
mbedded Board of Directors, many of whom have also been helping out with it=
s organization.</div><div><br></div><div>The schedule for the OE Summit has=
 been posted:</div><div><a href=3D"https://www.socallinuxexpo.org/scale/17x=
/schedule/sunday" target=3D"_blank">https://www.socallinuxexpo.org/scale/17=
x/schedule/sunday</a></div><div><a href=3D"https://www.socallinuxexpo.org/s=
cale/17x/open-embedded-summit-0" target=3D"_blank">https://www.socallinuxex=
po.org/scale/17x/open-embedded-summit-0</a></div><div><br></div><div>So if =
you&#39;re in the Southern California area, or are generally interested in =
hanging out with some OpenEmbedded people, please join us in Pasadena on Ma=
rch 10th!</div><div><br></div><div>Your OE Summit organizing committee:<br>=
</div><div>=C2=A0 Tom King</div><div>=C2=A0 Behan Webster</div><div>=C2=A0 =
Trevor Woerner<br></div></div>

--0000000000001c67090580bbf15b--
