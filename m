Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 193AAE0049F
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 07:48:26 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-113-77.range81-153.btcentralplus.com
	[81.153.113.77]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 432D399A4
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 15:48:24 +0100 (BST)
Message-ID: <506EF337.6080303@r-finger.com>
Date: Fri, 05 Oct 2012 15:48:23 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <506EE78B.6060607@balister.org>
In-Reply-To: <506EE78B.6060607@balister.org>
Subject: Re: Making recipes depend on specific layers
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
X-List-Received-Date: Fri, 05 Oct 2012 14:48:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 05/10/12 14:58, Philip Balister wrote:
> I run into problems (typically with BSP layers) where I want the layer
> to build only against oe-core, but I also would like to have recipes
> that depend on other layers. Typically, a "complex" image that uses
> packages built from other layers.

Not sure if I fully understood what you are trying to do, but I'd be
worried about adding yet another dependency dimension to the system as a
whole.

Regarding the problems with coexisting bsp layers, I eventually came to
the conclusion that it's best to avoid parsing any irrelevant bsp layers
altogether. The way we handle this in Guacamayo is to keep the
bsp-related recipes in dedicated directories that can be easily BBMASKed
out:

  recipes-bsp/ti-appends: for recipes related to meta-ti
  recipes-bsp/rpi-appends: for recipes related to meta-raspberrypi

For each machine we support we then have a machine conf that looks like
this (e.g., for beagleboard.conf):

  # source canonical beagleboard.conf from meta-ti
  require ../../../layers/meta-ti/conf/machine/beagleboard.conf

  BBMASK .= "|.*/meta-raspberrypi|.*/recipes-bsp/rpi-appends"

Consequently for any given machine only a single bsp layer is ever
parsed and the layers do not interfere with each other; this currently
triggers a bitbake warning about no recipes being in the masked out
layers, but other than does exactly what it is meant to.

Tomas

