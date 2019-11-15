Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D2CCE00D9D; Fri, 15 Nov 2019 09:34:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 771F1E00D16
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 09:34:36 -0800 (PST)
Received: by mail-wm1-f65.google.com with SMTP id 8so11311465wmo.0
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 09:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=ih/T3fJtAiRGmadjnowyXbNQipXPYaMY3b3DibWpILM=;
	b=joJmq+6O9OwDpYT4EQRNXNm7JMm6kF0LWACJ0GoUriSZNpIBasTbjnD9AMhUhdcwR3
	GivQ1mRuFWYtsfuRSXePwOZ0vVDfnHHfjmoUI+yVHjO3C+yBjOBQTbxqj0L5qXrXbaIo
	t8x/m+FcsCHO89FQT6n5nWC/WfFT4oIeZMpc+APICBxPYRHamkhU8CduMX04pZE8iBP4
	7gKqQjEbKgJ19QxZI1D/OHMBDsPGlIgdgUFOZ0GD6l5AUmHFGbfjQQQ9fqrG3xG4mLdz
	yk2VcNpJmyPIT5PAh5itxPVrmcok9c4dIyo2kd9RBHIAp2IOWaTdWk5uPGdzwSrUPYGv
	lPKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=ih/T3fJtAiRGmadjnowyXbNQipXPYaMY3b3DibWpILM=;
	b=dVOy/lYhGfvdZcVjiDi8PFMQFXX15GPn3gnHvzUb8/BwG9DZKBpJ1c9SyjtZqHHZn7
	6YKaPzLc+yZK3BFzoZBMGmbvySnItnspZ6uI+JvoNqRg5hcQcDUPrf/kuv5B2Us/HI0Z
	s1OjBN8aMKQnmRCcJSjkFonEFjEMusAGNdMOHBrqRPLMaojHjSJ46APTHz/PszJK2S1O
	zh8qdM/keHYeyPe8wGRWp6fom1y9c9aM8Akv/GB/K7gH2hKfutKVFCiqY/o65hxUAJqJ
	6athu5Lnn9fzPxQ5GLADrQ5+wXwIao6ZNfV2uQ+7U2Dx4Nkp+mooFvsLdIZsEbzwJYlz
	j11A==
X-Gm-Message-State: APjAAAWpRTy9Ap5MQAha0LqUssbw70g4CjN3HVv/tzqBwDYXuByEi+rY
	Rxcl4Vyw4xbPHws43ItHZnSGyg==
X-Google-Smtp-Source: APXvYqxhEGWeViSsCf+rnDj34zYj3sYjeJbcXz3PfVtr/BnkImrSOfUnGzp2vBwH3skn9tsnbOvSuA==
X-Received: by 2002:a05:600c:2105:: with SMTP id
	u5mr15442979wml.47.1573839275581; 
	Fri, 15 Nov 2019 09:34:35 -0800 (PST)
Received: from [10.13.0.37] ([81.145.148.228])
	by smtp.gmail.com with ESMTPSA id
	j63sm10741031wmj.46.2019.11.15.09.34.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Nov 2019 09:34:34 -0800 (PST)
To: Paul Barker <paul@betafive.co.uk>, Hongxu Jia <hongxu.jia@windriver.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, pjtexier@koncepto.io
References: <20191114060410.37069-1-hongxu.jia@windriver.com>
	<b8da947b-b904-4f54-9b61-39a6ff395ad1@www.fastmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <eaedb235-13fa-1fef-b142-b64b2820e9db@gherzan.ro>
Date: Fri, 15 Nov 2019 17:34:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b8da947b-b904-4f54-9b61-39a6ff395ad1@www.fastmail.com>
Subject: Re: [meta-raspberrypi][PATCH] wic: add swap partition and set /root and /swap size
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
X-List-Received-Date: Fri, 15 Nov 2019 17:34:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 14/11/2019 11:11, Paul Barker wrote:
> On Thu, 14 Nov 2019, at 06:04, Hongxu Jia wrote:
>> - Add swap partition to workaround memory limitation
>>
>> - Support to set /root and /swap size, 4G /root and 1G /swap by default
>>
>> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> 
> These settings feel distro-specific to me. They're not required for how many of us use the Raspberry Pi so it's best not to force them on everyone.

I tend to agree with Paul. The final SD card configuration is generally 
a per project decision (more or less). The BSP provides a bootable 
reference and from there sky is the limit.

-- 
Andrei Gherzan

