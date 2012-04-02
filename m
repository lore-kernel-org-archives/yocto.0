Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C2B6E013E9
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2012 20:32:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q323WZq8004660;
	Mon, 2 Apr 2012 04:32:35 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03987-02; Mon,  2 Apr 2012 04:32:31 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q323WMj8004653
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 2 Apr 2012 04:32:25 +0100
Message-ID: <1333337543.647.4.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Mon, 02 Apr 2012 04:32:23 +0100
In-Reply-To: <70e59c06150646b60bff8f23edb359d941f407ae.1333264933.git.dvhart@linux.intel.com>
References: <cover.1333264933.git.dvhart@linux.intel.com>
	<70e59c06150646b60bff8f23edb359d941f407ae.1333264933.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] linux-yocto-tiny: Prefer 3.2
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
X-List-Received-Date: Mon, 02 Apr 2012 03:32:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-04-01 at 00:23 -0700, Darren Hart wrote:
> With the move to 3.2 from 3.0 in oe-core, the 3.0 no longer exists.
> Prefer 3.2 instead.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky-tiny.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard


