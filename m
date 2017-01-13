Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE5F0E0034A; Thu, 12 Jan 2017 18:05:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD1A1E0030B
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 18:04:58 -0800 (PST)
Received: by mail-vk0-f68.google.com with SMTP id j12so2771831vkd.0
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 18:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4TL5ZgL/husik2iMOLDRv/PkxlTQVdsRu2JYBoaPF+k=;
	b=kO1TaBT1EL2kMpwC9aYWEC0WvwKlspb2/yWtn7NjMT/Qw1QRtkhoF/0K7/k9Nhh6hx
	uuYIt9Sy4m6fUtkoNXqTQAd7NL6+NsGZRq9P4DijkBBejoGyrTRO8GdXXptxGUHFuuIA
	PoJDmZ4XdWywSOuQdbPPDscOMJjO2LRLfCoHYROvU5C0G8ryO7rDu7nVzCbns+53v+R9
	+er7PQu6SlYEcyD7ewHd3b6DbXFmTlT1DXKigYv8+isbZTOGfZQhPoff6XaPQRPgaPpx
	3SIz+GRtxpNn5+LBmpr8R2Czx8oUqOI/LBJYbKKIORNXkbKTg8K0I8CJyvqlfwk03T0e
	zmpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4TL5ZgL/husik2iMOLDRv/PkxlTQVdsRu2JYBoaPF+k=;
	b=iUiy3Qbu19LZgvG9RsvAK+6vvspurwThdm0TPgar8mz1W28TQRnfvEYuTJNJfH27E4
	g0onjOsi2NJC6udayicXEjmrq9c20j6tPOBqXfLJfcu09RZnTI8cDAUUEu8rQAk1IK//
	ShOiSiuh4CXZy4PIrXCoCvHKrgBNzHIiDcqd92XNRNMr3qcjeMX1hCrZsaZ6pry8EhKS
	1byRuccrhi/5CpaN26DGINdHxv6dTjZeb3NKq888u3WN5QFRv9zrih+vTorB179Vdy1N
	QO1e09GQ/50BsAS0clybzKVGRPrBaIKNlCjpyzTEvrtzQoVuA6BXXP01hc7oXgv9EQPv
	Iy6Q==
X-Gm-Message-State: AIkVDXJ/Por5O09kJPnD58JJuNjiahuAbHrB7+bz5K6P0cjn93m2ndzUcWlDtvZg2OWkoPLIbJQXkeKAhlyyZQ==
X-Received: by 10.31.153.8 with SMTP id b8mr4045428vke.140.1484273097469; Thu,
	12 Jan 2017 18:04:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Thu, 12 Jan 2017 18:04:26 -0800 (PST)
In-Reply-To: <CAK18fxEs0UGdhSZ18yiEB5s2fDe3zExHX88Gv-DYt=VJheDWow@mail.gmail.com>
References: <20170112182905.15203-1-raj.khem@gmail.com>
	<CAK18fxEs0UGdhSZ18yiEB5s2fDe3zExHX88Gv-DYt=VJheDWow@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Jan 2017 18:04:26 -0800
Message-ID: <CAMKF1soVdmjRHd9z8N_4d7N8SX25co=kJh9M1P6wzNQgqLuJGA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.8.bb: Upgrade to 4.8.16
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
X-List-Received-Date: Fri, 13 Jan 2017 02:05:01 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 12, 2017 at 1:54 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Jan 12, 2017 at 6:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>> index 7511f93..be25e65 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>> @@ -1,8 +1,8 @@
>>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>
>> -LINUX_VERSION ?= "4.8.15"
>> +LINUX_VERSION ?= "4.8.16"
>>
>> -SRCREV = "c8af0c2f515556ef052913d552b6b11501c71996"
>> +SRCREV = "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
>>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
>>  "
>>  require linux-raspberrypi.inc
>> --
>> 2.11.0
>>
>
> Merged both to master.

 What do folks think about deleting all other kernel besides 4.1 4.4 and 4.9

cheers!

