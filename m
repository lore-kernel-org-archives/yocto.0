Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77409E01371
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 01:49:28 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-84-143.range81-153.btcentralplus.com
	[81.153.84.143]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 7BCF09ADE;
	Wed,  5 Sep 2012 09:49:12 +0100 (BST)
Message-ID: <50471207.8080104@r-finger.com>
Date: Wed, 05 Sep 2012 09:49:11 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: William Mills <wmills@ti.com>
References: <50450DC6.20303@r-finger.com>	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>	<50451947.2090401@r-finger.com>	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>	<5045C2B7.1070406@r-finger.com>	<CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
	<504637F5.8090603@linux.intel.com> <504663C0.6050907@ti.com>
In-Reply-To: <504663C0.6050907@ti.com>
Cc: yocto@yoctoproject.org, "Dmytriyenko, Denys" <denys@ti.com>
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
X-List-Received-Date: Wed, 05 Sep 2012 08:49:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 04/09/12 21:25, William Mills wrote:
> I suspect the current issue is just growing pains for a case that has
> not been tested.

The simplest fix would be for meta-ti to preppend itself to the path the
same way meta-yocto does, i.e., in the layer.conf

  BBPATH := "${LAYERDIR}:${BBPATH}"

In fact, this is the *only* way that a layer can override any conf files
in oe-core, which is probably what you always want in a BSP layer?

Just quickly scanning yocto git, there are a number of BSP layers that
are configured the same way as meta-ti, so potentially have the same
problem, e.g., meta-intel, meta-fsl-ppc. (There are other generic type
layers configured this way too, but I think it's only a big issue for
BSP layers and distro layers.)

As long as we are mixing layers that do both prepend and append, the
layering will continue to be broken in subtle and hard to identify ways.
I can't think of a practical use case where a layer other than oe-core
might need to append itself to the BBPATH? If there were no genuine need
for layers to append to the path, the BBPATH extension could be done
automatically when including the layer, instead doing manually in each
layer.conf, giving us some consistency.


> Darren: Is it true you can't get @ the Intel BSP's w/o also getting the
> poky distro defs?  That does seem to mixing things a bit.  (I am not
> claiming meta-ti is clean yet but I want to understand the Intel examples.)

I apologize for getting this wrong, meta-intel is not dependent on
meta-yocto (the meta-yocto bbappends are only apply to the machines
meta-yocto itself contains configs for). But you do need meta-yocto for
the atom-pc machine, because meta-yocto is the BSP layer for that (and
should Intel decide to add an atom-pc to meta-intel, it will be broken
exactly the same as the beagleboard machine is just now).

Tomas

