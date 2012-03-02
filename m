Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3568E003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 09:12:10 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Mar 2012 09:12:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72853396"
Received: from unknown (HELO envy.home) ([10.255.15.86])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Mar 2012 09:12:09 -0800
Message-ID: <4F50FF3D.7080802@linux.intel.com>
Date: Fri, 02 Mar 2012 09:11:25 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
	<a0c47b85cdeb6d65e1ab924db684cf1d80fb0dda.1330663414.git.tom.zanussi@intel.com>
In-Reply-To: <a0c47b85cdeb6d65e1ab924db684cf1d80fb0dda.1330663414.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/8] yocto-bsp: add kernel interface
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
X-List-Received-Date: Fri, 02 Mar 2012 17:12:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/01/2012 11:01 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Yocto BSP kernel-related functions, for interacting with the kernel
> tools and implementing the machinery behind the 'yocto-kernel'
> command.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  scripts/lib/bsp/kernel.py |  679 +++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 679 insertions(+), 0 deletions(-)
>  create mode 100644 scripts/lib/bsp/kernel.py
> 
> diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
> new file mode 100644
> index 0000000..1b88b2f
> --- /dev/null
> +++ b/scripts/lib/bsp/kernel.py
> @@ -0,0 +1,679 @@
> +# ex:ts=4:sw=4:sts=4:et
> +# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
> +#
> +# Copyright 2012 Intel Corporation
> +# Authored-by:  Tom Zanussi <tom.zanussi@intel.com>
> +#
> +# This program is free software; you can redistribute it and/or modify
> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License along
> +# with this program; if not, write to the Free Software Foundation, Inc.,
> +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> +
> +import sys
> +import os
> +import shutil
> +from tags import *
> +import glob
> +
> +
> +def find_bblayers(scripts_path):
> +    """
> +    Find and return a sanitized list of the layers found in BBLAYERS.
> +    """
> +    bblayers_conf = os.path.join(scripts_path, "../build/conf/bblayers.conf")
> +
> +    layers = []
> +
> +    f = open(bblayers_conf, "r")
> +    lines = f.readlines()
> +    for line in lines:
> +        line = line.strip()
> +        in_bblayers = False
> +        if line.startswith("BBLAYERS"):
> +            in_bblayers = True
> +        if line.startswith("/"):
> +            if line.endswith("\\"):
> +                line = line[:-1].strip()
> +            layers.append(line)


This does not appear to handle something like:

BBLAYERS = " \
    /path/to/layer1 \
    /path/to/layer2"

Need to strip the " from the end of the last line.

Also doesn't handle:

BBLAYERS += "/path/to/layer3"

As it looks for lines starting with / and doesn't handle the " as
mentioned above.

> +    f.close()
> +
> +    return layers
> +
> +
> +def find_meta_layer(scripts_path):
> +    """
> +    Find and return the meta layer in BBLAYERS.
> +    """
> +    layers = find_bblayers(scripts_path)
> +
> +    for layer in layers:
> +        if layer.endswith("meta"):
> +            return layer
> +
> +    return None

I wonder if you could just use the bitbake-layers show-layers command?

$ bitbake-layers show-layers
Parsing recipes..WARNING: No recipes available for:

/home/dvhart/source/poky/layers/poky-extras/meta-kernel-dev/recipes-kernel/linux/linux-yocto_2.6.34.bbappend

/home/dvhart/source/poky/layers/meta-intel/meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.2.bbappend

/home/dvhart/source/poky/layers/poky-extras/meta-kernel-dev/recipes-kernel/linux/linux-yocto-rt_2.6.34.bbappend
done.

layer                 path                                      priority
==========================================================================
meta                  /home/dvhart/source/poky/meta             5
meta-yocto            /home/dvhart/source/poky/meta-yocto       5
meta-intel            /home/dvhart/source/poky/layers/meta-intel  5
meta-fri2
/home/dvhart/source/poky/layers/meta-intel/meta-fri2  5
meta-kernel-dev
/home/dvhart/source/poky/layers/poky-extras/meta-kernel-dev  0


It's slow as snot in January in Toronto, but it avoids having to
re-implement all the bblayers parsing and the various corner cases that
bitbake already handles...


> +
> +def find_bsp_layer(scripts_path, machine):
> +    """
> +    Find and return a machine's BSP layer in BBLAYERS.
> +    """
> +    layers = find_bblayers(scripts_path)
> +
> +    for layer in layers:
> +        if machine in layer:
> +            return layer
> +
> +    print "Unable to find the BSP layer for machine %s." % machine
> +    print "Please make sure it is listed in bblayers.conf"
> +    sys.exit(1)

You would probably need to cache the result of the bitbake-layers as it
is way to slow to use repeatedly like you need to here...

The rest looks good to me.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

