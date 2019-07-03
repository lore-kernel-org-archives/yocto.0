Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86957E00D74; Tue,  2 Jul 2019 23:17:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 570 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Jul 2019 23:17:54 PDT
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49EFAE00C43
	for <yocto@lists.yoctoproject.org>;
	Tue,  2 Jul 2019 23:17:54 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45drJQ3hCcz2C;
	Wed,  3 Jul 2019 08:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1562134103;
	bh=1CgX9XyWGmx+8/od+IyLp/otSrysOf/K0YSePuiGH6M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MGIDOQ72/enP2kwyf0VemQWJMGIOZmwEYxjDTo2PpshmAMHytEsRXqLoDGnUTNBIU
	1RJKsQiKvzjb1i27RgGdSWyGiQl2IwTXLb2SquSUZIWS1Yt/n7lSm51PG51H+0AzlF
	FqNUhVNx4ZUbC8uIgbKUzDaQcbmqxzwDL6/cRofZi9z3/ObuqqHsKKE4mAB9d9wT7y
	DFCLCT8LuYLIpXvuOttBUHiW4DLrh1HiGlvdxSbg6LTz8BetIEOfPfXIpDwrHyEAgS
	m93OWRyhfJJxzKbubcKssx6unsYlsUaWe/B5YfwDzqsQzKgFy2Ct+wM6+/EdAuYhGI
	/EJV4a0WroULpwGTOYYFNPLBDC7zc5/yKTurBqgcziYbeCAbGpkWqLEon1Za4mNmif
	8pYR3147vV3iI9BPqanpM1qnARt92oewgI0zEec/GzewbNsy/GBS8ZTJOJhVbLscSJ
	3T7Th0pDEnQt7ooLJl8Ic2dPCfl10wh8xhnxR2Pl42JkHf5AA0w1d910bf0xPt1cHa
	GbnjcFmDj9ye57rJx0vCwKDx+yqCi/pZUvykHdEetMec1W56OYdw+S2MxhSyk+pJFI
	pzTg4Pto1o3Sg/+h5yJCvAVf+fvQ/nA2mTCSZcrbDF3cq5bx8N0TVQrONZWEncONwu
	YmXSjuPdV9iUz4PsXVglE/hs=
Date: Wed, 3 Jul 2019 09:08:19 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Joshua Watt <jpewhacker@gmail.com>
Message-ID: <20190703060819.GA19611@localhost>
References: <20190702202132.6715-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190702202132.6715-1-JPEWhacker@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-mingw][PATCH] bzip2: Update to 1.0.7
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
X-List-Received-Date: Wed, 03 Jul 2019 06:17:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue, Jul 02, 2019 at 03:21:32PM -0500, Joshua Watt wrote:
> Updates bzip2 to version 1.0.7 to match master in oe-core. The patch to
> change the path separator was properly upstreamed and hopefully will no
> longer be necessary going forward.
>...
> +--- a/bzip2.c
> ++++ b/bzip2.c
> +@@ -128,7 +128,7 @@
> + #if BZ_LCCWIN32
> + #   include <io.h>
> + #   include <fcntl.h>
> +-#   include <sys\stat.h>
> ++#   include <sys/stat.h>
>...

Why is this a bbappend at all?

This should have been part of the package in oe-core from the beginning,
and could still be added there right now.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


