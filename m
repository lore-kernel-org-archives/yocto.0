Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44371E00CB4; Mon, 25 Apr 2016 00:16:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6E70E00C86
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:16:11 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id v188so86154817wme.1
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=RrdUqPbWNDTwIAE8OBEoP0j60k5GO2ACGGB+jSrlli0=;
	b=xyFDn4aHv0QIhx6fZ4ecvQ69xoR0kuNuc8FcXxVz2iUXNbm1ERXqKS12UPgtzxslfy
	LiDjjlBCFCeVXcpaEztxKeRpnRLNoTAqidWOpDqsLanmtbibqkmaYGRQsHSkHzaQENU7
	RSM6Z9W4O1UTZzApz8KNvLDmHE5yyPypQdbFlPKuUtFjBDWkKhlFvPHit00v6eh9aKzc
	zMkLzdgVULfuDce223vhuaHFSHgminCppQCFb4UfdD2HrmyyjmVhhSTKNc3LzgdMixL9
	KVHSKQZwS6zZDFf+epBkplvULB1Xs354mH6mtiZSJqIhGGkdADOcaDmhqd1iT6X8o77T
	3BVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=RrdUqPbWNDTwIAE8OBEoP0j60k5GO2ACGGB+jSrlli0=;
	b=jeEYirTtPxGRRb4bAx7WT8U9YbouKafbsNGPs1slAu9cu4KaqmzSIEOXLv/lctcQaF
	VXlyB+gsLiGKy808auNnTLQYkMnR4yYb+XldIgbMnsXVa8sJmmGXeJwCJiSvfTOtjXXO
	IE407RxJHPirHviKu/ssdwsA+cgzDOFrKkdtZlFN4Cvy/JSmf0Zpf4y0w3nJLmbL3Cbk
	MedYtQZBUV2nW4hfopLZ2lk3V3dr7itWVAagHH5cfoxDc8pbXXAFKhLGiIsE0ojCSbXX
	blhFk5QIilxRD/qK73zrZ0tGVT+sNauMBiscN9tjhJ+u9Dr2BHXBhpmh4SAEBE6SLL59
	42fA==
X-Gm-Message-State: AOPr4FUD3QjtRFpmE2uegQBEOBI7dDQ9UYjlKBt4dnlK/E0d7AMOIdCgwjmuJ2KzE+vIrw==
X-Received: by 10.28.148.202 with SMTP id w193mr10280958wmd.29.1461568570809; 
	Mon, 25 Apr 2016 00:16:10 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	jp2sm22001392wjc.16.2016.04.25.00.16.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Apr 2016 00:16:09 -0700 (PDT)
Date: Mon, 25 Apr 2016 09:16:04 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20160425071604.GA26977@resin>
References: <1459348549-32007-1-git-send-email-petter@technux.se>
	<1459348549-32007-4-git-send-email-petter@technux.se>
	<20160413220428.GC27168@linux-yxv0>
MIME-Version: 1.0
In-Reply-To: <20160413220428.GC27168@linux-yxv0>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 3/5] rpi-base.inc: Add overlay for rpi-ft5406
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
X-List-Received-Date: Mon, 25 Apr 2016 07:16:16 -0000
X-Groupsio-MsgNum: 29608
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ikeVEW9yuYc//A+q"
Content-Disposition: inline

--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

On Wed, Apr 13, 2016 at 06:04:28PM -0400, Trevor Woerner wrote:
> On Wed 2016-03-30 @ 04:35:47 PM, Petter Mab=E4cker wrote:
> > rpi-ft5406 is an enabler for Official Raspberry Pi 7 inch
> > touchscreen support.
>
> I have an official raspberry pi 7" touchscreen and it's not obvious to me=
 how
> I would go about enabling it in my config. If I had one of the others I w=
ould
> simply add:
>
> 	MACHINE_FEATURES +=3D "pitft pitft22"
>
> or
>
> 	MACHINE_FEATURES +=3D "pitft pitft28r"
>
> to my conf/local.conf, but what do I do for the official touchscreen?
>
> Also, by trial and error I've discovered that my touchscreen comes up as
> /dev/fb0 and not /dev/fb1. But the xorg config for touchscreen support as=
sumes
> /dev/fb1. Am I doing something wrong in my build or can anyone think of a
> reason why my screen would be /dev/fb0 instead of /dev/fb1?
>
> By the way
>
> 	MACHINE_FEATURES +=3D "pitft pitft22"
>
> seems to work for me if I use /dev/fb0, but I'm not sure if that's a fluk=
e?
>

Sorry for not being able to follow this thread. Did you manage to make
it work?


Regards,
--
Andrei Gherzan

--ikeVEW9yuYc//A+q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXHcQ0AAoJEHO76Gt+erfPFwEP+QFDiwvOFmwShODOxfahgnAE
Ar+c+1PlpoNZkJxFSTXCFKrmuvbAwitXkMXCSoQKvddA5lbaSjxaAxC48NqED2Tm
9B3j+mTSK8/9ia67vVya12Cdwtau9DB8I6dQ1BsNms7hxZyHihpKYBfACaJhGgYQ
vv1kHfcbUYSn3A+wr61fh30oR62d8XrcQ+OBlLXhY7vNy/lJygav6s3PJYbtn2UQ
fRaVmT0isf3L97tHOsTFXfJmTanbtFww1P5RmfsAP0mUMcjpZ3XZCbsG5QTtNopr
Bcj2qamCZslDRBCcQX5i3FLWM7shz/hEDBo8Nz52QhxcQdX2iq212xaDZrf/bqM1
Pkw6DigHiqoeG4sam4n0Xa3O4UxLZzlwzKKLz1jlfJEYoVxNGd3FVEjce1DUyLEi
2+vokFrLO55FHRwf/LKe0Y8KD3EyH2223D2/R8r5/GtQpZShD+u98CGldm/medEJ
ZBn2sG5IFZlXFs2eOu1vBuHySVfEbfqykGLm1gg03lcQaf86k4vUho6H/2Zc/P9v
GNksGJ31DyPu7uCVwxWu5O+zVvJS9GzZLHyUULtzXu/kvliqnHJ3wYoCVdnDaIaW
4sakm1aw+Fgl0X/wfEqYTCSr/ooTyhV4wMDCM8UPRJMyOZuUMP3Ugi+/ZPQ895Op
/17oW4KmGbSXqBfBWllW
=JJ3F
-----END PGP SIGNATURE-----

--ikeVEW9yuYc//A+q--
