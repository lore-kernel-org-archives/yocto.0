Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id BEF364C801BF
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 17:09:24 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JM9Frt006354;
	Tue, 19 Oct 2010 23:09:15 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05891-06; Tue, 19 Oct 2010 23:09:11 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JM98Y2006348
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Oct 2010 23:09:08 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4CBE12E4.2070803@linux.intel.com>
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
	<1287504271.26874.205.camel@elmorro> <4CBE1150.6090807@intel.com>
	<E1027E710AAD99438096D079C7648C625B7FDF@ala-mail10.corp.ad.wrs.com>
	<4CBE12E4.2070803@linux.intel.com>
Date: Tue, 19 Oct 2010 23:09:01 +0100
Message-ID: <1287526141.16386.15.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
X-Mailman-Approved-At: Tue, 19 Oct 2010 17:10:12 -0500
Cc: "Li, Susie" <susie.li@intel.com>, "McCombe,
	Kevin" <kevin.mccombe@windriver.com>, "Ta,
	Lieu" <Lieu.Ta@windriver.com>, "Anderson,
	Paul" <paul.anderson@windriver.com>, "Lock,
	Joshua" <joshua.lock@intel.com>, "Ashfield,
	Bruce" <Bruce.Ashfield@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Linux Project Sync notes
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
X-List-Received-Date: Tue, 19 Oct 2010 22:09:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-10-19 at 14:51 -0700, Darren Hart wrote:
> On 10/19/2010 02:48 PM, Anderson, Paul wrote:
> > I thought the plan was to do BOTH a QEMU demo and a demo on real
> > hardware? If that's not the plan, it should be the plan.
> 
> There has been no discussion of a QEMU demo for the media network demo. 
> I've tested some components with QEMU, but we aren't currently planning 
> on demo'ing this in QEMU.

I think Paul is talking about a different demo, one where we're just
able to boot all four qemu architectures alongside each other.

This should be possible with our release images, we just need someone to
own it and to bring a machine with it working on it (and have a backup
of the setup in case of filesystem corruption etc.).

Any volunteers?

Cheers,

Richard



