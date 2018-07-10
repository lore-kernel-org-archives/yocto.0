Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1A30E00E73; Tue, 10 Jul 2018 01:55:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D89E009B9
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 01:55:19 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w6A8tE6P019959
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 10 Jul 2018 09:55:15 +0100
Message-ID: <65331fd8bde273c5f69c22242c1c5b7b7574ad0e.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Aaron Chan <aaron.chun.yew.chan@intel.com>, yocto@yoctoproject.org,
	ross.burton@intel.com, paul.eggleton@intel.com
Date: Tue, 10 Jul 2018 09:55:14 +0100
In-Reply-To: <1531192694-10351-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1531192694-10351-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-autobuilder] master.cfg: Defaults autobuilder URL based on FQDN
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
X-List-Received-Date: Tue, 10 Jul 2018 08:55:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-07-10 at 11:18 +0800, Aaron Chan wrote:
> This patch is to enable auto-assignments buildbot URL based on Hosts FQDN.
> The socket module allows the retrieval on FQDN and constructs the entire
> URL by default, this default settings can be overwritten in c['buildbotURL']
> based on local administrator preferences.
> 
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  master.cfg | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/master.cfg b/master.cfg
> index fca80d2..49ddeb4 100644
> --- a/master.cfg
> +++ b/master.cfg
> @@ -4,6 +4,7 @@
>  import os
>  import imp
>  import pkg_resources
> +import socket
>  
>  from buildbot.plugins import *
>  from buildbot.plugins import db
> @@ -55,6 +56,7 @@ imp.reload(services)
>  imp.reload(www)
>  
>  c = BuildmasterConfig = {}
> +url = os.path.join('http://', socket.getfqdn() + ':' + str(config.web_port) + '/')
>  
>  # Disable usage reporting
>  c['buildbotNetUsageData'] = None
> @@ -76,6 +78,7 @@ c['www'] = www.www
>  c['workers'] = workers.workers
>  
>  c['title'] = "Yocto Autobuilder"
> -c['titleURL'] = "https://autobuilder.yoctoproject.org/main/"
> +c['titleURL'] = url
>  # visible location for internal web server
> -c['buildbotURL'] = "https://autobuilder.yoctoproject.org/main/"
> +# - Default c['buildbotURL'] = "https://autobuilder.yoctoproject.org/main/"
> +c['buildbotURL'] = url

I appreciate what you're trying to do here and make this autoconfigure.
 Unfortunately the urls can't always be figured out this way, the above
for example drops the "/main/" part, without which the autobuilder
won't work. The server can be behind forwarding or proxies/firewalls
which also make this problematic.

I also agree with Martin that using os.path.join() in a url is
incorrect, its not meant for urls.

Most people setting up an autobuilder will need to have some
customisations on top of yocto-autobuilder2, I don't think its possible
to avoid that. I'd therefore perhaps try and concentrate on having key
modules like the lava integration available and accept there will
always be some local configuration the end user needs to make to things
like the URL details? Even the main autobuilder adds in passwords and
some other local config on top of the stardard repo...

Cheers,

Richard


