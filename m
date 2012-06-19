Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9ED9E00746
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 00:36:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5J7aSgs024809;
	Tue, 19 Jun 2012 08:36:28 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22284-10; Tue, 19 Jun 2012 08:36:24 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5J7aDol024799
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Jun 2012 08:36:18 +0100
Message-ID: <1340091373.1640.11.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 19 Jun 2012 08:36:13 +0100
In-Reply-To: <cover.1338305162.git.Martin.Jansa@gmail.com>
References: <cover.1338305162.git.Martin.Jansa@gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [opkg-utils][PATCH 0/2] opkg-utils fix for python-2.6 and fix for missing getopts
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
X-List-Received-Date: Tue, 19 Jun 2012 07:36:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-05-29 at 17:34 +0200, Martin Jansa wrote:
> The following changes since commit 44df9dd3dc411ca1255cb4b23bde7eb71aed4778:
> 
>   opkg-make-index: disable filelist by default (2012-04-26 11:39:42 +0100)
> 
> are available in the git repository at:
>   git://github.com/shr-project/opkg-utils jansa/pull
>   https://github.com/shr-project/opkg-utils/tree/jansa/pull
> 
> Chris Diamand (1):
>   Changed call to subprocess.check_output which isn't compatible with
>     Python 2.6
> 
> Ondics Githubler (1):
>   Option "C" ist shown in usage() and implemented, but was missing in
>     getopts. Added "C".

Merged to master. Sorry about the delay, I'd missed the original
patches. I'd meant to sort this after I saw the reminder yesterday but
didn't get to it until today.

Cheers,

Richard


