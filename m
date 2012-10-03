Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C93E9E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 06:40:53 -0700 (PDT)
Received: from localhost ([127.0.0.1]:36582 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TJPC0-0008ED-Mt
	for yocto@yoctoproject.org; Wed, 03 Oct 2012 13:40:52 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=jAs4BTtbafA4NJ8rOGvNEn3Gx/k=; b=F5V426uXfQS2kSU19p90MwbXh9yo
	2DFfj6U6IxKvG4ewYwyx7poFeG//wGFtECtGk0GhgMp0zTIXKy08E8pk7EecITC0
	16FGKuyZh93H6PymTjg8eBIxjeGIphYPu/FTyNWi9AfpD4x0bvuhZc+jBPvclSt3
	xUlw6Z32E1NtiSA=
Received: from [195.171.99.130] (port=58276 helo=[192.168.0.40])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TJPC0-0008E3-Ku
	for yocto@yoctoproject.org; Wed, 03 Oct 2012 13:40:52 +0000
Message-ID: <506C40CD.5050405@communistcode.co.uk>
Date: Wed, 03 Oct 2012 14:42:37 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120910 Thunderbird/15.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CANFv2EnwjYa=DNKfiR9y9g+G_j=8WXyVZtBX_2gKcfM7Ga4MqQ@mail.gmail.com>
	<CAJTo0LbcKzbJ7-2jKoHRPzYeHx_ydYf_vULzwjsWy0zG4Q4bBQ@mail.gmail.com>
	<CANFv2EkD5NtRvbe2-fNnmt8df66HAu2r=hzCMBm-Zw4EeidBHw@mail.gmail.com>
	<506C3F92.4050309@communistcode.co.uk>
	<CAJTo0Lab-XovZsq3MmiuuTG2v_aKOnC5DVyaaSdJx4KQcSZwnQ@mail.gmail.com>
In-Reply-To: <CAJTo0Lab-XovZsq3MmiuuTG2v_aKOnC5DVyaaSdJx4KQcSZwnQ@mail.gmail.com>
Subject: Re: Correct procedure for rebuilding after a git pull
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Oct 2012 13:40:54 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/10/12 14:37, Burton, Ross wrote:
> On 3 October 2012 14:37, Jack Mitchell <ml@communistcode.co.uk> wrote:
>> I also use this work flow. If something goes wrong with a particular package
>> then I will -c cleansstate failed-package and then start the build again.
>> This usually fixes it.
> Bringing the failure on on the list / bug would be appreciated,
> everything *should* rebuild cleanly (especially with recent changes in
> master).
>
> Ross

I'll bear that in mind.

I believe it was ext2fs that failed earlier today on my production build 
machine. Again a -c cleansstate fixed it and I didn't investigate so I 
can't add anything else!

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


