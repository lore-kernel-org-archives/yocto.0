Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 106FEE00E49; Wed, 21 Feb 2018 18:36:16 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2438DE00B1A
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 18:36:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w1M2Zs7N008763
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 18:35:54 -0800 (PST)
Received: from [128.224.163.178] (128.224.163.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Wed, 21 Feb 2018 18:35:53 -0800
To: <yocto@yoctoproject.org>
References: <20180207064925.2043-1-kai.kang@windriver.com>
From: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <2ca97237-9656-4fce-a875-97153c093b9b@windriver.com>
Date: Thu, 22 Feb 2018 10:34:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20180207064925.2043-1-kai.kang@windriver.com>
Subject: Re: [meta-selinux][PATCH 1/2] iproute2: remove workaround for selinux
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
X-List-Received-Date: Thu, 22 Feb 2018 02:36:16 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2018年02月07日 14:49, kai.kang@windriver.com wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> After upgrade to 4.14.1, iproute2 changes it way to create configure output
> file config.mk which is also renamed from 'Config'. With RSS, the workaround
> for iproute2 is not needed any more.

Ping.

--Kai

>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>   recipes-connectivity/iproute2/iproute2_%.bbappend  | 2 +-
>   recipes-connectivity/iproute2/iproute2_selinux.inc | 5 -----
>   2 files changed, 1 insertion(+), 6 deletions(-)
>   delete mode 100644 recipes-connectivity/iproute2/iproute2_selinux.inc
>
> diff --git a/recipes-connectivity/iproute2/iproute2_%.bbappend b/recipes-connectivity/iproute2/iproute2_%.bbappend
> index 7719d3b..b01ad25 100644
> --- a/recipes-connectivity/iproute2/iproute2_%.bbappend
> +++ b/recipes-connectivity/iproute2/iproute2_%.bbappend
> @@ -1 +1 @@
> -require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
> +inherit ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'with-selinux', '', d)}
> diff --git a/recipes-connectivity/iproute2/iproute2_selinux.inc b/recipes-connectivity/iproute2/iproute2_selinux.inc
> deleted file mode 100644
> index b0a7ffe..0000000
> --- a/recipes-connectivity/iproute2/iproute2_selinux.inc
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -inherit with-selinux
> -
> -do_configure_append() {
> -	sed -i 's/\(HAVE_SELINUX:=\).*/\1y/' ${B}/Config
> -}


-- 
Regards,
Neil | Kai Kang


