Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5851E00D2D; Mon,  9 Oct 2017 02:33:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20CF0E00D1B
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 02:33:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v999XOgK002224
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 9 Oct 2017 02:33:24 -0700 (PDT)
Received: from [128.224.162.178] (128.224.162.178) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 9 Oct 2017 02:33:23 -0700
To: <yocto@yoctoproject.org>
References: <1506665400-20424-1-git-send-email-zhe.he@windriver.com>
From: He Zhe <zhe.he@windriver.com>
Message-ID: <6597b930-6813-2d89-2723-a38047cc99f6@windriver.com>
Date: Mon, 9 Oct 2017 17:31:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506665400-20424-1-git-send-email-zhe.he@windriver.com>
X-Originating-IP: [128.224.162.178]
Subject: Re: [meta-cgl][PATCH] kernel: Fix config warning for CONFIG_I2C_ALGOBIT
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
X-List-Received-Date: Mon, 09 Oct 2017 09:33:25 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Ping.

Zhe

On 2017年09月29日 14:10, zhe.he@windriver.com wrote:
> From: He Zhe <zhe.he@windriver.com>
>
> CONFIG_DRM in yocto-kernel-cache selects CONFIG_I2C_ALGOBIT as "y".
> Change CONFIG_I2C_ALGOBIT 00026-lm-sensors.cfg from "m" to "y" to
> avoid following config conflict.
>
> ---------- CONFIG_I2C_ALGOBIT -----------------
> Config: CONFIG_I2C_ALGOBIT
> From: /PATH/TO/i915.cfg /PATH/TO/00026-lm-sensors.cfg
> Requested value:  CONFIG_I2C_ALGOBIT=m
> Actual value:     CONFIG_I2C_ALGOBIT=y
>
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>  meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
> index f28bdf6..71c4cad 100644
> --- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
> +++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
> @@ -1,5 +1,5 @@
>  CONFIG_I2C_SMBUS=m
> -CONFIG_I2C_ALGOBIT=m
> +CONFIG_I2C_ALGOBIT=y
>  CONFIG_I2C_ALGOPCA=m
>  CONFIG_I2C_ALI1535=m
>  CONFIG_I2C_ALI1563=m


