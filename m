Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C05BE00D47; Mon, 20 May 2019 13:33:29 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.181 listed in list.dnswl.org]
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 484BFE00D32
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 13:33:29 -0700 (PDT)
Received: by mail-pg1-f181.google.com with SMTP id w22so7322404pgi.6
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 13:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=NVNGI/XsCEchWDZoV2p7NG8vr4+vg8HjWfx4AxOz0oE=;
	b=OiJ5ruVpI/zJaJZRHtm8DlmRBHsKOzHxGfp3mQW9oFNaU5fGkbHs8WzVlioT+1vSA6
	aTGUXf4YozOBPcI6HVC7xyhMBNfHvFoS66H02kLLXDbtZmZQUZUyyKBSImut5Bklw8zJ
	ry7/d6xn1ere8FAWPkuNTu1Lfq4HAGWw58r36CE+DTHEIqJu1B8R1/eky/GVuibswjRC
	MtC6OtCTVVOD1JTTOX0UL3jZJLS7zpNGPKrC3ayrqRQmNRF24Vqrysxr2UMRLbqJjB0X
	Mqh1waC3w13i27EAJjTFBB+ucDLT6f9V9mHkSnGX31Kn/GXO3jdTu35QVXnHJVU8nhkk
	1sGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=NVNGI/XsCEchWDZoV2p7NG8vr4+vg8HjWfx4AxOz0oE=;
	b=MZZCduKaW8Sy5/areDgoAxPrqyUXSS64B2aOixPXZAIuRgbB27QZnvCaXrWMKkFELF
	W9Pn2jEGcrXKB3PyPNUXPPUhLtqhCZogmSEXKBsv7Fr5S5KCUDr1WUpUIwCqf7evAIKW
	P58Fp0JvCJWC5cqpwd2rQqX+orJ/xJ3tL0hrvXHvXqBJQyxGqGZmSP19Ga7SCr7ZBolj
	MbpNGBcsgIVuG+bfDwseqtchujeAEl60577hizjRdE3T3gRuIEV/1/7TJs+O7HoUbj2z
	IjSL/RyPr5Uvd88F+6G0CWXc/bMGbPWMWIMHQk4HyfeM+ZjfHSUvcZveth1ahkSUelm5
	fDvQ==
X-Gm-Message-State: APjAAAXCsbm8UTLjfkUfKi2xOz5I/s0ACRUpxlCVq0pG0B6+5dGhHONn
	tusG/TmfckwiHEUIgLI3ZM2cZ3WpC+A=
X-Google-Smtp-Source: APXvYqziw2K0fCC/zVdyAvwHw+OJ5IF46GCBeubdQn+dRU/6UE5QerwcC797EvYlPhppTz0jtTDuNQ==
X-Received: by 2002:a63:e048:: with SMTP id n8mr77471678pgj.41.1558384407986; 
	Mon, 20 May 2019 13:33:27 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:74d7:3fa5:f6a5:ec10])
	by smtp.gmail.com with ESMTPSA id
	h6sm29434467pfk.188.2019.05.20.13.33.27
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 May 2019 13:33:27 -0700 (PDT)
To: Daniel Ammann <daniel.ammann@bytesatwork.ch>,
	Yocto-mailing-list <yocto@yoctoproject.org>
References: <64a7f3f9-d9ba-000e-d735-a05f065bc2b6@bytesatwork.ch>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <bd58ffa2-0fe0-5062-3a5c-69fd37545c87@gmail.com>
Date: Mon, 20 May 2019 13:33:26 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <64a7f3f9-d9ba-000e-d735-a05f065bc2b6@bytesatwork.ch>
Subject: Re: /etc/limits with openssh
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
X-List-Received-Date: Mon, 20 May 2019 20:33:29 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/14/19 7:47 AM, Daniel Ammann wrote:
> Hi
> 
> I am trying to restrict non-privileged users from using up too many resources.
> I added "* U100" to /etc/limits. If the user logs in using the serial console,
> it works. If the user logs in using openssh, the limits are not applied. How do
> I make this work for ssh login?
> 
> I am using beaglebone-yocto with core-image-base with added sshd. This is yocto
> 2.6.
> 

if you have pam installed then you might want to experiment with 
settings in /etc/security/limits.conf

> Thanks
> 
> Daniel
> 

