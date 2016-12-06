Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA967E00905; Tue,  6 Dec 2016 10:37:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f194.google.com (mail-wj0-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FCCBE0083E
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 10:37:43 -0800 (PST)
Received: by mail-wj0-f194.google.com with SMTP id j10so18109560wjb.3
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 10:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=2ZoZaHvU43c+cqUV+LNepmpbCygEWQD27yMlqgYkHGE=;
	b=MFd9xS8ANCsRpgaQiNcTPfK7Iay8DjB9OwDwaPtShrVPJ+R9iaWRDP+5E+9vislgVI
	7ViCyGeGfZMRqqu05Chu0FqPcuhcwhSzTTZMgAkqplpXKg2PHA0ar/TH4NbIQvQGzbN5
	rf3SAVP+BsKN9vazKpOLsA6aV3/Y5NEiwGR33F0p6B7qt+WrO1zFTRMFJH0HHR5zMgkz
	O4dd0ES5BXW/xUGD5kuhpyrVOYK+TM72tK7Pc3UArRTbb28KdjSfF5eGRlPaiDpMcFK0
	M3YEzYEw8jpjgo4+IGjo7aWiv8ifGmC09SB7q5NhbiYmDUy/1uHD70HFp1qoEV4MiFRa
	e1pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2ZoZaHvU43c+cqUV+LNepmpbCygEWQD27yMlqgYkHGE=;
	b=luN1G+8BN8KJkzOFlzX8xHs0gfB51cuj7AS516jIjoOHRTWO9tadxC5gmzuu/1bPHe
	aO2ypGQRivBPGF5igkjHWzCPkBsAnutGCJocrje0XywKCkKGmpmeIgFcL3VYRcYiVQPT
	ZI/GM3OMc/Gz4bddSDp50FM1HtWceMCQJiBI/5W+rpAmBGRZlTCOAE4mo7D5It3QRWpM
	5mPXhFFhZISdSHC0VrwHPmTznKIhzS01mMIWHKZcTCA1AVhHWUOlA2vs5amKtRNZJYoG
	EBCgIl7mUGXgLtjW/hZ/qoRn9V8DwJ6hK1+pkVQ+4jU31f9MB1QzonVxg4zZE4KnRlCw
	Yc0A==
X-Gm-Message-State: AKaTC035VLUPIg3srduK4HInNJ7kz7j3kn/dZAfK299xKNSQXB2X41YiG+6FDJCPj0G3xg==
X-Received: by 10.194.122.65 with SMTP id lq1mr57171007wjb.12.1481049462606;
	Tue, 06 Dec 2016 10:37:42 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	ct7sm27169144wjc.2.2016.12.06.10.37.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 10:37:41 -0800 (PST)
Date: Tue, 6 Dec 2016 18:37:40 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20161206183740.GJ1636@carbonA>
References: <20161128190745.18053-1-twoerner@gmail.com>
	<2ACF0BDF-0A7B-4A0E-BC20-B6B222F1644A@gmail.com>
	<20161129013709.GA30326@openSUSE-i7.site>
	<20161206182732.GI1636@carbonA>
MIME-Version: 1.0
In-Reply-To: <20161206182732.GI1636@carbonA>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: allow -rt kernels
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
X-List-Received-Date: Tue, 06 Dec 2016 18:37:47 -0000
X-Groupsio-MsgNum: 33328
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="/qIPZgKzMPM+y5U5"
Content-Disposition: inline

--/qIPZgKzMPM+y5U5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 06, 2016 at 06:27:32PM +0000, Andrei Gherzan wrote:
> On Mon, Nov 28, 2016 at 08:37:09PM -0500, Trevor Woerner wrote:
> > On Mon 2016-11-28 @ 03:16:11 PM, Khem Raj wrote:
> > >
> > > > On Nov 28, 2016, at 11:07 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> > > >
> > > > If the PREEMPT_RT patch is applied, the kernel version becomes, say,
> > > > 4.4.32-rt43 (instead of 4.4.32). This confuses the version handling code in
> > > > this class. Update how the version string is processed so that trailing rt-
> > > > strings are properly handled, in addition to handling the existing cases.
> > > >
> > >
> > > This probably will solve the issue I see with 4.9-rcX recipes that are in my tree on kraj/master
> >
> > I'm not familiar with the issue you're seeing, but the existing and new code
> > are looking for 3 int()s separated by periods. If your recipes have the string
> > "4.9-rcX" then I'm guessing there might still be an issue since the third
> > int() will be "-rcX" in your case. If this is true, you'll need to take a look
> > at where "int(min_ver[2])" is used further down in that bbclass file.
>
> I agreed this is not the best implementation of this. We should only get

agree*

> the version using a regex that would get X.Y.Z-R with an optional Z and
> R.
>
> --
> Andrei Gherzan
--
Andrei Gherzan

--/qIPZgKzMPM+y5U5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYRwVwAAoJEHO76Gt+erfPs8wQAKFLtyQPt1ioUZKsKp6vJ+um
muwoNYj4kT1QQgdHQHv+ihoTHrkohfefzb87kLk3kb0U3P+Ut13EmECRwRpeWrcV
dZ6APc9YtQwg5NNXf6OVpFqxUj3TOiTv5MzN57FzOWLvD9hNCiQ7mwt1f5f+Z9cm
ACEBROpMLvqnn6AOUOZubQAHCj5ReNBPdeFLbubR7os05BWh05iEoB7di5JjNJOq
MEzxlN5ND3O5yX5mwoCZweQZJ1SRqsdAoOtzsEt6wFhSnZt5ReUCEFPj0QWvlGG1
jVnryDFdY02ZCc5oNKPR268aIWewnEACJyIXEu8KRNPRsS/VFuACJSkDHzyCc3Lq
uoYO5C2nqYSOyuZXqNfNYHQ8XTjwua5Q+UoRgo7zDuP9VYrtuTfV2MBu3tXfErGv
qU4FSx4WFTyM3D5dYjNfTVLmharCy/huWLlfSdSSEIoA2cASZznTPdKt/pot/3hc
QRp5iaXB02mXXJUPN6JpO88yiVs939y83kGDBcKhTLHFto7EnlFeQPREMw5L3eXs
YgKbFCvYAIfsZyVYQKSFQyJxrRuCyzlRoSxE4ZCwaP2bH2B+NmFFz6idNABK0z3t
q7G/6NWWEBjHeON87eEMOQB64tsX8sKLivgqeSB+ozKZ+Me2j/EpvAukAn7vxocp
z9PKaqwRYCMpokAOrvi4
=Dihu
-----END PGP SIGNATURE-----

--/qIPZgKzMPM+y5U5--
