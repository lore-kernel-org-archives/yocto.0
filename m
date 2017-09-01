Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE1BAE00A39; Fri,  1 Sep 2017 12:14:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.42 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40270E00349
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 12:14:23 -0700 (PDT)
Received: by mail-pg0-f42.google.com with SMTP id r133so2979129pgr.3
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 12:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=3C44rC8+XyK+evoYFwB4zY3mouGJZd/8qA3fggk2eq0=;
	b=pul14qkVyNVVWUDejaikcb1tUXfszS4eKuy44zDdE6Au1FMxQt9ZPZDPsb2SQELSp+
	nXDg2qoFsreutsjRFvoAIUQuQt9ugcZ5cDuakn4GegtVe7BphQJ+idNjC3eFE4jp+QvQ
	orawQYhSveIrGP+YYANP54EZD6/jeYKu1kreO5l+Xbe2eGQvH+KBGWITwCUcQ9MFOEF2
	Fx3V5mhJhWJmi6PXkwY9JJXtZxUBWUSK3C/j1KWAvifrAoa1Fzp1xeqLVyPoAewggDIS
	HzY2xguxeZ5n22FrrFZJphD/AcQlFJxIeVuld2HfEYHa/W7EPSWOazm1IeB9Sk2aVmSY
	zf/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=3C44rC8+XyK+evoYFwB4zY3mouGJZd/8qA3fggk2eq0=;
	b=HGfNakGxlQHqBtdsixDJqST+tYznzXhb5IunpbJQ2gZI8xb+3rgHkmxnqTDLn5fgQL
	TKfcM62TMJZ5lYT3R9w/7gSsXnABEeIk2Cv65fozNLR0GfpoxsNmPPqgfD9XE6z70Z8b
	GiU2HczVvdafPhYFzSBnJnaGiRkp93FpEJMtB89ASells1Q4LUxKIA9/TftbeVNjtRWY
	yhR+GfQdtobw4LmuKau7RrSFD7EwU4YnR/Bdw8RXvgc/BAYOrutnB8Lo1nZutGzdJ+hW
	7n9emfPDTxdFchoLLeq3t5QjLgpkql15FXCM3EjuobFKB5Yl/AayO+UFmOOryLP+P+E0
	G6iA==
X-Gm-Message-State: AHPjjUinw46WEUY5X99cJd+Xy0l3DCXq5dHZ1a6nKdfqRanY6Z/QLG6C
	YMknF8k1JH10Or20OWpKtw==
X-Google-Smtp-Source: ADKCNb78/AxkuoKIJ5tYq39gzr0r6BCLeIVxKChbJZOp0aoHggoCoIxK1jKYFmFQVPuQHOXtdt4InA==
X-Received: by 10.99.160.100 with SMTP id u36mr3560482pgn.62.1504293262810;
	Fri, 01 Sep 2017 12:14:22 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:c400:6ad5:9d97:9621?
	([2601:202:4001:9ea0:c400:6ad5:9d97:9621])
	by smtp.gmail.com with ESMTPSA id
	v19sm1189616pfd.63.2017.09.01.12.14.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Sep 2017 12:14:21 -0700 (PDT)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Raphael Kubo da Costa <raphael.kubo.da.costa@intel.com>,
	yocto@yoctoproject.org
References: <871snzdd5s.fsf@rkubodac-desk.ger.corp.intel.com>
	<1503993808.32591.312.camel@linuxfoundation.org>
From: akuster <akuster@mvista.com>
Message-ID: <80c1ed48-344a-41e6-f8e8-274b88a08711@mvista.com>
Date: Fri, 1 Sep 2017 12:14:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1503993808.32591.312.camel@linuxfoundation.org>
Subject: Re: Pyro's uninative and libstdc++ symbols
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
X-List-Received-Date: Fri, 01 Sep 2017 19:14:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 08/29/2017 01:03 AM, Richard Purdie wrote:
> On Fri, 2017-08-25 at 14:50 +0200, Raphael Kubo da Costa wrote:
>> I've recently updated my host system to Fedora 26, which has GCC 7.
>>
>> This seems to be causing some issues on Pyro, where I have a -native
>> recipe that is built with my system's g++ and ends up generating a
>> binary with the following symbol:
>>
>>      0000000000000000      DF *UND*  0000000000000000  GLIBCXX_3.4.23
>> std::basic_string<char, std::char_traits<char>, std::allocator<char>
>>> ::basic_string(std::string const&, unsigned long,
>> std::allocator<char> const&)
>>
>> GLIBCXX_3.4.23 is not part of Pyro's uninative's libstdc++, so when
>> that
>> binary is invoked in another (non-native) recipe as part of
>> do_configure
>> it fails to run:
>>
>>      gn: /data/src/yocto/poky/build/tmp/sysroots-uninative/x86_64-
>> linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.23' not found
>> (required by gn)
>>
>> Is there anything I should be doing differently here?
> We need to update the uninative version in pyro to the more recent
is this action just a straight forward backport from Master?
  -= Armin
> version in master. uninative works on the principle that it the same
> version or newer than the host system and for older releases this
> ceases to be the case unless we upgrade it.
>
> Cheers,
>
> Richard
>


