Return-Path: <karshi.hasanov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46A49E00A84; Mon,  8 Apr 2019 11:49:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (karshi.hasanov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37AECE00A0C
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 11:49:01 -0700 (PDT)
Received: by mail-qk1-f176.google.com with SMTP id k189so8686446qkc.0
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2019 11:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=x3VBzGz4EoKaEdQzPhLS6YXGjpH6znS0OZHN+GdO8tU=;
	b=ov2bjd7LpEqP6/ihOwQ1Rbh4h0tx/9oeyVOV+WS9knrWgSZ0xLj/lapm2/PvDqbA0F
	vgDxNdGTdY5w8y/TlqDwcwQnukN8IGsw+oML8y/rqbQnhoEKKG9k/f1Sqp0x5JveBbYJ
	Sy8gczNdaSJSJ3p3liGCNvaErwow0mRW9GzAsnY1CSpETsHEikPdx+tLHtQREOT4wM9m
	HOHMQcqbqcVfkmbltFVXRZM0qbRqppnfz+Lp/xjBjhv93q5DftwiGUayq9y3a65DI+P/
	hIPzzbehejuCjnoAbbZ4wyuuSy2Me7ityOrlFkqoAtbG0HowqlG3A2tOsQwLpjNJkSRU
	AA1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=x3VBzGz4EoKaEdQzPhLS6YXGjpH6znS0OZHN+GdO8tU=;
	b=PMcZV9ZJ1aBvBjJk3EKWXl6Z5UHCa2/894pYQ/dKzQytRibMcDL+2aWyU9/EduF8uS
	b34SKhDvcWQmMC8wRsGhkZSM0zGgWyor2oIClSOnYRdiLNSrM3LZ9hioPfWULLIBAn5D
	3OALqsNGXZvXne2Al+TKhmb59Tv5YA/u8QW4eZ0s3eAZ7L06B3Dmm093/Vw482x9SRVE
	UloIIn5uaI3Lzw8DV37eVZ8bToqgNR8sm2YTo488VbVFrOY7bt21u9IkCkATWTkqPNNX
	XGk7M0q7lnuMBInShISDKnIKSkE16Npl89O6sPSqHM3dU+JFBolAmp0JPrpuB3JWEiNu
	78lA==
X-Gm-Message-State: APjAAAUc51mjIxhbGkb5STaxSVIDrY7mQS7XBaKXgSXP2ed2oc5/pIiS
	QxDDhV9qeJKi8dYIwxsVKsIv5+9J
X-Google-Smtp-Source: APXvYqzITIsDlT8cHNdmcczOsyscS/pka1jrIkFDkgIz+f0lTSkn4NcGdOMnHJLCOGRv+mqKpQn4sA==
X-Received: by 2002:a05:620a:1266:: with SMTP id
	b6mr23772337qkl.83.1554749340523; 
	Mon, 08 Apr 2019 11:49:00 -0700 (PDT)
Received: from imac.karshi.ca (toroon473nw-lp140-02-70-48-70-219.dsl.bell.ca.
	[70.48.70.219]) by smtp.googlemail.com with ESMTPSA id
	f65sm7390273qkb.83.2019.04.08.11.48.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 08 Apr 2019 11:48:59 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>,
	Nataliya Korovkina <malus.brandywine@gmail.com>
References: <6bf22911-f264-f7b2-13a3-a914f9b3d2dd@gmail.com>
	<CADz_WD7TRFmcu9YQ+mJ6_nHbKQ5eXp8Fii_AK7ZPDJwhTOVX2A@mail.gmail.com>
	<CAJTo0LbEnsy_Ha5EOHuw8cgzFxH_Kj1U8O7ZsXOje+=y_XsVNA@mail.gmail.com>
From: Karshi Hasanov <karshi.hasanov@gmail.com>
Message-ID: <2b04a1ee-d0a5-8525-7707-c4ff57ca6afe@gmail.com>
Date: Mon, 8 Apr 2019 14:48:59 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbEnsy_Ha5EOHuw8cgzFxH_Kj1U8O7ZsXOje+=y_XsVNA@mail.gmail.com>
X-Mailman-Approved-At: Thu, 11 Apr 2019 15:05:32 -0700
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Installation help
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
X-List-Received-Date: Mon, 08 Apr 2019 18:49:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

There is nothing wrong with my network network!

For now the issue is resolved.

Thanks any way.


On 2019-04-08 1:10 p.m., Burton, Ross wrote:
> The better fix is to fix your network.  If you need a proxy, set it in
> local.conf.
>
> Ross
>
> On Mon, 8 Apr 2019 at 18:09, Nataliya Korovkina
> <malus.brandywine@gmail.com> wrote:
>> Hello Karshi,
>>
>> I had the same message. I added:
>>
>> CONNECTIVITY_CHECK_URIS=""
>>
>> in conf/local.conf as a QUICK FIX. I hope someone has better solution, please?
>>
>> Thanks,
>> Nataliya
>>
>>
>> On Mon, Apr 8, 2019 at 12:43 PM Karshi Hasanov <karshi.hasanov@gmail.com> wrote:
>>> Hi all,
>>>
>>> I have followed the
>>>
>>> https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
>>>
>>> when issue the "bitbake core-image-minimal"
>>>
>>> I am keep getting this error:
>>>
>>> ERROR:  OE-core's config sanity checker detected a potential
>>> misconfiguration.
>>>       Either fix the cause of this error or at your own risk disable the
>>> checker (see sanity.conf).
>>>       Following is the list of potential problems / advisories:
>>>
>>>       Fetcher failure for URL: 'https://www.example.com/'. URL
>>> https://www.example.com/ doesn't work.
>>>       Please ensure your host's network is configured correctly,
>>>       or set BB_NO_NETWORK = "1" to disable network access if
>>>       all required sources are on local disk.
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>>
>>
>> Nataliya Korovkina
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

