Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
 by mx.groups.io with SMTP id smtpd.web10.45276.1593984420587092798
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 14:27:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.8, mailfrom: rpjday@crashcourse.ca)
Received: from localhost ([127.0.0.1]:33924 helo=cpanel7.indieserve.net)
	by cpanel7.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1jsCA6-001j96-UH; Sun, 05 Jul 2020 17:26:59 -0400
Received: from [66.129.241.12] ([66.129.241.12]) by crashcourse.ca (Horde
 Framework) with HTTPS; Sun, 05 Jul 2020 17:26:58 -0400
Date: Sun, 05 Jul 2020 17:26:58 -0400
Message-ID: <20200705172658.Horde.aKqksEonhdfsnNCOQY9PS9l@crashcourse.ca>
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] how does "bitbake meta-toolchain" map to a particular "image" when generating SDK?
References: <20200705065053.Horde.NJDQhlsuiJNUkmbq-wIigE6@crashcourse.ca>
 <CAAnfSTu2mMMifGdTc0OtGfN8wXNQKddnZ9udTY0gbV0fQAvRRw@mail.gmail.com>
 <20200705152404.Horde.B3EKfbXBj697OSUtR4mf4S6@crashcourse.ca>
 <13669db91c4314f433e43a0ad7f7c4ba912c95db.camel@linuxfoundation.org>
In-Reply-To: <13669db91c4314f433e43a0ad7f7c4ba912c95db.camel@linuxfoundation.org>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday@crashcourse.ca
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=utf-8; format=flowed; DelSp=Yes
Content-Disposition: inline


Quoting Richard Purdie <richard.purdie@linuxfoundation.org>:

> On Sun, 2020-07-05 at 15:24 -0400, Robert P. J. Day wrote:
>> Quoting Ross Burton <ross@burtonini.com>:
>>
>> > On Sun, 5 Jul 2020 at 11:50, Robert P. J. Day  
>> <rpjday@crashcourse.ca> wrote:
>> > >    however, one can also generate a standard SDK with the generic
>> > > (image-independent):
>> > >
>> > >    $ bitbake meta-toolchain
>> > >
>> > > which clearly does not identify an image (all that recipe does,
>> > > really, is "inherit populate_sdk"), so i *guessed* that using that
>> > > command will generate a standard SDK based only on what can be found
>> > > in the various .conf files and associated variables (MACHINE, DISTRO,
>> > > etc.) without being tied to a particular image.
>> > >
>> > >    just about to dive into the details, but is the above at least a
>> > > simplistic way of looking at it?
>> >
>> > At the most fundamental level, you've asked bitbake to build
>> > 'meta-toolchain'.  Looking in meta-toolchain.bb will show you what
>> > that entails.  It's basically just the compilers and a few other tools
>> > that were added as needed over the years.
>>
>>    i'd assumed as much, but is there a reason that the meta-toolchain target
>> is not mentioned at all in the SDK manual? Would that not be the right
>> place to mention it, even briefly?
>
> meta-toolchain is really old, from the days before the populate_sdk
> task for images existed. It was created as a compatibility artefact and
> as an example to show you could do standalone SDKs like that without
> images.
>
> I'd imagine its not mentioned as we envisaged the populate_sdk tasks
> taking over from meta-toolchain. I'm not even sure we test meta-
> toolchain on the autobuilder. It probably continues to work as its so
> similar to buildtools-tarball and friends.
>
> Should it be mentioned? Maybe...

   that actually clears things up. i'll let others higher up the food chain
decide if the meta-toolchain target should be documented, or if it's
entirely superseded by the populate_sdk tasks.

rday

