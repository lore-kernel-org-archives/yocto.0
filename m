Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22025E00861; Fri, 28 Nov 2014 11:13:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA4A4E002A6
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 11:13:52 -0800 (PST)
Received: by mail-wi0-f172.google.com with SMTP id n3so19372617wiv.11
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 11:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=4hopajOZPUwskV3RVXGLxTKqnI+oQzm1wHwpPLu2avI=;
	b=VnvLH6puzRqy+H/nDVfCJyvBk8vabxzyIgdiwHsmE2R33XO6xNgvMJHncjR8NLcJSf
	5amaVTPbvJWUePGYQjMmkYNlc+f001pWaGI50j44zV/TABY6yYDe1dQ2YhalR+kzUgE8
	PKYqYLrv6aR9uVdlqn609sNOgFPi5cw9if77d7uqZfHSxUGhK2W6fkM7YrlwkJKcqXxp
	MoKcFd2BH+grsYjqIbgU70cz0+WmsAlRirJSoQl4o5ZkaE3Y3r+hoPgBM8113S53hyzw
	ogrL/Z5vJ8ZfHlzdOuPwr0ucLx1FPK0uf7jJwbkZEz9sC1ZERSP95GNiDAgQ/dwYZdg5
	+ySA==
X-Received: by 10.180.73.143 with SMTP id l15mr62582200wiv.24.1417202031647;
	Fri, 28 Nov 2014 11:13:51 -0800 (PST)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by mx.google.com with ESMTPSA id
	dg7sm17052114wib.24.2014.11.28.11.13.49 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Nov 2014 11:13:50 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <20141128135145.GA9445@ad.chargestorm.se>
Date: Fri, 28 Nov 2014 20:13:45 +0100
Message-Id: <60ECF94F-BB73-4559-971D-02B1DD9101FB@gmail.com>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDB561BFD@MSXBEBVT12.planar.net>
	<5475E5E2.7090805@topic.nl>
	<86196249137E0843B2E0673D4F731E0C0108E25842@reactor.sldomain.com>
	<4B07ADD556F70043925DA2E9C5D4346D2FDB561C51@MSXBEBVT12.planar.net>
	<20141128135145.GA9445@ad.chargestorm.se>
To: Anders Darander <anders@chargestorm.se>
X-Mailer: Apple Mail (2.1878.6)
Cc: Jim Rafert <jimr@spectralogic.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Support for writable files with a read-only root file system
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
X-List-Received-Date: Fri, 28 Nov 2014 19:13:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Am 28.11.2014 um 14:51 schrieb Anders Darander <anders@chargestorm.se>:

> * Matt Schuckmann <Matt.Schuckmann@planar.com> [141126 18:22]:
>> Yes you are correct I want a small number of files into to reside in a
>> writeable partition with links in the root file system to point to
>> them. I guess I latched on to the volatiles mechanism because it seems
>> close to meeting my needs.
> 
> The volatile-binds from meta-ro-rootfs can be used to handle exactly
> this. (I.e. they doesn't have to point to tmpfs).
> 
> The 3rd alternative is the old classical approach of using a symbolic
> links...

In our project we mix the usage of volatiles, symblic links and unionfs.
You can take a look into https://github.com/rehsack/meta-jens (or
https://github.com/rehsack/yocto-builddir/tree/master/conf for other
used layers) to get a picture.

All used utilities for basic results (minimal image ...) like mkimgs,
flash-device.sh for burning mmc's from nfs boot etc. are included.

I think that should work with branches before daisy as well.

Good luck
-- 
Jens Rehsack
rehsack@gmail.com


