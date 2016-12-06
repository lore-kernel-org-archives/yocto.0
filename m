Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4E14E006EA; Tue,  6 Dec 2016 07:43:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BF77E00546
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 07:43:42 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id g23so22281769wme.1
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 07:43:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=rgG8a7whw5eOszAJ7ubOEUlhOCe+r660UoD73uiusos=;
	b=VJx8dTjXYgFmTa0kkwXNvLohuT0IIeiUt7bSPX6exTytmmSJccNRzrTAFUG6Vq4S/F
	p1qglI8L0nsz3atT2p7k5XW4+neZU5jgBoRINBhVQefjLxPv3bRUPYjXdegPFbOCxQF4
	x6Asac9HNqhcTFUnKmc9d511JFKo/0dr3SzR9rX5P1ipK/DqVLjEn+GCJ/KjxuPlve9I
	DVluqbihKgcfIfvphPb7eISIJ4cJ5u8Qa5/037x8zoOpGVkTZWc+6GEZtUF9Ob6jq1iT
	UUOoOtDFRYPvAsgtLX5v3ylrEGsjwWh8ev1DcypUz4ep6pQjsLbIwCnvkC4wFNZZoai7
	laVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=rgG8a7whw5eOszAJ7ubOEUlhOCe+r660UoD73uiusos=;
	b=j6jn8new1EsUm1anihEFMnBRvlgCc607dqzTU8RvzFs3j4n6NyMkaq6BsWWEIuJFRa
	i5KSIEr9YeOKvy9a97sQe1CZLaG8IFARmlmw/a79w6HocTh8MNTEEnfjv4ygQQfVGuD0
	NtpHDa6/U3HmBu8n1PAxCxw0XF09SqTxfALup35RkENCeWj26kCGr6aGzu+g4CcgZx8l
	2gAncvSry1Wqx4vJ9b4PuKfgkRsEaOlRMNrDkGJJoPTxMYf9q7UrXg5q/K+mxokRlFYe
	imjjv9bzcLnWhZwSdLiuxbArlQ6vtgCPQL+MBMEIy4HGxa61QTBG34Tqk3jOkVd07OV4
	FmkA==
X-Gm-Message-State: AKaTC02oyAv4mVeJ0UIGfcFXyid6ZYwodD4sUAefA/zSxfgjSF+4dBDYIm1kco/NqqTqQg==
X-Received: by 10.28.220.5 with SMTP id t5mr3176847wmg.80.1481039021188;
	Tue, 06 Dec 2016 07:43:41 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id l74sm4662691wmg.2.2016.12.06.07.43.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 07:43:40 -0800 (PST)
Date: Tue, 6 Dec 2016 15:43:34 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20161206154334.GA1636@carbonA>
References: <20161128151233.8861-1-twoerner@gmail.com>
	<9045CDB4-3095-4352-A4A3-04EAC676F466@gmail.com>
	<20161129014240.GB30326@openSUSE-i7.site>
	<5A8D2138-126E-468B-8637-D7A927386706@gmail.com>
	<20161129030324.GA2836@openSUSE-i7.site>
MIME-Version: 1.0
In-Reply-To: <20161129030324.GA2836@openSUSE-i7.site>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: upgrade to 4.4.32
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
X-List-Received-Date: Tue, 06 Dec 2016 15:43:45 -0000
X-Groupsio-MsgNum: 33315
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline

--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 28, 2016 at 10:03:24PM -0500, Trevor Woerner wrote:
> On Mon 2016-11-28 @ 05:52:38 PM, Khem Raj wrote:
> >
> > > On Nov 28, 2016, at 5:42 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > >
> > > On Mon 2016-11-28 @ 03:21:50 PM, Khem Raj wrote:
> > >> its at 4.4.35 now see
> > >> https://github.com/kraj/meta-raspberrypi/commits/kraj/master <https://github.com/kraj/meta-raspberrypi/commits/kraj/master>
> > >
> > > True. But there's no -rt patch for 4.4.35:
> > > https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/
> > >
> > > The latest 4.4.y -rt patch is 4.4.32.
> > >
> > > Since I'm working on a separate recipe for 4.4.32-rt43 I guess I could just
> > > base it on 4.4.32 and let the non-rt-mainline advance to 4.4.35 :-)
> >
> > does it not apply cleanly on 4.4.35
>
> As luck would have it, it does!
> (minus one hunk from Makefile for something that had already been added)
>
> Tomorrow I'll do a boot test and submit the patch (unless the boot test fails,
> or someone else beats me to it)

It does apply on .35 too (with some very minor changes). So, I will
merge the other update patch. Thanks guys!

--
Andrei Gherzan

--ZPt4rx8FFjLCG7dd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRtyfAAoJEHO76Gt+erfPFdoQAIkdul9p4wuEXMZNXl6IcCA5
qoVWBd83+n02EX7u0wZwODEpE8ZMp7dKFPeBa8nnn3GROVOwe/i75oZcJ5+k0dJW
+rFPYGb1O9m1tQmx4E9DDOl3HwKFlTlBKoqOcrNrYsEg4DTo+RuxGjW1X425kmjJ
4exNxfXgI004CJ0YXFEL8vO+juqLRCeg9Tal6r7eM1KFulOHJl8baAiLcfyebrP2
DEo7kjIXIMtf7Yg8GyD3mkzk7UY3pnOV3kh7etdBpvOpiGeul0EKhKAWfqxud6xL
IWwRXzGQcpTh0T2RdlK77aaNyaQ9UMrriSDv489LBotb9QhK/b9ea3yRlch+vMRz
tE1KK+sawVZ7otA9BJPnEIIBnwddmmjSC1JmgROVgthFr+oLwOFqbf7lq1r6uDu1
GZ4vYPV/FrOTJGrN1ObCAvJD4bDPZbz0KXOhoeWtJpCuWzJVOxjNdYX78zQFZT2W
YqvaZWJRJUkSbH0ZTcdTMp9DhwAkWGKLFim7rTVfQLObICnAb3sSq8QCxc2bgT7J
HeHzSY/xqnwiJdcogK+3YmvuC389I+NMW9Upqz+WdU/VbUpDicuFxxrLrARwwkYJ
z1ucGQmvcwVlzAR5c/2yVOE4tvQrI6NF4xY9vN/TuOpe4T2ZdkLg7Dix9iRaIJma
jAYdiuKrKG+ObjaWWA80
=UFQ2
-----END PGP SIGNATURE-----

--ZPt4rx8FFjLCG7dd--
