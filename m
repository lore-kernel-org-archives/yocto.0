Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07CDDE01423
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 23:23:47 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-38-202.range86-170.btcentralplus.com
	[86.170.38.202]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 5DEE460E52
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 07:23:46 +0100 (BST)
Message-ID: <4FE16C71.7010407@r-finger.com>
Date: Wed, 20 Jun 2012 07:23:45 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1206190818420.30655@oneiric>
	<2266259.lx4CelsjGA@helios>
	<17553E0E-7415-401A-A91F-5406EAB6193A@keylevel.com>
In-Reply-To: <17553E0E-7415-401A-A91F-5406EAB6193A@keylevel.com>
Subject: Re: is it "IMAGE_INSTALL +=" or "IMAGE_INSTALL_append ="?
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
X-List-Received-Date: Wed, 20 Jun 2012 06:23:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 19/06/12 19:47, Chris Tapp wrote:
> Is there a section that explains the order in which all these things
> happen? i.e. items in local.conf happen before/after...

IIRC, the evaluation orders is:

1. variables on the command line (e.g., 'MACHINE=beagleboard bitbake
myimage') are evaluated first,

2. variables in local.conf,

3. Rest depends on the order of things in bblayers.conf *and* how any
given layer.conf is implemented (some layers preppend their stuff to the
BBPATH and some layers append; from memory the Yocto layers prepend, but
layers from OE usually append, and this inconsistency makes for lot of
fun when combining layers into custom distro).

Tomas

