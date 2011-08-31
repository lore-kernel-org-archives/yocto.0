Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D00DBE0076F
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 12:11:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VJB0SO010903;
	Wed, 31 Aug 2011 20:11:00 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10593-05; Wed, 31 Aug 2011 20:10:56 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VJApTG010897
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 31 Aug 2011 20:10:51 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jessica Zhang <jessica.zhang@intel.com>
In-Reply-To: <cover.1314817176.git.jessica.zhang@intel.com>
References: <cover.1314817176.git.jessica.zhang@intel.com>
Date: Wed, 31 Aug 2011 20:10:38 +0100
Message-ID: <1314817838.5939.481.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] [YOCTO #1396] 1396 is reopened from the initial fix
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
X-List-Received-Date: Wed, 31 Aug 2011 19:11:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-31 at 12:03 -0700, Jessica Zhang wrote:
> This patch revert the original fix which broke ppc/powerpc case and fix
> term consistency in adt_installer.conf 
> 
> The following changes since commit 0ac19e84db3794b0d9280bd3cf9bae1719de3d6d:
>   Jessica Zhang (1):
>         Merge branch 'master' of ssh://git.yoctoproject.org/poky
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib jzhang/1396-reopen
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=jzhang/1396-reopne
> 
> Jessica Zhang (2):
>   Revert "Fix adt-installer for consistent naming for powerpc and add
>     all arch template for installation"
>   [YOCTO #1396] Fix powerpc term and provide more template for
>     different arches

Merged to master, thanks.

Richard


