Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B447E00BAA; Thu, 23 May 2019 14:56:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA6BEE00B5F
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 14:55:59 -0700 (PDT)
Received: by mail-pf1-f169.google.com with SMTP id z28so4000282pfk.0
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 14:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=thMy/LGuISaVtrUUm1dBO0eOJbEs/yTvvRcrbLxYREU=;
	b=Jg5XKODi/jtwWBKOwnIF/Vulr/CQcSNRUIxnBvtdEJpBMThm+Su2wUFxLQyceWINfN
	KAinOLVtezrYF4RaapiCHMCDZ9SZRspXlAN7IT4U1Yj3YKy0MYY2oNGW4LLT0axsSURp
	4I3JI3F8zABztLCyL0yCb+pGdsTgCul6Es5g/K7HfNE3c2tcBkrls1SdVLTTJu/DV4Mg
	FsHs+2gauKL2kfssyNpt1T83c/qEfmJ7nWa/FWFbtXbccnVTOOK4oN+FKzwzbRSZRIu6
	DMSVXB/d/Kvrac85ooZ4PJv01Aou2z9rFaDiyg216X+F/KvOc4QjB6olr5HOUJQN+97W
	aDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=thMy/LGuISaVtrUUm1dBO0eOJbEs/yTvvRcrbLxYREU=;
	b=pxOAO4zLYa/2sZH+KxaGPhpYMUAgYCcCZR59Cs0Vgzx7oin4kqrnq/K2uaPu8qe90V
	RsA/ghGGlHkEj+o3YWwCliB9ZPiwTpZ7c8PaweOKBSFnZXGWBhwfyh2Z2SPlNplgssB1
	PwkaZpCRcUFmooM2EOBltLs2jmeihhQi3n+Ouhawi9FqpucjCPERh/VaqsSIzWsJKREk
	r6owRxEXZnrsMi3cOvhYwgATlVHY9l1m2M/m6nWuG3UBoC8y9cNMKQKGtoUZGRXyDFgz
	TV+9xN1Php7CglX4cFBbivcQSj9XJDU0YA1oIPmZGCObfjgaLVejnG1yMXL1XaoE9Ode
	gTdA==
X-Gm-Message-State: APjAAAVvmyqd5Jq4RIWuxgHUEZjUCSVd9YTvMWPIEXWN44CikRL3BZeA
	GHJ5G9e58UDRV8847sL9vIEVWPH4dhI=
X-Google-Smtp-Source: APXvYqyb6BYYE+5Cig0lXdqYWRwPe+z229P40vMxihBGsKSZiId+E9Dx5pCtK11MafD4ssjPUvn5mQ==
X-Received: by 2002:a17:90a:e390:: with SMTP id
	b16mr4411364pjz.137.1558648558267; 
	Thu, 23 May 2019 14:55:58 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:7892:9931:70c0:491e])
	by smtp.gmail.com with ESMTPSA id v81sm464853pfa.16.2019.05.23.14.55.57
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 14:55:57 -0700 (PDT)
To: Ari-Pekka Sihvonen <ap.sihvonen@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <-c1i03bd25jo3-mk9418-nezpl1ub4m9v-qsy5j-ym82e63yaxan1j9blsfzuixjo3ewfu-2h72ddybu9re-gs7ykbg1m2kv-voe8ke-2ymd7u-arwwxx8b4x94rrrmhz-3ryei5cgajw4ky16w292s2q3.1558166183995@email.android.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <ffe73a44-5c8c-6375-94a8-12519269094c@gmail.com>
Date: Thu, 23 May 2019 14:55:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <-c1i03bd25jo3-mk9418-nezpl1ub4m9v-qsy5j-ym82e63yaxan1j9blsfzuixjo3ewfu-2h72ddybu9re-gs7ykbg1m2kv-voe8ke-2ymd7u-arwwxx8b4x94rrrmhz-3ryei5cgajw4ky16w292s2q3.1558166183995@email.android.com>
Subject: Re: Rocko broke down
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
X-List-Received-Date: Thu, 23 May 2019 21:56:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/18/19 12:56 AM, Ari-Pekka Sihvonen wrote:
> I am developing system using raspberry and made a pull on every yocto 
> metas. Chen I baked the Image there was a major problem. My system did 
> not read config.txt and cmdline.txt anymore. So the resulting Image was 
> totally unusable. Lucily I had a copy of yocto tree so I could go on 
> building images. Has something changed on rocko branch.
> 

you have to be more specific here, maybe provide more step by step
what you did and what does not work

> Regads
> AP Sihvonen
> 
> Sent from my Huawei phone
> 

