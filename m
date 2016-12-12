Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28BCFE00BAF; Sun, 11 Dec 2016 22:39:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E22D0E00B93
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 22:39:45 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id g23so46694030wme.1
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 22:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=iyQf8kheiDRe1DR7LYuIBnuGlTUw/NNnmifaVc00hL0=;
	b=aeHXwvFPUQ9foxi8wgJ+natwDpSi4KE1ST6RcfB0U32xOnUoa/ScEYWPr6u3uA4dvW
	CM0pjHe+ueJondHsWlPhlK25r9Mqu2VuA/oXCG21N9AP1/gy3ViCSwQmzKysVUvBw2hs
	1dcyUqzUjLECvbN8ytJoEHj7Q8C93x5/AV0dks7Zq9dq3E+4535pZWKyJE4samOxJI1w
	TZT2n6yEzwqQ8EiuAOOlkRKultMqLv/rr1gpNtBtw55sQMu1Lh2I7g1oTzdLntXKBYLJ
	SDbf8/LF69rN3rRQkg7vqTMJiK7JlJPeoffB0qBoSN0H/uGXe5Iiv0o2nCHaT/GWOQKV
	q4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=iyQf8kheiDRe1DR7LYuIBnuGlTUw/NNnmifaVc00hL0=;
	b=hI1IYKtt4tDAaHnkbRiIqzhI7D57/gw5vwNxkW0igy5RYxO2htLd8Tjew//P+KGyAA
	wduxqy7psNPvTETvz1j14dlBrIkG4F2Vu242HroQyaIQPZpI2iHK5TaybW4nh+OFhoJb
	GnRL4IMqbhfepN+LKNIeowPwYRTs8LqHl3npR5od11Wp5ZMhuKS11h/zDS7mv2uzTlYq
	dPOW0bV9XwVx3EKvvXOsuG4O+kVMeM7Mn/EatwTiJV5rRXTSKJrpXp+BkaGQ60j25pAD
	T8ywmS35IIZwtVDuq/StmFIKtSdO//6ypFXkO5zdoRrqzuPds2zmvFW0Cvox0x8szZFF
	Xy0A==
X-Gm-Message-State: AKaTC00+oTq/fSvjNHW4DZyoyHRgiYErDJ/EG9X//FXmidSt7yKkwgnj7NECHfu4rpcwcw==
X-Received: by 10.25.0.196 with SMTP id 187mr6863798lfa.156.1481524784394;
	Sun, 11 Dec 2016 22:39:44 -0800 (PST)
Received: from [10.25.0.170] ([195.159.140.90])
	by smtp.googlemail.com with ESMTPSA id
	t126sm8804074lff.26.2016.12.11.22.39.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 11 Dec 2016 22:39:43 -0800 (PST)
To: Patrick Ohly <patrick.ohly@intel.com>, Stefano Babic <sbabic@denx.de>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
	<16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
	<1481296433.17535.170.camel@intel.com>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <7d589da5-ff5b-3cdc-d0e7-fd2289363c98@mender.io>
Date: Mon, 12 Dec 2016 07:39:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <1481296433.17535.170.camel@intel.com>
Cc: "Lopez, Mariano" <mariano.lopez@intel.com>, yocto@yoctoproject.org,
	=?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>
Subject: Re: update mechanisms
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
X-List-Received-Date: Mon, 12 Dec 2016 06:39:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 09/12/16 16:13, Patrick Ohly wrote:
> Kristian, I added a comment that Mender requires U-Boot. That is
> correct, isn't it? I understand that this restriction allows you to
> implement things like automatic rollback, but it's worth mentioning that
> this comes with that limitation.

Yes, that is correct, I should have added it the first time around.

-- 
Kristian

