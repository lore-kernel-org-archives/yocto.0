Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69A1AE0091D; Fri, 15 Sep 2017 13:44:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8E00E007EF
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 13:44:07 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id r71so2003503pfe.12
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 13:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=wXvK9LGePzERTm4WmMV35mtvGEpnXrzad4zmUQFxFbQ=;
	b=lCQ1+vID6NCEl5iNArRG3NPKTvTpPR8my72/1ZEeWtxHpT+gTkqCLeYTuHZcj2oiuX
	tGBLT1nMJkmWbZUZzrVl8U0A4hNwi8kLbNrfgknDGSIDzquD4kSPnJNpC0mfzSryJ8BU
	sCi9QYrZMTzDiSMYBeuuwWwwVWzbmyawu5l1Hbi3ULfSlexdTLUuiQe/wlBKE00q3JfW
	Wq4Pi+AecZUua6gnV1sYJuFyacKeF61vmF1ozbeWBHy2wIeepfvhVgXu9jHdkAZhPrqz
	ix/1anjwlAY2vdIjHgwQ8C1u5F5X6iM/ShmfET9xR3rV0ciUQS9kqf1HcVTj1s0TstZb
	ZCQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=wXvK9LGePzERTm4WmMV35mtvGEpnXrzad4zmUQFxFbQ=;
	b=FV5o1J463HqZ6ztgi1ypgLLVyrlA9f1v9Es86TBbU/1xVLlTQas2/DDDY7XqwHXb/Y
	wBO2rvjpb/ZkmkBjixlNffKHbYapoFLgCDHZIJ+Hc7jLVgEFjW1xjv53xC+y6sDihhKX
	Yk5Nhq04ic9q/hRH125aziw3HEgAODAD1QnKyBN3b2lNPfipFat7VLYjNwgXvkGOIZup
	WTib4iNEhWeKHOiqn0uvwdq9xZQJ00eKTkHwLp/2c3GOXwKFYPRPCH7wQVHHGm0qujH8
	WgWqKavHee/5kKdlZR37VLZUl+3YJrcEHcpBGAJkKxdvNuu55QpEX9tHpNszLbBBcefA
	pPww==
X-Gm-Message-State: AHPjjUjIFciEoCzra2SztANGmyUHEVhIWnJeIujOZF6+DEiNtJyaszDz
	7zjjG0JwqYXH32Eoam+iug==
X-Google-Smtp-Source: AOwi7QDej6elQ7KwTlQpcvm3vo3G3ut6hxCvSMXAfDWjjPD2fg/XnguoV8o7jrMSHCvISPVkzxzAFg==
X-Received: by 10.84.253.23 with SMTP id z23mr10920681pll.210.1505508245663;
	Fri, 15 Sep 2017 13:44:05 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:8059:611f:1111:1f0c?
	([2601:202:4001:9ea0:8059:611f:1111:1f0c])
	by smtp.gmail.com with ESMTPSA id i3sm3731114pgs.23.2017.09.15.13.44.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Sep 2017 13:44:04 -0700 (PDT)
To: jackie.huang@windriver.com, yocto@yoctoproject.org
References: <cover.1505460823.git.jackie.huang@windriver.com>
From: akuster <akuster@mvista.com>
Message-ID: <3c683b20-00ac-3361-da1b-bcef94668f9e@mvista.com>
Date: Fri, 15 Sep 2017 13:44:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <cover.1505460823.git.jackie.huang@windriver.com>
Subject: Re: [meta-security][PATCH 0/4] samhain: fix several issues
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
X-List-Received-Date: Fri, 15 Sep 2017 20:44:08 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 09/15/2017 12:37 AM, jackie.huang@windriver.com wrote:
> From: Jackie Huang <jackie.huang@windriver.com>
merged,
Thanks
- armin
> --
> The following changes since commit b646d8fdc08f8aac896a09bda0e16bac39e87612:
>
>    nmap: update to 7.60 (2017-09-13 07:36:44 -0700)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib.git jhuang0/d_samhain_170915_0
>    http://git.pokylinux.org/cgit.cgi//log/?h=jhuang0/d_samhain_170915_0
>
> Jackie Huang (4):
>    samhain: depends on attr when selinux is enabled
>    samhain: fix for the PACKAGECONFIG
>    samhain: avoid searching host dir for postgresql
>    samhain: fix QA issue for GNU_HASH
>
>   ...n-add-LDFLAGS-variable-for-samhain_setpwd.patch |  28 +++++
>   ...mhain-avoid-searching-host-for-postgresql.patch | 134 +++++++++++++++++++++
>   recipes-security/samhain/samhain.inc               |  28 +++--
>   3 files changed, 178 insertions(+), 12 deletions(-)
>   create mode 100644 recipes-security/samhain/files/samhain-add-LDFLAGS-variable-for-samhain_setpwd.patch
>   create mode 100644 recipes-security/samhain/files/samhain-avoid-searching-host-for-postgresql.patch
>


