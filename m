Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AD1AE0027E
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 09:20:30 -0700 (PDT)
Received: by lboi15 with SMTP id i15so1870706lbo.35
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 09:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=8DNS1XUQMs4LHmI97bGDRxQZQya5/4hMVsjZEh4AbIw=;
	b=qUwLwRUtqT+OueIuKp46P8FS8XZDNZTXdVgSU+5IRuFHDo+U5Mo3dOQG2/3Iv3iOXH
	VM9QsBo5jbn9vVKnqitF8GF9cMne9NNDOYHmwv0UPTNRup7hfvJQLGZqq+pja0y/fLln
	BjiwFnQLrrO/cROBXyCHUphBICqmfj8U1mVEt4nCcxejed2aPNlXbROvxGZFyrpXLt0E
	FfOyihpgwL/saHgHVa+MFSH3S2AE3W2jPhULzMHHfn+4+JVBz3yv54hL/ZRqSyMXt7NI
	sjazIv4XJ/nr5jTtersMbyvRCyYMqXpXpSuhA/jI72fKrR2qPnQSaUAb7iUKeHgThsSW
	KzEg==
Received: by 10.152.131.37 with SMTP id oj5mr9162179lab.14.1344788428783; Sun,
	12 Aug 2012 09:20:28 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.5.104 with HTTP; Sun, 12 Aug 2012 09:20:08 -0700 (PDT)
In-Reply-To: <A941E4AA-B567-4E61-85B7-E4E9A1A191BA@gmail.com>
References: <194A260C-67A5-4EE5-8F9F-D5DBFB38C2F1@gmail.com>
	<CABcZANkH8v44cc-ecnvOihGBe3v4BWKiosFvuCjAUwui014kzA@mail.gmail.com>
	<A941E4AA-B567-4E61-85B7-E4E9A1A191BA@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 12 Aug 2012 09:20:08 -0700
X-Google-Sender-Auth: b-W8FhkBIcJGpfgS9dgJz5H9EW4
Message-ID: <CABcZANm9U0h3Q0E1Uou1Wi5p_1mmA48uaDTAsmzC=Y1div8Sng@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Over-riding insane LDFLAGS check
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
X-List-Received-Date: Sun, 12 Aug 2012 16:20:30 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 12, 2012 at 9:17 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> On Aug 12, 2012, at 8:14 PM, Chris Larson wrote:
>
>> On Sun, Aug 12, 2012 at 4:45 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>>>       Is there anyway I can over-ride the insane LDFLAGS check for
>>> GNU_HASH?
>>
>> Remove it from ERROR_QA and (optionally) add it to WARN_QA instead. If
>> you're using an external toolchain, see what I did at
>> https://github.com/MentorEmbedded/meta-sourcery/blob/master/conf/distro/include/tcmode-external-sourcery.inc#L91-98
>> for this one.
>
> How would I go about hooking, in a single location, so that if I run gcc-4.5, it over-rides it completely, but if I specify gcc-4.6 or 4.7 it doesn't get over-ridden?

Use INSANE_SKIP. Grep the metadata for examples. Specifically,
INSANE_SKIP_<packagename> = "ldflags".
-- 
Christopher Larson

