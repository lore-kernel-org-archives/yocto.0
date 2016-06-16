Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B490EE00D6E; Thu, 16 Jun 2016 03:44:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F1BBE00D5C
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 03:44:06 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u5GAi2WF011896; Thu, 16 Jun 2016 11:44:02 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id c-_bJTPJv7Qz; Thu, 16 Jun 2016 11:44:02 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u5GAhxHx011893
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 16 Jun 2016 11:44:00 +0100
Message-ID: <1466073839.13979.263.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 16 Jun 2016 11:43:59 +0100
In-Reply-To: <0A5D9A624DF90343892F8F3FE7DE525A01FB0CBE@fmsmsx101.amr.corp.intel.com>
References: <0A5D9A624DF90343892F8F3FE7DE525A01FB0CBE@fmsmsx101.amr.corp.intel.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: Test Cycle Report for Yocto Project master branch
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
X-List-Received-Date: Thu, 16 Jun 2016 10:44:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Jose,

Thanks for this, its useful.

On Tue, 2016-06-14 at 13:08 +0100, Perez Carranza, Jose wrote:
> -         Toaster - NameError when trying to search a table due
> Django, this one is blocking around 30% of the execution : 9749 [1]

I'm hoping this one has been fixed/merged but am not 100% sure.

> -         Build Appliance : bitbake fails to build image this one is
> blocking 50% of the  execution of the component: 9758 [2]

I know there have been some fixes here, we need to retest this to see
if we're doing better.

> -         Failed to extract rootfs by using runqemu-extract-sd: is
> blocking around 11% of the execution of ADT in 2 ditros: 9761 [3]

Unknown :(

> -         Missing smart packages: 9754 duplicated of 9717 [4]

Bill/Alejandero working on it but no patch yet.

> -         Failure with Git-Phyton 9742 duplicated of 9716 [5]

I think this has been fixed on the autobuilder in question and the
documentation is being updated so it should be resolved in those
places?

> -         distrodata class don't work with python3: 9744 [6]

Fixed.

> -         AUH: Make sure that works with python3: 9747 [7]

The class was fixed, that code isn't technically part of M1 so we have
a little more flexibility there but fixes are certainly in progress.

> -         Parse logs failed: 9520 [8]

This bug looks very confused with potentially multiple different
issues. Not sure one status :(

> -         oe-selftest is not running test cases from meta-yocto-bsp:
> [9] 9767

Its been marked as resolved fixed.

We ran an M1 build but it has several problems in addition to the above
so I'm not sure its ready for QA yet, we should discuss that. If we
decide its not ready, some targeted testing on the areas we're unsure
if things are fixed may be helpful.

Cheers,

Richard

 



