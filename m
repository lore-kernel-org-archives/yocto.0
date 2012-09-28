Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAF4CE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 09:34:53 -0700 (PDT)
Received: by oagh2 with SMTP id h2so4193008oag.35
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 09:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=teHkPTEzlQJP4o3OJkAnNhrd9uKYu8Ci4ihZ5NobRrs=;
	b=YSIgm/s7bh6/GYKfTj47ysHoKCyUR5Apjh3fp+c0DjXj/ieLa5gPj7bZ1c7jljpGR3
	aEfjtCW8RYUzLub07zsO/T6hgLVEZ60YHsJCaSTaqxBW+qYol8sPLrTcIgQbbgkfBPkf
	G1hK8WBUZOWxZeBIO/8H0a/FvRnhuQzdBYo+VxSM6b1BmjCkN9qwzWreEkNOpIhtW7dW
	Grtz2QFzIIlFMfX/RSXbKLgJexndNKqOc4OosPdMH64UGugrgKx+s2hIhHj4caSLLryo
	jo83rNCcRT0ew6Q2cNBHHlKd7wmu4+iuGd/cVvX2JowMPDKGXgg8cX7d0pD41fOuFADn
	qQSw==
MIME-Version: 1.0
Received: by 10.60.26.133 with SMTP id l5mr6400724oeg.60.1348850093393; Fri,
	28 Sep 2012 09:34:53 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Fri, 28 Sep 2012 09:34:53 -0700 (PDT)
In-Reply-To: <1776612.6uYv7lrdGp@helios>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
	<19284936.TeXuZqBLh2@helios>
	<CAMAb8ZMWnVWDah+h7A1qp=HytRd8kNOZfn_yeM5aa11QT4LHSQ@mail.gmail.com>
	<1776612.6uYv7lrdGp@helios>
Date: Fri, 28 Sep 2012 12:34:53 -0400
Message-ID: <CAMAb8ZO1ffsC5JaU-jMaPFw=QaXCa1tF1L2trkqwADLchrSsoA@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: build failure on current
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
X-List-Received-Date: Fri, 28 Sep 2012 16:34:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Is it definitely tar that's the problem or gzip? ...

Oh! Didn't even think of that. :-% Looks like it's gzip:

evadeflow% gzip -d perl-5.14.2.tar.gz

gzip: perl-5.14.2.tar.gz: invalid compressed data--crc error


Nice find!  I'll see about updating my gzip...


On Fri, Sep 28, 2012 at 12:00 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 28 September 2012 11:53:53 Evade Flow wrote:
>> > > Erm... that *specific* bit prints nothing when pasted into a file and
>> > > executed. (Is it really supposed to?)
>> >
>> > No, but the rest of the script (the bit following the blank line that
>> > you've omitted) is...
>>
>> My bad, sorry. (I really need to read more carefully.) Here's what I get
>> when I add the missing lines:
>>
>> evadeflow% cat > temp.sh
>> #!/bin/sh
>> needtar=1
>> TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
>> float_test() {
>>      echo | awk 'END { exit ( !( '"$1"')); }'
>> }
>>
>> # Tar version 1.24 and onwards handle overwriting symlinks correctly
>> # but earlier versions do not; this needs to work properly for sstate
>> float_test "$TARVERSION > 1.23" && needtar="0"
>> echo $needtar
>> evadeflow% chmod +x temp.sh
>> evadeflow% ./temp.sh
>> 1
>>
>> So... it correctly determines that it needs to build tar, but... the built
>> tar can't unpack the tarball from CPAN:
>>
>> evadeflow% wget http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz
>> --2012-09-28 11:46:13--  http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz
>> Resolving usaprox1.lightning.com... 10.102.184.7
>> Connecting to usaprox1.lightning.com|10.102.184.7|:8080... connected.
>> Proxy request sent, awaiting response... 200 OK
>> Length: 15223598 (15M) [application/x-gzip]
>> Saving to: `perl-5.14.2.tar.gz'
>>
>> 100%[================================================================>]
>> 15,223,598  62.2M/s   in 0.2s
>>
>> 2012-09-28 11:46:13 (62.2 MB/s) - `perl-5.14.2.tar.gz' saved
>> [15223598/15223598]
>>
>> evadeflow% ./poky-git/build/tmp/sysroots/i686-linux/usr/bin/tar xf
>> perl-5.14.2.tar.gz
>>
>> gzip: stdin: invalid compressed data--crc error
>> ./poky-git/build/tmp/sysroots/i686-linux/usr/bin/tar: Child returned status
>> 1 ./poky-git/build/tmp/sysroots/i686-linux/usr/bin/tar: Error is not
>> recoverable: exiting now
>>
>>
>> Weird. Anyway, I have a workaround, so it's not a big deal--especially given
>> that Ubuntu 10.04 isn't officially supported.  I'm happy to run any other
>> tests you can think of to hunt down the cause of this (I've got a pretty
>> fast build mchine now), but I totally understand if you've got bigger fish
>> to fry at the moment...
>
> Is it definitely tar that's the problem or gzip? This would suggest gzip:
>
> http://code.google.com/p/go/issues/detail?id=3443
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

