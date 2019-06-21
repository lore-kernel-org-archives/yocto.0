Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CE1DE009CF; Fri, 21 Jun 2019 05:59:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E257EE00961
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Jun 2019 05:59:43 -0700 (PDT)
Received: by mail-io1-f67.google.com with SMTP id e5so1582851iok.4
	for <yocto@lists.yoctoproject.org>;
	Fri, 21 Jun 2019 05:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=o/AFSqeslNsev1/9v+pu2ZbM+r7lTfEP4IDVN/uEi4Q=;
	b=vID/RsYbBO6RcTCEO3RS9DgvD8MV4YtCN8EG2UBEYduNkHbeHyCeOs027gXz/tCuK8
	/B4UmMoXG95il/qmFdx2bVrf75kUu9wb6s3nBOhjF60Yh7PQAhzEtvQgtkT0XXIATLLq
	qmBDroPS8yFDPeOrTN1FhCc5HzlzzoQER3spUETy8erSSOKjU+5EepHd5dbYPymSuSCi
	LPlkkW2B3W8xkj2AEbq5Wd24+uU35cwnmwhRU9yN/cXPbvLZ/pYADN94hp36MPkNdzLZ
	vUBLugTvl7rzixRSy1vthiXJ4cyp9UlG8V1v42EVx6HdVa60SMMkgmDu/L8oJZrUOwu+
	pyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=o/AFSqeslNsev1/9v+pu2ZbM+r7lTfEP4IDVN/uEi4Q=;
	b=VI8b65tVK6L7FWwR31G6F35hCWWhkGSHpi9eAUsZxIupnHrhdAiqGrKMmQi6RbCtTc
	XBTeYK29ffDNM3thZ9WcCNlj/qsXfm0FukO4ARgPEIRgNbG96gqEAAGculsnZZMseBPL
	rjVwDnVHSk1WkwGoxjweAE++P9Qv0AaJcTnnlWZ5QFXbSkulrlvmk7+dXc6/u3z/mToI
	s0hwhi65LTE+y43xWovR/E4YLjrhNYxmHNm0WwBReEYl+71pYScnmLgHcJ7YPQpQj+xk
	2lDz7TdvUow4CpwZkoerNGPDm/H9W6MLbGmBv6ZQOEWq7LGM+7fZZvhRR7/VatzDFhLz
	VGUw==
X-Gm-Message-State: APjAAAXwOMNM45SgBTQUNwZqYQhyILMNbhdhLvojkx0vPyyfGaHTwpv4
	w+AKsJBwXngM/QxKdfE11ay65b6Phv8ZqMXX3oi2zA==
X-Google-Smtp-Source: APXvYqx8AiXPEgacvL3vWXIfQye9421p1Ucl+5tjlT6gZl8covsIaAi3pjMnOateCB6z4S4YtCpFo1f3TsWSBrdQ6qo=
X-Received: by 2002:a6b:8bce:: with SMTP id n197mr2269364iod.299.1561121983234;
	Fri, 21 Jun 2019 05:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190611070823.367-1-Martin.Jansa@gmail.com>
	<CA+chaQfFa0PyiDx78Qba1PnKYn+fDvKGS7TqGgGuzV-Mx+g9Sw@mail.gmail.com>
In-Reply-To: <CA+chaQfFa0PyiDx78Qba1PnKYn+fDvKGS7TqGgGuzV-Mx+g9Sw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Jun 2019 13:59:32 +0100
Message-ID: <CAJTo0LbmgN2Zg9JBaoQdvqk0CsGy+tAbTFqJ+SxuAxiap1xYFA@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-gplv2][warrior][PATCH] bc: use u-a for bc as well
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
X-List-Received-Date: Fri, 21 Jun 2019 12:59:44 -0000
Content-Type: text/plain; charset="UTF-8"

Done, sorry.

Ross

On Fri, 21 Jun 2019 at 13:53, Martin Jansa <martin.jansa@gmail.com> wrote:
>
> ping for warrior
>
> On Tue, Jun 11, 2019 at 9:08 AM Martin Jansa <martin.jansa@gmail.com> wrote:
>>
>> * bc can be provided by busybox as well (e.g. if you have your own
>>   defconfig and forget to explicitly disable it:
>>   ...
>>   *
>>   * Miscellaneous Utilities
>>   *
>>   adjtimex (4.7 kb) (ADJTIMEX) [N/y/?] n
>>   bbconfig (9.7 kb) (BBCONFIG) [N/y/?] n
>>   bc (45 kb) (BC) [Y/n/?] (NEW) dc (36 kb) (DC) [Y/n/?] y
>>     Use bc code base for dc (larger, more features) (FEATURE_DC_BIG) [Y] (NEW) y
>>       Interactive mode (+4kb) (FEATURE_BC_INTERACTIVE) [Y/n/?] (NEW)     Enable bc/dc long options (FEATURE_BC_LONG_OPTIONS) [Y/n] (NEW) beep (2.4 kb) (BEEP) [N/y/?] n
>>   chat (6.3 kb) (CHAT) [N/y/?] n
>>   conspy (10 kb) (CONSPY) [N/y/?] n
>>   ...
>>   ), causing conflict in u-a:
>>
>>   update-alternatives: Error: not linking /usr/bin/bc to /bin/busybox.nosuid since /usr/bin/bc exists and is not a link
>>
>>   and then whole do_rootfs or do_populate_sdk to fail because busybox postinst is failing:
>>
>>   do_populate_sdk: Postinstall scriptlets of ['busybox'] have failed. If the intention is to defer them to first boot,
>>   then please place them into pkg_postinst_ontarget_${PN} (). Deferring to first boot via 'exit 1' is no longer supported.
>>
>> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>> ---
>>  recipes-extended/bc/bc_1.06.bb | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-extended/bc/bc_1.06.bb b/recipes-extended/bc/bc_1.06.bb
>> index d8c8a86..3de1b24 100644
>> --- a/recipes-extended/bc/bc_1.06.bb
>> +++ b/recipes-extended/bc/bc_1.06.bb
>> @@ -20,7 +20,7 @@ SRC_URI[sha256sum] = "4ef6d9f17c3c0d92d8798e35666175ecd3d8efac4009d6457b5c99cea7
>>
>>  inherit autotools texinfo update-alternatives
>>
>> -ALTERNATIVE_${PN} = "dc"
>> +ALTERNATIVE_${PN} = "bc dc"
>>  ALTERNATIVE_PRIORITY = "100"
>>
>>  BBCLASSEXTEND = "native"
>> --
>> 2.17.1
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

