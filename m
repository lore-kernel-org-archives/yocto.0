Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACE55E0084F; Fri, 20 Feb 2015 02:55:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73717E00831
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 02:55:52 -0800 (PST)
Received: by pabrd3 with SMTP id rd3so7277819pab.1
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 02:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=OVVZDWEMA1IPbHcxuN7rvwt33KkiXlEo8gGZoyUWwao=;
	b=FSu3AkJQn27JKautdlEEFn/Uc+Qu0OR+pRq/1ZlZ2Pq3CIpcy4lEVQbPKPOgyMKZXr
	FHgfwISIUUcj3Azp6uMOUtPMwRNHIVOvrVFHkxiVZ8ivcZHHa4yam1ZD6W253CFZ3qC8
	dNGfPIZ6V1qk13HZhnKUSmyg1l51z9olBWinj2HzfwJ+BwYRHVWzzuU4SiXlMZcmkMHe
	8IyZYWN1jMmfdbc0kzIZBV4kOx82A21wCicWhIWTiK9pYs1bujmAT8FnQOXmMTYx2mig
	oo/R8lC/f9jwhfcqgIvnaCfubZxrHf3IfYmZWbCOH4QdtD65lAbMm3p3+579SK+4uMxX
	KbjA==
X-Received: by 10.68.115.196 with SMTP id jq4mr15892487pbb.150.1424429751790; 
	Fri, 20 Feb 2015 02:55:51 -0800 (PST)
Received: from ?IPv6:2601:9:3580:84c:852e:3540:d404:25e3?
	([2601:9:3580:84c:852e:3540:d404:25e3])
	by mx.google.com with ESMTPSA id
	je2sm26457318pbd.44.2015.02.20.02.55.50
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 20 Feb 2015 02:55:51 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Message-Id: <BB19F3C7-2950-4E41-BF62-70BFE4FB9C9B@gmail.com>
Date: Fri, 20 Feb 2015 02:55:48 -0800
To: openembeded-devel <openembedded-devel@lists.openembedded.org>,
	openembedded-core@lists.openemebedded.org, yocto <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
X-Mailer: Apple Mail (2.2070.6)
Subject: [RFT] gcc 5.0 recipes available for testing
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
X-List-Received-Date: Fri, 20 Feb 2015 10:55:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi All

Encouraged by help received on testing out glibc 2.21, now  I have put =
together OE recipes for gcc-5

GCC 5.0 is in prerelease stage 4 ( open for regression and doc fixes =
only)=20

https://gcc.gnu.org/ml/gcc/2015-01/msg00156.html

The recipes are available here

=
http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/gcc-5.=
0

you just need the topmost commit and then set=20

GCCVERSION =3D "5.0"
SDKGCCVERSION =3D "5.0"

in local.conf

It has been lightly tested thus far but try it out and report issues you =
observe in your build setups, we will bake it there
until 5.0 release

Thanks for helping out

-Khem


