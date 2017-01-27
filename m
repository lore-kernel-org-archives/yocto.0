Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32293E00A03; Thu, 26 Jan 2017 18:10:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.173 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7827E0098A
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 18:10:03 -0800 (PST)
Received: by mail-pf0-f173.google.com with SMTP id f144so69519861pfa.2
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 18:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=DuEZ0oIxwr+Xr9NQj8VwtrdCQUdEUeeE92GAQHroh3k=;
	b=XcoXCxIvDm9//U9qmxDwdTQyuiwBCCRgK1nGFne7buvGshLpSu/6Z4vQo2YKXOoMBP
	/Pd5+sZ66TsOj27dCF8BfHL5ZZsN8zPrGARMQl7aEIKaEjnU/CDgOeQJXMr/uvulpuoT
	Rl3uVKOLB5+waxhNxMrV6BZ7f3DRIEELmqYJ/obgxJsHXXDxdf/zKFUZuMj0jnWK/6G1
	zZIHBpvT61rauV6YmFG1aRpQnU9L0EpV7hyXWXlWeg+1hgaqiUtb8y1RPWVcLB1zpYoZ
	2tA/n+G7DxjhY3XHa1YdgnET0mevz9uDvS2lkZzVRO1qWh1Hg+mSFZteeL934sKw7Csw
	KcWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=DuEZ0oIxwr+Xr9NQj8VwtrdCQUdEUeeE92GAQHroh3k=;
	b=TqGcbROYVGk2o7P/mX/LkqraWt6YSUHCL5xOoIlwGC8HiG0m4Y5a63FPO9CE2shOXI
	bIYLMZ589U6fEUqsa6siAt9H1wk+AqxfEb8bQzdRQlSp7k2NOIgEcItp2NBI0w0CKJPB
	stoXnzsKVLpM1KYt5SHWxvdQqFEZoqpUY2NtMBtv+PVG28lCNExrHf2qn/5rn0uAB2mT
	rdN1sdTyM7euGHNhcaKDGoaG/OhI/hMGwlXivniKjYAuO1O7zHLS2L1WOZycKmazDok5
	OQFwkk0siSr+BB448iNoJZY53n8WoFarA+dXem54ZR0pZXftzpLBqCFP+aOB3exWOC3p
	dyuw==
X-Gm-Message-State: AIkVDXKX9h8Xu/9+f4SYXbR8Jv6jC4dwIzhhg1EEJ18tQPNS7FmxAehpTLZlx8NT/l++HQ==
X-Received: by 10.84.209.172 with SMTP id y41mr8538543plh.96.1485483002763;
	Thu, 26 Jan 2017 18:10:02 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:6524:a1c0:a396:fda9])
	by smtp.gmail.com with ESMTPSA id
	d128sm6269605pfg.56.2017.01.26.18.10.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jan 2017 18:10:02 -0800 (PST)
To: yocto@yoctoproject.org
References: <123e01d277df$9629cd60$c27d6820$@ln-systems.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <c4394a67-c5ef-6dee-039f-6801b0bbe9bb@gmail.com>
Date: Thu, 26 Jan 2017 18:10:01 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <123e01d277df$9629cd60$c27d6820$@ln-systems.com>
Subject: Re: QEMU with host USB serial
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
X-List-Received-Date: Fri, 27 Jan 2017 02:10:04 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 1/26/17 6:22 AM, colin.helliwell@ln-systems.com wrote:
> I’m investigating using qemu to give us some test capability, for which
> we need to use the host’s serial devices.
> 
> I have a qemu build which boots up fine; I’m trying to give it access to
> the host USB. To keep it simple(r), I’ve seen mention of FTDI’s device
> (0403:6001) in the qemu source so that’s what I’ve plugged in. I’ve done
> a ‘chmod me:me’ on the relevant /dev/bus/usb/xxx/yyy node.
> 
>  
> 
> I can’t though figure out what options I should be passing to runqemu to
> hook this in. I daresay I may need bootparams too, but am first just
> trying to get past ‘qemuparams’.
> 
> As a starting point, I’m trying things like
> 
>     runqemu qemux86-64 nographic qemuparams="-usbdevice serial"

can you try with

runqemu qemux86-64 nographic serial


