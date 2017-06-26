Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1022E00B8F; Mon, 26 Jun 2017 00:42:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9A23E00B63
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 00:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1498462974; bh=gjadgO1/UWIlUjok3XnGKU6FlDjtmO3LVi+u
	zXEzm9Q=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=p
	58yQIHVtpY/kbkFDzMeMZ5W0/JRJk6ASaZtwOdqj7ImEfHvUJYGutrQgD8KP5D3NTi6
	73j59h6AAGjVORsdiLSpjNJlf925mqXBSPdmH3u/crP87Ir23CU/TIOxcGPtE2NZSKD
	67v1WEidkOI02gTtm1F2FdeekBzLCtwGDx99zwK4eTzgjeU/md1xfIIeBu6vQUEp2Nu
	poivxYiR/2Mh/Z1XXJQXACh+DbPOUuDnnvwbGC1YwPcqXg1qfX0JPO2beVAXwVRx1z1
	OmTKu6QkGMByAjaOM78eeuHFqDUUVy113yuE0UNf25uN6UjC10LRLmBO+SywoGOqTtx
	SZOrng==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=HZTBU3GmsSWXE4lLem7g5HsaKC0iobsNlIjzm/5CbBnKqKiMuAOHU8Pp7AymQkWIE+CezZcMd0HZ2lq19rWhsdw8pj7vpYTLYtV9v9Klnt7BofGtSL97U+akr0QL4AIzceEZUUPHwrJGpgbgfk5jqYK7+v+ARcKv3AMcOWP0myRhjQgsTBFFiUsdYoeJcPn26mJ7N6hM1ZX2LAGeG2ImVB8BZPn/hvj2xfATr8Br7O8JIjOL57UzMxOxXj1f4zQX3OIp5PEpfkd75ETmcakYqPirZXMwS7qMqSN+zwJ5wC4gk0Cl/9JGCXXcuxfNtVFrtRDoh7jDXDjjT3YakZG3cw==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dPOfd-0004qC-G6; Mon, 26 Jun 2017 03:42:53 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Trevor Woerner'" <twoerner@gmail.com>
References: <23EE2924AFA4488992A7D0127F20147A@PAULD>
	<CAHUNapRBFvJbsJxQfOSWKYd8qGikHRxO36rWD9iphqgzzdruLQ@mail.gmail.com>
In-Reply-To: <CAHUNapRBFvJbsJxQfOSWKYd8qGikHRxO36rWD9iphqgzzdruLQ@mail.gmail.com>
Date: Mon, 26 Jun 2017 00:42:48 -0700
Message-ID: <80289FC91C3146FA83F328CC8F61F2E5@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLuO9iBAs9FadTkRMSwiwsVG8xHKQAE0F+g
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688030a0fc25617257f3a0490120f7626c8350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Cc: yocto@yoctoproject.org
Subject: Re: Current state of linux-raspberrypi-rt?
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
X-List-Received-Date: Mon, 26 Jun 2017 07:42:56 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> From: Trevor Woerner [mailto:twoerner@gmail.com]=20
>=20
> > Google turns up a lot of stuff about this, but the latest I=20
> > found was a
> > thread from 1/5/17 that started with Trevor Woerner posting=20
> > a 1MB patch,
> > and that ended with him posting a message saying that it=20
> > didn't actually work.
>=20
> I posted a v1, which worked great, and continues to work great.
>=20
> After posting the v1, lots of feedback was given. One of those pieces
> of feedback was that I shouldn't include the entire defconfig, but
> rather I should use some sort of "savedconfig" setting to generate the
> full config. I had never heard of this before. I asked for more
> clarification but received none. I went ahead with the v2 using this
> "savedconfig" technique. It *appeared* to work (which is why I
> submitted the update to the mailing list), but, after a lot of
> testing, I discovered that this "savedconfig" thing didn't work. The
> defconfig that was generated using this technique was useless and
> nobody could provide any reason why or advice how to fix it.
>=20
> So v2 didn't work, but v1 did and still does (we're using it=20
> internally).
>=20
> But everyone considered v1 to not be acceptable for inclusion for a
> number of reasons, so it never got merged. Besides, that work was for
> a 4.4 kernel, which is now considered "old".
>=20
> > Is there anything new on this? I'm trying to do some=20
> > compute-intensive
> > audio on an RPi3, and it really needs a real-time kernel.
>=20
> Andreas M=C3=BCller has a meta-raspberrypi fork in which he has an -rt
> recipe for a 4.9 kernel:
> https://github.com/schnitzeltony/meta-raspi-light

Thanks to you and Andreas for doing this.

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


