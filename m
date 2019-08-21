Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D4E1E00DE0; Tue, 20 Aug 2019 20:13:44 -0700 (PDT)
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
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0ACCE00DA4
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 20:13:38 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id n9so472946pgc.1
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 20:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=43RIfVFyfA7eof5N6ne4NWfoc/RM/T8ik0PdnUC2LLM=;
	b=IRcXD2N1PbwYWWZ7HQ463PFGs5QGUdZqPlUxe26HtDvOEQBEC/GX/C4GzCVjesBQ90
	kmtW3/gc/SNmdv8LERx/hXbATGhLsC9laSiWB5mLZNdU6ASASQdhbNr7+0gxdRu4q7vY
	m5wMYkvtiQo66GmYweH14Q3srG4JmlsRoSqJbL76J6jkx5E+DmopoXPwMCzMWLJPKQjq
	PsAyCQ/DORJtVB2SEplBcNJzOV77Yt2EmdVC9f75fVWtrIlRzbzgtezpYgZz9t+Uff3N
	j0P3JohV/7/tmglvqY15CLT1SZm2l1AbE3bZGYUcqV6UJDX1Utd1zRdWQqxdgGxgafdR
	oZEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=43RIfVFyfA7eof5N6ne4NWfoc/RM/T8ik0PdnUC2LLM=;
	b=EI0P9R2+0DL4EWoTKSB+6/ApQKJfvzcD33KyGloua4W0Hbk88L1pq9B2W99XNBLUj4
	1vItOsT3XxVOkhrGFRRk3mWIJ4lpZf+XqKPRYdVO3HMQKrRGDeCjtIaVnBsA+til/ylb
	4u4bAhhc2ZbCyzN+iBh7xawLsLvfJ7wk0obky0ppVROOyr8iPz7P3J2wt2UaaW1fXnYk
	rmrexmREjFvNh3FKIKjuhUfZ1zSLbLNF0hNdKZArfBB2JCF/7wPU9rJn9T8eohn88jut
	DqzMlQCpa1mTchl/dU3y+iHMaL4EGCIt4F4Q7SeZQnNI4KybmrpJHZZK3OVb/HKtO4do
	qvXg==
X-Gm-Message-State: APjAAAXe4K8gKs8lfyNgU0+mh5Dyrom3WmvaUvZwJB3+zE6jcU2XtqFD
	ss2WhUJQ+N9ZvjPtrDUD8hI5ono9
X-Google-Smtp-Source: APXvYqxAjU1pzUy+8VSB7DgomS2Z05NZCc4u+UswLGQRGv7IMkyhCeuUm/HFqhgdWmJvSbtOIuhtSQ==
X-Received: by 2002:a17:90a:6581:: with SMTP id
	k1mr3173987pjj.47.1566357217714; 
	Tue, 20 Aug 2019 20:13:37 -0700 (PDT)
Received: from [172.20.6.109] ([12.235.222.84])
	by smtp.gmail.com with ESMTPSA id j6sm1595588pje.11.2019.08.20.20.13.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 20 Aug 2019 20:13:37 -0700 (PDT)
To: "Hongzhi, Song" <hongzhi.song@windriver.com>, yocto@yoctoproject.org
References: <20190813235440.16385-1-akuster808@gmail.com>
	<20190813235440.16385-3-akuster808@gmail.com>
	<303ae12d-8834-84ef-e54d-91faa81d1551@windriver.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <7a63215b-8dd8-94a7-092d-1d283cc58a1f@gmail.com>
Date: Tue, 20 Aug 2019 20:13:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <303ae12d-8834-84ef-e54d-91faa81d1551@windriver.com>
Subject: Re: [meta-security][PATCH 3/3] linux-stable/5.2: add stable bbappend
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
X-List-Received-Date: Wed, 21 Aug 2019 03:13:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 8/20/19 8:11 PM, Hongzhi, Song wrote:
> Hi Armin,
>
> Do you know where is linux-stable_5.2.bb?

yes. in meta-odroid.

I suspect we could just use linux-%_5.2.bb

- armin
>
> Thanks,
>
> --Hongzhi
>
>
> On 8/14/19 7:54 AM, Armin Kuster wrote:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>   recipes-kernel/linux/linux-stable_5.2.bbappend | 4 ++++
>>   1 file changed, 4 insertions(+)
>>   create mode 100644 recipes-kernel/linux/linux-stable_5.2.bbappend
>>
>> diff --git a/recipes-kernel/linux/linux-stable_5.2.bbappend
>> b/recipes-kernel/linux/linux-stable_5.2.bbappend
>> new file mode 100644
>> index 0000000..76b5df5
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-stable_5.2.bbappend
>> @@ -0,0 +1,4 @@
>> +KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES",
>> "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
>> +KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES",
>> "smack", " features/smack/smack.scc", "" ,d)}"
>> +KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES",
>> "yama", " features/yama/yama.scc", "" ,d)}"
>> +


