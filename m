Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E935E00E82; Thu, 19 May 2016 08:28:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B312DE00E77
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:27:59 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id w143so21860392wmw.3
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=GlNzvwcJOidUI+QbwbMjd7iktEN5SFX2bUvrFfksnn4=;
	b=mWcHmuf4RGsNru3G40pgW4Jl2LBIpAQ/EifIID1nUnIVS0ygSu3f1rF7HtIDSb+G6F
	6H9TdLGL3ydXCWuCEsJfujFHBI8LRgpFyzf0QN2g9Di5WMQJd9MN6J5kGtG0GnGQzfMq
	H+K9PcADeyAQ+2iWz/ZQiZkUdzJCa1fpCG4RYfSY0hlgMO2lSS69FxAVJIt7Ix7JaMMr
	WfWsxLrkCbfEy2QFehHh26tax/NgTrGufyKBPqW5YXdX+3xhCnPDcBTPVf2MyI8lN8Cf
	1SGHNN8JJsXtRzVe2JNCN7jyNlhdegUHdynmhbqTDQAv00KuUDtIBBephm4OidVd2+c1
	0pog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=GlNzvwcJOidUI+QbwbMjd7iktEN5SFX2bUvrFfksnn4=;
	b=ayMBynf4uxqCw7uQR9HJDpR3Ir0wz7ZEB+gqCTUHqIzbVAA8roWy7WWb6BKOGpIn72
	nMLGkozcxpbHkhDRnlDfh4VQbAUPg4YiyuoRT+I6AcX4RVtFLAHWht/nQLWPZZ1kCMBT
	FyYdzO21T8EFuvg/JY8nNhIgUv1xv639STtCdUVYdL5/CiyTl2FMHZ1vnT6zGpajY5oj
	i5mBUtaU6ertZw8io1P+t7IaG23GEKuDLijv7o8XnvFE9qYCrcZbwjk16XZ91e286/DZ
	Xvlcl5S++AnzLeFbdDZq3XwEp31628e3sQY7+iTQYnut7t5ZaUC/0/z/g5f7LSGnglUG
	yPfQ==
X-Gm-Message-State: AOPr4FW/lTg83Ik7atBP3p6baCKmOQ+w/A2bfZn0D+OvLynfOki9E4tAWz8h5g+sYzfoFQ==
X-Received: by 10.194.242.230 with SMTP id wt6mr15117970wjc.143.1463671678697; 
	Thu, 19 May 2016 08:27:58 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	xt9sm14957806wjb.17.2016.05.19.08.27.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 08:27:57 -0700 (PDT)
Date: Thu, 19 May 2016 17:27:56 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <20160519152756.GE9848@resin.home>
References: <573DAE5A.6000707@elfin.de> <20160519143914.GA3601@resin.home>
	<573DDB17.5050007@elfin.de>
MIME-Version: 1.0
In-Reply-To: <573DDB17.5050007@elfin.de>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][Question] How to build an hwup image for raspberrypi3
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
X-List-Received-Date: Thu, 19 May 2016 15:28:01 -0000
X-Groupsio-MsgNum: 30081
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="r7U+bLA8boMOj+mD"
Content-Disposition: inline

--r7U+bLA8boMOj+mD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 19, 2016 at 05:26:15PM +0200, piotr.lewicki wrote:
> On 19.05.2016 16:39, Andrei Gherzan wrote:
> > On Thu, May 19, 2016 at 02:15:22PM +0200, piotr.lewicki wrote:
> > > Hello,
> > > I'm trying to build a Yocto image for raspberrypi3.
> > > I'm using only two layers:
> > > - poky (krogoth: rev eff84a76acea1a0842194106a66684511f409842)
> > > - meta-raspberrypi (master: rev 9912d38e97671704822d1aa05312a0439cb650d3)
> > >
> > > I have built it by cloning both layers from git (and changing poky branch),
> > > then I sourced poky (source poky/oe-init-build-env), added meta-raspberrypi
> > > layer in conf/bblayers.conf and in conf/local.conf changed MACHINE to
> > > raspberrypi3.
> > >
> > I just tested the same revisions as you mentioned and the board boot for
> > me. How do you test the board? Over serial?
> >
> > If you are using serial I suspecte you are not setting the serial
> > console. if you are using tty1 (hdmi) you need to add the specific
> > console argument to cmdline.
> I'm using hdmi. Where can I find those console arguments?

Boot partition, cmdline.txt.

> >
> > > Then I have built "rpi-hwup-image" using bitbake and dd'd it to an SD card.
> > >
> > > Unfortunately rpi-hwup-image does not work on raspberry pi 3.
> > > Boot screen halts when 4 raspberry logos show up and that's it.
> > >
> > > On the other hand I have tried the same SD card with raspberry pi 2 and it
> > > booted up (!?).
> > >
> > > Can you tell me if there is still support for meta-raspberrypi layer?
> > > I found that this layer does not follow Yocto project naming convention for
> > > branches (I think that the latest is "jethro", but nothing newer besides
> > > "master").
> > > Does this mean that there is no stable and up-to-date branch apart from
> > > master?
> > >
> > What do you mean rpi is not following the yocto project naming
> > convention? It does miss a branch for the last yocto release but there
> > are already for the old ones.
> Maybe I explained that wrong, but I've noticed that it's missing krogoth
> branch.
> I think that if something like this occurs users are a little bit confused
> and have to choose between old branch (potentially outdated) and a master
> branch (potentially unstable).

Correct. I'll release krogoth too soon. Thanks.

> >
> > > Has anybody built a raspberrypi3 image?
> > > Could you tell me which layers and which branches should I use?
> > >
> > >
> > > Thanks,
> > > Piotr Lewicki
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > --
> > Andrei Gherzan
> __
>
> BR,
> Piotr Lewicki

--
Andrei Gherzan

--r7U+bLA8boMOj+mD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdt7AAoJEHO76Gt+erfPQygP/12HtYgkmehT1M3ct/7vbh8p
vCM5Kqz4RJD4nnZw5pEr6c/ItxT8/we3FlCCVqcMKmJ1+1fjqCoqg4dVqbzVDJev
MAsbWe7RyD5ue2u7ZlNpDcpjVF3AiYtX4whfsDlf2Zw1nft4vNV3HywOZBKecN8T
YpKqDe5fLCWrWuVhxuMRKMMhMRzRqq7b4KVfu8BlDr1ny0UKLIxZEGjBJb+Qsk8h
w51N1QfSTvGRGsUB5uyigodOFu4xqTLrhf7LBzuAV6PQs3Tu++myUmoom+y2VbNo
QZBA3uYODGMK/QBZobu4kc3xErYIHNtFIoJmkOcE3+5aYwLh7xPWv9tTKY+j55a5
lQpSEeN7mzibdCVt2Ev/eeq+4X1TZ3x1YwtfBFgQSLK18UNjYAh8c/LClbIBfz2M
ikga6WTyzONs6Wcs+JNR1Czbv7D5oP4JdCXwnyamRN3QiZS0QCX/GpkpG8+qMctl
g515wj/CO6Yw5GZ3qeOpUEcwEI0totLmwVFOAJokF6bExC00TtNtPT5QsCZmBPzG
046x71OfBPyw+pZdd6juen3lgJHU6QrPECGru2Cxj9FZTWrb/8v6TBRWk9TT8DUQ
IFqNjuw2H+a5UIUhPLv91H4xcljspK+yqDhnyeGCi5XYbuqsxe2jXFvbnUoh9xG8
Jg0VsBmjfWCKZvbHooxF
=rHyi
-----END PGP SIGNATURE-----

--r7U+bLA8boMOj+mD--
