Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84BB4E0157C
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 15:11:09 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id fo12so3290633lab.28
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 15:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=RCY5uRkpbIB+LLbR7E+H9UXYFRMqEdJVLXElCvzuVuo=;
	b=vrxlOnFVK0ey8ht9ckLsN+HKB7uhX4YqJQfK4hRTshcjvb6XSFxa+V0vUI0tz4fOzx
	BOn5bAQS9SkAlizDs+JaZ585FojdhigUTqj39yLELOPny4qenD0073CerGm1Mc3GhHFQ
	kuhuDQYreHcAXlHX1MQOQLSBAhVLdbnftmIFL/WsC0SJof0+52h1eHmm72J9ZAGK9Bms
	nMtkVHLvFrLnGQRWW2aW3m7DZinRZc9cvTpERFaQ/UiMpqjijM0IVQ4pVH5+5i/qNBuC
	yP2BD/Pf+eUOO16rskGP1AwCCS9wWRUBA62Blwt43GoyVznpGcNpKpkjlUYzQRNkLPd0
	6R+w==
X-Received: by 10.152.105.109 with SMTP id gl13mr8183556lab.40.1362953467560; 
	Sun, 10 Mar 2013 15:11:07 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id mq7sm6270101lab.1.2013.03.10.15.11.05
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 10 Mar 2013 15:11:06 -0700 (PDT)
Message-ID: <513D04F9.5070301@gmail.com>
Date: Sun, 10 Mar 2013 23:11:05 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130215 Thunderbird/17.0.3
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <513B9F69.5010109@gmail.com> <513BDA2B.1010704@balister.org>
	<513C850A.3070208@gmail.com>
	<8F70DAE7-02FD-40C9-AAE5-63E53A37763B@gmail.com>
In-Reply-To: <8F70DAE7-02FD-40C9-AAE5-63E53A37763B@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FUSE user-space library
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
X-List-Received-Date: Sun, 10 Mar 2013 22:11:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-03-10 9:12, Khem Raj wrote:
> On Mar 10, 2013, at 6:05 AM, Hans Beckerus <hans.beckerus@gmail.com> wrote:
>
>> On 2013-03-10 1:56, Philip Balister wrote:
>>> On 03/09/2013 03:45 PM, Hans Beckerus wrote:
>>>> Hi. Anyone started to look at including the FUSE user-space library as
>>>> part of Yocto?
>>> There are some fuse related recipes in meta-oe.
>>>
>>> Philip
>> Ok, I will take a look. Is the meta-oe 100% compatible with a Yocto reference system?
>>
> it s a well maintained layer over oe-core and yocto uses oe-core too so I don't see much
> problem with it being compatible. Time to time metadata changes in oe-core affect this layer like any other layers but as long they are resolved thats normal.
>
>
Thanks for the info. I found the FUSE user-space library as part of 
oe-meta, together with eg. sshfs.
I see no issues using that also in my poky based build.

Hans


