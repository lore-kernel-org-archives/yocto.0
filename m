Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E30EEE02263; Mon, 11 Jun 2018 08:44:17 -0700 (PDT)
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
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60A5AE0223D
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 08:44:17 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id 15-v6so9942950pge.2
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 08:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qPmu1/+vSO2jC3Rt6b3rjjV76ZtfA50sLSEhh4inRWs=;
	b=cLYFUmmaLlM5dO0NCgmAqYZ7gD1IAJ3IHupbVfm9f1krcBaX82rs+YCRCXoTL6/OA7
	qhq7anQOXpFhwkLz7BbfIuuFMSoctbR3D+mVqvxlADEqLeDF1qrOCwU0/j8kEgcjqz7U
	xRQOclNRSomA1s5HUt69QXEEbDuxx9/gqeM+PB5VdGCLcQ8L334fjbSeUoGUUt/Vlnz6
	UMF+0PXw0oj1i2Pi6bGB0SVwdEM4zD0N//t2VzT65wzSbgSBqpjloyfipb6Lp6ME6T5q
	7Fr1ZLspZPHw62VQHD64Ad8HlBXF7WQkcPg96FtcWrPB4CAitW1c0dqjW6zmy1USGi56
	ZyTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=qPmu1/+vSO2jC3Rt6b3rjjV76ZtfA50sLSEhh4inRWs=;
	b=uQmCW3QRD5ufzJhtkvcwpzJEZ4JyaBYRDMiWaI0ZJnojM4FU98PSP5pwn6IYoHYu4J
	OpagicJwQqqqnNyfoxh5KTL1HcKJYAVEILwcmuSz4KPyfsohpJGzDiAM0FPt0yQBVsP4
	qrKL1aGPhU+L4WOFp9wAH67Sc61xwnoAB+CFnJkiqbdQFxVO1+dLovAG39XwOxBCWu5P
	Kh7sRodC4+oTMmGd5mNaB5SSGINjZ2fmb/+29foj94Gq322g5DsbraqAoSIDRqxMuH7U
	/W+gaGpg3VktVAS0WjdD5DYsbE6+x8+5TX+lcNQBBu23zyUohkAPD3iD3tNnrKIBmj8L
	MrOw==
X-Gm-Message-State: APt69E2aY/PPnn40TFPAJuVkbBGS/qNNxUHfbSXLQZLUd3e/sUBPzFgs
	fO1C7E5rfLzxI18VDYmFsaLp7g==
X-Google-Smtp-Source: ADUXVKJIt+OjF8x/s4aACgnH3Vf9x7jWmtX2rHwQB0aDngPDfI6Rly94CwtJrDk1RuFcaPinGFzqLQ==
X-Received: by 2002:a65:5546:: with SMTP id
	t6-v6mr15209299pgr.363.1528731856892; 
	Mon, 11 Jun 2018 08:44:16 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:3dc0:dfd2:694f:63cf?
	([2601:202:4000:1184:3dc0:dfd2:694f:63cf])
	by smtp.gmail.com with ESMTPSA id
	z19-v6sm41294720pgv.12.2018.06.11.08.44.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Jun 2018 08:44:16 -0700 (PDT)
To: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@yoctoproject.org
References: <1528071779-1499-1-git-send-email-akuster808@gmail.com>
	<a2f1bd58ecc1d54f6054613b8c783bf1e4899149.camel@linuxfoundation.org>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <4d816c86-4fc6-e270-d841-66ce75b26500@gmail.com>
Date: Mon, 11 Jun 2018 08:44:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <a2f1bd58ecc1d54f6054613b8c783bf1e4899149.camel@linuxfoundation.org>
Subject: Re: [autobuilder][PATCH 1/2] yocto-autobuilder2: add missing __init__.py to top level
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
X-List-Received-Date: Mon, 11 Jun 2018 15:44:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 06/10/2018 03:44 PM, Richard Purdie wrote:
> On Sun, 2018-06-03 at 17:22 -0700, Armin Kuster wrote:
>> This fixes the import of modules when starting buildbot
>> as master.cfg has:
>> from yoctoabb import builders, config, schedulers, workers, services,
>> www
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  __init__.py | 0
>>  1 file changed, 0 insertions(+), 0 deletions(-)
>>  create mode 100644 __init__.py
>>
>> diff --git a/__init__.py b/__init__.py
>> new file mode 100644
>> index 0000000..e69de29
> I've merged the other patch (2/2). I've now realised this issue is due
> to the use of python2 when we've been testing with python3. Rather than
> trying to support both, I'd prefer to simply suggest people use python3
> at this point.
>
> Fancy sending a patch to document this? :)
Sure no problem.

- armin
>
> It'd be useful to me to be cc'd on patches for the autobuilder stuff
> too if that isn't too much trouble as I sometimes don't get though all
> the mailing lists as often as I'd like.
>
> Cheers,
>
> Richard
>
>
>
>


