Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D2C7E0030B
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 03:35:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q06BZ3YG019796;
	Fri, 6 Jan 2012 11:35:03 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18578-09; Fri,  6 Jan 2012 11:34:59 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q06BYpef019780
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 6 Jan 2012 11:34:52 GMT
Message-ID: <1325849692.20759.86.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 06 Jan 2012 11:34:52 +0000
In-Reply-To: <f973d6162bcdfe0835ec9a9f3aabda02ead79902.1325806059.git.dvhart@linux.intel.com>
References: <cover.1325806059.git.dvhart@linux.intel.com>
	<f973d6162bcdfe0835ec9a9f3aabda02ead79902.1325806059.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: philb@gnu.org, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] distro: Add poky-tiny distro definition
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
X-List-Received-Date: Fri, 06 Jan 2012 11:35:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-01-05 at 15:37 -0800, Darren Hart wrote:
> Poky-tiny is intended for building very small OS images. The distro
> definition sets the providers for the kernel and the runtime services.
> It also drops NLS support and reduces the eglibc component list and
> other DISTRO_FEATURE elements.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky-tiny.conf |  110 +++++++++++++++++++++++++++++++++
>  1 files changed, 110 insertions(+), 0 deletions(-)
>  create mode 100644 meta-yocto/conf/distro/poky-tiny.conf

I'd already restored the file but I've merged the delta with an
appropriate commit message to resolve this, thanks.

Richard


