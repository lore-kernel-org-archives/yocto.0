Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E5834C803DB
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2011 09:52:03 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6KEppsQ023739;
	Wed, 20 Jul 2011 15:51:51 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23724-01; Wed, 20 Jul 2011 15:51:44 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6KEpdBD023727
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 20 Jul 2011 15:51:40 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <a9d457e0c55b74e9093dd657e66d6d80e201e357.1310707201.git.bruce.ashfield@windriver.com>
References: <\> <cover.1310707201.git.bruce.ashfield@windriver.com>
	<a9d457e0c55b74e9093dd657e66d6d80e201e357.1310707201.git.bruce.ashfield@windriver.com>
Date: Wed, 20 Jul 2011 15:51:36 +0100
Message-ID: <1311173496.2344.54.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/1] linux-yocto/meta-yocto: update SRCREVS
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
X-List-Received-Date: Wed, 20 Jul 2011 14:52:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-15 at 01:26 -0400, Bruce Ashfield wrote:
> Fixes bug [YOCTO #1161]
> Fixes bug [YOCTO #773]
> 
> This streamlines the routerstation pro configuration to remove options
> that are either unecessary or that are causing bugs.
> 
> Also added to all branches is:
> 
>   commit ffd73d6b2a9bfa0de5710b90a2237f4be66ae9a7
>   Author: Yinghai Lu <yinghai@kernel.org>
>   Date:   Thu Jul 14 15:27:44 2011 -0700
> 
>     mm: use alloc_bootmem_node_nopanic() on really needed path
> 
>     commit 8f389a99b652aab5b42297280bd94d95933ad12f upstream.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Merged to master, thanks.

Richard


