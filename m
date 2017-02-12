Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55FE5E00A16; Sat, 11 Feb 2017 21:30:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46B4AE009F0
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:30:44 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id v184so6506078pgv.1
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=dlqv3pDvQOC4kOF9viDgO4j2ZbJeGNgIVGj3QvZ6RDY=;
	b=Xvzjhu4/ZV+6uacVnpHFcLerFvi9ysCpOMxyxWLRitBhDFXvNXPfInSfM/YZyNYLcB
	wmIPsQJiCw4Uh5jEZtuMk70bHdJsFG3opjzeoIe0xr9LlM4l3YMQO43lefIgLQJDFxiP
	3ASemmNLvQ82cdUzDpQHJGxlLKxKhzjocOzbmYFpNF69ZtWu3Xqa8Iyot9ZPB9woOZlP
	Sty5Rsr8l2MBB4xflQPRkZjJNuxvzXhrsNGxCgHIVSR/WzHe1u0dnhuJBQ0UcsquGtoA
	4bhN2ktxMG4X1fkzHCxAPRLEc0VSiug6xAe+brPgiOX0eVnGguhyiTTapqkaN+Ks8/k4
	PSdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=dlqv3pDvQOC4kOF9viDgO4j2ZbJeGNgIVGj3QvZ6RDY=;
	b=Jx2Oa2ibfuIYZCC8yTM4hp100t37UdUtAyas5Cfkt0bElm8zfhlFXmicuRkUEBQtvs
	wQob50rGevYDBDLoWCX9KkRbD+OSoJ9XU/bBpJJBfDCelxLHa5w1lK0P1YRYGblXHHRU
	O230OLU0rdUFURIwkelaKu66jM4+w9y43TWh9TCz9hx+sKnodeiVP/B+09js84dXzEIA
	Bygrx4ftcViGevOZ2T2KdFkOr4A7QxSpTnuOK94vCxJK4wlxnJOddg9nBUY/fix9XlpE
	QfFhfc8SyMvsJBd05Lurdhh7/P3N3WAL71WUAD7l4kXhp8ViFHDCfMexi+UkVH/arITH
	F9EA==
X-Gm-Message-State: AMke39kZYI2Ar0xoMEUt/qNbG9vyZfghx0l373TF6G4qgezYnzY0BdPPohI67/aoyGeTHw==
X-Received: by 10.98.137.73 with SMTP id v70mr18992762pfd.125.1486877444224;
	Sat, 11 Feb 2017 21:30:44 -0800 (PST)
Received: from CACSVMO-14452.local (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	m15sm7229767pfk.104.2017.02.11.21.30.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:30:43 -0800 (PST)
To: Paul Barker <paul@paulbarker.me.uk>
References: <20170209054903.31598-1-raj.khem@gmail.com>
	<20170209054903.31598-7-raj.khem@gmail.com>
	<20170209082327.59112e3b@host0.betafive.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <272a060b-67ae-97bf-9090-3d2ffe94d15f@gmail.com>
Date: Sat, 11 Feb 2017 21:31:33 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170209082327.59112e3b@host0.betafive.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 7/9] linux-raspberrypi_4.9.bb: Upgrade to 4.9.8
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
X-List-Received-Date: Sun, 12 Feb 2017 05:30:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2/9/17 12:23 AM, Paul Barker wrote:
> On Wed,  8 Feb 2017 21:49:01 -0800
> Khem Raj <raj.khem@gmail.com> wrote:
> 
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> index 1f8fe11..c59bae5 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>> @@ -1,8 +1,8 @@
>>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>  
>> -LINUX_VERSION ?= "4.9.5"
>> +LINUX_VERSION ?= "4.9.8"
>>  
>> -SRCREV = "fd03479116aebe4a9faf64e108b3ab7eeb8cb71a"
>> +SRCREV = "a5204ea3b15aa8eaaf2c3c7db7dfb177a84af730"
>>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y \
>>  "
>>  require linux-raspberrypi.inc
> 
> Can we squash this with the upgrade to 4.9.5?
> 

sent a v2.

