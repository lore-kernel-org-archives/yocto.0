Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web12.7650.1627044693544484671
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Jul 2021 05:51:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W0pSp+YK;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id j6-20020a05600c1906b029023e8d74d693so1547208wmq.3;
        Fri, 23 Jul 2021 05:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1ovwPjif/qTznnf9YK8BbhrqP+/EAGLwPylNceR6ubQ=;
        b=W0pSp+YKUNPFBlRzLaHmQIdXF2mpMLJDV1h/F4CO/9CDnEup1OTtU6O33DYDiUfQ4o
         0MI2LcsocNC9ERmzoWAKzeyl+pNGY66u8Pcj3+4XxWQX8QUDbbjBp41TcXJM15NlXROH
         Iz3OAFk2vnoZP7X47LShTY1OTOX4cChtXEWwvQrFdEKVnYHqNuGooIo0uSlSmutFZ2wQ
         HuyL0uafgF0S5S6k0DuYErCRabdTCzEtqQw+vb9IANSJH+VNDGWWbTftgJNovb8X6K+l
         xeSD5Oi6Rhc/lt+Xwmq4ehkJ+Vk0iSTGYS6ZEoqSHQeMyGz3buvIy+M1lZl5SesxVY8g
         wf/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1ovwPjif/qTznnf9YK8BbhrqP+/EAGLwPylNceR6ubQ=;
        b=bOvAtj+EBp38q7chDviMfnjUc6k1YKoQqimAGO6F8z+vCU740tEFIoSckJ1Qe0aQn1
         u5c70ApZkeFPW0fQrA9cYrtTCLHAQFAXJ1ja5PVcitWOd00T/13GsNwlwlZ2ing19Wsk
         9HjwKBkSISz1c09d8RJzBINCPERUdunttiWEGOlUl1EbxoWvqfbdz0teVtZvB9dHPWW5
         /SOQeh0eYdiushdHnH9gQ2ghECwJe1dCXYaX2DxLf6J6mtiPsQ0mfDvU9jwq1/HrFDqa
         HQL/uIu7BgEcBXhIT7DCSqmefLB7RNXHHfpIxb8WiXqgTrtHV43/wYeUkXQLrBSH8Qyb
         ISHQ==
X-Gm-Message-State: AOAM531SFR+cokUf3a//RGvYw4wmraTtdN/DmwB8zIx56vm4Pd68VAA3
	UNzGWhHp+R0pDGjfTBa94DY=
X-Google-Smtp-Source: ABdhPJw2y2T7YAsv6vArbYOdC9ULigQwKciRKosevzzDHBPfjZAf1bEz4lb+cwrmlo7ckDspkNANDQ==
X-Received: by 2002:a7b:c7cb:: with SMTP id z11mr13992543wmk.102.1627044691936;
        Fri, 23 Jul 2021 05:51:31 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (athedsl-4432950.home.otenet.gr. [79.129.148.38])
        by smtp.gmail.com with ESMTPSA id l39sm4563915wms.1.2021.07.23.05.51.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jul 2021 05:51:31 -0700 (PDT)
Subject: Re: [yocto] [poky] [PATCH] local.conf.sample: disable prelink
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Mark Hatle <mark.hatle@kernel.crashing.org>, poky@lists.yoctoproject.org,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Khem Raj <raj.khem@gmail.com>
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
 <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org>
 <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
 <CANNYZj8S7V5owiS0p3B1fD7n_JpF-OPLApO=e9d+SiPuyFWHZw@mail.gmail.com>
 <0451f536368310860d9acb12e5a8424881b545e8.camel@linuxfoundation.org>
 <CANNYZj9Z87Jb7Ea-vtQ1ZEmtQvfFRDtTXAxvStZT3c02RnU01g@mail.gmail.com>
 <a7e0a44c-084e-5e21-5621-67e32ca36127@gmail.com>
 <CANNYZj-C_QWe9CB9JsAOctCJbNrAni8WoDVg15t5kzKsYn6QEw@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <802f76c0-5c9c-7fed-f6a8-52db36d2ce0e@gmail.com>
Date: Fri, 23 Jul 2021 15:51:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj-C_QWe9CB9JsAOctCJbNrAni8WoDVg15t5kzKsYn6QEw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 22/07/2021 22:05, Alexander Kanavin wrote:
> PIE is nowadays more or less the only available option and is expected 
> for improved security; Yocto does not even test non-PIE builds or 
> provide an off the shelf way to turn it off.

I am worried about those libraries, which are non-PIE libraries by 
default. My theory is, that they are non-PIE since prelink is able to 
operate on them. So prelink can "at least" be used a PIE detector.

They are:

lib/libdl-2.33.so is prelinked
lib/ld-2.33.so is prelinked
lib/libpthread-2.33.so is prelinked
lib/libc-2.33.so is prelinked

Is there are rational explanation why they are not compiled in PIE mode 
and/or if they are compiled in PIE mode how cross-prelink can operate on 
them? If cross-prelink can operate on them why not on the others?

> 
> I also have to note that prelink does show higher RAM consumption in 
> your tests as well (MemFree column). On the constrained systems which 
> would benefit most from improved prelink timings that might be a bigger 
> loss than not prelinking.

I guess we agree that MemFree shows free physical memory (user and 
kernel space).

My experiments show, that non-PIE and no prelink leaves the biggest 
amount of free physical memory.

They also show that non-PIE and prelink leave the smallest amount of 
free physical memory ;)

The difference is significant
prelinked-no-pie/no-prelink-no-pie:		4552 (kB)

If we leave things are they are:
prelinked-no-pie/prelinked-with-pie:		3972 (kB)

If we disable prelink (as you suggest - and I tend to agree since it 
does not make sense as it is right now)
prelinked-no-pie/no-prelink-with-pie:		4120 (kB)

...

but

if you look at the next line MemAvailable kB things looks a bit differently.

My interpretation of MemAvailable is, that it is an estimate of virtual 
memory available after reclaimable parts of memory (caches, buffer, 
slab,...) have been reclaimed without getting swap involved.

I see this:

MemAvailable kB

prelinked-with-pie 	939412
no-prelink-with-pie	939696
prelinked-no-pie	940344
no-prelink-no-pie	941216

Which means, that our current default setting is the worst possible 
solution ;)

no-prelink-no-pie would (theoretically) be the best.

I will try to update my second article and try to explain a bit more my 
interpretation of the results and maybe also try to see what bootchart 
says to all this.

Don't get me wrong. I am neither pro nor con prelink. I just would like 
to understand what it does, if it does something ;)

I spent quite some time on this - also discussing with most of you offline.
If you ask me, we should use your patch, since people didn't even notice 
that prelink can not prelink on PIE binaries for a couple of years.

So there does not seem to be much demand for it ;)

We can keep a "placebo" in for the homeopaths who think they use prelink 
in their images since PIE was enabled ;)

> 
> But yes, there is a timing benefit visible in the tests: 0.01s vs 0.1s.

Also less CPU usage can be seen. I hope I'll find time to run some test 
with bootchart. Maybe then we can also see boot time, memory, CPU,...

Regards,

Robert

> 
> Alex
> 
> On Mon, 19 Jul 2021 at 22:58, Robert Berger@yocto.user 
> <robert.berger.yocto.user@gmail.com 
> <mailto:robert.berger.yocto.user@gmail.com>> wrote:
> 
>     Hi Alex, RP, Mark,
> 
>     I did some research on the subject in order to try to figure out
>     what is
>     going on.
> 
>     1) I come to a similar conclusion with what found, but tried to look a
>     bit deeper for the reason.
> 
>     1.1) The reason that cross-prelink is not prelinking is, that for a
>     quite some time by default everything is built with PIE mode by default
>     and cross-prelink does not seem to be able to work on exe/libs compiled
>     with PIE mode. So seeing the same behavior with and without prelinking
>     is what I would expect as long as everything is compiled with PIE mode.
> 
>     A more detailed analysis of my tests can be found on my not yet
>     officially published site:
> 
>     https://rlbl.me/prelink-1 <https://rlbl.me/prelink-1>
> 
>     https://rlbl.me/prelink-2 <https://rlbl.me/prelink-2>
> 
>     Alex:
> 
>     Can you please rebuild your test images without PIE mode and re-run the
>     tests?
> 
>     Then we should have the 4 test cases:
> 
>     prelinked-with-pie
>     no-prelink-with-pie
>     prelink-no-pie
>     no-prelink-no-pie
> 
>     I guess then we can discuss what are the next steps.
> 
>     In my opinion the current default settings, which compile close to
>     everything in PIE mode, but invoke also cross-prelink do not make much
>     sense.
> 
>     The question is: "Do we want to drop cross-prelink, or do we want to
>     drag it along and come up more fine-grained configuration options?"
> 
>     We could e.g. exclude certain files from pre-linking.
> 
>     IMHO cross-prelink still works, but not on exe/libs which were compiled
>     in PIE mode.
> 
>     Regards,
> 
>     Robert
> 

