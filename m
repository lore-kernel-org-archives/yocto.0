Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D7BE003E2
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2012 02:57:23 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1QAvKGb011804;
	Sun, 26 Feb 2012 10:57:20 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09556-08; Sun, 26 Feb 2012 10:57:16 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1QAvDxN011798
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 26 Feb 2012 10:57:14 GMT
Message-ID: <1330253834.13788.59.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Sun, 26 Feb 2012 10:57:14 +0000
In-Reply-To: <a371d1ec41d49cc346eaca4b28ee854a145c1a73.1330187370.git.dvhart@linux.intel.com>
References: <a371d1ec41d49cc346eaca4b28ee854a145c1a73.1330187370.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] poky-tiny: Assume pkgconfig is provided
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
X-List-Received-Date: Sun, 26 Feb 2012 10:57:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-02-25 at 08:29 -0800, Darren Hart wrote:
> -dev packages require pkgconfig, but it pulls in glib->dbus->shadow
> which breaks with tiny's minimal libc.
> 
> -dev packages are not currently supported on poky-tiny.
> 
> Proposed-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky-tiny.conf |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)

Merged to master, thanks.

Richard


