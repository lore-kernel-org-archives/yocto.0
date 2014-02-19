Return-Path: <laurentiu.palcu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81C45E007C9
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 06:23:33 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Feb 2014 06:23:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,505,1389772800"; d="scan'208";a="485824008"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.45])
	by orsmga002.jf.intel.com with ESMTP; 19 Feb 2014 06:23:12 -0800
Date: Wed, 19 Feb 2014 16:23:11 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Federico Vitali <fede.vitali@gmail.com>
Message-ID: <20140219142311.GG22316@lpalcu-linux>
References: <CAD78y+7qxqkdf1d1p6dFe5Cv9dFLHpgZ3uJfOD6JdmbScfX2+g@mail.gmail.com>
	<53048C4E.9050504@gmail.com>
	<CAD78y+7_Dg34_VNuyTooWt_ikEJEKZTrm03Krpk80BVzmXQPAQ@mail.gmail.com>
	<20140219125602.GE22316@lpalcu-linux>
	<CAD78y+5bKWWYUd1V+qheXY2w-84ZAWsf5HRhoZXMjnufGuJYkg@mail.gmail.com>
	<20140219135125.GF22316@lpalcu-linux>
	<CAD78y+6EHqhRTc186_wEJ6cz0GuBh8cNBgu67_pOyiaRchPXbg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD78y+6EHqhRTc186_wEJ6cz0GuBh8cNBgu67_pOyiaRchPXbg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: problem with yocto behind http_proxy
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Feb 2014 14:23:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 19, 2014 at 02:57:49PM +0100, Federico Vitali wrote:
> I've alreay tried, it doesn't accept it ... 
Apparently, socat has support for authentication. Try this:

#!/bin/bash
# $1 = hostname, $2 = port
PROXY=myproxy.example.com
exec socat STDIO SOCKS4:$PROXY:$1:$2,proxyauth=user:pass

Above is just an example. You'll probably have to adujust it, depending
on your proxy type. See the manual for details.

laurentiu
> 
> 
> 2014-02-19 14:51 GMT+01:00 Laurentiu Palcu <laurentiu.palcu@intel.com>:
> 
>     On Wed, Feb 19, 2014 at 02:24:38PM +0100, Federico Vitali wrote:
>     > Thank you Laurentiu. Unfortunately my proxy requires authentication via
>     > username and password,
>     > but it seems to me that netcat doesn't support it. Or am I wrong?
>     Well, the BSD netcat (on my Ubuntu 12.04) appears to support it:
> 
>     From the man page:
>          -P proxy_username
>                       Specifies a username to present to a proxy server that
>                       requires authentication.  If no username is specified
>                       then authentication will not be attempted.  Proxy
>                       authentication is only supported for HTTP CONNECT
>                       proxies at present.
> 
>     Though I don't know how you specify a password... perhaps -Puser:passwd?
>    
>     laurentiu
>     >
>     >
>     > 2014-02-19 13:56 GMT+01:00 Laurentiu Palcu <laurentiu.palcu@intel.com>:
>     >
>     >     Hi Federico,
>     >
>     >     You can find more info about setting up Yocto behind proxies here:
>     >
>     >     https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
>     >
>     >     For git, I recommend the 'nc' method. Works fine for me.
>     >
>     >     laurentiu
>     >
>     >     On Wed, Feb 19, 2014 at 12:12:58PM +0100, Federico Vitali wrote:
>     >     > sorry I forgot to reply also to yocto@yoctoproject.org. This was
>     the
>     >     reply
>     >     >
>     >     > thank you Marco,
>     >     > I've tried but I'm still having problems:
>     >     >
>     >     > WARNING: Failed to fetch URL git://git.yoctoproject.org/
>     >     yocto-kernel-tools.git,
>     >     > attempting MIRRORS if available
>     >     > WARNING: Failed to fetch URL git://git.yoctoproject.org/
>     >     linux-yocto-3.10.git;
>     >     > bareclone=1;branch=standard/base,meta;name=machine,meta, attempting
>     >     MIRRORS if
>     >     > available
>     >     > ERROR: Fetcher failure: Fetch command failed with exit code 128,
>     output:
>     >     > fatal: unable to connect to git.yoctoproject.org:
>     >     > git.yoctoproject.org: Name or service not known
>     >     >
>     >     > I noticed that the url https://www.yoctoproject.org/sources is not
>     >     working.
>     >     > So I tried  http://downloads.yoctoproject.org/sources/, but I get
>     this
>     >     error:
>     >     >
>     >     > ERROR: Fetcher failure: Fetch command failed with exit code 128,
>     output:
>     >     > fatal: unable to connect to git.yoctoproject.org:
>     >     > git.yoctoproject.org: Name or service not known
>     >     >
>     >     >
>     >     >
>     >     > 2014-02-19 11:49 GMT+01:00 Marco <koansoftware@gmail.com>:
>     >     >
>     >     >     Il 19/02/2014 11:44, Federico Vitali ha scritto:
>     >     >
>     >     >         Hi,
>     >     >
>     >     >         I have problems using yocto behind a firewall. The firewall
>     >     blocks git,
>     >     >         so I've followed the instructions
>     >     >         given here:
>     >     >
>     >     >         http://www.yoctoproject.org/docs/1.5.1/ref-manual/
>     ref-manual.html
>     >     #
>     >     >
>     >    
>     how-does-the-yocto-project-obtain-source-code-and-will-it-work-behind-my-firewall-or-proxy-server
>     >     >
>     >     >         i.e. adding the following lines to my local.conf:
>     >     >
>     >     >         PREMIRRORS_prepend = "\
>     >     >               git://.*/.*http://www.yoctoproject.org/sources/  \n \
>     >     >               ftp://.*/.*http://www.yoctoproject.org/sources/  \n \
>     >     >               http://.*/.*http://www.yoctoproject.org/sources/  \n
>     \
>     >     >               https://.*/.*http://www.yoctoproject.org/sources/  \
>     n"
>     >     >
>     >     >
>     >     >         BB_FETCH_PREMIRRORONLY = "1"
>     >     >
>     >     >
>     >     >         but I still get the following errors:
>     >     >
>     >     >         ERROR: Function failed: Network access disabled through
>     >     BB_NO_NETWORK
>     >     >         (or set indirectly due to use of BB_FETCH_PREMIRRORONLY)
>     but
>     >     access
>     >     >         requested with command git fetch -f --prune git://
>     >     git.yoctoproject.org/
>     >     >         yocto-kernel-tools.git  <http://git.yoctoproject.org/
>     >     >         yocto-kernel-tools.git>  refs/*:refs/* (for url git://
>     >     >         git.yoctoproject.org/yocto-kernel-tools.git  <http://
>     >     >         git.yoctoproject.org/yocto-kernel-tools.git>)
>     >     >
>     >     >         ERROR: Logfile of failure stored in: /home/vitalife/yocto/
>     >     >         poky-dora-10.0.1/build/tmp/work/x86_64-linux/
>     kern-tools-native/
>     >     >         0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.4490
>     >     >
>     >     >         It seems that bitbake is still trying to access the server
>     with
>     >     git.
>     >     >
>     >     >         Any suggestion?
>     >     >
>     >     >         Thank you in advance
>     >     >
>     >     >         Federico
>     >     >
>     >     >
>     >     >
>     >     >
>     >     >
>     >     >     Remove
>     >     >     BB_FETCH_PREMIRRORONLY = "1"
>     >     >
>     >     >
>     >     >     --
>     >     >     Marco Cavallini | KOAN sas | Bergamo - Italia
>     >     >      embedded and real-time software engineering
>     >     >     Phone:+39-035-255.235 - Fax:+39-178-22.39.748
>     >     >           http://www.KoanSoftware.com
>     >     >     _______________________________________________
>     >     >     yocto mailing list
>     >     >     yocto@yoctoproject.org
>     >     >     https://lists.yoctoproject.org/listinfo/yocto
>     >     >
>     >     >
>     >
>     >     > _______________________________________________
>     >     > yocto mailing list
>     >     > yocto@yoctoproject.org
>     >     > https://lists.yoctoproject.org/listinfo/yocto
>     >
>     >
>     >
> 
> 

