Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2D37E00CE2; Fri, 11 Jan 2019 14:31:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 924F9E00CC4
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 14:30:59 -0800 (PST)
Received: by mail-pl1-f172.google.com with SMTP id b5so7370262plr.4
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 14:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=x4zdBCtgrMRvxUpOLTrzJuTfLWoorgrvXfi9nCB2XSY=;
	b=HyMUN99u+Xa0jmnSDGdPTA6L3Xg8+OO4y5cVwKCFzIEr2mDFy/tiHmM8Fv0iE1BC2w
	dp5P6KQLPSV7t6d5oHUZxLRMjoSUIuS7cq6NsVJu6KYYkQDxpxdk2AC9BH0fueA4LBFY
	ciwv+vb8aPJp8au0v0sM2Lg28ph9nLdYQSLXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=x4zdBCtgrMRvxUpOLTrzJuTfLWoorgrvXfi9nCB2XSY=;
	b=oKgNuABPFytWYCB4YvwJEOY1WJCXb2de9hyUCHjLDIVuTBXZfOUbU88figpMHAcEIt
	vi1dgyCWVIWcdQAaoOfK2Yid/iy0GtQP2oUQ/7H+OacITnD82qpPe9GjIwpD3Px0n4yF
	5q1qnBDxUdKVuMKhDQBqhA2jE+qAhSb7NyDQoJNcXxFFXLFRYZujtX5Iag0aBCDFIjwe
	JDgVhpO5xzpfYgUlTfw0oIzq++ACfTYuXZANVzOVInNH0lMR2fAAN86xOmdOUYmTH75P
	TsmZy0S0anHfxBoJHBu9oicT0nyqghEwBFhb5+4ouhEL6CGfB4rl/ONDYWkAmtstrRAD
	E5tg==
X-Gm-Message-State: AJcUukeuB55UF+DD0TCPrAfQk4B/BChH00jAQmNx8oWzylnrYtTpGc+t
	ndPp4GKOVQE93rA2nx7sYgzOxOK9bRI=
X-Google-Smtp-Source: ALg8bN7Prp8CqOLy/FYksggPK4LwGnsVk5L1kN2jqNLPc1Bq2aBD3YqOuO7QbYDTdaYo6JFPGUnkXQ==
X-Received: by 2002:a17:902:2b84:: with SMTP id
	l4mr16459289plb.191.1547245857959; 
	Fri, 11 Jan 2019 14:30:57 -0800 (PST)
Received: from ?IPv6:2601:1c0:ce01:2bef::35fd? ([2601:1c0:ce01:2bef::35fd])
	by smtp.gmail.com with ESMTPSA id
	x26sm116071163pfn.50.2019.01.11.14.30.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Jan 2019 14:30:57 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>
References: <20190111190256.9354-1-mhalstead@linuxfoundation.org>
	<CAMKF1sqOtMu9+cqa=_Gan3NqXmT6YDXKNvsOtAf3SCSc9C974w@mail.gmail.com>
	<bc752f4a-0f29-a4d0-d9b0-a9dea5a8a12b@linuxfoundation.org>
	<CAMKF1sqgvXNS4i3Xu1mdPjYrtL5E-hcd4AXmDQKV0=jytoOiHQ@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <438ddd15-b2b3-f68c-c747-e261948a067c@linuxfoundation.org>
Date: Fri, 11 Jan 2019 14:30:56 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqgvXNS4i3Xu1mdPjYrtL5E-hcd4AXmDQKV0=jytoOiHQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [patchtest][PATCH] scripts: Reset working repository to match origin during clean up
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
X-List-Received-Date: Fri, 11 Jan 2019 22:31:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 1/11/19 1:53 PM, Khem Raj wrote:
> OK then I need to understand how this will be invoked for
> meta-openembedded repos

I think that is beyond the scope of this patch. Can you clarify a bit 
more? Or perhaps this topic deserves its own thread on an OE list.


> On Fri, Jan 11, 2019 at 1:47 PM Michael Halstead
> <mhalstead@linuxfoundation.org> wrote:
>> Since these commands run in $REPODIR and $path I think they will apply to any repository under test.
>>
>> On 1/11/19 12:25 PM, Khem Raj wrote:
>>
>> Hi Michael
>>
>> Can we enable these checks for meta-openembedded repo as well
>>
>> On Fri, Jan 11, 2019 at 11:03 AM Michael Halstead <mhalstead@linuxfoundation.org> wrote:
>>> If the local HEAD is a patchtest generated merge commit patchtest may be unable
>>> to apply new patches. This should prevent patchtest from becoming stuck
>>> in that state.
>>>
>>> Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
>>> ---
>>>   scripts/create-share-folder | 2 +-
>>>   scripts/host                | 2 +-
>>>   2 files changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/scripts/create-share-folder b/scripts/create-share-folder
>>> index 861da4b..9432cb1 100755
>>> --- a/scripts/create-share-folder
>>> +++ b/scripts/create-share-folder
>>> @@ -122,7 +122,7 @@ function update_repository() {
>>>          (
>>>              cd $REPODIR
>>>              git am --abort --quiet
>>> -           git reset --hard --quiet
>>> +           git reset --hard --quiet FETCH_HEAD
>>>              git clean -f -e ".git-pw*" --quiet
>>>          )
>>>
>>> diff --git a/scripts/host b/scripts/host
>>> index 85f0e4a..893ce63 100755
>>> --- a/scripts/host
>>> +++ b/scripts/host
>>> @@ -83,7 +83,7 @@ function clean() {
>>>       (
>>>          cd $path
>>>          git am --abort
>>> -       git reset --hard
>>> +       git reset --hard FETCH_HEAD
>>>          git clean -f -e ".git-pw*"
>>>       )
>>>   }
>>> --
>>> 2.17.2
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>> --
>> Michael Halstead
>> Linux Foundation / SysAdmin

-- 
Michael Halstead
Linux Foundation / SysAdmin


