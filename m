Return-Path: <martin@geanix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13726E00E7D; Mon,  9 Jul 2018 23:10:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.hundeboll.net (mail.hundeboll.net [88.198.92.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B01E00E7D
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 23:10:07 -0700 (PDT)
Received: from [10.0.0.161] (unknown [85.184.147.232])
	by mail.hundeboll.net (Postfix) with ESMTPSA id 36F001C0986;
	Tue, 10 Jul 2018 08:10:06 +0200 (CEST)
To: Aaron Chan <aaron.chun.yew.chan@intel.com>,
	richard.purdie@linuxfoundation.org, yocto@yoctoproject.org,
	ross.burton@intel.com, paul.eggleton@intel.com
References: <1531192694-10351-1-git-send-email-aaron.chun.yew.chan@intel.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin@geanix.com>
Message-ID: <e26b7285-187b-c768-3490-af62f61ee78c@geanix.com>
Date: Tue, 10 Jul 2018 08:10:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <1531192694-10351-1-git-send-email-aaron.chun.yew.chan@intel.com>
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
X-List-Received-Date: Tue, 10 Jul 2018 06:10:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Aron,

On 2018-07-10 05:18, Aaron Chan wrote:
> This patch is to enable auto-assignments buildbot URL based on Hosts FQDN.
> The socket module allows the retrieval on FQDN and constructs the entire
> URL by default, this default settings can be overwritten in c['buildbotURL']
> based on local administrator preferences.
> 
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>   master.cfg | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/master.cfg b/master.cfg
> index fca80d2..49ddeb4 100644
> --- a/master.cfg
> +++ b/master.cfg
> @@ -4,6 +4,7 @@
>   import os
>   import imp
>   import pkg_resources
> +import socket
>   
>   from buildbot.plugins import *
>   from buildbot.plugins import db
> @@ -55,6 +56,7 @@ imp.reload(services)
>   imp.reload(www)
>   
>   c = BuildmasterConfig = {}
> +url = os.path.join('http://', socket.getfqdn() + ':' + str(config.web_port) + '/')

Why use `os.path.join()` here? It isn't supposed to be used to construct 
url's, and is overkill for this case, and you'd end up with "http:///...".

// Martin

>   
>   # Disable usage reporting
>   c['buildbotNetUsageData'] = None
> @@ -76,6 +78,7 @@ c['www'] = www.www
>   c['workers'] = workers.workers
>   
>   c['title'] = "Yocto Autobuilder"
> -c['titleURL'] = "https://autobuilder.yoctoproject.org/main/"
> +c['titleURL'] = url
>   # visible location for internal web server
> -c['buildbotURL'] = "https://autobuilder.yoctoproject.org/main/"
> +# - Default c['buildbotURL'] = "https://autobuilder.yoctoproject.org/main/"
> +c['buildbotURL'] = url
> 

-- 
Kind regards,
Martin Hundebøll
Embedded Linux Consultant

+45 61 65 54 61
martin@geanix.com

Geanix IVS
DK39600706

