Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EFA4E00D75; Thu, 14 Dec 2017 01:14:44 -0800 (PST)
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
X-Greylist: delayed 163 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Dec 2017 01:14:43 PST
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B6C3E00D71
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 01:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1513242883; bh=1/XTEKOUyfhFdEEclc53Bh4zEY2+NupAYBbk
	3bobj2E=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=Q
	05OSzsMD7rcDH+usawFO6F+AtKriz60GFv33zpsMIYJW2xz9DKGn1DvRMetd3757O+C
	yt3bzXrfPLid3nUoO/BBANqc1tuBD5lFMzGVWO1Tra8U/DWTKcakFjB5/5tr6KWMfuB
	H8G01JLBsFmliBDobZ+A00gyTk37vZnLIpvgORW6S1/qSEFG+4zwaSCBYjduvsPe7yu
	D6qSfZISl4ksWWIMcBvGlnqkAafEpEE+B8bSSZmqlm17ecjbKcB7k79MV+4L+b5uwnV
	cP1IO9Q327NQ2cf0x5hoRBTVtK4kcult2IXDAu3ZQioYr0B7CRQqwzau49X+GGkZtIb
	Q0a6XQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=TpRw7aW98sDtq9gEaajce3x8zasZcOABMQhBrV/6xk44SOs3xUnLDXXQv7UjT1vTeOtyc4BquFR+nSMLva6t/iOeuEKmWFB+2Rh8vrQLC5US3mP9ytgbJrnVAhPVnq/+QLwvX0WBJSAxquJrOJPOuSVqmdNYxIRWUO7IedKLOYInckfCurrUr/aVUYCG2p43w7Y8zB5FbdkKDkSfsRn3KbhIOxrwqkO54a138ogAg1tTwYOytfHzoIEw3xE7eCM4SPe5t/qA4I0/xL257kAAKgWXs/esOAxBYgmxyvEdbTbSDq+cN2zRfT7OWzh6rBIqWP4xhbyVd1L4JhnUvnkjxw==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1ePPYd-000204-PG; Thu, 14 Dec 2017 04:11:59 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: =?UTF-8?Q?'Andreas_M=C3=BCller'?= <schnitzeltony@gmail.com>,
	"'Sherif Omran'" <sherifomran2000@gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
In-Reply-To: <CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
Date: Thu, 14 Dec 2017 01:12:03 -0800
Message-ID: <23D57EA8237A4DCCAF7D333E9DA33D9A@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdN0t2GmsRZMLDIqR4uT8yVByX1OMQAA5suQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688be493552a4db51730b2e89c5e7411ded350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Thu, 14 Dec 2017 09:14:44 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> > On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran=20
> > <sherifomran2000@gmail.com> wrote:
> > =09
> > 	any body tried the real time kernel? I get an error, it=20
> > is snot in the compatibility list.
>=20
> From: Andreas M=C3=BCller
>=20
> Good news: I use RT kernel only together with VC4 graphics=20
> and have lots of fun on PI2/3.=20
>=20
> Bad news: As far as I know it is not in meta-raspberrypi but=20
> in my fork [1]. There were attempts to land the RT-patches in=20
> meta-raspberrypi but that was denied for huge patch size :(

I can vouch for this. I've been using meta-raspi-light for a while on an =
RPi3, doing music synthesis, and pushing all four cores to about 90% =
utilization, running the OS "in the cracks", and it's been solid. =
Thanks, Andreas.

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


