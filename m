Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E4B7E00D77; Thu, 17 Oct 2019 15:53:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E638AE00D5F
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 15:53:02 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id j11so1857107plk.3
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 15:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2PD8a0pS7Fmq3nlT4Xx5X8+E85cJ5Orh9QG2IJQb3Yw=;
	b=qCbkSjp73hX8kabI4MK4RqIGY2U0MQhLNDiQ7YzXK0bBstJpSmpF4c6vymP5+WLCKe
	tX4pK3i8K1mGTaeRGmhX4mVQdF9fc1HZDRKsk9lWENnmaNLSoqru1nG78yO7wA/zleMy
	R8lW/T6OuE/cPVx4nr63rTlZVS6mIYNAqzbJw2pG9xf7nLCX1X2re07gmnna0DQP1fVx
	bL95Vd6Gbgf7JRhgg+9mWcric6uCajqe4480xBIXGR9QmT7d5UZz2N71fJiQnmWged+x
	BM5G2gvRlM8L1kmb3gaks2LxwVTRRScpMM14v0MTbcw1jCxUiQlpAiCxIrITDWjMqeFc
	SXkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=2PD8a0pS7Fmq3nlT4Xx5X8+E85cJ5Orh9QG2IJQb3Yw=;
	b=F+g3A5/vCSqTVuR6b3c3ncvvwp0cVdi5ozPcgXzNCS4gljYdi95U3NhjRZx51hJy7y
	Qqdqwrl+DMZVG1VESUEnzaaC1i/Oixf3RzV5quUXw3hivyLvVDDaPW9lxbzMicNEnv+e
	tKcmVtmkSBDRdtQ7pk44p/J2SjE+Q6nqbKpaCRTcU9NVMLr+TeVV4tGXILT/MzCa8STq
	WP51TIPI8sPVmtFPeH8Oi8UuX3NP2c0qUPbY8Ghnd0pEELTkZzZywTs9e+Q+Oj4NMq0K
	B3gP1Z/sB2nB/ObxefRg2T8NwxVM53hMtQYWC0zIrdEp5lv30pKAPr+GI8yOG0i4dqc7
	ypsw==
X-Gm-Message-State: APjAAAXhS//BTSOpWXsHhihVUdjYdPYlQ8WmQ659gFKZwLZJXFgE+GVk
	4zYj3GIJb5hbHA+HjD4GY/d84g==
X-Google-Smtp-Source: APXvYqzOxYGkfbOUNlX7NydfPu3xtZveh7/2+Ovl2FbCHIwzJ3QWTDbfTvGy2p+QFuqtj5Ed5m91dg==
X-Received: by 2002:a17:902:7891:: with SMTP id
	q17mr6571705pll.241.1571352782331; 
	Thu, 17 Oct 2019 15:53:02 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:80c4:1df3:e700:2539?
	([2601:202:4180:a5c0:80c4:1df3:e700:2539])
	by smtp.gmail.com with ESMTPSA id p11sm3404101pgb.1.2019.10.17.15.53.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 Oct 2019 15:53:01 -0700 (PDT)
To: yocto@yoctoproject.org
References: <20191017211733.34EB81C0386@ubuntu1604-ty-1.yocto.io>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <f16291d5-196e-33bb-58ab-1eeb75c03271@mvista.com>
Date: Thu, 17 Oct 2019 15:52:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017211733.34EB81C0386@ubuntu1604-ty-1.yocto.io>
Cc: akuster808@gmail.com, aaron.chun.yew.chan@intel.com,
	otavio@ossystems.com.br
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.4.rc2)
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
X-List-Received-Date: Thu, 17 Oct 2019 22:53:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Can we get 2.6.4-rc2 in a QA queue for the next dot release?

- armin

On 10/17/19 2:17 PM, Poky Build User wrote:
> A build flagged for QA (yocto-2.6.4.rc2) was completed on the autobuilder and is available at:
>
>
>     https://autobuilder.yocto.io/pub/releases/yocto-2.6.4.rc2
>
>
> Build hash information: 
>
> bitbake: 6b045e074c6fea97d4e305a5a3c8bf82135d95eb
> meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
> meta-intel: c200851435f39acd2fe4abbf7a05fbf617833964
> meta-mingw: 6556cde16fbdf42c7edae89bb186e5ae4982eff5
> oecore: cd7cf933b3235560ec71576d8f3836dff736a39f
> poky: 51f6145f8f99a02df1dad937684f014b0172e72a
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>  


