Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9EEDE009D6; Tue,  5 May 2015 09:26:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C43AE009AF
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 09:25:56 -0700 (PDT)
Received: by pdea3 with SMTP id a3so201647137pde.3
	for <yocto@yoctoproject.org>; Tue, 05 May 2015 09:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=yKWuZoX+hJ6xX5FQmqG4MHnuYW6AFinorDWjwLZ+tFQ=;
	b=kgsi3Z2tFfzG6Vx4bihtOVhZsvqWJh/VHuKaI5Ga7pvrGigB2wGUBlLK4WBz1gjEvM
	AKow5kXgaWDllScVf6LxXmYdStDkTsmcJzI7Fj/cC8vZfzZnJd+XdCk1qn81IM5cwlS6
	z7DOm1FBaIN+fpWlJMfDEynBXmd4n7XOotDPoKlnXzvq5D/Nv0ztRfhq8BYo67X76lCl
	DYu3wGc1PdFvLtoYpf7e0DG/uJhfFUdgw5GmtxfoCPdrw5tQF5/Ti5uHsUQW02A73+vT
	olsIppbGgic+GOH+AIgXc8PYycODZS6jCVykyBlT8U1E3UOCylM49DS0jhYKfgleeGkv
	rx7w==
X-Received: by 10.68.252.106 with SMTP id zr10mr53509978pbc.79.1430843121137; 
	Tue, 05 May 2015 09:25:21 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:84a:4937:3a73:d745?
	([2601:c:a700:3ba7:84a:4937:3a73:d745])
	by mx.google.com with ESMTPSA id
	lb1sm16547378pab.39.2015.05.05.09.25.19
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 May 2015 09:25:19 -0700 (PDT)
Message-ID: <5548EEE5.6080008@gmail.com>
Date: Tue, 05 May 2015 09:25:09 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <1430839611-22671-1-git-send-email-akuster808@gmail.com>
	<20150505155441.GE2378@jama>
In-Reply-To: <20150505155441.GE2378@jama>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] suricata: Fix QA warnings
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
X-List-Received-Date: Tue, 05 May 2015 16:26:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 05/05/2015 08:54 AM, Martin Jansa wrote:
> On Tue, May 05, 2015 at 08:26:51AM -0700, Armin Kuster wrote:
>> WARNING: QA Issue: suricata rdepends on nspr, but it isn't a build dependency? [build-deps]
>> WARNING: QA Issue: suricata rdepends on nss, but it isn't a build dependency? [build-deps]
>
> Shouldn't it be build dependency?

yep.. I do get confused from time to time.

thanks,
Armin
>
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   recipes-security/suricata/suricata_2.0.7.bb | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-security/suricata/suricata_2.0.7.bb b/recipes-security/suricata/suricata_2.0.7.bb
>> index 7e99791..813deff 100644
>> --- a/recipes-security/suricata/suricata_2.0.7.bb
>> +++ b/recipes-security/suricata/suricata_2.0.7.bb
>> @@ -54,4 +54,4 @@ fi
>>   FILES_${PN} += "${sysconfdir}/suricata ${logdir}/suricata"
>>   FILES_${PN}-dev += "/usr/lib/python2.7/site-packages"
>>
>> -RDEPENDS_${PN} += " python"
>> +RDEPENDS_${PN} += " python nspr nss"
>> --
>> 2.3.5
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

