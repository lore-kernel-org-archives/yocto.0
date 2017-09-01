Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80D03E00CD5; Fri,  1 Sep 2017 06:41:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.42 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92FB0E00B1B
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 06:41:40 -0700 (PDT)
Received: by mail-pg0-f42.google.com with SMTP id 63so719360pgc.2
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 06:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=x80KZrOUdnAwzXBRgTFBjuJ5y3NeNzedwJsuX7WNQxE=;
	b=oEDknkw+Ec4D+b47QQHM4X6H29wc0ui2bRjCdt6heY4IIZ9VNFH105/051uB/HC82j
	UCSGbjdgT9DKb7CFYL+hu17KjUxq47UQrgSMlOaQhgdHpl7GC7h58eHDgPqaoIO9Qc3B
	6Eih2jn36UAsyj11uXsLbFWNhCICWXezMcn/AQuHZEEnz9aHQ47fkyFLbx7TnHWl2IQl
	hRenr2b3LV6kxk3gebL5O90DrYLW4UnT+Exp3TvmtAkFN2QUPDclVU/ATkLU+oO+J48j
	36W6CQMAx1/+Lg5utQY27Nu1NnhfM6O0FAlwriyf8TWpiqtAt3KNC7X0Ub5vD6fSWKua
	Ee/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=x80KZrOUdnAwzXBRgTFBjuJ5y3NeNzedwJsuX7WNQxE=;
	b=r79GI8t1FJkvllIGt/Q2hAqAbIC6NSbCaJ6SQu/JuPlhT0cW3GIwViVJ6f5Tvl6TdM
	oAofl0iYiaAJzx9vgIgJBjgcLSSM7gj7qCmZeYzJj6UrikQ4+X5Ltzc1Y3F1onE7/532
	I0LAQwmehBKySBEDupW33NQHVHRamfSVUPv6xqmnjy5RQmRf1gm4Nh655JlwFh0Sb9tM
	o7nAhw2V8XP4b9iVAsF4BqD9G2Zuq0lfN073sjqlgs74PvRzx0qVwhU6VRAECZlwHqEf
	js1h7OTPCF507JIhgOnsXZ7ynhpzlgJgvW0J+6EFE6Kq+HMkvlWxIt1rjdnoDyKyRZDp
	186A==
X-Gm-Message-State: AHPjjUjDNJQ0QHq0ZgRYatv4pg/6NUQ28+S7wCxixOZhwwahQ2fSAXGH
	8xjKhj8FxFQ6/A==
X-Google-Smtp-Source: ADKCNb7xj9NJFhqeaNRProh6TJH7TO5dFs3C0oOzJHsWKI+DJTDl3DFd7Qy+Q2OX0lL5dy4qHEKrtg==
X-Received: by 10.98.223.152 with SMTP id d24mr2386755pfl.22.1504273300061;
	Fri, 01 Sep 2017 06:41:40 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:c400:6ad5:9d97:9621?
	([2601:202:4001:9ea0:c400:6ad5:9d97:9621])
	by smtp.gmail.com with ESMTPSA id
	s80sm335829pfj.118.2017.09.01.06.41.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Sep 2017 06:41:39 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1504242563-15931-1-git-send-email-akuster808@gmail.com>
	<5744359.HJMKcuFlQh@peggleto-mobl.ger.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <63af7c38-4a42-2530-1024-eb03496988f6@gmail.com>
Date: Fri, 1 Sep 2017 06:41:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <5744359.HJMKcuFlQh@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] fail2bin: Add new package
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
X-List-Received-Date: Fri, 01 Sep 2017 13:41:41 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


Hello Paul,

On 08/31/2017 10:35 PM, Paul Eggleton wrote:
> Hi Armin,
>
> On Friday, 1 September 2017 5:09:23 PM NZST Armin Kuster wrote:
>> Fail2Ban scans log files like /var/log/auth.log and bans IP addresses having too
>> many failed login attempts. It does this by updating system firewall rules to reject
>> new connections from those IP addresses, for a configurable amount of time.
>> Fail2Ban comes out-of-the-box ready to read many standard log files, such as
>> those for sshd and Apache, and is easy to configure to read any log file you
>> choose, for any error you choose.
>> ...
>> +++ b/recipes-security/fail2ban/fail2ban_0.10.0.bb
>> @@ -0,0 +1,41 @@
>> +SUMMARY = "Daemon to ban hosts that cause multiple authentication errors."
>> +DESCIPTION = "Fail2Ban scans log files like /var/log/auth.log and bans IP addresses having too \
> Typo ^. Also typo "fail2bin" in the shortlog.
ah.. thanks for the corrections.
>
> Great to see this added though, and that it's alive upstream - I wrote a recipe
> for fail2ban a few years ago (around the 0.8.4 times) and then noticed it had
> a number of security issues and so I dropped it. I just found I still have the recipe
> and I was doing a few things like sed'ing the hardcoded paths in the config
> and setting CONFFILES that you don't have here, so I could send you a patch
> afterwards with those tweaks if you like.
sure.

kind regards,
Armin
>
> Cheers,
> Paul
>


