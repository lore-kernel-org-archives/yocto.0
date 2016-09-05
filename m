Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25575E00E06; Sun,  4 Sep 2016 20:49:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7D04E00DF0
	for <yocto@yoctoproject.org>; Sun,  4 Sep 2016 20:49:30 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id vy10so8648889pac.0
	for <yocto@yoctoproject.org>; Sun, 04 Sep 2016 20:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=5lbr9G+P8oc/bHoocAwZG8nrj+Qz34izRi4pbF/4nwc=;
	b=r1Q4YTuNIqiciynzf9HJ+v+VNg25g50N++YUKmgFSvPmUJmcwvXEMf0YunV4sfNIdF
	aSl/U+NvU4judxXbmD6pqv6o1U21Tdnyz7q/o2QC1aIoAdec2Eqsn2BCPs6of4+HJHK+
	nJenYTSV75tQkYJRa8lWoAhseGpoKz/ce1cxjMvVnySWfi8YX/TdtFlDoQUNLGkqCWyo
	g/QQWa+z3MBaGa/WfAZJr2s41wcId2f7ZRD3MD3sxAdG5XDN8J2eF9b6DalaCENeipVv
	4raZsnK95vNBpwhU62FV+k7PAmbV+c4XewJQFUp+QaMu2P5Ym+0dYfG5l1TvBuK0Q4BP
	MmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=5lbr9G+P8oc/bHoocAwZG8nrj+Qz34izRi4pbF/4nwc=;
	b=Ok5fH48ezJlgrg2wIY6/TFJ98e+g/haF0dyMvDPxz2NPQtk+9Om290Hv5tWfDfKQ8x
	wdimwrJwzk8grxO5SSUh31E7GigdiYRI1CeQsMt7Lsl/dIgQVcz34GOZ5Qbl9mylDx8C
	masGbqm51cUKLheQrIjWRZKkjqW5MAWf3NtHME/wliUojF1P11AWsfCfzId9Rku+GNMA
	t5mxifWBM7Qt2JZ45tioqJR4Xo7nMyru2o8mxMSTQP+KmnIwdgEwIUp56fHIT18QOEEt
	YeHSDxoT9/9+udG2FunI/mjUgJw2kjeL2KaPme+L5PuDlO/YdK75PTzc5tCrHLB4b++X
	0xgw==
X-Gm-Message-State: AE9vXwNSYkXw9azJUIjor5e/8S0EkHazNJtwjk/aHaPCJIx+HtHxrNqZbRBtkInSPqIb5A==
X-Received: by 10.66.151.173 with SMTP id ur13mr28831692pab.70.1473047370205; 
	Sun, 04 Sep 2016 20:49:30 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:f54a:22d8:ba7e:d57c?
	([2601:202:4001:9ea0:f54a:22d8:ba7e:d57c])
	by smtp.gmail.com with ESMTPSA id
	cp11sm29998530pac.28.2016.09.04.20.49.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 04 Sep 2016 20:49:29 -0700 (PDT)
To: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>, yocto@yoctoproject.org
References: <1472712132-1823-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <cea0cc0b-eedb-cff9-db4e-f839be442c98@gmail.com>
Date: Sun, 4 Sep 2016 20:49:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1472712132-1823-1-git-send-email-wangxin2015.fnst@cn.fujitsu.com>
Subject: Re: [meta-security][PATCH] samhain-client: 4.1.4 -> 4.1.5
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
X-List-Received-Date: Mon, 05 Sep 2016 03:49:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 08/31/2016 11:42 PM, Wang Xin wrote:
> Upgrade samhain-client from 4.1.4 to 4.1.5.

Is there a reason why the server was not updated?

- armin
>
> Signed-off-by: Wang Xin <wangxin2015.fnst@cn.fujitsu.com>
> ---
>   .../samhain/{samhain-client_4.1.4.bb => samhain-client_4.1.5.bb}      | 0
>   recipes-security/samhain/samhain.inc                                  | 4 ++--
>   2 files changed, 2 insertions(+), 2 deletions(-)
>   rename recipes-security/samhain/{samhain-client_4.1.4.bb => samhain-client_4.1.5.bb} (100%)
>
> diff --git a/recipes-security/samhain/samhain-client_4.1.4.bb b/recipes-security/samhain/samhain-client_4.1.5.bb
> similarity index 100%
> rename from recipes-security/samhain/samhain-client_4.1.4.bb
> rename to recipes-security/samhain/samhain-client_4.1.5.bb
> diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
> index 907f431..5bf2ee7 100644
> --- a/recipes-security/samhain/samhain.inc
> +++ b/recipes-security/samhain/samhain.inc
> @@ -9,8 +9,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
>   	   file://${INITSCRIPT_NAME}.default \
>   	  "
>   
> -SRC_URI[md5sum] = "1ab697b7000d0a272d9ade05bb1bc6e0"
> -SRC_URI[sha256sum] = "32ee7477af11d9f2f64f30b9cb316c351897c1c994c7b98b0ef17fc0ca5e1d1a"
> +SRC_URI[md5sum] = "bdb6d2653d706f3180e37ef3d95c824d"
> +SRC_URI[sha256sum] = "4ff4c38765c942abbaac2577df4c8c4940482a1bffc4a719f181c4fca6f173a7"
>   
>   S = "${WORKDIR}/samhain-${PV}"
>   


