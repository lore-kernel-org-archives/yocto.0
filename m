Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1A36E00B3E; Thu, 16 May 2019 10:33:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8581BE008F2
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 10:33:56 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id f12so1956422plt.8
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 10:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=T5v4T3AFCQVkazQ7PEGrhSGEO6AtNNDqvOML7btgk4U=;
	b=GD0lUkWn3eQ/qIyRZI813qZft5ZNk4bi0d6RQ7MgZLpNHhP9twVIbShIstDqyo4OXa
	wbZJljaWjwPX/d35JV3BUklcFDpAQhpdJbNZ5cMab3YUzFqHjL6NWyKAHc9Mrf7komeW
	ALC8rB1nmDwJMCA3L/BsaseKK+HXJAiBuWCoxpU0lGjT1RNlJF89k+vdb6A5XJ6qYw3M
	QoDC7sK5h8f15AHJp+IerOw+gkV1ygu3t8EZyfSImbNp5yKwrSk89F7sVsu0+Az4uZP3
	swVLmpY/TRwHvAlWgoStL2T8teXFOUZVRue4wYIVXHmoD9vHTMSijuf4N0qVJUdQz47j
	ivNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=T5v4T3AFCQVkazQ7PEGrhSGEO6AtNNDqvOML7btgk4U=;
	b=IKlzSQQ86jbOGPFq3dfwUd2Qqe699OWRJo1B7S1zH9RBPu5F0Kifj8wl7AYaxmVU1z
	SUQyt6EoI3zqqCUBWL/gBhht7AHglaUHEcSV10MfrTPBI/7j/AY/kl6lUpHZGr5dtWJp
	EcENde1Nbw//RVoC/5UTeTO4C+pDe1JLOIcaTigg5G8VWeW3+i+gwqNOHf+MSk6RMrcW
	a3xDp2mh1glUg7ZhyvlpRyNk8wgr2rzwn2EaWtkX2LZzYIw35r3s3xnniVO39NIt0oHL
	RVXMZPA9YAcZBDwi9NRuxkyz2rbCYWedlnBpUsnj9OZ+beV4F1e4XUn8/1gWW28/pCiT
	6EsA==
X-Gm-Message-State: APjAAAVt8FDuoux6yZEXrsq7mFwlV+FwWlcCSIMMPBALHG0Roei7D9Lx
	Se70CCO8Ah1kL7Fy2qBamglQvMyfbpU=
X-Google-Smtp-Source: APXvYqzyesrdITMtKh4P/QBBbpNlzF7KrT/tCN8Fq+wwfeRwGVo0fedzSMF92MK6UnQvaboyTUCFMg==
X-Received: by 2002:a17:902:184:: with SMTP id b4mr25346941plb.2.1558028035270;
	Thu, 16 May 2019 10:33:55 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	e5sm7989303pgh.35.2019.05.16.10.33.53
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 May 2019 10:33:54 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>, Paul Barker <paul@betafive.co.uk>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<b5e1d2d9-15cd-4872-ac8a-b578f2a9ae70@www.fastmail.com>
	<16605f9d-2158-451c-592e-1c40aab160d5@ibeeto.com>
	<37a421a4-3786-66ba-60ce-208f7b89c71e@gherzan.ro>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <09f13d52-4fc1-6720-bceb-683f0b336b6b@ibeeto.com>
Date: Thu, 16 May 2019 10:33:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <37a421a4-3786-66ba-60ce-208f7b89c71e@gherzan.ro>
Subject: Re: [meta-raspberrypi] RPi 7" Touch Display
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
X-List-Received-Date: Thu, 16 May 2019 17:33:58 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

No, unfortunately not. HDMI works just fine but no video on the touch 
display.

On 5/16/19 9:46 AM, Andrei Gherzan wrote:
> Hi,
>
> On 16/05/2019 17.24, Rudolf J Streif wrote:
>> Thank you, Paul. I did read Andrei's excellent documentation and
>> enabled I2C and SPI etc.
> And it didn't work?
>
-- 
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700


