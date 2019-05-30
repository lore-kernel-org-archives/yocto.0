Return-Path: <Hongzhi.Song@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E956BE00D4F; Wed, 29 May 2019 19:26:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD448E00D4C
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 19:26:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x4U2QheX006852
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 19:26:43 -0700 (PDT)
Received: from [128.224.162.188] (128.224.162.188) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Wed, 29 May 2019 19:26:43 -0700
To: <yocto@yoctoproject.org>
References: <1559183012-237328-1-git-send-email-hongzhi.song@windriver.com>
From: "Hongzhi, Song" <hongzhi.song@windriver.com>
Message-ID: <271ecb4e-c9f9-3215-30a8-c3adc8cc04ba@windriver.com>
Date: Thu, 30 May 2019 10:26:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1559183012-237328-1-git-send-email-hongzhi.song@windriver.com>
X-Originating-IP: [128.224.162.188]
Subject: Re: [PATCH] umip: remove umip bbappend
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
X-List-Received-Date: Thu, 30 May 2019 02:26:45 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

This patch is for meta-cgl

Thanks,

--Hongzhi



On 5/30/19 10:23 AM, Hongzhi.Song wrote:
> umip has been removed, so its bbappend should be removed too.
>
> Signed-off-by: Hongzhi.Song <hongzhi.song@windriver.com>
> ---
>   meta-cgl-common/recipes-extended/umip/umip_%.bbappend | 1 -
>   1 file changed, 1 deletion(-)
>   delete mode 100644 meta-cgl-common/recipes-extended/umip/umip_%.bbappend
>
> diff --git a/meta-cgl-common/recipes-extended/umip/umip_%.bbappend b/meta-cgl-common/recipes-extended/umip/umip_%.bbappend
> deleted file mode 100644
> index 2858472..0000000
> --- a/meta-cgl-common/recipes-extended/umip/umip_%.bbappend
> +++ /dev/null
> @@ -1 +0,0 @@
> -PARALLEL_MAKE = ""

