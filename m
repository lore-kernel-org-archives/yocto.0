Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93150E00B01; Tue, 25 Apr 2017 18:29:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A37E00867
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 18:29:13 -0700 (PDT)
Received: by mail-pf0-f182.google.com with SMTP id a188so34229839pfa.0
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 18:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=i8ZZD19XWaCZahValZkvh7GtS4zLzF4soi4Uaf6V9gg=;
	b=0b7oj5CLbM8JcqRpqhOkZ2SguKF19B4eC1o/uS4mxf2YV9mtJsvwZ9qcJONx27eAWh
	JDzutN5jPX0BQ+uEWLQVuzYWHjsrIj/SzSDQbs67iJMZ7W3YFQby+oqjuR/2mBZrK/Cp
	syrvXNE5yXfxWKK1UjIRgrXKpVHkIvhoCvYFGtPTmyS21WMUniVSR9/rYFNsdgQrzfoy
	BsgtCMw/kXroj65c98ovHLf0yI0SALLhlwwyawVPDt//cF5yvg5Fd6CNdcCkgrjbMT13
	YM3pQ9YrIBZFa1KqKL15HIU2g2op2mnla1+qmQXKv276HJgXGWseE7mqqJpOxt74dKbW
	rEww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=i8ZZD19XWaCZahValZkvh7GtS4zLzF4soi4Uaf6V9gg=;
	b=TnrHloVZBk0M9vRFN2rj6/Q05TZgahdKuYM5pNO2VATmb3VMNOZY+HmzZy3r43IXIW
	sA8B8K3NprqIoUlCxhda/hnN/aHufjwnX6tqzt84isCBN1SkxsgBC8bJEeunzg4Jougt
	J97DRKsaN4AU7dxsN+eYsRCpn7yny9b/1Y050zhMb3yIdS63hpLp2V8NotMebE3q5Gt5
	ydQGQppMVMkLiiT6JHTeWkU8JnMn3GsiaTmaTTs2jY2rtFd0wKkyBwu2E/mrDlLTqXwv
	pE2420yk+5gI26/maYlLiL9dTqZa1276aY1e+TQ7yD5tKzlkXM9ddbe+esM9fOzbQJif
	5m6A==
X-Gm-Message-State: AN3rC/6xHi3uRlRsDft4T3Ngh89J7jGUBfp7+UotutMbsBmoGadVrE9T
	AkQth08agoCWqdYsKCMoPQ==
X-Received: by 10.98.71.65 with SMTP id u62mr29935221pfa.180.1493170153084;
	Tue, 25 Apr 2017 18:29:13 -0700 (PDT)
Received: from [10.43.100.166] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156]) by smtp.gmail.com with ESMTPSA id
	f6sm38514982pfe.57.2017.04.25.18.29.11 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Apr 2017 18:29:12 -0700 (PDT)
To: yocto@yoctoproject.org
References: <20170425091402.29125-1-patrick.ohly@intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <9d6b103f-59fb-f534-f75e-dc137a3c6711@mvista.com>
Date: Tue, 25 Apr 2017 18:29:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170425091402.29125-1-patrick.ohly@intel.com>
Subject: Re: [meta-security][PATCH 1/1] swtpm-wrappers: fix naming convention violation
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
X-List-Received-Date: Wed, 26 Apr 2017 01:29:17 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 04/25/2017 02:14 AM, Patrick Ohly wrote:
> Native recipes must be called <foo>-native. This is more than just a
> recommendation, there's actual code which checks for the suffix.
>
> Not following that rule broke swtpm-wrappers when using the "usrmerge"
> DISTRO_FEATURE, because the code in native.bbclass which cleans up
> DISTRO_FEATURES for native recipes was skipped and thus swtpm-wrappers
> ended up using different paths than the other native recipes.
>
> Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>

merged.

thanks,
Armin
> ---
>   recipes-tpm/swtpm/{swtpm-wrappers.bb => swtpm-wrappers-native.bb} | 0
>   1 file changed, 0 insertions(+), 0 deletions(-)
>   rename recipes-tpm/swtpm/{swtpm-wrappers.bb => swtpm-wrappers-native.bb} (100%)
>
> diff --git a/recipes-tpm/swtpm/swtpm-wrappers.bb b/recipes-tpm/swtpm/swtpm-wrappers-native.bb
> similarity index 100%
> rename from recipes-tpm/swtpm/swtpm-wrappers.bb
> rename to recipes-tpm/swtpm/swtpm-wrappers-native.bb


