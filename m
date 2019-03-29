Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FCEFE00D3F; Fri, 29 Mar 2019 10:46:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56744E00CED
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 10:46:02 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id b12so1569876pgk.0
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 10:46:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=V8klEAyPSYaKONZ9soUnd/UZSjjDIbimeNnDhbpm7WE=;
	b=iFRni8FqlHH7G5B80P7HCBAqrvFjdMZfrs+v8KavAfjNZX+W7tmWWr/10iSqkTHLiu
	Mg9i+b6onJvS9slHyTjzNj3nbCWRY1BVSy4cCiOTRReDp048Or+G/IygwOAB19l07A23
	JMbBUMjZatTOpZmKWfubmxBtVkU2ix31mgiTLScnasvrMfgZKVeiU5bQOlzIPPYDt38+
	1GXyaZsh+wkp6/Ec+t97G0Q+/1rUherD6TipFeSqZy9dS5JWHInk9h2/cVBtcywuB/c6
	WW58mIKVG7Xjh0wQtVy8Oiuaz+srSdwMQ2McSro1EOItAGdTGBBv2MABYptE4395yu+R
	36Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=V8klEAyPSYaKONZ9soUnd/UZSjjDIbimeNnDhbpm7WE=;
	b=UMPS5PC6cg1Mj5fskNJ4JrUdxBz7UJumn04AzkinWqfyMUv2+ftYYSgJUkLOg96hbP
	wr3HZkOCjSn4PnispfAqG1c+YtOP35p1mmm+HilMwXdqFTOyOVZV0dwVxowsd/noiMYf
	xW6uTTwf7DwgP7uN6PgJcypFOk7OXutKDn964DLy865Xwytp1fP1SwVFHTiRbEk1oLJq
	pS4VsawEyWW2qM2mQdq3g+5txBZQcMQMsekZzWAHktzjBYzzj4e3caUqRY0KCNC07VVG
	Ged5ZXYadxVUExOaNjfnsyjsHhEqmz5OYGIgUNEmC4NNbbOnraR5PSw7DKQ31Ajwraey
	aFlA==
X-Gm-Message-State: APjAAAXyyAEhG+1DMxfVBytrRQ6N6nk4bVe/uLQS56PnxPlS57iTLhjg
	ZNKqY0lSxKpC39ngb1OSs+rZ077CMdk=
X-Google-Smtp-Source: APXvYqx9WRjIiyUtqorYbHwxmxYx7zdyD1jihboUPb5t2mOXQt5dgd217pqEal9D7rG+FQZ8q9J65g==
X-Received: by 2002:a63:da4e:: with SMTP id l14mr6840588pgj.96.1553881560943; 
	Fri, 29 Mar 2019 10:46:00 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:e49f:a080:8dd:cb67?
	([2601:202:4180:c33:e49f:a080:8dd:cb67])
	by smtp.gmail.com with ESMTPSA id 6sm2482864pfj.95.2019.03.29.10.45.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Mar 2019 10:46:00 -0700 (PDT)
To: Adrian Bunk <bunk@stusta.de>, Armin Kuster <akuster808@gmail.com>
References: <20190329052821.13718-1-akuster808@gmail.com>
	<20190329052821.13718-2-akuster808@gmail.com>
	<20190329065014.GA26574@localhost>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <817835b9-6cd1-4264-7e6a-733e37983b2c@mvista.com>
Date: Fri, 29 Mar 2019 10:45:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190329065014.GA26574@localhost>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/5] libldb: work around samba libldb packaging issues
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
X-List-Received-Date: Fri, 29 Mar 2019 17:46:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 3/28/19 11:50 PM, Adrian Bunk wrote:
> On Thu, Mar 28, 2019 at 10:28:18PM -0700, Armin Kuster wrote:
>> Samba and libldb overlap in a few places. This is the simplest fix for
>> now.
> Adding a quick hack for interaction problems between two packages
> that are both in meta-openembedded by adding a .bbappend in 
> meta-security creates a technical debt while not even helping
> users who are not using meta-security.
>
> The proper solution is likely to make samba use the external libldb 
> instead of an internal copy.
>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  recipes-support/libldb/libldb_%.bbappend | 22 ++++++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>>  create mode 100644 recipes-support/libldb/libldb_%.bbappend
>>
>> diff --git a/recipes-support/libldb/libldb_%.bbappend b/recipes-support/libldb/libldb_%.bbappend
>> new file mode 100644
>> index 0000000..2633a1e
>> --- /dev/null
>> +++ b/recipes-support/libldb/libldb_%.bbappend
>> @@ -0,0 +1,22 @@
>> +# This fixes this issue:
>> +#ERROR: sssd-1.16.3-r0 do_prepare_recipe_sysroot: The file /usr/lib/python2.7/site-packages/_ldb_text.py is installed by both libldb and samba, aborting
>> +
>> +EXTRA_OECONF += "--disable-python"
>> ...
> So just adding the meta-security layer will turn the pyldb* packages 
> into empty packages?
 I think I have a possible solution in libldb. patch out shortly.

- armin
>
> cu
> Adrian
>


