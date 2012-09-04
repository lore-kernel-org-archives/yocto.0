Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71169E0147F
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 01:58:47 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-84-143.range81-153.btcentralplus.com
	[81.153.84.143]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 6E3F59ADE
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 09:58:32 +0100 (BST)
Message-ID: <5045C2B7.1070406@r-finger.com>
Date: Tue, 04 Sep 2012 09:58:31 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
In-Reply-To: <CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
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
X-List-Received-Date: Tue, 04 Sep 2012 08:58:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Bruce,

On 03/09/12 22:08, Bruce Ashfield wrote:
> That being said, taking a step back, what are you trying to get out of
> meta-yocto in this scenario ? 

a) I am targeting multiple chips, including TI Omap and Intel Atom.
meta-yocto is a prerequisite for the various machines in meta-intel, so
I have to include meta-yocto if I want to build images for an Intel
chip. Nothing unusual here.

b) meta-yocto is the Poky distro layer; if you want to use Poky, then
you need meta-yocto.

> see above. I misspoke. I don't think there's an intent to make meta-yocto
> and meta-ti work together, but oe-core + meta-ti, that's the combo that
> makes sense.

See (b) above; you are not saying that Poky is only meant for Intel HW,
are you?

The basic problem with meta-yocto is that it combines BSP stuff
(meta-intel prerequisite, Atom & Beagle config) with distro stuff (Poky,
Yocto branding). That's convenient for doing QA on a limited set of HW,
but suboptimal for real use; BSP layers simply should not be dependent
on distro layers, it largely defeats the purpose of having layers.

Splitting out the minimal beagle config into a layer of its own would
improve things quite a bit.

Tomas

