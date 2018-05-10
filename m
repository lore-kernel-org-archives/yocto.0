Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF98EE00E85; Thu, 10 May 2018 11:54:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F00E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 11:54:00 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id q22-v6so1496771pff.11
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 11:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=WGT7C7mYl8t90b1Xx7BZ8c9pKuRdqCN/tzIE9yyQP2E=;
	b=Ei5QR7Tb1yKQp0Wa+FRSapRowOHTxht5ucnrg0YsVvJhGRBjwR+5fL3/JGi4ifhPU7
	Nk8s9dBMOSNpbTmFFsSAF0CRvVoANKRV13xoH5jBo+7EZeyvDywpSdHaD4pIpBL3FHoC
	2onSxaiaUMlg4T7daMg8gDsCjWH7HkNuaMXnavWcVyY+42S59GizWKYKkEp/Bc8cYT+y
	ZrCCvYLhJ5UP4cEDy9E+rWvKxy5WZvFtYz0QMGRBgqA55inQ87C+5wE8Wd0K04mbcy7a
	DLDz14ShSPc/c5//nxpBs8MUoa+AdyaFDDT5hpaRTrQIjkAA9uY5AH1ifpxErqpOgjAf
	MnXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=WGT7C7mYl8t90b1Xx7BZ8c9pKuRdqCN/tzIE9yyQP2E=;
	b=VCxIiaFxQzbcEh2LqlZXhlu24rhTTQffukwk9hb6voaH/OrbtlHi0F0H8z+JNUUbvk
	61cFrVA4FFsblXqd6gqqW5Xjd1Libqtys3LGtgzIj3Y/BbEkv4+qiqc9SamZZc42Jgba
	Ch+NCRgpbmUENAchx7Dj5qC9X1PF5yVlhR3s+pWvsP3cokMYNXa+8XMhBmVseK6nJzEg
	CTNhvYjnYdISWojnIjhJgn3/3ED2QVQ1hAsz7LucEONk9+dFf2KDz1GtUeX5TJdBJMWd
	ISzMx2Y6Nn3R5Ef2q8QleKPFcFlwyBL+i5Tpuoac2CjdxWLUg+ZjzEqDyhMiVjUSj8Sa
	50Og==
X-Gm-Message-State: ALKqPwd7yMd/YDFwde7d2W/OKuZI+xYWUzcC3q3xKJ8sQYDSXi0YKFTL
	CA8jOFOv9xae/BLJ9cgJ/I2Txhyg
X-Google-Smtp-Source: AB8JxZqswIDYDxq8hfFwQzkiPrfeN95kIKhA/vT6rRAU+GTG41suSg7HQ8ZlPIFmS2e+55LnrzovHg==
X-Received: by 2002:a65:6349:: with SMTP id
	p9-v6mr1977192pgv.111.1525978439610; 
	Thu, 10 May 2018 11:53:59 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:49fa:9382:bcbc:28ae])
	by smtp.gmail.com with ESMTPSA id
	h191-v6sm2854665pgc.11.2018.05.10.11.53.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 May 2018 11:53:58 -0700 (PDT)
To: Dan McGregor <danismostlikely@gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CACS+7ZR6F1PgKxQxxh=iJzTQNmrrMVOQ01EuhcnotSAhB=AiEA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <1ceb098b-1836-4693-d03f-8801ac354c25@gmail.com>
Date: Thu, 10 May 2018 11:53:57 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CACS+7ZR6F1PgKxQxxh=iJzTQNmrrMVOQ01EuhcnotSAhB=AiEA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 10 May 2018 18:54:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Dan,

Thanks for testing

On 5/10/18 7:34 AM, Dan McGregor wrote:
> On 4 May 2018 at 18:26, Khem Raj <raj.khem@gmail.com> wrote:
>> Hi All
>>
>> As you might have noticed that gcc 8.1 was released this week, I am
>> calling out for some testing help on testing branch so we can weed out
>> issues you might see in your setups. so if you have your
>> builders idling over weekend, then you know what they can do this weekend :)
>>
> 
> Thanks for this. The only two issues I noticed are that the
> Wandboard's kernel doesn't compile with gcc 8.1,


what errors do you see ?

  and gcc-sanitizers
> now throws a packaging error on (at least) x86_64.
> ${libdir}/liblsan_preinit.o is a new file that should go into
> liblsan-dev.

That seems to be the case, I wonder why my world build for qemux86_64 
did not find this error. I would like to reproduce this and the fix is 
then simple.

> 
>> Highlighted changes are
>>
>> https://gcc.gnu.org/gcc-8/changes.html
>>
>> and porting doc is
>>
>> https://gcc.gnu.org/gcc-8/porting_to.html
>>
>> The branch is here
>>
>> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-8
>>
>> Its uptodate on top of current master oe-core
>>
>> May fourth be with you !!
>>
>> Cheers!
>>
>> -Khem
>> --
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-core

