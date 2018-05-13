Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B96EDE0109E; Sun, 13 May 2018 16:35:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DE93E00DA5
	for <yocto@yoctoproject.org>; Sun, 13 May 2018 16:35:19 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id a14-v6so5123747pfi.1
	for <yocto@yoctoproject.org>; Sun, 13 May 2018 16:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=0jLsZcJRI+y9mipqhQVXZv58gqzZBcWiQ1W2mcHLtMc=;
	b=gn+1gMSIDGuDV8I/D7LrR4ptpdefoHBP8erryidWw/rgSkFF1dj0HtyZe/+0bRcEb7
	tR4+YbqhwoMdK/fhl/jn1/eY1WQqeHi12w1zXQEkNN5Bx4AKdzPfJjKAYnulJmyxBNZC
	24NsNakpoWKNWID6WY1IBz/fnEV324SvIjW5aYA2/mx3u0lsWS5Thhiz6+952t4sbssk
	8PTEPxI48+1QsAQa5ZgA7aNbtdTR3BJZeV9gkw9Uo4ppSD6yGqc5es+A6mjnAnqWZR3q
	jfvsXGJbTsw03fa6ZnxMOyRB3epXuj+tyS4St558FEJqUDori5ON2NN9On3+QJcjxsIB
	FOZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=0jLsZcJRI+y9mipqhQVXZv58gqzZBcWiQ1W2mcHLtMc=;
	b=LAsUbGfWjiELI3YgbM6feiOuSB+hWEfYcNa78+XewfGHl7coukdfeTHyPWSZgxbif2
	Iu0Mp2ZDVDCkTOFomcxoP/Dpu4eO+2lA3HwhE3842dcxm2MWr/16mAjjCwvt7r4i8rCQ
	qelUmNHQgUwaJEMndGTO20k6/SyApq+H+gOcWPr/iY959gyD7ef+UQsspnkdShaMQ6sy
	Ff3y0yx+vcGh58b9GGY0UilnvKnUZSHVAmXLEQ32aLtERU4MZxgu7lxeb74wNzAonUuv
	qo4iMfcF/7z3s/S+ZV5JsKLzw8vznRGvHT1pgdqmcotpIh7Hk9cUbeKGJpy/WJcs8EOj
	CkwQ==
X-Gm-Message-State: ALKqPwfIBu+NslTEvfNJRT13yJmEEE4yEV/x3jf9yEyVbH5/XgTkiIZT
	GDbHBnC7KDgWKM50V3m+MuqE1mEN
X-Google-Smtp-Source: AB8JxZoh4aZR/NowurLel+5JxOX4cWphyjzT/LYYYb/40rpkQeLVsft5TJksP6xH0/H/y0jirmriqQ==
X-Received: by 2002:a63:990a:: with SMTP id
	d10-v6mr6494573pge.166.1526254518181; 
	Sun, 13 May 2018 16:35:18 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:346a:79fe:a8e0:abd2])
	by smtp.gmail.com with ESMTPSA id
	v85-v6sm12184559pgb.71.2018.05.13.16.35.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 13 May 2018 16:35:17 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CAJTo0LYmyzY67JC=72OMRBRH=8juBSnAVaYUKB6ENZ9koqPqTA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <50c78b70-5b7b-6d23-e1ba-c86e14c2c7be@gmail.com>
Date: Sun, 13 May 2018 16:35:16 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYmyzY67JC=72OMRBRH=8juBSnAVaYUKB6ENZ9koqPqTA@mail.gmail.com>
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
X-List-Received-Date: Sun, 13 May 2018 23:35:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Ross

I pushed a few more fixes to branch which fixes

kernel build issue
ovmf build issue
python2 build issue (your fix)

I could not reproduce the mesa issues that is shown on AB

With this I think we should be in better shape. Can you retry

http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/master

Once again and please bump the kernel version in poky to default by 
removing the pinning

meta-poky/conf/distro/poky-lsb.conf:PREFERRED_VERSION_linux-yocto_linuxstdbase 
?= "4.14%"
meta-poky/conf/distro/poky-tiny.conf:PREFERRED_VERSION_linux-yocto-tiny 
?= "4.14%"
meta-poky/conf/distro/poky.conf:PREFERRED_VERSION_linux-yocto ?= "4.14%"


Thanks
-Khem



On 5/11/18 3:05 PM, Burton, Ross wrote:
> I threw the branch at the Yocto Project autobuilder today, produced a
> number of failures:
> 
> http://errors.yoctoproject.org/Errors/Latest//?filter=b23dba19607412c8cc7d267d95354d65f5631088&type=commit
> 
> Ross
> 
> On 5 May 2018 at 01:26, Khem Raj <raj.khem@gmail.com> wrote:
>> Hi All
>>
>> As you might have noticed that gcc 8.1 was released this week, I am
>> calling out for some testing help on testing branch so we can weed out
>> issues you might see in your setups. so if you have your
>> builders idling over weekend, then you know what they can do this weekend :)
>>
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

