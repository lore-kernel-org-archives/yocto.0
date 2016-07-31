Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13E23E01071; Sun, 31 Jul 2016 11:55:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AAC5E00CD2
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 11:55:03 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id x83so23261388wma.3
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 11:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=+mB1BqL3Ho1ODN5fIynbI1xY6ZsHp8xXke6mXO3YIgQ=;
	b=ttej4fGWfp7DRl+djGpRG9yJ1KBY2+4AQj7BXnkeFm8CWSGUaiKSmhIRzAqNZ5S4wg
	TMo9G184ELiaVruQsB7p9VC3fZ6Na8CMP4B1TOc0HULur3AEWECPBDcHzetsA2KcL8/6
	pMUAbAGWkMhyRcyYCd6z4asez3cbCDQHvA2ZwnGNuqQS0a6+VPq7179SYo0Kf4gZlTgk
	3jtW8wBQD4mF+iwV/GWd9vstrNgI2b/AGYTl4JErEkkxA7SnV4di/BRjfxp47LTuJ418
	txCE/4S8VYW9qPqnKGFOHKNkbF5H4HdU2SQxvf1A4wAx6e0nWZVCvfDCB2cGQtnTEs7q
	iPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=+mB1BqL3Ho1ODN5fIynbI1xY6ZsHp8xXke6mXO3YIgQ=;
	b=US7bGuhN+I++y7BG6gOnjO70sJ+ztJKJQSktOf8ZlXP+UN9qVdRhQLEuJVAIcO0m1M
	4HbbbOUBSSRnQYH7htKBn1/4F93QlnZiaaiGOcx6TOIZgcWF5Z1DiDGUFbcUMwjsEO/+
	xMPKSw52RRX4oMYfacQKxK/FpkX6q8Q4sY0ZFj/Nas9+zJiCGki5ojMEW99okADh8v/9
	u3SK7vhCfgA2ji6gXysU+7k4KtYCr0dGBiA3joatEB4ymheQMRWmMVfH++Ay+qoBNdzN
	ODY3Nt8T9655iTzHeTs3y9kRyK4AEXBpY0/YXQWcu6JMt+BqtRD3iQ5hEGuMfVlO0F31
	c9/w==
X-Gm-Message-State: AEkoouuODHrwgz/LatJjeQAjRXhJ02th7ze+F3KmyLaw556CDRcUVcCnIx43sruTuqHsCQ==
X-Received: by 10.28.174.76 with SMTP id x73mr52025897wme.60.1469991302692;
	Sun, 31 Jul 2016 11:55:02 -0700 (PDT)
Received: from resin.home (host86-186-205-140.range86-186.btcentralplus.com.
	[86.186.205.140]) by smtp.gmail.com with ESMTPSA id
	bw9sm26770896wjc.33.2016.07.31.11.55.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Jul 2016 11:55:01 -0700 (PDT)
Date: Sun, 31 Jul 2016 19:54:59 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160731185459.GC29087@resin.home>
References: <20160721080236.0ed7287e@nuc.betafive.co.uk>
	<001e01d1e366$2908ffc0$7b1aff40$@neuf.fr>
	<543dea85-f500-9551-12f2-25bc718b47d2@elfin.de>
	<CAMKF1srbdtSSthhR0mBq_Lfz=O14oANhnvwJjzRFFGSxPtVBLw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srbdtSSthhR0mBq_Lfz=O14oANhnvwJjzRFFGSxPtVBLw@mail.gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux-raspberrypi versions
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
X-List-Received-Date: Sun, 31 Jul 2016 18:55:05 -0000
X-Groupsio-MsgNum: 31315
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qtZFehHsKgwS5rPz"
Content-Disposition: inline

--qtZFehHsKgwS5rPz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 22, 2016 at 07:07:07AM -0700, Khem Raj wrote:
> On Fri, Jul 22, 2016 at 12:03 AM, piotr.lewicki <piotr.lewicki@elfin.de> wrote:
> > Hi all,
> >
> > I also think that's a good idea. In my opinion we should at least make
> > latest LTS (4.4) the default kernel and try to add latest mainline.
> >
> > Probably the "proper way" of dealing with the issue is using branches. This
> > way (as it is in oe-core): jethro would have kernel 3.18 and 4.1, krogoth
> > would have 4.4 and 4.1 and master would only have 4.4 and latest mainline.
>
> 4.1 is also LTS, So it should be kept along with 4.4 until next LTS

I'm 100% on removing < 4 and keep 4.4 default along with LTS 4.1 and the
current tip.

>
> >
> > Don't you think that it would be a good idea to create some "quasi" krogoth
> > branch out of what is on master and then cleaning the master (e.g. removing
> > kernel 3.18 and 4.1) ?
> >
> >
> > BR,
> >
> > Piotr
> >
> >
> >
> > On 21.07.2016 17:39, Herve Jourdain wrote:
> >>
> >> Hi Paul,
> >>
> >> I had the same line of thoughts...
> >> I believe 3.18 should be dropped, maybe even 4.1, default to 4.4, and
> >> maybe
> >> add 4.7 to the mix, since 4.7 seems to be where the bulk of the work is
> >> done
> >> now.
> >>
> >> Herve
> >>
> >> -----Original Message-----
> >> From: yocto-bounces@yoctoproject.org
> >> [mailto:yocto-bounces@yoctoproject.org]
> >> On Behalf Of Paul Barker
> >> Sent: jeudi 21 juillet 2016 09:03
> >> To: yocto@yoctoproject.org
> >> Subject: [yocto] [meta-raspberrypi] linux-raspberrypi versions
> >>
> >> Hi all,
> >>
> >> I'm planning to look at the linux-raspberypi recipes once I've had time to
> >> send V2 of my u-boot patches. I'd like to know people's thoughts on the
> >> available kernel versions in the meta-raspberrypi layer:
> >>
> >> Is anyone still using the linux-raspberrypi 3.18 recipe? The commit
> >> referenced in SRCREV is from June 2015. I think it's probably time to
> >> retire
> >> this unless anyone has a reason to keep it around.
> >>
> >> Is there any reason to keep linux-raspberrypi 4.1 as the default recipe?
> >> The
> >> last commit to the 4.1 branch was in April and the default branch on the
> >> linux-raspberrypi GitHub repository has been
> >> 4.4 since then. I think we should change the default version to 4.4 unless
> >> there's a good reason not to.
> >>
> >> If there's no objections I'll send a couple of patches to drop 3.18 and
> >> change the default to 4.4.
> >>
> >> Thanks,
> >> Paul Barker
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--qtZFehHsKgwS5rPz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXnkmCAAoJEHO76Gt+erfPhqwQAK91kvWglZs8idf3PkwurShn
3nqGxE8Rvw9QPDIWCgV0EfPOgb+AEankwKWWkBDaldiJaPR32gQV+vxmt4mkJfpq
/KTYPvus+Qn7cfyezscBR0NhyMHrapKBzj08pICB7IDbsOaTQjTbuIQKQtmRO2Bx
SsGCyDgoiBhpZ3it6VaaJxYm6ANB7TssUBlQ/KK+WWpe4kMZDWcaD+xxRVmbcCj0
jqZiBFU1SdrCerwdyPVHSODzfZT1Jl02HfxvW9kYfbfpDPSQfZH4/EsaI+PpFHt3
SUZz3I0dUi/Gi9zOhwoTOAAOk1KDJ4YOcMt8RCMgKZ1i/EcjWEEfQvDa6nOYDNCH
ttltmUcNH1Q2i8M4ztt7PmsszNq3AXWCYHDUIYRKEVG4YA/tI6hSw9B4TyvGpavV
ok50cBmbFQ1k9/f+x4oZvB/Q0XmKXTenUyzzVlKkFyh3w4ZdDT4P7g19FhMSSjmy
MSm6u1SnbW0acQ5/zIhN4qX0hM2BGcS0dcT5yg1YZjYTNTmRg0K89g4sQxScUEOJ
5FGFyzPz6fe4cbtbckS/xtfriVp0zO9SL/M5nPYORS2ePZwsE9XukeXl9/ctSc+S
kUhGdd5Z/ESK6eyZOLKm7M3SRneCAIPEO3Q0kMmZMMiDH6nEbgKiIGeUHatZtvHt
0orC/5/22FtVBcVVwUDT
=SDnK
-----END PGP SIGNATURE-----

--qtZFehHsKgwS5rPz--
