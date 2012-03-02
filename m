Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F084E003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 09:28:13 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Mar 2012 09:28:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72858854"
Received: from unknown (HELO [10.255.15.122]) ([10.255.15.122])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Mar 2012 09:28:12 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F510220.80303@linux.intel.com>
References: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
	<8ef1fb35b82a8be34b16e9e4d655640486384822.1330663414.git.tom.zanussi@intel.com>
	<4F510220.80303@linux.intel.com>
Date: Fri, 02 Mar 2012 11:27:46 -0600
Message-ID: <1330709266.2319.84.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 8/8] yocto-kernel: new script
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
X-List-Received-Date: Fri, 02 Mar 2012 17:28:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-02 at 09:23 -0800, Darren Hart wrote:
> 
> On 03/01/2012 11:01 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Implementation of the 'yocto-kernel' command-line tool, for modifying
> > the kernel portion of a Yocto BSP.
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >  scripts/yocto-kernel |  219 ++++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 files changed, 219 insertions(+), 0 deletions(-)
> >  create mode 100755 scripts/yocto-kernel
> > 
> > diff --git a/scripts/yocto-kernel b/scripts/yocto-kernel
> > new file mode 100755
> > index 0000000..97a7a7c
> > --- /dev/null
> > +++ b/scripts/yocto-kernel
> > @@ -0,0 +1,219 @@
> > +#!/usr/bin/env python
> > +# ex:ts=4:sw=4:sts=4:et
> > +# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
> > +#
> > +# Copyright 2012 Intel Corporation
> > +# Authored-by:  Tom Zanussi <tom.zanussi@intel.com>
> 
> same comment...
> 
> > +#
> > +# This program is free software; you can redistribute it and/or modify
> > +# it under the terms of the GNU General Public License version 2 as
> > +# published by the Free Software Foundation.
> > +#
> > +# This program is distributed in the hope that it will be useful,
> > +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> > +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > +# GNU General Public License for more details.
> > +#
> > +# You should have received a copy of the GNU General Public License along
> > +# with this program; if not, write to the Free Software Foundation, Inc.,
> > +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> > +
> > +__version__ = "0.1.0"
> > +
> > +import os
> > +import sys
> > +import optparse
> > +import logging
> > +
> > +scripts_path = os.path.abspath(os.path.dirname(os.path.abspath(sys.argv[0])))
> > +lib_path = scripts_path + '/lib'
> > +sys.path = sys.path + [lib_path]
> > +
> > +from bsp.help import *
> > +from bsp.kernel import *
> > +
> > +
> > +def yocto_kernel_config_list_subcommand(args, usage_str):
> > +    """
> > +    Command-line handling for listing BSP config options.  The
> > +    real work is done by bsp.kernel.yocto_kernel_config_list().
> > +    """
> > +    logging.debug("yocto_kernel_config_list_subcommand")
> > +
> > +    parser = optparse.OptionParser(usage = usage_str)
> > +
> > +    (options, args) = parser.parse_args(args)
> > +
> > +    if len(args) != 1:
> > +        logging.error("Wrong number of arguments, exiting\n")
> > +        parser.print_help()
> > +        exit(1)
> 
> 
> Same comment on exit here as 7/8. Maybe there is a subtle difference
> that I'm missing? Same throughout the other subcommands...
> 

No, those are basically typos that work.  I think they should all be
sys.exit.  Thanks for noticing and pointing it out.

> Tom, this is all really great work. It's well-formed python, properly
> documented both in comments and user visible help. Very nice.
> 

Thanks, I appreciate your comments.

Tom


