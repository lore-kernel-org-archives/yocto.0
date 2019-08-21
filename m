Return-Path: <Hongzhi.Song@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EACABE00D7E; Tue, 20 Aug 2019 20:11:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 712B3E00D68
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 20:11:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x7L3BcNX019157
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Aug 2019 20:11:38 -0700 (PDT)
Received: from [128.224.162.188] (128.224.162.188) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Tue, 20 Aug 2019 20:11:37 -0700
To: Armin Kuster <akuster808@gmail.com>, <yocto@yoctoproject.org>
References: <20190813235440.16385-1-akuster808@gmail.com>
	<20190813235440.16385-3-akuster808@gmail.com>
From: "Hongzhi, Song" <hongzhi.song@windriver.com>
Message-ID: <303ae12d-8834-84ef-e54d-91faa81d1551@windriver.com>
Date: Wed, 21 Aug 2019 11:11:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813235440.16385-3-akuster808@gmail.com>
X-Originating-IP: [128.224.162.188]
Subject: Re: [meta-security][PATCH 3/3] linux-stable/5.2: add stable bbappend
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
X-List-Received-Date: Wed, 21 Aug 2019 03:11:41 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Armin,

Do you know where is linux-stable_5.2.bb?

Thanks,

--Hongzhi


On 8/14/19 7:54 AM, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>   recipes-kernel/linux/linux-stable_5.2.bbappend | 4 ++++
>   1 file changed, 4 insertions(+)
>   create mode 100644 recipes-kernel/linux/linux-stable_5.2.bbappend
>
> diff --git a/recipes-kernel/linux/linux-stable_5.2.bbappend b/recipes-kernel/linux/linux-stable_5.2.bbappend
> new file mode 100644
> index 0000000..76b5df5
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-stable_5.2.bbappend
> @@ -0,0 +1,4 @@
> +KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
> +KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
> +KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "yama", " features/yama/yama.scc", "" ,d)}"
> +

