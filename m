Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB8D5E01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 14:53:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85Lqu7q030837;
	Wed, 5 Sep 2012 22:52:56 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28994-04; Wed,  5 Sep 2012 22:52:52 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85LqlTF030831
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 5 Sep 2012 22:52:48 +0100
Message-ID: <1346881966.21985.105.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: William Mills <wmills@ti.com>
Date: Wed, 05 Sep 2012 22:52:46 +0100
In-Reply-To: <50475FB7.2080408@ti.com>
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
	<5045C2B7.1070406@r-finger.com>
	<CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
	<504637F5.8090603@linux.intel.com> <504663C0.6050907@ti.com>
	<50468D68.50608@linux.intel.com> <50475FB7.2080408@ti.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>, "Dmytriyenko,
	Denys" <denys@ti.com>
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Wed, 05 Sep 2012 21:53:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-05 at 10:20 -0400, William Mills wrote:
> On 09/04/2012 07:23 PM, Darren Hart wrote:
> >
> >
> > On 09/04/2012 01:25 PM, William Mills wrote:
> >
> >> Darren: Is it true you can't get @ the Intel BSP's w/o also getting the
> >> poky distro defs?  That does seem to mixing things a bit.  (I am not
> >> claiming meta-ti is clean yet but I want to understand the Intel examples.)
> >>
> >
> > It isn't something we test as part of the QA that we perform. I mostly
> > expect people building meta-intel to be building with meta-yocto
> > (although I wouldn't take a hard line on requiring it). That said, I
> > removed meta-yocto from a meta-intel/meta-fri2 build and removed
> > DISTRO=poky from my local.conf and successfully built and booted a
> > core-image-minimal build on an FRI2 this afternoon without any changes.
> >
> 
> Thanks!  My confidence is restored.
> 
> As long as including meta-yocto does not interfere with other BSPs or 
> distros etc then there should be no harm in your assumption.
> 
> I would be interested to know what Mentor Graphics and Wind River do on 
> their products.  Do they include meta-yocto? (YP is not all about 
> comercial OS support but I know these orginatations have done the due 
> diligence on layer compatibility for a non-poky distro.)

Commercial OS support usually involves some of your own policy so
meta-yocto is interesting as an example to them but they'd probably only
use it as inspiration to write their own. That was always expected and
meta-yocto is extremely thin deliberately.

Having said that, what meta-yocto was doing was wrong, it wasn't
intentional, the implications not fully realised and is hopefully now
fixed with the split :).

Cheers,

Richard


