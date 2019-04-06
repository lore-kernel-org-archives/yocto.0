Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 105C1E00D15; Sat,  6 Apr 2019 13:08:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03C22E00CDF
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2019 13:08:43 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id e24so5184995pfi.12
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2019 13:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=49IBQBsv4LqhTu0+hG9xP/yoqbw2pNtjCkC04Tx5VmM=;
	b=b8MC7sqKyk9Ts+qRKV67uSx+VODprvp9csjqVAIBTZmhlKU9tdAWiktFCV5wIhpobS
	Fl8LTDvbclXtXsSVFVV79UY2Y4priP7LWG75T2HNPvZfU7QZkQ3uxTMmq1dA3nn/Dbio
	kXuK+hYXnWqG09LGp/os0bWhRL7oyZzq4ayB3jEKvwAy9/VnA73b9Gq+AORWi7TCSbzI
	cswthWp856EaeVZQi0LllgIy1Q9sl208TNGyfwSsVh6HoDjTbhjABO0WkqjfzCzGD+kE
	5YvumgT3k5UB90ByrUxjOziFjTkrJywxIfrIERq/amkLL6wBWX2xeD9orOdqJBSc+9E5
	Jyzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=49IBQBsv4LqhTu0+hG9xP/yoqbw2pNtjCkC04Tx5VmM=;
	b=axqUuFTJMUN2oKZsGoDyqp8WC+apG1SMn5rdiU53ZkG3I7Uv0LlOfY5xinrnTToXCF
	M1rfjMkMa8KuiyT9xeOzzEzIQejer4CS2ameKlwAJ32Pad2xWpJ1vPZsZx3f6qz7cRqB
	JlkjzIlzcs9CwSjJv0E9G/5yxW4g4eOoRffKV6EP7rz/PIDuZEOUrjLdZT+eHWn2CBPO
	qSpRctT5DwSjgSU12l2Fk76V6rB6A8gJDXAGB2NSipobGo1drQ0IMzPRuG312oBg5vg0
	xcAvniVKOyO7qU6julyzvrgm96WzpT9fiNbcK46LmLFOW80AxZxuObV78Y5zVfDJNZ0O
	d9tA==
X-Gm-Message-State: APjAAAW69XWnUozLCKJM51X47KxL6wqntswTWVK0m8SrrrW+EJb6VQY6
	n6HRIrjbW887tQMKrA9aLgTm7vx4HF8=
X-Google-Smtp-Source: APXvYqyvX3LN7nD+L9hiMxw0SpD2np+QjBHdzdIAGDu+6BOUH9GlvBv5Qy9HEc63cu4CgA+bO1ubaA==
X-Received: by 2002:a62:75cd:: with SMTP id q196mr11492490pfc.70.1554581323275;
	Sat, 06 Apr 2019 13:08:43 -0700 (PDT)
Received: from [10.240.241.171] ([125.17.164.130])
	by smtp.gmail.com with ESMTPSA id
	d75sm51910517pga.66.2019.04.06.13.08.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Apr 2019 13:08:42 -0700 (PDT)
To: Adrian Bunk <bunk@stusta.de>, Armin Kuster <akuster808@gmail.com>
References: <1554561940-31363-1-git-send-email-akuster808@gmail.com>
	<20190406150140.GA25634@localhost>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <b0151407-4541-79ae-c05b-04198e4c7c57@gmail.com>
Date: Sun, 7 Apr 2019 01:38:38 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190406150140.GA25634@localhost>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] clamav: freshclam need bind to run
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
X-List-Received-Date: Sat, 06 Apr 2019 20:08:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 4/6/19 8:31 PM, Adrian Bunk wrote:
> On Sat, Apr 06, 2019 at 08:15:40PM +0530, Armin Kuster wrote:
>> Add it to the rdepends for that package
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  recipes-security/clamav/clamav_0.99.4.bb | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
>> index 6219d9e..dbe903f 100644
>> --- a/recipes-security/clamav/clamav_0.99.4.bb
>> +++ b/recipes-security/clamav/clamav_0.99.4.bb
>> @@ -152,3 +152,5 @@ RCONFLICTS_${PN} += "${PN}-systemd"
>>  SYSTEMD_SERVICE_${PN} = "${BPN}.service"
>>  
>>  RDEPENDS_${PN} += "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
>> +
>> +RDEPENDS_freshclam = "bind"
> freshclam depending on a DNS server looks very wrong.
got talk to clamav folks then.

>
> What is the actual problem?

ClamAV update process started at Sat Apr  6 14:59:25 2019
WARNING: Can't query current.cvd.clamav.net
WARNING: Invalid DNS reply. Falling back to HTTP mode.
ERROR: Can't get information about database.clamav.net: Temporary failure in name resolution
ERROR: Can't download main.cvd from database.clamav.net
Giving up on database.clamav.net...

because 

Use DNS to verify virus database version. Freshclam uses DNS TXT records
to verify database and software versions 

therefor I am including bind.

- Armin

> cu
> Adrian
>


