Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2278E01454
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 10:13:28 -0700 (PDT)
Received: by eekd41 with SMTP id d41so503307eek.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 10:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=g3XSHxSHDH/fmSRwwD/n2uiMA4NcNuAbFnDPAE0FKiE=;
	b=lZPT84nQnrEjESTgtKxe7t+rkDcUi9nbbLeeCDzDk50jYcHRXZDQl9M7C4Al7VLhpg
	dn0lLuoHNiCpvkzZFI/yrcupLLLoNJKcIrzI79nT4v1K7/KwRrS4TB1KPjFrnnS2g9ps
	b/hd5iA0jaPh5CMgDUD8dRStuvQUGPO8PvQUjeLhpwDzw9A8CXm3LxNFDQJEngkSnCyy
	X7Zsa1AfzSd9lOhzMXxyMLV5scdDynp2zCsbes3WbY6MeZTUv+YQP+aIwyQpb4XZGg3B
	ijJvVgL/quk23JepLTTQDkvnbigSzAaWavR5p/chNB1TQXru9+4KJOkIyI5BIOhiNkg4
	5pEw==
Received: by 10.14.213.137 with SMTP id a9mr6634838eep.38.1344100407925; Sat,
	04 Aug 2012 10:13:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Sat, 4 Aug 2012 10:12:57 -0700 (PDT)
In-Reply-To: <5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 4 Aug 2012 10:12:57 -0700
Message-ID: <CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Aug 2012 17:13:29 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 4, 2012 at 9:53 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi,
>
> On Aug 4, 2012, at 8:31 PM, Khem Raj wrote:
>
>> On Sat, Aug 4, 2012 at 8:12 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>>> /lib/ld.so.1
>>
>> does this file exist on target ?
>
> Yes, it does. It is a soft link to /lib/ld-2.16.so (136.4kb)
>
> Both files exist on the target.
>
> What should I do next?
>

Try to see if /lib/ld.so.1 runs ok ?

Then try

LD_DEBUG=all /lib/ld.so.1 ./helloworlddynamic
and see how far it goes.

> Elvis Dowson

