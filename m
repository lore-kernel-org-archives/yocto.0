Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6A29E00D4E; Fri, 27 Oct 2017 12:26:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9D8BE00D48
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 12:26:46 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id b186so14919341iof.8
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 12:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aoOUfOQ4CyZF4kCJaw0UwMjt50UHjWSjc+fhRaB4Ewk=;
	b=SWy+VCHm0q2P+wDgQPIB28TCHGPYZI3r/ZCu6OF/UzzW2qMUt7yVfBSuw011NTglXW
	s1an5Wh5AOP9z4hpbRoy3kADvLOULqveGPfwdVxX/6980QfQvNz6dcFJIX4mWGI+AI/5
	9h+yYTBbV/o0We1Cw9sj3PFFj1PVy+FQKjaefpYVeki8vqOftsnS0bJFpCseXRBroSW2
	iontfiUQaaQG/xP0V4yy+c62kAYewHYdREtYgLXgHBYbZOkVfDvZV4cuV6F1ZJofaHBA
	svbP8ZFWtoCTbwi3Uf6TKno55d1Uz25ZI0Iz2KvaNxI1xNwVvgK3ElEMgwcUEUPgBIUb
	j2qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aoOUfOQ4CyZF4kCJaw0UwMjt50UHjWSjc+fhRaB4Ewk=;
	b=FbR219KXxfhrgviRQIw7FH5l0Ol7EM+s7LZY+hMk9bwCAEkL6wrkL5HFqxAntvZs9b
	qN/FarOsS+dpPMhTvjVWNkjOHZ6MEe0/EZfGVs6YcBkgR3WWT1eK6/AY9OiJrXrS7m3j
	gtOe0WZmrl57lada94o2ruxt71qZLkvcceDp5jM3FEEQG3m48cLZUPwJfGynZOtDkYPQ
	kK/6BXxME/ECM71sb7k7G4P+cWEGBHOuDsXDS2Wv5/lSP14mXmAJY2u1M1R6yOaBlv/V
	LWLAa2xq3qYpiaXbPC6asp4N5+YXheY4Mr2DhOClUjcA+xi1wx5ELFvSujwYlDhbMqAM
	/Hyw==
X-Gm-Message-State: AMCzsaWfShEUU3YNGCB+RljFpLC/xdTE4o1n4B/9bJ8e0YPKH+Wfbp5r
	kwGqWi3heiSgnxyHbEu0cAYRsSK+9Vnb+ooNa3I=
X-Google-Smtp-Source: ABhQp+TqnbsNHGwva62HkmJP4PdHOu5O1/yl661Ku7tcguPES3VpNNSKTGPAXen1q9EqKx9ppwNByGiiSCAV0TP+yXI=
X-Received: by 10.107.154.138 with SMTP id c132mr1855080ioe.95.1509132405703; 
	Fri, 27 Oct 2017 12:26:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.167.15 with HTTP; Fri, 27 Oct 2017 12:26:25 -0700 (PDT)
In-Reply-To: <CAMKF1srYn25ZEjJz3_sxKMU-G+wKKm7iadd43Q5euj60HNHwVw@mail.gmail.com>
References: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
	<CAB2nKc80rA51Fi45BSM0GZrpwV7TV3OTXJB3i+nZnaKEEm7N5A@mail.gmail.com>
	<CAMKF1srYn25ZEjJz3_sxKMU-G+wKKm7iadd43Q5euj60HNHwVw@mail.gmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Fri, 27 Oct 2017 21:26:25 +0200
Message-ID: <CAB2nKc8qJO12LZeeWrOFH8OtP-TOc20LANmVzi6nwOR1H-SUmA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-oracle-java][PATCH 1/2] Fix do_populate_sysroot: sstate found an absolute path symlink
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
X-List-Received-Date: Fri, 27 Oct 2017 19:26:47 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Khem,

it's true, the only revelant part is

> +       ln -sf ../lib/jvm/${JDK_DIR}/bin/java   ${D}${bindir}
> +       ln -sf ../lib/jvm/${JDK_DIR}/bin/javac  ${D}${bindir}

I shouldn't git send-mail on friday sorry,

Best Regards,
Vincent

2017-10-27 20:11 GMT+02:00 Khem Raj <raj.khem@gmail.com>:
> On Fri, Oct 27, 2017 at 9:47 AM, Vincent Prince
> <vincent.prince.fr@gmail.com> wrote:
>> I was mistaken, following patch fixes it for real
>>
>> Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
>> ---
>>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 14 +++++++-------
>>  1 file changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>> b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>> index a7210d9..1092a34 100644
>> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>> @@ -12,16 +12,16 @@ JDK_JRE = "jdk"
>>  require oracle-jse.inc
>>
>>  do_install_class-native() {
>> -       install -d                              ${D}${libdir_jvm}
>> +       install -d                              ${D}${libdir_jvm}
>
> This change is not relevant here I think.
>
>>         cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
>>
>> -       install -d                              ${D}${bindir}
>> -       ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
>> -       ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
>> +       install -d                              ${D}${bindir}
>> +       ln -sf ../lib/jvm/${JDK_DIR}/bin/java   ${D}${bindir}
>> +       ln -sf ../lib/jvm/${JDK_DIR}/bin/javac  ${D}${bindir}
>>
>> -       install -d                              ${D}${JDK_HOME}/bin
>> -       ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
>> -       ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
>> +       install -d                              ${D}${JDK_HOME}/bin
>> +       ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
>> +       ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
>>  }
>>
>>  BBCLASSEXTEND = "native"
>> --
>> 2.7.4
>>
>> 2017-10-27 14:18 GMT+02:00 Vincent Prince <vincent.prince.fr@gmail.com>:
>>> Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
>>> ---
>>>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 16 ++++++++--------
>>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>>> index a7210d9..11fe17b 100644
>>> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>>> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
>>> @@ -12,16 +12,16 @@ JDK_JRE = "jdk"
>>>  require oracle-jse.inc
>>>
>>>  do_install_class-native() {
>>> -       install -d                              ${D}${libdir_jvm}
>>> -       cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
>>> +       install -d ${D}${libdir_jvm}
>>> +       cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
>>>
>>> -       install -d                              ${D}${bindir}
>>> -       ln -sf ${JDK_HOME}/bin/java             ${D}${bindir}
>>> -       ln -sf ${JDK_HOME}/bin/javac            ${D}${bindir}
>>> +       install -d ${D}${bindir}
>>> +       ln -sf ${D}${JDK_HOME}/bin/java ${D}${bindir}
>>> +       ln -sf ${D}${JDK_HOME}/bin/javac ${D}${bindir}
>>>
>>> -       install -d                              ${D}${JDK_HOME}/bin
>>> -       ln -sf javah                            ${D}${JDK_HOME}/bin/gjavah
>>> -       ln -sf jar                              ${D}${JDK_HOME}/bin/fastjar
>>> +       install -d ${D}${JDK_HOME}/bin
>>> +       ln -sf javah ${D}${JDK_HOME}/bin/gjavah
>>> +       ln -sf jar ${D}${JDK_HOME}/bin/fastjar
>>>  }
>>>
>>>  BBCLASSEXTEND = "native"
>>> --
>>> 2.7.4
>>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

