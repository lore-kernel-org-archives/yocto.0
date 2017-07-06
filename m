Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A289E00AE6; Wed,  5 Jul 2017 23:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.62 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D755E00ACF
	for <yocto@yoctoproject.org>; Wed,  5 Jul 2017 23:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1499321951; bh=fAVOsS9jLXPcGMxyB+w0cJm1QLQ5A2KF6+X6
	kgMEgSk=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP; b=d
	POwU733H7TVvWBm/t7q9JEVcwhLSJYdrJCIKfhVFZnMqb+KsFYUnjOF/7nAQjpWUi6/
	d6vI0+1Su86fpRX0gRNUzmJuiw247wgsOLFcN7+i9VHccLqpdBP0LggD0VwNivYOLDg
	AOOX+AWteCmcxLn/yRdSa6/cnKD/CGY4YnvxR5qlE62hbhisBCLBwZuzdjEI0WnRMCz
	Aj7zpjFQ37TKT40B+kbQNkxi7Eov15G5BsreP71nU7UgXS2GOptdpD/tIUM77t5FDLU
	a0p3pgJmrhqWdTz0NTnf/retQt61/N+NBhqepJU+0403TzXsBDgvyBwN64KsWs88iKb
	DDfPjA==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=Lxe11GPvNly/PDy33rnkXk74M64FObn0f+J0cGuCoVOJg/lXkcbopk1msowOGSG80n33frSIK1yEWo4F+DzynmofP7wSvUBazQMyAywJOphLu6651xY7duVKIzdRjTH3bANOvywpJE4YA0kvK4ubYAZpTl/FlLIiSuXFwMTbg+njYzPZwodUo3jF0yY6fQXJ4aHA/Sas7Y7pJrWG6SK4cyNwJtHts6cvY1Lk/wxqjT98ed6n8IH/GYeGK9zz2ILmKXAxDr43sRL6XIv7XDyYJBrqFTqqPow3dfOXW+NWBVYL7NYCTBGTt84rDQAPat25NyF6we2i1FM2uWruiFPi8Q==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dT084-0006ej-Dl; Thu, 06 Jul 2017 02:19:08 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Lukasz Tekieli'" <tekieli.lukasz@gmail.com>,
	<yocto@yoctoproject.org>
References: <FF02D819682A44949D09718D69202477@PAULD>
	<CAC+thW12U7RCZsSS7tuSVWis+bycbDo6t-oFiOpePoQ9nJ3qSA@mail.gmail.com>
	<753516A24CD045AAB7E6E2F13BD1C99D@PAULD>
	<CAFfxioxyEy1iWzktbKT6hBnq+AA6kS=g8srE-fLyWEJq1c=V0Q@mail.gmail.com>
In-Reply-To: <CAFfxioxyEy1iWzktbKT6hBnq+AA6kS=g8srE-fLyWEJq1c=V0Q@mail.gmail.com>
Date: Wed, 5 Jul 2017 23:19:13 -0700
Message-ID: <501CF551D83C4440A8EEAB9DF19A8F17@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
Thread-Index: AdLzAlpw22oU98rsRj24UQHUBq3k0gDHSVPg
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606889bc202cdaf6bd90ad4f775ca9b4aca40350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: RPi app built with SDK won't load
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
X-List-Received-Date: Thu, 06 Jul 2017 06:19:12 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I incorporated all the relevant symbols from =
environment-setup-cortexa7hf-neon-vfpv4-poky-linux-gnueabi. I defined =
the compilation command as ${CC} ${CFLAGS} and the linker command as =
${LD} ${LDFLAGS}. Other Eclipse settings added -O3 -Wall -c to the =
compile, and -s to the link.

When I did the build, the compile succeeded, but the link complained =
about "-Wl,-O1" as an unrecognized option. I first tried eliminating the =
"-Wl," prefixes, but that gave me a "cannot find entry symbol _start" =
error. I put the "-Wl," prefixes back, but changed the link command from =
arm-poky-linux-gnueabi-ld to arm-poky-linux-gnueabi-gcc, and it linked =
okay, but gave me the same runtime error I've been struggling with.

However, Lukasz put his finger on the problem when he wrote

> From: Lukasz Tekieli [mailto:tekieli.lukasz@gmail.com]=20
>=20
> it seems that if linker is called without -mfloat-abi=3Dhard=20
> then the ld is set to /lib/ld-linux.so.3 instead of=20
> /lib/ld-linux-armhf.so.3 which is the correct one.

It turns out the correct way to run the linker is $CC $CFLAGS $LDFLAGS, =
not $LD $LDFLAGS.

The reason this escaped me for all this time is that I was using =
arm-poky-linux-gnueabi-objdump -x on the executable, and grepping for =
NEEDED to find out what shared libraries were needed. The actual loader =
isn't listed in this way. Using the -s option showed that the .interp =
section contained the string /lib/ld-linux.so.3. Now it correctly shows =
/lib/ld-linux-armhf.so.3.

Thanks to all who looked into this for me.

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


