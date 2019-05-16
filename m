Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56C80E00B3E; Thu, 16 May 2019 09:46:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E26C7E00942
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:46:14 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id c5so4121864wrs.11
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 09:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=mjBtskSGjwEI5hIQlPwkKKvroiNyMforNemxj/ajSIg=;
	b=WgyILaDyr+tSFtRWStLY0ivg8i9871EttVv6tyAc2vFwTmwCWLcoQricftNvZlaDDH
	KiavVAruUigaa0j7sA/iT3j/pgo1lIbCbFpKY0WhhIjiBzoHQtj6NxW7//a+na32mjfj
	YLD8wrPQY+0c7plUkXDZ1+9DFRtuWHAoL+C13NC/KGOH62Ecdxu/+tmI2QeaE9A54Kef
	nTMbTnGWDHZ+B97N2uUFHxgia9UPlHh7e1+5Rxi9m9Jk2ZRB8VgMfhDGCidAgnLerXTo
	9Dbqdki6xePRX7qhPozXsN9H5FaxRmBR+6SlvqElU+cz37JdSl390iV8Apa4mImzVCaF
	oVdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=mjBtskSGjwEI5hIQlPwkKKvroiNyMforNemxj/ajSIg=;
	b=ZgwqwML3aQ/I1uMIhxlg0fL+QtAZP0wiXLrJPmNfWaiMZL0OO9GoRVhvkE19w2dtgO
	swFo9GDyG6EX36lml9ezfr3PLF6lwyBhAUby+9BVqtqCIuhWT0+Rtv4b12s3YHoxQy9K
	Z7GgAeLuYuCoqKwBLEMrOEhQ0P3T2ecBmWK5TwUH+fcHj40Hs2xbFyaaXtgU5eiXu6FJ
	gZ4Pi8dtWOBFsPvoHV5Zzus5uoRJf1vZ0haRzDc0MHv/t6OKwxgBtmfGk7IxE08g+6zo
	gWeYq+XClZHskhQwDaUNgGVckmBWv83DFk/xBTZicBqMX01n+Pd9+MkteL47PQ9TGxq5
	jUmw==
X-Gm-Message-State: APjAAAVajLD+1V+6xmnkK53OA5T0EoCXtYTxsyMuFL0cojdhSD166a3B
	GZwFd9PJVzlbyhZXt9xsRmoTC1LPI2s=
X-Google-Smtp-Source: APXvYqz3k/RljQbNrL0YJOhqjW03dGtFbbYsd6VpkO9KeZr162YT6ROgDidNRwZVA3/SYLbU911UQg==
X-Received: by 2002:a5d:51d0:: with SMTP id n16mr18921177wrv.167.1558025173739;
	Thu, 16 May 2019 09:46:13 -0700 (PDT)
Received: from [10.100.100.101] (host90-152-4-101.ipv4.regusnet.com.
	[90.152.4.101]) by smtp.gmail.com with ESMTPSA id
	s127sm6653444wmf.48.2019.05.16.09.46.12
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 May 2019 09:46:13 -0700 (PDT)
To: Rudolf J Streif <rudolf.streif@ibeeto.com>,
	Paul Barker <paul@betafive.co.uk>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<b5e1d2d9-15cd-4872-ac8a-b578f2a9ae70@www.fastmail.com>
	<16605f9d-2158-451c-592e-1c40aab160d5@ibeeto.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <37a421a4-3786-66ba-60ce-208f7b89c71e@gherzan.ro>
Date: Thu, 16 May 2019 17:46:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <16605f9d-2158-451c-592e-1c40aab160d5@ibeeto.com>
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
X-List-Received-Date: Thu, 16 May 2019 16:46:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

On 16/05/2019 17.24, Rudolf J Streif wrote:
> Thank you, Paul. I did read Andrei's excellent documentation and
> enabled I2C and SPI etc.
And it didn't work?

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan


