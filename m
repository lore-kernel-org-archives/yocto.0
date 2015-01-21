Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4062FE008CD; Tue, 20 Jan 2015 21:10:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 434DEE0086E
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 21:10:26 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[172.16.1.11])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YDnWy-00082i-BO; Wed, 21 Jan 2015 05:08:40 +0000
Message-ID: <54BF34B5.9040002@twobit.us>
Date: Wed, 21 Jan 2015 00:10:13 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:31.0) Gecko/20100101 Icedove/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1421290778-11490-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1421290778-11490-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: Re: [meta-selinux][ 0/3] v2 More recipe updates.
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
X-List-Received-Date: Wed, 21 Jan 2015 05:10:39 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Forgot to copy maintainers. Adding Joe and Mark.

Philip

On 01/14/2015 09:59 PM, Philip Tricca wrote:
> Greetings,
> 
> Three more recipe udpates to get meta-selinux building with oe-core master
> again. These are mostly mundane though the move from findutils from 4.4.x
> to 4.5.x removes the need for patches that have since gone upstream. This
> v2 patch set takes into account comments from Mark w/r to removing PRs due
> to the uprev.
> 
> Best,
> Philip
> 
> Philip Tricca (3):
>   findutils: Upgrade recipe to 4.5 and use wildcard for pico version.
>   logrotate: Use wildcard for version number.
>   tar: Use wildcard for version number in bbappend.
> 
>  .../findutils-with-selinux-gnulib.patch            |   55 --
>  .../findutils-4.4.2/findutils-with-selinux.patch   |  528 --------------------
>  .../findutils/findutils_4.4.2.bbappend             |   14 -
>  .../findutils/findutils_4.5.%.bbappend             |    2 +
>  recipes-extended/logrotate/logrotate_%.bbappend    |    5 +
>  .../logrotate/logrotate_3.8.7.bbappend             |    7 -
>  recipes-extended/tar/tar_%.bbappend                |   11 +
>  recipes-extended/tar/tar_1.27.1.bbappend           |   13 -
>  8 files changed, 18 insertions(+), 617 deletions(-)
>  delete mode 100644 recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux-gnulib.patch
>  delete mode 100644 recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch
>  delete mode 100644 recipes-extended/findutils/findutils_4.4.2.bbappend
>  create mode 100644 recipes-extended/findutils/findutils_4.5.%.bbappend
>  create mode 100644 recipes-extended/logrotate/logrotate_%.bbappend
>  delete mode 100644 recipes-extended/logrotate/logrotate_3.8.7.bbappend
>  create mode 100644 recipes-extended/tar/tar_%.bbappend
>  delete mode 100644 recipes-extended/tar/tar_1.27.1.bbappend
> 


