Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E10FE00B67; Thu,  1 Jun 2017 09:03:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBD4EE00992
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 09:03:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v51G3BIw010932
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Jun 2017 09:03:11 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 1 Jun 2017 09:03:11 -0700
To: Ismo Puustinen <ismo.puustinen@intel.com>, <yocto@yoctoproject.org>
References: <20170601130913.30155-1-ismo.puustinen@intel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <e68252f8-067b-1bf9-7b1f-2004007c290e@windriver.com>
Date: Thu, 1 Jun 2017 12:03:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <20170601130913.30155-1-ismo.puustinen@intel.com>
Subject: Re: [PATCH] nftables: add more configuration options.
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
X-List-Received-Date: Thu, 01 Jun 2017 16:03:13 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 06/01/2017 09:09 AM, Ismo Puustinen wrote:
> Add support for sets and IPv4 masquarade.

This should go to the linux-yocto mailing list (and preferably
cc' me), but I noticed this and it looks fine to me.

I've now queued it with some other config changes that will go
out shortly.

Bruce

> 
> Signed-off-by: Ismo Puustinen <ismo.puustinen@intel.com>
> ---
>   features/nf_tables/nf_tables.cfg | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/features/nf_tables/nf_tables.cfg b/features/nf_tables/nf_tables.cfg
> index 5e085ce..5f518f1 100644
> --- a/features/nf_tables/nf_tables.cfg
> +++ b/features/nf_tables/nf_tables.cfg
> @@ -3,9 +3,15 @@ CONFIG_NF_TABLES_INET=m
>   CONFIG_NFT_EXTHDR=m
>   CONFIG_NFT_META=m
>   CONFIG_NFT_CT=m
> +CONFIG_NFT_SET_RBTREE=m
> +CONFIG_NFT_SET_HASH=m
>   CONFIG_NFT_RBTREE=m
>   CONFIG_NFT_HASH=m
>   CONFIG_NFT_COUNTER=m
> +CONFIG_NFT_MASQ=m
> +CONFIG_NFT_MASQ_IPV4=m
> +CONFIG_NFT_REDIR=m
> +CONFIG_NFT_REDIR_IPV4=m
>   CONFIG_NFT_LOG=m
>   CONFIG_NFT_LIMIT=m
>   CONFIG_NFT_NAT=m
> @@ -17,6 +23,7 @@ CONFIG_NF_TABLES_IPV4=m
>   CONFIG_NFT_CHAIN_ROUTE_IPV4=m
>   CONFIG_NFT_CHAIN_NAT_IPV4=m
>   CONFIG_NFT_REJECT_IPV4=m
> +CONFIG_NFT_REJECT_IPV6=m
>   CONFIG_NF_TABLES_ARP=m
>   CONFIG_NF_TABLES_IPV6=m
>   CONFIG_NFT_CHAIN_ROUTE_IPV6=m
> 


