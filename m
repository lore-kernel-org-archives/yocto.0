Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 229C0E00C6A; Tue,  3 Apr 2018 08:43:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E09A2E00BF8
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2018 08:43:06 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id f125so36095075wme.4
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2018 08:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=C+HTpPulysSGw+rCC6k03QRvRbgddPpSEChvfrAyv70=;
	b=TSENzpbfq11OPfQ0KLxbcEdFye/MyFbQs4O5ulCdl/J9MIH1sSXQfWc7tXfHFPYJry
	+1/wUB7kDh7GlJ2/sraEzYAldcU8/tuEU1RED/fijyQloiUe1IhT3+pU0l7iZnEW5sNV
	i3Xewsda5LhMcy5TNsRqaHDSuOmxPizP49XaqPchAzGYm+3RmfdSVlh9b/DqnumUbylC
	gMV4ZOZFM4AmpsOzlga4lZvcMdFqA/I7KlQWoT89ZE196+279pRJSOgzrl9haxGTQ3Kb
	PVRW9QXz8YFpBFtUU9+37d7iGcoonK0IsKJW6haAGEn0JMnNhKsS+naHbHvU4sYp0j4H
	gzgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=C+HTpPulysSGw+rCC6k03QRvRbgddPpSEChvfrAyv70=;
	b=ONcMEW2vE/kO9vL9+0FyAmAmHKUqSCwK7PLrUh+7+kOQJwmEobKU1EgQAumfjggcC7
	j0kPady5VvtOdl+YobWgvGeJJjtGRBg46defqTgCFsiY49u9ihhW5ew16zQLsHRbd7/w
	kLDoD0CCB0XuUcbLdP8WaNuBUuxcgYw2H25Z66Uo8k1GYfWZVYXKUJHpD9rXomfyQmhM
	vGDgpPk66hLwNwGcEPedkIhaGaXMqPxyQyM8MVmdffgsj4tXjSa2jHQDLF47xMqB5j1g
	CjB1IEjHTW4Mb2h56tKGZVVgnhb7+AmM8yN53pDL+bpBWJhkULKskML5Zym4pOsxdkPA
	MMXQ==
X-Gm-Message-State: AElRT7GGxwPmRUf0YM8rAHFdsnhhqTypnV2OPJ1VxLFoKQgMXnlexZsq
	hAZ8OmORM5heyXIsO1UuI/KREwOc
X-Google-Smtp-Source: AIpwx48w9kGlhnin9/kVWfeV0GhMoCowlk+es650NPFLEl9OwJ3wQz4cSAG9Ikuyq+Ufx0GExWZF1Q==
X-Received: by 10.28.54.6 with SMTP id d6mr4286042wma.32.1522770185228;
	Tue, 03 Apr 2018 08:43:05 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-156-243.home.otenet.gr.
	[2.86.156.243]) by smtp.gmail.com with ESMTPSA id
	u110sm4411332wrc.72.2018.04.03.08.43.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Apr 2018 08:43:04 -0700 (PDT)
To: Tom Gibson <tom.gibson@csoftware.co.uk>,
	Anuj Mittal <anuj.mittal@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7fe4b4d52892445b97680ccd2ec47808@csoftware.co.uk>
	<0f0fef5c-f115-9e05-dfe3-64e636e7d786@intel.com>
	<29ee9a010abe4c0d9352685ecfa13968@csoftware.co.uk>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <f58b70b9-85d6-be22-ca6f-a697a2eeea51@gmail.com>
Date: Tue, 3 Apr 2018 18:43:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <29ee9a010abe4c0d9352685ecfa13968@csoftware.co.uk>
Subject: Re: ClamAV PCRE support
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
X-List-Received-Date: Tue, 03 Apr 2018 15:43:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Tom,

I never tried to get clamav to run, but please see my comments below.

On 2018-04-03 16:22, Tom Gibson wrote:
> Hi Anuj
> 
>>
>> This is happening because clamav is looking for pcre-config (uses it to find
>> pcre paths) and it's not able to locate it ...
>>
>> Even if you do get around this error by passing the path to configure, using
>> binconfig files to evaluate paths has been disabled in OE-core layer.
>>
>> So, you will have to fix the configure/pcre.m4 file in clamav to do this using
>> .pc file from libpcre instead.
>>
> 
> Sorry, I'm not clear on which file needs fixing? I can only find pcre.m4 at
> 
> 	<builddir>tmp/work/armv7a-neon-poky-linux-gnueabi/clamav/0.99.2-r0/git/m4/reorganization/libs/pcre.m4
> 
> Isn't this generated during build? I'm sorry I'm also not clear on what needs changing, where can I find the correct .pc file for libpcre?

I guess Anuj has a much better understanding about ClamAv and friends, 
but in general:

.pc files are for the pkg-config utility[1][2].

You might want to try to compile libpcre and clamav natively on your 
target board. From there I would try to "steal" the relevant information 
and feed it back into the recipe(s).

[1] https://linux.die.net/man/1/pkg-config
[2] https://en.wikipedia.org/wiki/Pkg-config

Also I guess that the file you need to fix is:

./m4/reorganization/libs/pcre.m4

with the input of whatever libpcre has in the libpcre.pc... or so file.

> 
> Thanks for your help.
> 
> Regards,
> 
> Tom
> 

Happy hunting,

Robert



