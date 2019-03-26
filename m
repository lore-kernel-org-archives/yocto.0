Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37253E00A54; Tue, 26 Mar 2019 15:52:43 -0700 (PDT)
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
	*      [209.85.214.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2D69E0097C
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 15:52:42 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id bg8so2317064plb.0
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 15:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=zG61XcVy+rL2kBZB1vkpQem9YuczXlc+NJDS4n1jX6c=;
	b=aCMj2zyBF3V9LrUctY+LRCSkQNVV35g1TTwXk88PigANR4UN45t7K0DUduKSAcB/8A
	VDRKnQsdc/XAJ0gHhbYprriDeJnez54yWpiWA9ZCYyrVKSw/r3EmEYqy5AnUVgc9TmIM
	fwMn+FXLYc+bkaZA6hdL+1qPkVFIsGqdLKzLOS9UBTYZNyNg+OJ6UMl9EbSKMVTsKV5E
	Fe8s9DBCjxhFbLQtAQjhstCYWJFdu0fmJiUCmeuOriqxvaz59TkodazbtRlWNM9W6uO5
	/phZ2bWqpTRxtmbn/fMsN7Ur/R4nwc4H15BHAcaqSqoq7S9TD8kARAxA9vk2pw0ywiwP
	HuVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=zG61XcVy+rL2kBZB1vkpQem9YuczXlc+NJDS4n1jX6c=;
	b=tFD135pYbf/nIQ14uyarDZPZrhv9MI8K4maYnwm0MG4cTaKBKumcH+4AAq5zkNgA24
	xP+hV1ifbQjO5hTScojqi9b0EpvTw7BZ2xTbHOc0tU6XgW9I29RS9HzQtHb9IzQqDvuk
	0PSxDv4pvZMYh1pTBvlEy+u0ZxNHXJJmEYr2HP9tPYi+z6s5ed9fzLK33T0w2s48/tO+
	al2bqaJVvMnq1kwNOse1kYKX4sjlU7NBOc0ivdkOU9yBCV7n2G/NX7r6y+VSILcNnfhg
	crk8pX0Aiapjqs/kklKSYFwEcBQRk73+v5LkVm0nndvzl5aEi7DtNb3p20cecA7VUR3h
	CMBA==
X-Gm-Message-State: APjAAAVoegCKvP+ReTSy6Pjd5sEJyijknAiyJpJkIDjcQ9nEqdAd5iQd
	9XTFIwfOZYId75vWQ6VDSqyFyBX0
X-Google-Smtp-Source: APXvYqzGRDoKZyk1hKro4r7eGHeJjYYr4t40BdN9Kzg7AcaIBqjd9gnmFuu49IXR8FgqdQ5HfqO4fQ==
X-Received: by 2002:a17:902:203:: with SMTP id
	3mr34135694plc.336.1553640761949; 
	Tue, 26 Mar 2019 15:52:41 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:acc8:b522:e35e:e13c?
	([2601:202:4180:c33:acc8:b522:e35e:e13c])
	by smtp.gmail.com with ESMTPSA id
	14sm34232377pft.137.2019.03.26.15.52.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Mar 2019 15:52:41 -0700 (PDT)
To: Adrian Bunk <bunk@stusta.de>
References: <20190325165855.9222-1-akuster808@gmail.com>
	<20190325165855.9222-2-akuster808@gmail.com>
	<20190326102444.GA19885@localhost>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <6dae574f-f641-94ff-4bf1-09eac31e6378@gmail.com>
Date: Tue, 26 Mar 2019 15:52:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190326102444.GA19885@localhost>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 2/2] sssd: fix libcrypto version used
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
X-List-Received-Date: Tue, 26 Mar 2019 22:52:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 3/26/19 3:24 AM, Adrian Bunk wrote:
> On Mon, Mar 25, 2019 at 09:58:55AM -0700, Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  recipes-security/sssd/sssd_1.16.3.bb | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-security/sssd/sssd_1.16.3.bb b/recipes-security/s=
ssd/sssd_1.16.3.bb
>> index 8f7f805..d39fa23 100644
>> --- a/recipes-security/sssd/sssd_1.16.3.bb
>> +++ b/recipes-security/sssd/sssd_1.16.3.bb
>> @@ -33,7 +33,7 @@ PACKAGECONFIG[manpages] =3D "--with-manpages, --with=
-manpages=3Dno"
>>  PACKAGECONFIG[python2] =3D "--with-python2-bindings, --without-python=
2-bindings"
>>  PACKAGECONFIG[python3] =3D "--with-python3-bindings, --without-python=
3-bindings"
>>  PACKAGECONFIG[nss] =3D "--with-crypto=3Dnss, ,nss,"
>> -PACKAGECONFIG[cyrpto] =3D "--with-crypto=3Dlibcrypto, , libcrypto"
>> +PACKAGECONFIG[cyrpto] =3D "--with-crypto=3Dlibcrypto, , libcrypto10"
>> ...
> This looks wrong for multiple reasons, and it still gave the same error=
=20
> when I tried it.
That is troubling. I don't see any errors here. Thanks for the feed
back. I will have to dig at this a bit more.

Can you provide some build detail so that I can reproduce it?

>
> How has this change been tested?
Not for this change.

Which reminds me I should automate some testing for this package.

regards,
Armin
>
> cu
> Adrian
>



