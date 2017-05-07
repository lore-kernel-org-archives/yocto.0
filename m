Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BDE3E009C2; Sun,  7 May 2017 15:44:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BFF0E00524
	for <yocto@yoctoproject.org>; Sun,  7 May 2017 15:44:53 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id w69so1751135pfk.1
	for <yocto@yoctoproject.org>; Sun, 07 May 2017 15:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=y+wGWAWGgeIKu+RYtGCBIjj7MPH4eHBDtScS9CaD02s=;
	b=Gbzh/jK9LlcDB7XYoXxZyPUL7LeKXDssW0r8lTtFz7loduTF1+qNjiSvK35CQ0qFbL
	7jEqXr714TzYPM+X4uKMdxDfDRmXM/eajO6Mg3qC/2GZGnStp2gflOYag0oich5vjCZw
	KJcdCDvgDWYM5A02ogbYLDT6hF7hEqAbnKvTzJ4RgrFgMmAEiXWZ0FA1yQ+YsIq2C9bB
	35idvXgBXvARaua/n8YRDyAX8UfknJiTT+KQzP4VoCpPUxaGqNEUMQoJ9As+sBUdPv3V
	j/maeCJGGs3VpivpMzwzrpAFnx+FtzqnWcMzg0rMMf4S04mPb5gjATai5pOUuktvl1Fz
	h01A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=y+wGWAWGgeIKu+RYtGCBIjj7MPH4eHBDtScS9CaD02s=;
	b=sf6UvTnASrg4R2uaAbQ6OqiBfJ2HzHj0Y79GlleBVKGjGcqeYLqMIEV0ngW7zqLTwA
	/bbMmwRu5pGYmos6yLkok7mQpO/w2NZgVMqTiUfBils6EXOQCAnq+YeG7AEo7hCw0xZ8
	Ot7JfYITZTBShDsyhWwwI8ZCAlDUAGGsqgmucoenIxuQ9oZkgTJzgtpOu+bsg+IY5Z+n
	Pxo1O5oenpQMqJg7ji1LHohY/y33aa8comNpfhoUV4LdfEhmCBLSKDFuhQn9jpdLI3Ad
	k6qruJJikOissqneeoOE+y4x77h7QdpJXyrSaXjSqfOa1O6KC8uSlX8V30L7wwEjrdDF
	nWEA==
X-Gm-Message-State: AODbwcCtnTq4+qDdsEkI4cLVqZmI5Gv1K1wRo8aR3EA3c9muaT5HFCTf
	/KQet7KbZ6FT54y5zCU=
X-Received: by 10.99.181.78 with SMTP id u14mr9508471pgo.102.1494197092840;
	Sun, 07 May 2017 15:44:52 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:e3df:bf0a:9f90:498e?
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	x5sm21379790pfd.94.2017.05.07.15.44.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 07 May 2017 15:44:52 -0700 (PDT)
To: yocto@yoctoproject.org
References: <20170427161431.43429-1-patrick.ohly@intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <8e8ba6fb-7ca9-a0f6-43d6-d51b6edb5bcf@gmail.com>
Date: Sun, 7 May 2017 15:44:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170427161431.43429-1-patrick.ohly@intel.com>
Subject: Re: [meta-security][PATCH 1/1] swtpm-wrappers-native.bb: need netstat
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
X-List-Received-Date: Sun, 07 May 2017 22:44:57 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 04/27/2017 09:14 AM, Patrick Ohly wrote:
> netstat from net-tools-native is needed for swtpm_setup.sh, which uses
> it to check whether the swtpm daemon has started. The scripts hangs in
> a loop during startup when netstat is missing.
>
> Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
merged

thanks
> ---
>   recipes-tpm/swtpm/swtpm-wrappers-native.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-tpm/swtpm/swtpm-wrappers-native.bb b/recipes-tpm/swtpm/swtpm-wrappers-native.bb
> index 0af1db6..644f3ac 100644
> --- a/recipes-tpm/swtpm/swtpm-wrappers-native.bb
> +++ b/recipes-tpm/swtpm/swtpm-wrappers-native.bb
> @@ -1,6 +1,6 @@
>   SUMMARY = "SWTPM - OpenEmbedded wrapper scripts for native swtpm tools"
>   LICENSE = "MIT"
> -DEPENDS = "swtpm-native tpm-tools-native"
> +DEPENDS = "swtpm-native tpm-tools-native net-tools-native"
>   
>   inherit native
>   


