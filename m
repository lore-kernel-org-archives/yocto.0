Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 191714C8024E
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2011 15:35:41 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Apr 2011 13:35:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,283,1301900400"; d="scan'208";a="739874253"
Received: from vorpal.jf.intel.com (HELO [10.7.199.68]) ([10.7.199.68])
	by orsmga001.jf.intel.com with ESMTP; 28 Apr 2011 13:35:40 -0700
From: Joshua Lock <josh@linux.intel.com>
To: Liping Ke <liping.ke@intel.com>
In-Reply-To: <a1d0bb2c85741e8d21cefd00c7191f111664cc0a.1303968733.git.liping.ke@intel.com>
References: <cover.1303968733.git.liping.ke@intel.com>
	<a1d0bb2c85741e8d21cefd00c7191f111664cc0a.1303968733.git.liping.ke@intel.com>
Date: Thu, 28 Apr 2011 13:31:37 -0700
Message-ID: <1304022697.2171.326.camel@vorpal>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] Resend:[Image-Creator]Make bitbake server type configurable (xmlrpc, none)
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
X-List-Received-Date: Thu, 28 Apr 2011 20:35:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Liping,

This looks good to me. Two minor typo nits below, once they're fixed I
will create a branch on poky-contrib to collect image-creator related
patches until we're ready to switch to developing against upstream
bitbake.

Thanks,
Joshua


On Thu, 2011-04-28 at 13:38 +0800, Liping Ke wrote:
> From: Liping Ke <liping.ke@intel.com>
> 
> Add -t options in bitbake for configuring server type.
> 
> Signed-off-by: Liping Ke <liping.ke@intel.com>
> ---
>  bitbake/bin/bitbake |   22 +++++++++++++++++-----
>  1 files changed, 17 insertions(+), 5 deletions(-)
> 
> diff --git a/bitbake/bin/bitbake b/bitbake/bin/bitbake
> index 6d05289..2c45224 100755
> --- a/bitbake/bin/bitbake
> +++ b/bitbake/bin/bitbake
> @@ -39,8 +39,6 @@ import bb.msg
>  from bb import cooker
>  from bb import ui
>  from bb import server
> -from bb.server import none
> -#from bb.server import xmlrpc
>  
>  __version__ = "1.11.0"
>  logger = logging.getLogger("BitBake")
> @@ -71,7 +69,7 @@ def get_ui(config):
>          return getattr(module, interface).main
>      except AttributeError:
>          sys.exit("FATAL: Invalid user interface '%s' specified.\n"
> -                 "Valid interfaces: depexp, goggle, ncurses, knotty [default]." % interface)
> +                 "Valid interfaces: depexp, goggle, ncurses, hob, knotty [default]." % interface)
>  
> 
>  # Display bitbake/OE warnings via the BitBake.Warnings logger, ignoring others"""
> @@ -161,6 +159,9 @@ Default BBFILES are the .bb files in the current directory.""")
>      parser.add_option("-u", "--ui", help = "userinterface to use",
>                 action = "store", dest = "ui")
>  
> +    parser.add_option("-t", "--servertype", help = "choose which server to user, none or xmlrpc",

Can you capitalise choose please?

> +               action = "store", dest = "servertype")
> +
>      parser.add_option("", "--revisions-changed", help = "Set the exit code depending on whether upstream floating revisions have changed or not",
>                 action = "store_true", dest = "revisions_changed", default = False)
>  
> @@ -175,8 +176,19 @@ Default BBFILES are the .bb files in the current directory.""")
>      loghandler = event.LogHandler()
>      logger.addHandler(loghandler)
>  
> -    #server = bb.server.xmlrpc
> -    server = bb.server.none
> +    # Server type could be xmlrpc or none currently, if nothing is specified,
> +    # default server would be none
> +    if configuration.servertype:
> +        server_type = configuration.servertype
> +    else:
> +        server_type = 'none'
> +
> +    try:
> +        module = __import__("bb.server", fromlist = [server_type])
> +        server = getattr(module, server_type)
> +    except AttributeError:
> +        sys.exit("FATAL: Invalid server type '%s' specified.\n"
> +                 "Valid interfaces: xmlrpc [default]." % servertype)
+                 "Valid interfaces: xmlrpc, none [default]." %
servertype)

xmlrpc isn't the default, none is :-)

>  
>      # Save a logfile for cooker into the current working directory. When the
>      # server is daemonized this logfile will be truncated.


-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Center


