Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96663E00D86; Wed, 16 Aug 2017 04:14:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99697E009A4
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 04:14:04 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Aug 2017 04:13:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,382,1498546800"; d="scan'208";a="300792864"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.31.202])
	by fmsmga004.fm.intel.com with ESMTP; 16 Aug 2017 04:13:52 -0700
To: "Graydon, Tracy" <tracy.graydon@intel.com>, yocto@yoctoproject.org
References: <1502833986-2237-1-git-send-email-tracy.graydon@intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <70c6cb95-09e1-6451-97d9-30dd820f61c6@linux.intel.com>
Date: Wed, 16 Aug 2017 12:13:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1502833986-2237-1-git-send-email-tracy.graydon@intel.com>
Subject: Re: [yocto-autobuilder][PATCH] /bin/checkvnc
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
X-List-Received-Date: Wed, 16 Aug 2017 11:14:06 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Thanks, queued for merge (after tweaking the commit message some)

Joshua

On 15/08/17 22:53, Graydon, Tracy wrote:
> [Yocto #11897]
> 
> The checkvnc script uses deprecated netstat command for finding vnc sessions.
> This breaks on Centos, and will break on other OS as it is removed in the
> future.
> 
> Drop the dependency on netstat and instead grep /proc/net/tcp for
> active sessions on 5901 port.
> 
> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
> ---
>   bin/checkvnc | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/bin/checkvnc b/bin/checkvnc
> index d934dfa..11e03bb 100755
> --- a/bin/checkvnc
> +++ b/bin/checkvnc
> @@ -2,7 +2,7 @@
>   #
>   # check if vnc server is running, and if not, cleanup and restart
>   #
> -netstat -tnl | grep :5901 > /dev/null
> +grep ':170D' /proc/net/tcp > /dev/null
>   if [ $? != 0 ]; then
>       echo "Xvnc not running, attempting restart"
>       vncserver -kill :1
> 

