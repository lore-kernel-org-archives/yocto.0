Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA698E00D46; Thu,  9 May 2019 07:24:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47716E00C14
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 07:24:22 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id d3so1228138plj.11
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 07:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=AFN1V/3WgEOcN+49wiXppDAoNSrHlqbR9Ym0dXPu9r4=;
	b=RbdeK30sn49cNs4LPQTkZujIer6L2IbMgoIqSYYWaIE1WmbDl046lFVzWN1Q/U9eoR
	qPEaqp13NqHFoXW0GKoTgnyl6IUYrGARGqeXl1vRUcV5HIXH85zXtOhUhoGFr2ZliYRq
	Hm5W3Ru5ugFgY0gmLTyXZEHiyxQ1zv/RHBW8arGunKZmschIK6bqAAmA30n6Wmmm9pau
	NjmbaJ0sC3se2I9B0dLpnxYuEfQ++fnLDt4y7NLY/ZLdHChyd/Kh4M68qXb8JOO0KMYV
	tj5bC7xZ8JDzxNkeSDfli792EaJfCIHeqAhMqULAyq7Dvss0umm9eek0O3ewKGJae5ef
	xt1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=AFN1V/3WgEOcN+49wiXppDAoNSrHlqbR9Ym0dXPu9r4=;
	b=j0rOsHm0oo468s0P3tts0rO/R2Nb9kG/7lfL396Mhu1ff/G0JfgNAMe9AdPuWokTKi
	vWlHDdZTVG2j+5T6VW3kMPTFPyoD3+gvOASWAaxUxF/noa6LjNHA5fcCHjlQg+URaGj+
	OSrqcDYs+2jlojZmIlvD924mv1JmsnnJ15yOV79L+On7jOKVNN8ZWqRhFI832nAtLMwD
	hZq113lrS3Q7oM0Aije2fEOgak5pm9IZFH+4vQYDXpYscH+SFrv4J6xKCkgIqbe8J81Z
	6k5NCn3PJyINuWef0E9PSytDMKEny5VDp+4D4Ci07Ntto/3TpfGnN0xbGV8MTRIN6yVc
	hLIA==
X-Gm-Message-State: APjAAAVRRy3MosJYqFIt30a+1yqM2E/fQX2v39QDepCUYdC1mgBCKOvZ
	Z6PtOSJic3FXKA1SwuOFXdUvvQ==
X-Google-Smtp-Source: APXvYqzl1JWcvSMAxTm6s9FKUL0uKRg0bS6HnjuT9JLniXD/j6RPKqfHdXTwt5yqwPkJ2yiIEfhHTA==
X-Received: by 2002:a17:902:28e9:: with SMTP id
	f96mr5525785plb.37.1557411861539; 
	Thu, 09 May 2019 07:24:21 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:e033:a0e0:de71:ce78?
	([2601:202:4180:c33:e033:a0e0:de71:ce78])
	by smtp.gmail.com with ESMTPSA id
	q87sm3271905pfa.133.2019.05.09.07.24.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 May 2019 07:24:20 -0700 (PDT)
To: Bas Mevissen <abuse@basmevissen.nl>,
	Behan Webster <behanw@converseincode.com>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
	<96fa4aec-9557-9d7f-bff3-82f8db56e9cd@mvista.com>
	<A084970538D2234B96D99D06FA9D974FC378C879@ALA-MBD.corp.ad.wrs.com>
	<0980DABF-86C8-4A9D-8687-B9C27EE2FF61@converseincode.com>
	<A084970538D2234B96D99D06FA9D974FC378DD57@ALA-MBD.corp.ad.wrs.com>
	<2D39B7E1-DC52-42A6-8332-50ED49F77722@converseincode.com>
	<20190506104502.e4tvj5w4i4og4ski@jholzmayr.localdomain>
	<c3cbc64b-f7ea-f2d3-32ae-7a94b8693713@emcodev.nl>
	<E403FC4D-C557-4637-B3A1-D2C895621DB6@converseincode.com>
	<713dbad763c226b6c44d691e764f7ef8@basmevissen.nl>
	<AA5F57FC-49BF-4B9F-ABD2-ADA83C48442A@converseincode.com>
	<4f56e8c7eda93996c7d8aa11091d89f8@basmevissen.nl>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <8e447ce7-af4c-2696-5eaf-249bd60d0b4a@mvista.com>
Date: Thu, 9 May 2019 07:24:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4f56e8c7eda93996c7d8aa11091d89f8@basmevissen.nl>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	yocto-advocacy@yoctoproject.org
Subject: Re: [Yocto-Advocacy] Yocto Project Upcoming Conferences and Developer Days
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
X-List-Received-Date: Thu, 09 May 2019 14:24:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 5/9/19 12:55 AM, Bas Mevissen wrote:
> On 2019-05-07 20:18, Behan Webster wrote:
>
> (...)
>
>> > Yes, both for LF and YP it are off-the-shelf trainings that do not
>> require much preparation.
>
>> Speaking as a course maintainer for LF, keeping the YP course updated
>> is actually a tremendous amount of work (I'm the co-maintainer for
>> the LF YP course).
>> However, the beginner slides tend not to need more than a few hours
>> of updates every 6 months (which again is something I do).
>> Either may appear off-the-shelf, but they aren't from my perspective. =
;)
>
> An additional training date would probably not require much extra I
> assume. As the training is given already a few times a year.
> But it is good to hear the training is kept up to date.
Its not the material, need or willingness of the community to help that
is at issue. Its cost.
The more members we have the more we can do.=C2=A0

Regards,
Armin
>
>> Thanks,
>
>> Behan
>
> -- Bas.



