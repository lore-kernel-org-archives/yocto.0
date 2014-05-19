Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B65B6E00BE2; Sun, 18 May 2014 18:47:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ig0-f173.google.com (unknown [209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A85FE00A13
	for <yocto@yoctoproject.org>; Sun, 18 May 2014 18:47:12 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id hn18so2889684igb.12
	for <multiple recipients>; Sun, 18 May 2014 18:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=/KfSCHh0+xWki7aLeKeWWmuG10YoOQ9JA0wdgklSJdo=;
	b=k1jeY50XX1kf0dnYc0Mwg3RkvHJ1GLreIOmWvmxnZrrmh5XivCLpkGFhIRbNzMyteJ
	rMiPA1ZYHubf+nk8gFRicyaLf6MxVvb+EGEGhN/4qFgGqryHFk8Q0TLFgQi9piD2cHsT
	+0GtIrzp3NnPXtUD0VkOpEKMkxuSDcFsq2EApvdnjUm/35dEyoXbxm10V9Lubx1kb+H8
	tuKcwxBXhv67H/y0eRvquckdiXK/UDkIXwXqYHojqxc2rsEeW0svl5E+O0lnlQTY4UcR
	FVYq2gns/20DiM0aCVEysJSLTHjHbM4rEmaR6scJFlExwUm5YNhQVv58v+cm6zzh6Xhh
	jvtg==
X-Received: by 10.50.43.136 with SMTP id w8mr13451976igl.20.1400464032525;
	Sun, 18 May 2014 18:47:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.33 with HTTP; Sun, 18 May 2014 18:46:41 -0700 (PDT)
In-Reply-To: <5379606D.2070703@yoctoproject.org>
References: <537873F8.2020402@dynamicdevices.co.uk>
	<5379606D.2070703@yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 18 May 2014 18:46:41 -0700
Message-ID: <CAMKF1sqNdbPvRqXPscgjVH-zCmj9O-8gWr2qcy6nArNEmGqPrw@mail.gmail.com>
To: Michael Halstead <michael@yoctoproject.org>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: [meta-mono] Git push fails. No space left
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
X-List-Received-Date: Mon, 19 May 2014 01:47:17 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, May 18, 2014 at 6:37 PM, Michael Halstead
<michael@yoctoproject.org> wrote:
> Thanks for the heads up Alex!
>
> I've added 1.8TB of extra space so we should be set for awhile.

Thats good. but I think it would be good to clean up some of contrib
repos. May be a call to clean up
unused contrib repos should be made.

 Sorry
> that you weren't able to push.
>
> I've also fixed the obvious style problems with the headers on the
> markdown the meta-mono /about page. Please tell me if you have any other
> style suggestions.
>
> Michael Halstead
> Yocto Project / SysAdmin
>
> On 05/18/2014 01:48 AM, Alex J Lennon wrote:
>> Hi,
>>
>> I'm trying to push a commit to meta-mono and it's failing due to lack of
>> space, it says,
>>
>> Counting objects: 12, done.
>> Delta compression using up to 2 threads.
>> Compressing objects: 100% (5/5), done.
>> Writing objects: 100% (5/5), 477 bytes | 0 bytes/s, done.
>> Total 5 (delta 4), reused 0 (delta 0)
>> error: file write error (No space left on device)
>> fatal: unable to write sha1 file
>> error: unpack failed: unpack-objects abnormal exit
>> To git@git.yoctoproject.org:meta-mono
>>  ! [remote rejected] master -> master (n/a (unpacker error))
>> error: failed to push some refs to 'git@git.yoctoproject.org:meta-mono'
>>
>> Cheers,
>>
>> Alex
>>
>>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

