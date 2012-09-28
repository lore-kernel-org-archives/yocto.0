Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78584E0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 08:53:54 -0700 (PDT)
Received: by oagh2 with SMTP id h2so4127396oag.35
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 08:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kaq9WzdL9uxy9fh6ZZG3CkhQeAYhWzJNav87Xo2pZsQ=;
	b=oFSwtihyGwiCODrJuZxT8N+DO3KpsAXb8LBxpKS50lujW8Q8bQxg+kd5W4NylYlltL
	RUL3u1R0AUvwRj//arj6g/WwNs0eO1zyHMjGCz+sbyVwrFDdmwVRIT45i7J+47+jNbQ2
	4P91fJQcsoxEMlb33bf/22OmCuHR12CGQJDCDUGwRVNKmJK1neSAnVNlBopEYOt5RqeQ
	6Vqf0ZMQIaJsxNfIOSfMw9wABW5uv680GeyVOikJGeZS8Lh28v5NakBBgEeITzFS1iG7
	G34JbyZYZIhsX8JbtVHerYhgzzpuNuQqokVTbdmu8PE65z3umaFaNNF3qQizLF6nEhdJ
	S8mg==
MIME-Version: 1.0
Received: by 10.60.170.9 with SMTP id ai9mr6038794oec.36.1348847633863; Fri,
	28 Sep 2012 08:53:53 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Fri, 28 Sep 2012 08:53:53 -0700 (PDT)
In-Reply-To: <19284936.TeXuZqBLh2@helios>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
	<10806457.GXdzIaxYOE@helios>
	<CAMAb8ZNWccQSq9c=8pFwO1tv5kCUC4nTPVamr1=5iFqh2JJaKg@mail.gmail.com>
	<19284936.TeXuZqBLh2@helios>
Date: Fri, 28 Sep 2012 11:53:53 -0400
Message-ID: <CAMAb8ZMWnVWDah+h7A1qp=HytRd8kNOZfn_yeM5aa11QT4LHSQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 28 Sep 2012 15:53:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

> > Erm... that *specific* bit prints nothing when pasted into a file and
> > executed. (Is it really supposed to?)

> No, but the rest of the script (the bit following the blank line that you've
> omitted) is...

My bad, sorry. (I really need to read more carefully.) Here's what I get when
I add the missing lines:

evadeflow% cat > temp.sh
#!/bin/sh
needtar=1
TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
float_test() {
     echo | awk 'END { exit ( !( '"$1"')); }'
}

# Tar version 1.24 and onwards handle overwriting symlinks correctly
# but earlier versions do not; this needs to work properly for sstate
float_test "$TARVERSION > 1.23" && needtar="0"
echo $needtar
evadeflow% chmod +x temp.sh
evadeflow% ./temp.sh
1

So... it correctly determines that it needs to build tar, but... the built tar
can't unpack the tarball from CPAN:

evadeflow% wget http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz
--2012-09-28 11:46:13--  http://www.cpan.org/src/5.0/perl-5.14.2.tar.gz
Resolving usaprox1.lightning.com... 10.102.184.7
Connecting to usaprox1.lightning.com|10.102.184.7|:8080... connected.
Proxy request sent, awaiting response... 200 OK
Length: 15223598 (15M) [application/x-gzip]
Saving to: `perl-5.14.2.tar.gz'

100%[================================================================>]
15,223,598  62.2M/s   in 0.2s

2012-09-28 11:46:13 (62.2 MB/s) - `perl-5.14.2.tar.gz' saved [15223598/15223598]

evadeflow% ./poky-git/build/tmp/sysroots/i686-linux/usr/bin/tar xf
perl-5.14.2.tar.gz

gzip: stdin: invalid compressed data--crc error
./poky-git/build/tmp/sysroots/i686-linux/usr/bin/tar: Child returned status 1
./poky-git/build/tmp/sysroots/i686-linux/usr/bin/tar: Error is not
recoverable: exiting now


Weird. Anyway, I have a workaround, so it's not a big deal--especially given
that Ubuntu 10.04 isn't officially supported.  I'm happy to run any other
tests you can think of to hunt down the cause of this (I've got a pretty fast
build mchine now), but I totally understand if you've got bigger fish to fry
at the moment...


On Fri, Sep 28, 2012 at 11:19 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 28 September 2012 11:13:22 Evade Flow wrote:
>> >  ...                  could you put this into a file and run it and tell
>> >  me
>> >  what it prints on your system?
>> >
>> > --------------- snip --------------
>> > #!/bin/sh
>> > needtar=1
>> > TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
>> > float_test() {
>> >
>> >      echo | awk 'END { exit ( !( '"$1"')); }'
>> >
>> > }
>>
>> Erm... that *specific* bit prints nothing when pasted into a file and
>> executed. (Is it really supposed to?)
>
> No, but the rest of the script (the bit following the blank line that you've
> omitted) is... I wanted to ensure that both the stripping out of the version
> and float_test were working.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

