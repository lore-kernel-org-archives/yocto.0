Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 058D4E00343
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2013 04:22:51 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id db10so2410233veb.12
	for <yocto@yoctoproject.org>; Sat, 06 Jul 2013 04:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	bh=kKJTd6oztpylDx6NfG7GpFzYdRnSGWffXfAJgOaenHw=;
	b=U+HaIJce2rf95BjWaB+xwAf/2+d32apzsNmtFqpwVa0SycqIMGiutDvdF/dRTp5uYG
	ICoKO0eDVLu+knNx4rK5MSOrwaU9moksu+Sh8/uxlYYE+U+dNzbV1LoEtbQgcr0GlWqb
	YEXv1zkqMRpg3LKWIlW9Ty3nxOdmPDV0rvFspPiLWIs9oG442My98LZzyvlAtrMWrctY
	IWpyZmLH4uQoqmgCD7+svQ+qCFtk+aV2JBIC6dp+Xb8ooqljIOkQpejdNdIutZrJOyOD
	x3r5Ccn3+U9wEXGHevKZ7sPe2OAUcTDiPmDGkRlduIxi2JgVaSVqFi3CDKgxtbcHbX2S
	xVHw==
X-Received: by 10.220.98.68 with SMTP id p4mr9860515vcn.28.1373109770651; Sat,
	06 Jul 2013 04:22:50 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Sat, 6 Jul 2013 04:22:10 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sat, 6 Jul 2013 12:22:10 +0100
X-Google-Sender-Auth: 264Bb2LmOEkNc3coT1T6pcr-nMs
Message-ID: <CANyK_8fZbLNj8zi3AUiUdGU-rVQEHYMPvyp5nMKndvV02LrFQg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Userland and vc-graphics
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
X-List-Received-Date: Sat, 06 Jul 2013 11:22:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

The meta-raspberrypi repository has separate recipes for 'userland',
'vc-graphics' and 'vc-graphics-hardfp'. To my understanding, the
vc-graphics files in the raspberrypi firmware repo
(https://github.com/raspberrypi/firmware) are simply compiled from the
userland sources (https://github.com/raspberrypi/userland). All three
recipes PROVIDE 'virtual/libgles2' and 'virtual/egl'.

So if there recipes are fulfilling the exact same purpose, I think we
should strip out vc-graphics completely and always build from source.
I've never seen a use case for the pre-compiled vc-graphics recipes
within OpenEmbedded/Yocto.

Does anyone else who's worked with meta-raspberrypi agree with this?
If so I'll throw together patches to achieve this.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

