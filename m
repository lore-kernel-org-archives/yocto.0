Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C4C04C800A1
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2011 16:58:23 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5MLwJrf009633;
	Wed, 22 Jun 2011 22:58:19 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09210-08; Wed, 22 Jun 2011 22:58:15 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5MLwCXS009627
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 22 Jun 2011 22:58:12 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1308778240.git.bruce.ashfield@windriver.com>
References: <cover.1308778240.git.bruce.ashfield@windriver.com>
Date: Wed, 22 Jun 2011 22:57:53 +0100
Message-ID: <1308779873.20015.101.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com, saul.wold@intel.com
Subject: Re: [PATCH 0/1] meta-yocto/linux-yocto: BSP SRCREV updates
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
X-List-Received-Date: Wed, 22 Jun 2011 21:58:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-06-22 at 17:37 -0400, Bruce Ashfield wrote:
> This is the merge request for Darren's update beagleboard
> support (and update to the other BSPs that picked up 
> the common USB patch).
> 
> This is based on the meta updates that went out to the oe-core
> list in a separate pull request.
> 
> cc: Darren Hart <dvhart@linux.intel.com>
> 
> 
> The following changes since commit 3d6054040479ae77c7de24721ff822c1b09291c6:
>   Bruce Ashfield (1):
>         linux-yocto: update meta and yocto/standard SRCREVs
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/poky-contrib zedd/kernel
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
> 
> Bruce Ashfield (1):
>   linux-yocto/meta-yocto: update yocto/standard and beagleboard SRCREVs

Merged to master, thanks.

Richard


