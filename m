Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D9F2E0049B
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 04:51:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q95BpQFu016493;
	Fri, 5 Oct 2012 12:51:26 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16305-02; Fri,  5 Oct 2012 12:51:21 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q95BpHoN016487
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 5 Oct 2012 12:51:18 +0100
Message-ID: <1349437880.15658.22.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mihai Lindner <mihaix.lindner@linux.intel.com>
Date: Fri, 05 Oct 2012 12:51:20 +0100
In-Reply-To: <57468146a5fbeb836ac941d51fc6f41031e41b03.1349435514.git.mihaix.lindner@linux.intel.com>
References: <cover.1349435514.git.mihaix.lindner@linux.intel.com>
	<57468146a5fbeb836ac941d51fc6f41031e41b03.1349435514.git.mihaix.lindner@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-tlk: fix ignored SRC_URI appends
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
X-List-Received-Date: Fri, 05 Oct 2012 11:51:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-10-05 at 14:20 +0300, Mihai Lindner wrote:
> Fix SRC_URI appends ignored by meta-cedartrail and meta-crownbay. Used
> SRC_URI_append instead of SRC_URI.
> Also placed all variables in an .inc file to be required by all
> linux-yocto recipes in here, since all versions use the same.
> 
> [YOCTO #3217]
> 
> Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
> ---
>  meta-tlk/recipes-kernel/linux/linux-yocto.inc          | 3 +++

Could you use a slightly less generic name for this include please? I
worry about collisions...

Cheers,

Richard



