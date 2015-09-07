Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F4BFE00D48; Mon,  7 Sep 2015 00:40:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5DAEE00B57
	for <yocto@yoctoproject.org>; Mon,  7 Sep 2015 00:40:17 -0700 (PDT)
Received: by igcpb10 with SMTP id pb10so53543015igc.1
	for <yocto@yoctoproject.org>; Mon, 07 Sep 2015 00:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=en/SmUUNhZDDCkcK7KdVcg6tXm1Qiwu9vZD2zS58klE=;
	b=YR8W4H9wF94KPOY9LdqV9vlexuSz+qES79KSPFM6iC9r6hbdUJmy5WN4dC5h/Cn/C1
	oSELKee5cb5ng5ByUtSE2G/rULSX331pqI6GMpRp/m9GbfxlLvEXnZmBDrycJk1GqHSW
	HIsm04qhlbV68rk9DVn73p1/WEy+tRlC9Zcl9PCGP02/ziRUWYaRFws3+BXXlMSTRBGk
	pMcGwXcUWpmGfdN9+ThqjrglShfqFOZB7MZFkq1EhbeWK8XNgndHbrLYy+bn5V1RMu2y
	eJ94KiHa7IQCVmTxcdNGUW4JFoZ3zRcFUxFdwMeY3WFQebYs0DtN5bMg3fJpACSvK1bv
	+XaA==
X-Received: by 10.50.85.6 with SMTP id d6mr25591079igz.26.1441611617575;
	Mon, 07 Sep 2015 00:40:17 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	d3sm7363430igx.5.2015.09.07.00.40.14
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 07 Sep 2015 00:40:16 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <55ECF934.80902@gmail.com>
	<31635424-0451-4ECF-A65E-F45B8D316B0B@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55ED3F5A.2060903@gmail.com>
Date: Mon, 7 Sep 2015 03:40:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <31635424-0451-4ECF-A65E-F45B8D316B0B@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Mon, 07 Sep 2015 07:40:22 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/07/15 03:21, Khem Raj wrote:
>> On Sep 6, 2015, at 7:40 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>>
>> I can't explain why, but when I build "core-image-minimal" for
>> MACHINE=raspberrpi2 I get the following SD creation error:
>>
> which shell do you use for /bin/sh

$ ls -l /bin/sh
lrwxrwxrwx 1 root root 4 Nov 22  2014 /bin/sh -> bash

$ /bin/bash --version
GNU bash, version 4.2.53(1)-release (x86_64-suse-linux-gnu)
Copyright (C) 2011 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<http://gnu.org/licenses/gpl.html>

This is free software; you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

