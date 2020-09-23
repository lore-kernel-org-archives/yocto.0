Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9593.1600853825829250365
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Sep 2020 02:37:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@basmevissen.nl header.s=default header.b=AKTvgGOd;
 spf=softfail (domain: basmevissen.nl, ip: 198.145.29.25, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 840E538C0717
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2020 02:37:04 -0700 (PDT)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 1E67D212002;
	Wed, 23 Sep 2020 11:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basmevissen.nl;
	s=default; t=1600853822; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kyeS4QDVG/5YPSZWJDoYtbVftP0uWc4yB0L4IgpbY2k=;
	b=AKTvgGOdMqek6ced5+WmzjpOljdqLFrd9+lWYYatxOJnn3F3iJr3Xg5G5KwqjwAZ7xFRsa
	Vpfl1bs+XpYloE82455waEnWBfP5r9RWy+m1Dhlke39mtW8g7oRxlHa/1l2BYkqUObvd1T
	MP5umM6/TG63uvZUYjo+bn81aHuGxTvCqgE8z2Y2JD+emPShPsT2oT7K5WwvrHv2GSlYSs
	Cw9YeI5iuckxqGCbuABEkOb53tYoUxa/eR61OBrB6KljTGXXgSdAa7MfXZEO8cbanIVyYZ
	b8Pj0C1AN/G/qIYqgrGh6aQTpN1VYAAq+w8gJ3IvZ6Es8PAooQWJj5yJiO+xoKslKlh+0q
	YzHWkqd+HUOeRo2FMptyj6jVev50E2UCx58SzVa8ubJGNafYFNSUKjpt2/gAOGAtjcEnyi
	KcIs1BWAJ8asvdt7BKa/hp9vGJYkGl01WIhvTPn0IOmtx2MW9fKBul/nzOJMEj3lA+Fkvu
	Ir6KKxdHWmLZ6Dqx4mgW5k9wsgyEOpD6dt9slNGE7jZ4G9Z24qPHZ49R6Lo6Z1GxAsVlNw
	DSfHVoi84S1ViZsH/pH+DBoPu9cRue/aLOToX46OyWh+S9tbpQ4cAXgyZkEb1jMHtN3p1k
	HAQDbvpIpmihZoSjE6AVIpYlN6ocqPYQjRmgj/9WsUtfI+3OB5qUQ=
MIME-Version: 1.0
Date: Wed, 23 Sep 2020 11:37:02 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-cgl][PATCH] ucarp: fix build error with gcc-10
In-Reply-To: <1456124b-5a9e-0561-f52d-91208b1928a9@windriver.com>
References: <20200923075623.23073-1-Qi.Chen@windriver.com>
 <b93b0b27a4633138dac7038f43d24fc1@basmevissen.nl>
 <1456124b-5a9e-0561-f52d-91208b1928a9@windriver.com>
User-Agent: Roundcube Webmail/1.4.8
Message-ID: <b431596ddd302ef1dde5ccaf0f892ab9@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2020-09-23 11:36, ChenQi wrote:
> On 09/23/2020 04:55 PM, Bas Mevissen wrote:
>> On 2020-09-23 09:56, Chen Qi wrote:
>>> gcc-10 uses '-fno-common' by default, causing multiple definition
>>> error. Use '-fcommon' to fix this problem.
>>> 
>>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>>> ---
>>>  meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb | 3 +++
>>>  1 file changed, 3 insertions(+)
>>> 
>>> diff --git a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>> b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>> index d17baa0..87e5ada 100644
>>> --- a/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>> +++ b/meta-cgl-common/recipes-cgl/ucarp/ucarp_1.5.2.bb
>>> @@ -37,6 +37,9 @@ SYSTEMD_AUTO_ENABLE = "disable"
>>>  export FETCHCMD_wget = "/usr/bin/env wget --secure-protocol=TLSv1_2
>>> -t 2 -T 30 --passive-ftp --no-check-certificate"
>>>  EXTRA_OECONF += "--sysconfdir=${sysconfdir}/${BPN}"
>>> 
>>> +# Fix build error with gcc-10
>>> +CFLAGS_append = " -fcommon"
>>> +
>> 
>> Why are you not patching the source to use "extern" where it is 
>> needed, like in pacemaker? How many errors does ucarp give?
>> Then it might also a patch that upstream will take, solving the issue 
>> forever in a proper way.
>> 
> 
> Could you please send out one?
> 

I don't have a tree with this layer in front of me. I just reviewed your 
proposed fix by setting the compiler flag, while you demonstrated in the 
pacemaker patch that the issue is easily solved by adding some "exern"s 
where they need to be. So I wondered why you didn't do that for ucarp.

>>>  # fix the perms for config.rpath
>>>  do_configure_prepend() {
>>>      chmod 755 ${S}/config.rpath
>>> 
>>> 
>> 
>> 
