Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29484E004F2; Tue, 13 Jan 2015 08:22:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4B0AE003E3
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 08:22:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t0DGMdok011938
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 13 Jan 2015 08:22:39 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.231) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Tue, 13 Jan 2015 08:22:38 -0800
Message-ID: <54B5464D.7060304@windriver.com>
Date: Tue, 13 Jan 2015 10:22:37 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Philip Tricca <flihp@twobit.us>, <yocto@yoctoproject.org>
References: <1421121004-8592-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1421121004-8592-1-git-send-email-flihp@twobit.us>
Subject: Re: [meta-selinux][ 0/3] More recipe updates.
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
X-List-Received-Date: Tue, 13 Jan 2015 16:22:57 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 1/12/15 9:50 PM, Philip Tricca wrote:
> Greetings,
> 
> Three more recipe udpates to get meta-selinux building with oe-core master
> again. These are mostly mundane though the move from findutils from 4.4.x
> to 4.5.x removes the need for patches that have since gone upstream (w00t!).

Patches look fine to me.  One comment though, since we're upreving, we should
drop the PR .= bit as no longer necessary.

--Mark

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
>  .../findutils/findutils_4.5.%.bbappend             |    4 +
>  recipes-extended/logrotate/logrotate_%.bbappend    |    7 +
>  .../logrotate/logrotate_3.8.7.bbappend             |    7 -
>  recipes-extended/tar/tar_%.bbappend                |   13 +
>  recipes-extended/tar/tar_1.27.1.bbappend           |   13 -
>  8 files changed, 24 insertions(+), 617 deletions(-)
>  delete mode 100644 recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux-gnulib.patch
>  delete mode 100644 recipes-extended/findutils/findutils-4.4.2/findutils-with-selinux.patch
>  delete mode 100644 recipes-extended/findutils/findutils_4.4.2.bbappend
>  create mode 100644 recipes-extended/findutils/findutils_4.5.%.bbappend
>  create mode 100644 recipes-extended/logrotate/logrotate_%.bbappend
>  delete mode 100644 recipes-extended/logrotate/logrotate_3.8.7.bbappend
>  create mode 100644 recipes-extended/tar/tar_%.bbappend
>  delete mode 100644 recipes-extended/tar/tar_1.27.1.bbappend
> 


