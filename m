Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9129CE009E4; Wed,  5 Aug 2015 11:38:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B9DCE009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 11:38:27 -0700 (PDT)
Received: by labkb6 with SMTP id kb6so12715771lab.2
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 11:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=2bjCif+p8HMQpV0rIpC8Xd9KwTtQj3U+3NDIrHmsY8I=;
	b=F6ETBIq0JAqT1CeErRYCL7f38cGvGd2uto88CYLCmH01bAkda/KtkXjn7wI0gdSnU5
	CEYUBaq/KiNrdtUuwO+40stngC1YLupcurpTbtHpp+4mdwrwGV3KEbQhbksCNL61kLX9
	9T1KpGmnQmf4/WaLyFqSgsdf2tfkD1AuQG010FcF39HExGvFnt2EVg9y6wyJz2IF0tz4
	SAXJ/82SdIKKOQLdt8g4wMd0WhaiYkgO109XzL5akUj2YW/y0aZXAq787JsSu2XRAMmU
	hWU+tMCa/bsMFbo7yOW1Cd90cGttzxY2AgZNTyh6ED1kbnYXu2QowDN+CqeqF5dX4Aet
	yfQA==
X-Received: by 10.112.13.134 with SMTP id h6mr8942970lbc.15.1438799905824;
	Wed, 05 Aug 2015 11:38:25 -0700 (PDT)
Received: from [192.168.50.14] (89-70-157-137.dynamic.chello.pl.
	[89.70.157.137])
	by smtp.gmail.com with ESMTPSA id bn2sm727067lbc.47.2015.08.05.11.38.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Aug 2015 11:38:24 -0700 (PDT)
Message-ID: <55C2581E.2000108@gmail.com>
Date: Wed, 05 Aug 2015 20:38:22 +0200
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <55C24689.80103@gmail.com>
	<CAMKF1srMrRrcdMCK95vxQGThc_JP25wKtK3z70sb3fyUdfAR4g@mail.gmail.com>
In-Reply-To: <CAMKF1srMrRrcdMCK95vxQGThc_JP25wKtK3z70sb3fyUdfAR4g@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Perl usage in recipe
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
X-List-Received-Date: Wed, 05 Aug 2015 18:38:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



W dniu 05.08.2015 o 20:08, Khem Raj pisze:
> On Wed, Aug 5, 2015 at 10:23 AM, mar.krzeminski
> <mar.krzeminski@gmail.com> wrote:
>> Hello,
>>
>> In my recipe I want to call perl script that will create image.
>> How should I do that to be absolutely sure that perl will be used from yocto
>> not from my system?
>> Maybe is there any example somewhere that I can check how this should be
>> done?
> inherit perlnative
Ok, thanks. And one more question.
How about scrip call after this inherit?
Can I use simple perl MY_SCRIPT or should I consider to use something 
like this (from perf recipe)

inherit perlnative
# Env var which tells perl if it should use host (no) or target (yes) settings
export PERLCONFIGTARGET = "${@is_target(d)}"
export PERL_INC = "${STAGING_LIBDIR}${PERL_OWN_DIR}/perl/${@get_perl_version(d)}/CORE"
export PERL_LIB = "${STAGING_LIBDIR}${PERL_OWN_DIR}/perl/${@get_perl_version(d)}"
export PERL_ARCHLIB = "${STAGING_LIBDIR}${PERL_OWN_DIR}/perl/${@get_perl_version(d)}"

Regards,
Marcin
>> Regards,
>> Marcin
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


