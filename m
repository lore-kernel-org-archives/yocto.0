Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D96EE009A6; Thu,  8 May 2014 04:48:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F95E006EF
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 04:48:21 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s48Bm7SJ011614; Thu, 8 May 2014 12:48:07 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id rcGzQRwSWgI8; Thu,  8 May 2014 12:48:07 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s48Bm4Ff011610
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Thu, 8 May 2014 12:48:05 +0100
Message-ID: <1399549677.31891.56.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Woodyatt, James" <james.woodyatt@intel.com>
Date: Thu, 08 May 2014 12:47:57 +0100
In-Reply-To: <882B2198-C1C5-4239-86D5-6FE7F36D75CB@intel.com>
References: <882B2198-C1C5-4239-86D5-6FE7F36D75CB@intel.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: Yocto Project Main <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/2] meta-darwin on dylan branch
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
X-List-Received-Date: Thu, 08 May 2014 11:48:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2014-05-01 at 19:03 +0000, Woodyatt, James wrote:
> commit 4c50f7bd62a675dd1f034bc6730f833c6dca0c19
> Author: james woodyatt <james.woodyatt@intel.com>
> Date:   Thu May 1 11:57:41 2014 -0700
> 
>     Remove usage of ‘new typename’ constructors in ld64 part of odcctools2 package.
> 

I've applied this fix to the dylan, dora, daisy and master branches. I
tweaked the commit message to include the fact that this is a gcc 4.7
verses 4.8 issue and to match the guidelines (shortlog needed to start
oddctools2: for example).

Cheers,

Richard


