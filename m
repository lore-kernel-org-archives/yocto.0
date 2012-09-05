Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CD36E01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 14:47:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85Ll6Ba030795;
	Wed, 5 Sep 2012 22:47:06 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27558-10; Wed,  5 Sep 2012 22:47:02 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85LkuRk030767
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 5 Sep 2012 22:46:57 +0100
Message-ID: <1346881616.21985.100.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Date: Wed, 05 Sep 2012 22:46:56 +0100
In-Reply-To: <5045C2B7.1070406@r-finger.com>
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
	<5045C2B7.1070406@r-finger.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 05 Sep 2012 21:47:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-09-04 at 09:58 +0100, Tomas Frydrych wrote:
> Hi Bruce,
> 
> On 03/09/12 22:08, Bruce Ashfield wrote:
> > That being said, taking a step back, what are you trying to get out of
> > meta-yocto in this scenario ? 
> 
> a) I am targeting multiple chips, including TI Omap and Intel Atom.
> meta-yocto is a prerequisite for the various machines in meta-intel, so
> I have to include meta-yocto if I want to build images for an Intel
> chip. Nothing unusual here.

Is that really true? What in meta-intel depends on meta-yocto?

This certainly isn't intentional so I'd like to understand more.

> b) meta-yocto is the Poky distro layer; if you want to use Poky, then
> you need meta-yocto.
>
> > see above. I misspoke. I don't think there's an intent to make meta-yocto
> > and meta-ti work together, but oe-core + meta-ti, that's the combo that
> > makes sense.
> 
> See (b) above; you are not saying that Poky is only meant for Intel HW,
> are you?
> 
> The basic problem with meta-yocto is that it combines BSP stuff
> (meta-intel prerequisite, Atom & Beagle config) with distro stuff (Poky,
> Yocto branding). That's convenient for doing QA on a limited set of HW,
> but suboptimal for real use; BSP layers simply should not be dependent
> on distro layers, it largely defeats the purpose of having layers.
> 
> Splitting out the minimal beagle config into a layer of its own would
> improve things quite a bit.

Effectively this is what we've now done and was always the intention
(see the Yocto Project compatible criteria).

Cheers,

Richard


