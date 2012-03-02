Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EA55E003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 09:21:24 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Mar 2012 09:21:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132440919"
Received: from unknown (HELO envy.home) ([10.255.15.86])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2012 09:21:24 -0800
Message-ID: <4F510167.8060702@linux.intel.com>
Date: Fri, 02 Mar 2012 09:20:39 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
	<b9641d8ff44af52cf495034647d432d9f2915367.1330663414.git.tom.zanussi@intel.com>
In-Reply-To: <b9641d8ff44af52cf495034647d432d9f2915367.1330663414.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 7/8] yocto-bsp: new script
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
X-List-Received-Date: Fri, 02 Mar 2012 17:21:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/01/2012 11:01 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Implementation of the 'yocto-bsp' command-line tool, for creating BSPs
> and listing BSP properties.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  scripts/yocto-bsp |  131 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 131 insertions(+), 0 deletions(-)
>  create mode 100755 scripts/yocto-bsp
> 
> diff --git a/scripts/yocto-bsp b/scripts/yocto-bsp
> new file mode 100755
> index 0000000..20fa89d
> --- /dev/null
> +++ b/scripts/yocto-bsp
> @@ -0,0 +1,131 @@
> +#!/usr/bin/env python
> +# ex:ts=4:sw=4:sts=4:et
> +# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
> +#
> +# Copyright 2012 Intel Corporation
> +# Authored-by:  Tom Zanussi <tom.zanussi@intel.com>
> +#

same comment...

...

> +def yocto_bsp_list_subcommand(args, usage_str):
> +    """
> +    Command-line handling for listing available BSP properties and
> +    values.  The real work is done by bsp.engine.yocto_bsp_list()
> +    """
> +    parser = optparse.OptionParser(usage = usage_str)
> +
> +    parser.add_option("-o", "--outfile", action = "store", dest = "properties_file",
> +                      help = "dump the possible values for BSP properties to a JSON file")
> +
> +    (options, args) = parser.parse_args(args)
> +
> +    if not yocto_bsp_list(args, scripts_path, options.properties_file):
> +        logging.error("Bad list arguments, exiting\n")
> +        parser.print_help()
> +        exit(1)


I see sys.exit() below and just exit() here, and above you "import sys",
so I believe this should also be sys.exit()

...

> +if __name__ == "__main__":
> +    try:
> +        ret = main()
> +    except Exception:
> +        ret = 1
> +        import traceback
> +        traceback.print_exc(5)
> +    sys.exit(ret)
> +

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

