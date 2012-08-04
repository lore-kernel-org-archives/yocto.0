Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A87E0E01454
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 12:16:38 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3853385pbb.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 12:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=64SNG4rouvMsZcCijs3VDVHazkm7eT8NPKdPSAaSdcE=;
	b=pI0OLu8RRNCIp0oAW2iRzMLqQlPnyObFzJs6e/4ADfeSLOS+T1MEwseByNj1cfqgAO
	LxwAPFg8qZTF65/FPKXHqWePE8pnCFGG5Fett70JNflNJL3mQn8nLslmKuUfa+uYwOaK
	c545gnwCoAHGz0AUvvRtN2mVnUSAFWryaUZN9i651fBWm/I2PuUCOm8LqQ825MDNGMy/
	a7HaMlBwEGFaMgufRo6cmYLs65ePLqiiN6CKFkNkUAJcxnQ7x4fSey07vtv8m63zXlJR
	waBy3QcYYiUPubIcRLo/XsDu8KAE7Z1+/NzM6K9hq2rGX6nKCmfLK8I9fVc9tPEUm97O
	NaJA==
Received: by 10.66.73.132 with SMTP id l4mr7264602pav.30.1344107798448;
	Sat, 04 Aug 2012 12:16:38 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pq1sm5461244pbb.3.2012.08.04.12.16.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 04 Aug 2012 12:16:37 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
Date: Sat, 4 Aug 2012 23:16:32 +0400
Message-Id: <C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Aug 2012 19:16:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi Khem,

On Aug 4, 2012, at 9:12 PM, Khem Raj wrote:

> Try to see if /lib/ld.so.1 runs ok ?

How can I run /lib/ld.so.1?

Elvis Dowson

