Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6645E0077E; Wed, 11 Mar 2015 05:22:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3268CE0076F
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 05:22:29 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t2BCMKYo026408
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Mar 2015 05:22:21 -0700 (PDT)
Received: from server.local (128.224.20.155) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 11 Mar 2015 05:22:20 -0700
Message-ID: <5500337B.4060002@windriver.com>
Date: Wed, 11 Mar 2015 08:22:19 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>,
	<openembedded-core@lists.openembedded.org>, <yocto@yoctoproject.org>
References: <1426067538-21975-1-git-send-email-Alexandru.Vaduva@enea.com>
In-Reply-To: <1426067538-21975-1-git-send-email-Alexandru.Vaduva@enea.com>
Subject: Re: [PATCH] linux-yocto-rt: removed duplicated line
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
X-List-Received-Date: Wed, 11 Mar 2015 12:22:30 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-11 5:52 AM, Alexandru.Vaduva wrote:
> Seemed that the recipe contained redundant information.

Indeed!

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>

>
> Signed-off-by: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
> ---
>   meta/recipes-kernel/linux/linux-yocto-rt_3.14.bb | 1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_3.14.bb b/meta/recipes-kernel/linux/linux-yocto-rt_3.14.bb
> index 7dbf82c..bcfd754 100644
> --- a/meta/recipes-kernel/linux/linux-yocto-rt_3.14.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto-rt_3.14.bb
> @@ -23,5 +23,4 @@ COMPATIBLE_MACHINE = "(qemux86|qemux86-64|qemuarm|qemuppc|qemumips)"
>   KERNEL_EXTRA_FEATURES ?= "features/netfilter/netfilter.scc features/taskstats/taskstats.scc"
>   KERNEL_FEATURES_append = " ${KERNEL_EXTRA_FEATURES}"
>   KERNEL_FEATURES_append_qemux86=" cfg/sound.scc cfg/paravirt_kvm.scc"
> -KERNEL_FEATURES_append_qemux86=" cfg/sound.scc cfg/paravirt_kvm.scc"
>   KERNEL_FEATURES_append_qemux86-64=" cfg/sound.scc"
>


