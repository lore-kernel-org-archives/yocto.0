Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 277C7E00CED; Fri, 29 Mar 2019 10:45:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 021CAE00B43
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 10:45:24 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id 8so1395156pfr.4
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 10:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=YQPzqZYRyrZwFNAmhw1rwcd5fGUZGsj8FAlvdfAC4ko=;
	b=EoYwO3k0OPLYOZfZWoIdDduscuo1CPpHz8x2rdBveUqc5xp2KmKvq9763KWn/L298y
	WchK+v/CQvsGg7oDiKnMiZ6pzH9KoR+GcoiuDCAhVPCd+ydXfYuUoI33pPaAc4j5AlYF
	kf+SQhLQ0lkuumLDr8b6MnGBFC0CDMm5Ae9AZc3YU5y5LXyVGNTjZbPWEPFooFeG4+QT
	89n8ZGJp2iEm7Z1mkUWMZ9PvXzEGlEOqJVtxCBqB7D63e1vKBc179EcYtn9MqwIzLSpb
	glzxluQDTtXS0eTA9XAxuGXfaIjF0Qh45fZpoKx2Fi35GD5BISk9ALxYEhpe7sr0UZno
	WZtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=YQPzqZYRyrZwFNAmhw1rwcd5fGUZGsj8FAlvdfAC4ko=;
	b=fQ6wxzm/nbf9E59XsJvFQxFcUgcX0Ao1YN34RjPeaw6hRPUoirCVuQIFWQjWESkOCT
	aLnBZVkGy3gdxu+EbiUgxB2CkfPpjVR83brufdwFxNctPPRQuo3xSmzA4ppkzZV2NqMv
	gaX2UVeF/yV8dvoVdzUAbmBO6oTAXvfw8eUgCzElYZkfxiUGm7SEy5xQQTKdhKYQvVFD
	VkghTWceaw6IHI4wTpWYyZ55henw6Pg5eEkCfFMKP9r5lk4Jqb5UxKnVJ9ergDBk6q1B
	cVybpoHZixVH/vNE8/cMHCXy96yVgJkphDTT1vOyDYH9JLgK/C3Q4p3IFwFOXKPeaY7n
	9nZA==
X-Gm-Message-State: APjAAAXZD5aHrZg4blyq15h4ywod2IdfgYucmQ3kcB8RDzIB4eOF3VVS
	d+nlqzMrL9uYuuoXMksAgXZuO39jjDI=
X-Google-Smtp-Source: APXvYqxNiQIWUVZOmoBF00atsHqx9Rq7270eWjykMxrDzPPx+dow5baoWQzcV/hb7aOnfbBH98AaRA==
X-Received: by 2002:a63:5913:: with SMTP id n19mr47548993pgb.422.1553881523946;
	Fri, 29 Mar 2019 10:45:23 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:e49f:a080:8dd:cb67?
	([2601:202:4180:c33:e49f:a080:8dd:cb67])
	by smtp.gmail.com with ESMTPSA id
	a80sm8174106pfj.61.2019.03.29.10.45.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 10:45:23 -0700 (PDT)
To: Adrian Bunk <bunk@stusta.de>, Armin Kuster <akuster808@gmail.com>
References: <20190329052821.13718-1-akuster808@gmail.com>
	<20190329052821.13718-3-akuster808@gmail.com>
	<20190329065107.GB26574@localhost>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <b4464b36-497e-7c82-fe2c-98cdabc3729a@mvista.com>
Date: Fri, 29 Mar 2019 10:45:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190329065107.GB26574@localhost>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 3/5] sssd: fix a few runtime issues
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
X-List-Received-Date: Fri, 29 Mar 2019 17:45:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 3/28/19 11:51 PM, Adrian Bunk wrote:
> On Thu, Mar 28, 2019 at 10:28:19PM -0700, Armin Kuster wrote:
>> include a few more RDEPEND packages. remove init script as there really
>> isn't one yet.
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  recipes-security/sssd/sssd_1.16.3.bb | 14 ++++++++++++--
>>  1 file changed, 12 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/sssd/sssd_1.16.3.bb
>> index 8f7f805..e3fb254 100644
>> --- a/recipes-security/sssd/sssd_1.16.3.bb
>> +++ b/recipes-security/sssd/sssd_1.16.3.bb
>> ...
>>  # The package contains symlinks that trip up insane
>>  INSANE_SKIP_${PN} = "dev-so"
>>  
>> -RDEPENDS_${PN} += "bind dbus"
>> +RDEPENDS_${PN} = "bind dbus samba libldb"
> Even when samba support is not enabled?
Yeah, that isn't right.
thanks,
Armin
>
> cu
> Adrian
>


