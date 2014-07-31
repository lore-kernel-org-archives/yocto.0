Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41CDCE0056A; Thu, 31 Jul 2014 13:55:19 -0700 (PDT)
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
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D0D2E004E0
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 13:55:10 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id at20so4536607iec.11
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 13:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=kmzthWWlnFeXJ2mg6q5nX05Fk7o5Kq6N+EVrs8kYxKM=;
	b=oWnn/UTE2kYDQ/dPJDVcbnBoLdEpdr4bJaGK5zg2Zl2uPdLKlzYTR2NEjI6ZoS/h2Z
	3U+WfiOQwD3FlrDLBm7B7U0rDsjoJdUOZj1RN5jTirkz4kLG7Mis1uCt6wcvSU2G5gyD
	YUuFTWNUcqs/5EGXgz/9D2oH2r3uklHQZUP94Se390/Kw7kXcs7Nj8YfhH8dcQXQSDVk
	ML/E5iC87hTAgxx/Ayh4B8LgyQy4FI/vojTizD3bDNHTtGJBF0K67fe65S+om3kEVssg
	c0AOijrXyyyXYAuciHfAve2oPaq1PdBDUuJ2qH7tbzpH/vQiOwxJIZA/lCJtbB/rde2k
	Pp2w==
X-Received: by 10.42.90.74 with SMTP id j10mr993297icm.29.1406840109882; Thu,
	31 Jul 2014 13:55:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Thu, 31 Jul 2014 13:54:39 -0700 (PDT)
In-Reply-To: <53D93847.8050306@perform3-d.com>
References: <53D93847.8050306@perform3-d.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 Jul 2014 13:54:39 -0700
Message-ID: <CAMKF1sqh3E52YpLLROYgg1wyoBHsD60WMV1Qq1Z-HkGsq6Z9_g@mail.gmail.com>
To: Jeff Spindler <jeff@perform3-d.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Boost logging in Yocto 1.6
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
X-List-Received-Date: Thu, 31 Jul 2014 20:55:19 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 30, 2014 at 11:24 AM, Jeff Spindler <jeff@perform3-d.com> wrote:
> there seems to be no libboost_log.a nor libboost_log_setup.a

generally SDKs wont have static libs, since they do not install
staticdev packages. You might have to pull them into the SDK
that you build by adding the boost staticdev package.

