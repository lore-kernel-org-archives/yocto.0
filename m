Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09117E014F7
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 23:18:15 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id fz6so2096981pac.17
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 23:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=oFNCSd9MXosx2X8LGL3RAYqOiL+bev+zoD1680nEUCE=;
	b=CwtgbHZHNj9eMS0Jpbi9J7SFZjDDrCyDdaXJCVO0hycoKD7lB/ImT2aD4HM2ZO5CVj
	zdQwnX3c8HGmy0hlz4xe4uhWtHGojBwGdhkiQbRigxqzL6qP5Tmr9XI3czZn0qcKKDSn
	3KXEloap+AlWHRvd8rwg/ytCkhVqUq4w7ES/zgqnEIS2VPxVnNyM4TFedNg1xgm8rDVQ
	c2VSbPDITzVgzwYmXFwHIUGv5eQWze+ihyKnHE9s85+GCwMH64u0BPE0nvqSNFalbVgJ
	ULHXmaZGa1RnKQb9j9u0Y6DD0/vjuGBdRKQnvN/DkzlQ9nbDY/ASOB7rlI2soeeqWRcF
	9Niw==
X-Received: by 10.67.3.34 with SMTP id bt2mr13595696pad.3.1379053093060;
	Thu, 12 Sep 2013 23:18:13 -0700 (PDT)
Received: from [192.168.0.104] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPSA id ve9sm9377594pbc.19.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Sep 2013 23:18:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABhkJReHPjzAed68qejMDa-vf28W4=TfYsjDRrb-hnr7OL08fg@mail.gmail.com>
Date: Thu, 12 Sep 2013 23:18:18 -0700
Message-Id: <FAD8AD5D-4A9A-4565-94AE-F62D71477D31@gmail.com>
References: <CABhkJReHPjzAed68qejMDa-vf28W4=TfYsjDRrb-hnr7OL08fg@mail.gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Makefile:100: OPTION_EGLIBC_NSSWITCH is disabled, but fixed config file
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
X-List-Received-Date: Fri, 13 Sep 2013 06:18:17 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Sep 12, 2013, at 10:39 PM, Ashish Dalela <ashish.dalela@gmail.com> =
wrote:

>=20
> I'm seeing a EGLIBC failure.
>=20
> | Makefile:100: OPTION_EGLIBC_NSSWITCH is disabled, but fixed config =
file
> | Makefile:101: *** does not exist: "".  Stop.
>=20

do you have libc-nsswitch in DISTRO_FEATURES_LIBC

> Searched and saw that few people have reported this problem, but no =
solutions.=20
>=20
> Has anyone been able to fix this? If so, can you please tell me what =
to do?
>=20
> Thanks
> -Ashish
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


