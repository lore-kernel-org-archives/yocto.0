Return-Path: <morne.lamprecht@melangex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FC35E00D3F; Sat,  1 Jun 2019 11:26:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01CE4E00B18
	for <yocto@yoctoproject.org>; Sat,  1 Jun 2019 11:26:02 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id t5so7820989wmh.3
	for <yocto@yoctoproject.org>; Sat, 01 Jun 2019 11:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=melangex-com.20150623.gappssmtp.com; s=20150623;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=czbbFhSANWVKFonkm2B/TdYyTiqqf1liEmNqVpInc3M=;
	b=RBZ7Lflae8R7x8V/RX+35tWBqhYa01hmpRCBvlmB77NxZoGWBiU8f8lzkzyzNUP7IP
	J3A0x+dPAQnKYBNx1s/RAClzEJx0iyV8vz2GkgOmq9Y5ICO75/DvLEZjYON/nZdNtcGI
	6aZ4ZgYJX1sE48WHNV2SPKHo7IWVbm4CC04pRuFUWoR/i/u9VsijKaI90NJIbbvvqcLD
	d+xtsjgXExj1zUoLxOMqsrkW4f8jO4p+OyoydD6/CeH0BS5G+Yvbchc2ajxXy3NfH8rQ
	VQ49bWaPA7xq3BREsGq5udmFaqd47ORuQEdLjJDJcK4FrjW87u363NXOj2EJQxgetB71
	M7aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
	:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=czbbFhSANWVKFonkm2B/TdYyTiqqf1liEmNqVpInc3M=;
	b=M+ni8fRIRV6Kd1C4ZfWcZ8PZtinZBleGgZBGdh7LZaUQHNBDjqPZRzL/myFOCEvQfX
	XGWTDyfcdAavxM1Z7ndSAJcyJFMZVzw1gUl/lChzfjT4spwoKIaVV1dviQAvSadymhbd
	ujdGS/p51i86NA06c1tJX6UFrPXK4KeNeT4xafcJrIMRYbXPKiCgj8cFs/goSuBtpJIG
	kgeampw92Ssx9GK12Nuk23igaP8b2v68j94NXQPEKdBqiBDLzBqRkxgBIZwlJdDNjTYJ
	yBPS23f/bSG6l1ul2ajUIIbq5IZUwNPH8/T2u40ZrcJuqme01g+p77/GD9enfLd1ZWOA
	ofoA==
X-Gm-Message-State: APjAAAVZbzfEKvrdTFZIFCmiMmSKYqxjQzYr+7XduBXeRkyoWfnv3vxb
	HB7/9a9gRd82KeRCdy3GEnN5gg==
X-Google-Smtp-Source: APXvYqx5QImBVkph2BpuaEInrF1Ia9d2xtCeHa5JMBh05T4kAJ7M++fLo6OAFKQ+RghOB+F7/n8Mcg==
X-Received: by 2002:a7b:ca4c:: with SMTP id m12mr9017670wml.37.1559413561732; 
	Sat, 01 Jun 2019 11:26:01 -0700 (PDT)
Received: from localhost ([209.203.60.70]) by smtp.gmail.com with ESMTPSA id
	f2sm10311075wrq.48.2019.06.01.11.25.59
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sat, 01 Jun 2019 11:26:00 -0700 (PDT)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Sat, 1 Jun 2019 20:25:56 +0200
From: =?iso-8859-1?Q?Morn=E9?= Lamprecht <morne@linux.com>
To: Belisko Marek <marek.belisko@gmail.com>
Message-ID: <20190601182556.GB19383@archworkstation>
References: <20190601144016.GA19383@archworkstation>
	<CAAfyv35XN0SiU8PQ0ZL9tXSk52FxkCsOjuXoxYM35egNL6DTxw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAfyv35XN0SiU8PQ0ZL9tXSk52FxkCsOjuXoxYM35egNL6DTxw@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: do_rootfs fails while attempting to install hostapd package
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
X-List-Received-Date: Sat, 01 Jun 2019 18:26:04 -0000
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

>I would check run.do_rootfs and check it maybe 
>there will be some more info.

I checked it based on your suggestion, 
unfortunately found no relevant info.

>Do you have some custom extension for hostapd?

No, just the standard package.

		- Morné

