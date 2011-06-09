Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F4144C80334
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2011 02:45:36 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p597jTC3010031;
	Thu, 9 Jun 2011 08:45:29 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09731-05; Thu,  9 Jun 2011 08:45:22 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p597jEus010015
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Jun 2011 08:45:18 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Stewart, David C" <david.c.stewart@intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B2603B8B72F@orsmsx501.amr.corp.intel.com>
References: <4DEEEEA0.4020900@windriver.com> <4DEFF1BA.2020701@linux.intel.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B2603B8B72F@orsmsx501.amr.corp.intel.com>
Date: Thu, 09 Jun 2011 08:45:06 +0100
Message-ID: <1307605506.15712.117.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project Discussions <yocto@yoctoproject.org>
Subject: Re: Fullpass Test Report for Beagleboard 1.1 M1 20110602 Build
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
X-List-Received-Date: Thu, 09 Jun 2011 07:45:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-06-08 at 15:09 -0700, Stewart, David C wrote:
> I think it's reasonable as a M* milestone

Agreed. The whole point of the milestones is to check for regressions
introduced by major changes like the toolchain upgrade. We now know what
the regressions are and can work to address them. The process is working
as it should :).

Cheers,

Richard



