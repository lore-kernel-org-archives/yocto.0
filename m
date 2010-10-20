Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8ADD84C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 04:25:15 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9K9PDqk014817;
	Wed, 20 Oct 2010 10:25:13 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14228-10; Wed, 20 Oct 2010 10:25:09 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9K9P8mb014811
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 20 Oct 2010 10:25:08 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Mei, Lei" <lei.mei@intel.com>
In-Reply-To: <749B9D3DBF0F054390025D9EAFF47F222FE8FF87@shsmsx501.ccr.corp.intel.com>
References: <749B9D3DBF0F054390025D9EAFF47F222FE8FA5E@shsmsx501.ccr.corp.intel.com>
	<1287489755.1720.1284.camel@rex>
	<749B9D3DBF0F054390025D9EAFF47F222FE8FF87@shsmsx501.ccr.corp.intel.com>
Date: Wed, 20 Oct 2010 10:25:00 +0100
Message-ID: <1287566700.16386.33.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PULL] at: Non root install patch is not necessary (Bug 246)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 09:25:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-10-20 at 17:05 +0800, Mei, Lei wrote:
> Hi Richard,
>    I have re-fixed this bug, please check it, thank you~
> 
>  meta/recipes-extended/at/at_3.1.12.bb                 |    2 
>  meta/recipes-extended/at/files/nonrootinstall.patch   |   75 ------------------
>  meta/recipes-extended/at/files/nonstripbinaries.patch |   21 +++++
>  3 files changed, 22 insertions(+), 76 deletions(-)
> 
> Mei Lei (1):
>       at: remove nonrootinstall patch and modify relevant files

Thanks, much better. One more small thing though - could you add a
header to the patch with a description of what it does, why and who made
the change. In this case its fairly obvious but its a good idea in
general as when you come back to a patch six months later you can
remember why its there!

Also, poky pull requests like this should be going to the Poky mailing
list.

Cheers,

Richard




