Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 786E6E00D8E; Fri, 16 Aug 2019 18:52:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C568E00B9E
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 18:52:06 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id m12so3139559plt.5
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 18:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=YJDlH9vUqPQY7eIgO/whoZT5nGaz+46Lo0a5MyRqyHc=;
	b=dSHyIhX10taDKaHcXeTMdvNFjgHywJyjkUKDkEB5832zqfUz8CX2YrprCy2zLwmHrk
	0xWbYDmjXCPfoEfdJdKAJL4sLjNzhoAViX3BkH6+ATqt8QXZfAtSRrfG4LHgzWfoB6Yp
	E68cLvgnNTmLVqZ6ewrZhu+q3kfWUAYvVM2r2iGmICo19K4XJbXEYHEv/QBRlD9kcfus
	OT2r4zbvzpxiZf/24csgyMueT+X7XOZk0RYXueqy8Cvhj1utOaVMZDmxpEVKbmiQ0jX0
	23TIQNV6TdW1URb4C3cbVuK+yPxZXs0VahcSPS9WTYzvfruiqhsnfz7uVdNnrojwsIKM
	YIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=YJDlH9vUqPQY7eIgO/whoZT5nGaz+46Lo0a5MyRqyHc=;
	b=XnHvJHPcnU/zU3YV2xoxu58TS7fx3fgYw/X30AFREe/X1ZU5/8O7iLikzBqC9LOezf
	JAOb6/iYBgcT5Yl1TO+YxYTwVWocbBcPtP1q/eeErASGIOvmBFxoLKxfGK860VMWds0c
	4JrMXDUY063iCHevo4BsGuunILm63GcYFzv86Nx9F0t5EWB/U7KzXVWFLYiv8UHemKEe
	LctTddOpnQ/gCYPuOBN1C6CCtOrmIOLsNSLK4iM8twoz1JcotftKEuh9KqETgUGSiHgK
	CnR+m1DQ6cYkMantvO+mS7nFKT/k5TaAaUr4S/8X/jBXSjuSmouQaZJ/ckMGf+T8IZJ+
	FHPg==
X-Gm-Message-State: APjAAAU0NHp6tvz0N78N7TwMMyj0Ry2HiIfTYuWO8qBRjtMOZkmWkRO9
	1zI5BBxDaSpnyYUrU+evGIFLUw==
X-Google-Smtp-Source: APXvYqyuAvdzdmikip19n1WS+8UL9vuX9ggUCSpMtwGKI1KVpyUO6+05UrjD+Te0CfPzKKLRTZbxxQ==
X-Received: by 2002:a17:902:ac86:: with SMTP id
	h6mr12135503plr.79.1566006726680; 
	Fri, 16 Aug 2019 18:52:06 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:b816:6e4b:1727:7819?
	([2601:202:4180:c33:b816:6e4b:1727:7819])
	by smtp.gmail.com with ESMTPSA id
	v145sm8052660pfc.31.2019.08.16.18.52.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Aug 2019 18:52:05 -0700 (PDT)
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Yocto list discussion <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
References: <CAP71WjyWeiJA+3ahU1cdDi5kh6qTVvTi7CCNo5qzOA9_ti2vCw@mail.gmail.com>
	<CAP71WjxRwFni-yjPepwqBkk=77UwN0kaMdxNCz==Y2_28e67VQ@mail.gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <75297c71-0f45-473c-3a1b-a8ec7a9b6080@mvista.com>
Date: Fri, 16 Aug 2019 18:52:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAP71WjxRwFni-yjPepwqBkk=77UwN0kaMdxNCz==Y2_28e67VQ@mail.gmail.com>
Subject: Re: LF Community Bridge Mentorship
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
X-List-Received-Date: Sat, 17 Aug 2019 01:52:11 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 8/16/19 12:37 AM, Nicolas Dechesne wrote:
> hi there.
> just a reminder!
> cheers

Maybe mention this during the BoF in next week's ELC?

- armin
>
> On Tue, Jul 30, 2019 at 4:46 PM Nicolas Dechesne
> <nicolas.dechesne@linaro.org> wrote:
>> Dear all,
>>
>> The Community Bridge platform was launched earlier this year by the
>> Linux Foundation. It’s a set of services available to LF projects to
>> help them build stronger ecosystems, and foster developers
>> relationship within their respective communities. See [1] and [2]. The
>> Yocto Project has joined the Community Bridge Funding and Mentorship
>> programs.
>>
>> If you have any specific questions about these programs, please do not
>> hesitate to reach out to me.
>>
>> Today, we would like to talk more about the mentorship program. We
>> have tried several initiatives in the past about interns and
>> mentorship, and we would like to do that again using the new LF
>> platform. A mentorship program for the Yocto Project is a good
>> opportunity for our overall community to reach out to new developers,
>> improve our developers diversity. It will help increase the pool of
>> available developers with appropriate skills about the Yocto Project
>> and Open Embedded technologies and as a consequence create a more
>> sustainable ecosystem around the Yocto Project. It also offers
>> existing senior developers the chance to become mentors, and share
>> their knowledge!
>>
>> We would like to request feedback about how to best define the Yocto
>> Project Mentorship program.
>>
>> The structure of the mentorship is flexible and we can adjust as
>> needed. Our initial thought is to set 12-week project, which is what
>> the Linux Kernel Mentorship program is using, see [4]. The overall
>> process involves:
>>
>> 1. Finding / defining work items for potential mentees.
>> 2. Get appropriate funding for mentees’ stipends
>> 3. Recruit mentors within our community
>> 4. Review and select mentees’ applications
>>
>> There has already been some work on the potential work items in the
>> form of the newcomer bugs, some of which could be turned into work
>> suitable for a mentorship programme.
>>
>> === Call for ACTION ===
>>
>> * We need your help for any of the items above, and especially #1 to
>> get started. Whether you are a long time contributor to the project or
>> you recently joined our mailing list, your feedback will be greatly
>> appreciated.
>> * If you are interested to participate as a mentor, please let me know!
>> * You don’t need to be a project expert to be a mentor, you need to
>> know how the project works and be willing to help guide someone
>> through their task.
>>
>> There is no specific timeline set yet, it will most likely depend on
>> how much feedback we receive about this initiative, but most likely
>> the internships will have to be tied to the Yocto Project release
>> timeline.
>>
>> If you have any questions or any suggestions, please reach out to me!
>> cheers,
>> Nico
>>
>> [1] https://www.linuxfoundation.org/press-release/2019/03/the-linux-foundation-launches-new-communitybridge-platform-to-help-sustain-open-source-communities/
>> [2] https://communitybridge.org/
>> [3] https://people.communitybridge.org/
>> [4] https://wiki.linuxfoundation.org/lkmp


