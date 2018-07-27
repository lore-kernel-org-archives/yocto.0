Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6DEDE00CEA; Fri, 27 Jul 2018 02:27:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08CDBE00C8B
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 02:27:27 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id t25-v6so4741385wmi.3
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=eg/hlD3qC2dMvAv59T9z5ZTnfyY7rOOX6l9Tb1m43f4=;
	b=Goq2/NkZSbxkEgzTGkW0GLt8Pg7NIznmIdrfyRdtj2FMZAjJXEivdoRA5WgHsNv9wz
	TBepNkU5gaHNYCBZrT5d62TpyR3puX5Hp7YsnMYNt4ga+rb/AC0uCgZSzyTyg1LQLvvM
	OzjpbtM/BnycsfIRClFseIJOn19YTxp5ahiJHkqwlWINBk+qsCR1WS33i0OPcNBnIraB
	V4hxZ0fnepdyDBnXQKi8dUhpjzq9ZGsSA3WS5lTzVeOK5pPFMYxiRCVyBiFChextBrwj
	RNmzEt2uroy+OmtPwMxR2mnh6VYiOIm1JG4NvIzYF8a8mqdXliXebN/bMbryjrCoaYiC
	goEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=eg/hlD3qC2dMvAv59T9z5ZTnfyY7rOOX6l9Tb1m43f4=;
	b=UVHbDt4sgIFO3l5uRmy4BbiQZoztEMsZs+FJnAC9vP8+RxQtIbpN7ZnmqFO+NxgH8P
	Rzqw8qsLwD3Kkg3Hwj6gkRAhkd/h64FC0PzmgWoCJsOklGf8/WuETzTg5NtBp/FlU1ux
	5YBDZLlKNFhxEskHMa6rkxD9jaJ56d3r5t+GdaJSeNA+D8iiVNleHtIfrWsJ9CmoIlnM
	kw/rvWTLIap2fEWLEBQCCT1gsr9C4wHOt0xF5trS3ykeceZp+opwAbnSxpbLHHfiZVOF
	U1hjOrxzUaMe/qjghAbmWlCAblBmiQE5ErABySOnH4vnOng4uiVaJeTTmZsAdZ1MyYu2
	0JwQ==
X-Gm-Message-State: AOUpUlFHvS1rJmINLQqKf+4r82m5yKTO/4LOgY9cEHF/Qd0+i09eWdJh
	fDX16TwG8NGbNdRHK9762Bfhwv6zOVw=
X-Google-Smtp-Source: AAOMgpdGs6JeyqjYbnLuwoIsRSAqdrZ9xHn/65r15JNGAioFGPqqnu3GO+KKPb+22mlj0lPVDuUtbA==
X-Received: by 2002:a1c:8587:: with SMTP id
	h129-v6mr3521330wmd.105.1532683646929; 
	Fri, 27 Jul 2018 02:27:26 -0700 (PDT)
Received: from [192.168.88.227] ([37.237.210.11])
	by smtp.gmail.com with ESMTPSA id
	t11-v6sm5371755wru.52.2018.07.27.02.27.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 27 Jul 2018 02:27:26 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>, Andre McCurdy <armccurdy@gmail.com>
References: <051ffcba-0255-4d93-e8f8-01993e967ef2@gmail.com>
	<2d030ea4-b2df-58fe-9947-e1c4e40ea17b@gmail.com>
	<CAJ86T=WtLMKA3M5-fWR1pm-x8PRRGwFihuwpuhbzEtQaGwFRTA@mail.gmail.com>
	<CAJTo0La3pkW79pJGaADvcTaC1M9viTYmWSH5VuiFCRzur2C5Xw@mail.gmail.com>
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <80ed21d8-8667-cf7b-82d9-8742b71c3274@gmail.com>
Date: Fri, 27 Jul 2018 12:27:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0La3pkW79pJGaADvcTaC1M9viTYmWSH5VuiFCRzur2C5Xw@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bitbake is corrupting my files during unpacking
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
X-List-Received-Date: Fri, 27 Jul 2018 09:27:29 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US-large

Yes I made a pull request to the master branch 
https://github.com/openembedded/openembedded-core/pull/34

note that this issue can be replicated by unzipping any linux-kernel (I 
think), I tested that it exist in the zip file of torvalds tree 
https://github.com/torvalds/linux/archive/master.zip

so it's easy to replicate and test

Also, to anyone how face the same issue and find this message, I solved 
the issue without patching unzip by using tar.gz file instead of unzip 
file (thanks to github for providing that) so instead of 
https://github.com/torvalds/linux/archive/master.zip use 
https://github.com/torvalds/linux/archive/master.tar.gz


Thanks


On 07/23/2018 09:51 PM, Burton, Ross wrote:
> Yes, please do.  Mohammad, as you can replicate this on demand, would
> you be able to fix the unzip recipe with the patch in that bug and
> send a patch?
>
> Ross
>
> On 23 July 2018 at 19:42, Andre McCurdy <armccurdy@gmail.com> wrote:
>> On Sat, Jul 21, 2018 at 12:55 AM, MOHAMMAD RASIM
>> <mohammad.rasim96@gmail.com> wrote:
>>> well apparently this is caused by the unzip binary that is compiled by the
>>> openembedded unzip recipe.
>>> If I unzip the same zip file with the unzip binary that is shipped with my
>>> system(manjaro) then the files are not corrupted but when I use the unzip
>>> binary compiled by the openembedded recipe I get error and file corruptions.
>>> These are some of the errors I get when unzipping with the openembedded
>>> unzip:
>>> ...
>>> symlink error: File name too long
>>>
>>> This error happens to multiple files where the file is symlinked to the
>>> content of the file and not to a path !
>>> Where should I report this bug ? openembedded ? unzip upstream ?
>> If you google the "symlink error" you should find multiple hits, which
>> all indicate a known bug in upstream unzip 6.0.
>>
>> So, it should be reported upstream. However, given that the last unzip
>> release is now over 9 years old and there doesn't appear to be a
>> public upstream development branch, the chances of getting a timely
>> response don't look too good.
>>
>> We should probably add the fix to the unzip recipe in oe-core:
>>
>>    https://bugzilla.redhat.com/show_bug.cgi?id=972427
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


