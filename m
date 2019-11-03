Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA2E2E00D75; Sun,  3 Nov 2019 02:46:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DE20E00BFF
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2019 02:46:49 -0800 (PST)
Received: by mail-wr1-f47.google.com with SMTP id v9so13861327wrq.5
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2019 02:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=oyjDdPQf+wlcl/DZ425FtGoy9oj2dGYqPNabWSN10B4=;
	b=m61lrdAKIOXZcFFL7AnHeMwVk7Ro02VN9sE8eMsgmkRUkXf//67XD8VJ/QR9/ddoJ9
	6sUiQngd2d7ZpJLnsi5m1AHgKO7oRg31aaik9Dube5Yhq/Rzqt0jdmE9IXCZaOq5Yk3G
	jSCjG4EQUsGC52rNoA/fy5FXcueTYK2KF2CoqdfzXdcmsuQe4ysZZuZ6TvYZEQz3kF4G
	d1yZUdHIIt4CVoFAv/2qPYGeRkD2TEF7FkH3vgsBJE47b/phdt+Q1HR6PLzfnzUJwxTh
	CJUMKHjNXRMT/oLYY3L9Y9q8EF/w3yionseey9E3kKcBvrhKmCO+MS8h8EvQWxwZ90Tg
	Qc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=oyjDdPQf+wlcl/DZ425FtGoy9oj2dGYqPNabWSN10B4=;
	b=Fwsa4HFwHDiJsCSej13gqni6qceJvBjVFwR2ky3WWlTVDZRf/2AjUDxixxAVAEP7I3
	UKLLTyMcltHmc9D9pHW2uJ1bOg6Qlvums2f8jTco40tlRhert7D9Z56R83Rat+ZbItdz
	qXyVS+lGNUFB7BLrUzWN2Ia8IDxivbVa+Rz2ltJyVaI4Qf0cb69z2Rj6UABErOKMRI9x
	eCl4l3st3c1dNBpIck4Rx42DnLg7RCKomayVYbIyniRGbaOsk09aRN32FTUjs68BSNu2
	T2YU3LK0lRLGivSLKgDai6v4PZSkJUQTTZna47YlwGZgzlSmB4yS6POwm16IQ2+O6vD+
	HIxw==
X-Gm-Message-State: APjAAAWxUmPiEiNg1mvMgzsKysiKMwlydVn7yNMRyXrTBZysvfN8wDPi
	3QN7TFwPRFp6etCzE0T2VpLCJEF5HtDkGg==
X-Google-Smtp-Source: APXvYqwU5+XcOzZiJKStHXcifZOuTH6K5aUaxgqWxRR0M8N3ADm+k35ZQ661Lc6/VcObPlTmEyLS7A==
X-Received: by 2002:adf:9ec7:: with SMTP id b7mr18914849wrf.221.1572778007961; 
	Sun, 03 Nov 2019 02:46:47 -0800 (PST)
Received: from [192.168.17.155]
	(host81-154-22-156.range81-154.btcentralplus.com. [81.154.22.156])
	by smtp.gmail.com with ESMTPSA id m3sm9481444wrw.20.2019.11.03.02.46.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Nov 2019 02:46:47 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
	<CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
Date: Sun, 3 Nov 2019 10:46:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Steve Pavao <stevep@korgrd.com>
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Sun, 03 Nov 2019 10:46:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 01/11/2019 17:18, Khem Raj wrote:
> On Fri, Nov 1, 2019 at 1:28 AM Andrei Gherzan <andrei@gherzan.ro> wrote:
>>
>> Hi Steve,
>>
>> On 01/11/2019 05:32, Steve Pavao wrote:
>>> poky linux build fails when ARM erratum mfix linker switch is specified
>>> in local.conf:
>>>
>>> TARGET_LD_ARCH_append += " -mfix-cortex-a53-843419”
>>>
>>> causes build failure.
>>>
>>> Please advise how to use this switch successfully.  I am synced current
>>> in master branch in all layers as of today.  The switch causes libtool
>>> link to fail due to missing libbz2.so.  If I don’t specify the switch,
>>> the build completes without errors.
>>>
>>> It is important to be able to build poky linux with this switch to avoid
>>> certain crash conditions as described in the ARM errata document.
>>
>> I haven't tried this erratum fix. It is indeed implemented at the
>> linker's lever. It's curious though to see the bz2 dependency. Can you
>> share the specific error? I assume you are doing this on RPi3.
>>
> 
> this will impact rpi3 in 64bit mode, don't think 32bit needs this. I
> think its best to
> add this option in raspberrypi3-64.conf perhaps via TUNE_CCARGS

I was thinking about this. The erratum seems to show that this applies 
to all revisions of a53. So it sounds like we should add it in 
`tune-cortexa53.inc`.

-- 
Andrei Gherzan

