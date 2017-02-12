Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EB5EE00A76; Sat, 11 Feb 2017 21:32:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45005E00A04
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:32:25 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 75so6494245pgf.3
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 21:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=pRV5lNASczX2NX8/pts1JecCDE+7qPIRe506AuLT6t4=;
	b=jMugzaCTu397VvpaTKXKFSF8/TC1gMg5U4N+fCMFZpZMU/5jW7/ciZQsVa1nW7QCXE
	CJP6/tkIdDwtO37+i/mVPSGot8BgG2OFa2khT5PSS+rG8J0q/cNWYiSqJuMN9wUpblLR
	f7fLec3CQUkTL1Geawqz1vHe1TU2dZSCMEqcsxYvmxa6PcqZqytk7trmLK0yZquvM3St
	eKkd7UajSzKE+N0kQgm8WY5JgQ05AGo1AtIZzcNc84M2853YCR3MMlhiEYEYLgPHtD8e
	ZO3pXefpBq4+m0OBm2Y1Y9lBrclGIMK8jAVYj/HPEHBNVU8v1kKT7h8YRLLoLYnfyLof
	RPaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=pRV5lNASczX2NX8/pts1JecCDE+7qPIRe506AuLT6t4=;
	b=n4h0hrGXBU2kRrcHr/gIsIocU53O44HdSk31XdBo6h70VV0x5sY1ZwuMJFhDhEJLxW
	us7jdhuc3Ld4yqdUQ7tzBdlk11pj/JL6XcetJC+u3f/YemHntCyjvnQml27J+PpYUBlO
	l5T+777Q6YYpZpfLOkW5KRlBfc4uGR/JqlLh02OC7Hfrekk7HuWMXtouJCjSUtPU7YJ8
	9EcfYMttmEOtiyFoN/kwGuZ7XZb3lCl8VDqLYaP6Cp3Tsu+vBjin+1W7qegP3wWKmfbJ
	BuTvg/X1W8QhvU24QuXqqri5w8hDUjMDk8adxYphtMeMEtCgHux2ZhCjJMKh/3K56Mkj
	DFRA==
X-Gm-Message-State: AMke39klI9mnokzyX7wpgLd5gAKWa5ZkoMEEheFsN8CIMUsgUy0VST2rwnQtZHewt8Fwbw==
X-Received: by 10.84.169.67 with SMTP id g61mr21825147plb.137.1486877545453;
	Sat, 11 Feb 2017 21:32:25 -0800 (PST)
Received: from CACSVMO-14452.local (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	n73sm13546928pfa.9.2017.02.11.21.32.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Feb 2017 21:32:24 -0800 (PST)
To: Paul Barker <paul@paulbarker.me.uk>
References: <20170209054903.31598-1-raj.khem@gmail.com>
	<20170209054903.31598-8-raj.khem@gmail.com>
	<20170209082412.18263c84@host0.betafive.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <84ccf3ab-c773-fcf5-ae81-055213958fe1@gmail.com>
Date: Sat, 11 Feb 2017 21:31:57 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20170209082412.18263c84@host0.betafive.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 8/9] userland: Upgrade to latest
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
X-List-Received-Date: Sun, 12 Feb 2017 05:32:36 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2/9/17 12:24 AM, Paul Barker wrote:
> On Wed,  8 Feb 2017 21:49:02 -0800
> Khem Raj <raj.khem@gmail.com> wrote:
> 
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-graphics/userland/userland_git.bb | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
>> index cec591d..5a83c8a 100644
>> --- a/recipes-graphics/userland/userland_git.bb
>> +++ b/recipes-graphics/userland/userland_git.bb
>> @@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
>>  
>>  SRCBRANCH = "master"
>>  SRCFORK = "raspberrypi"
>> -SRCREV = "0f015eaa17add5bca00ecf8a354ea62e19bd7920"
>> +SRCREV = "d35be767ce54ba46893ffa6d612b6b9d490b1e4e"
>>  
>>  SRC_URI = "\
>>      git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
> 
> Can we squash this with the other userland upgrade in this series?
> 

sent a v2.

