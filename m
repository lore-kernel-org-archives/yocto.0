Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web09.781.1581531109950816269
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 10:11:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=m6i0pNHH;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id b9so1481982pgk.12
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 10:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nA7JZxm8rHaDXnBVOZMOKxbYfJ7ZTpGWM9NqZJ/tFe4=;
        b=m6i0pNHH5QJKzMKvg8z26LwnhSSZ+NdDv9oLKJ/kBUPkMx09Mc3QgAPmUcDNzMO8WW
         RrU5b03RKH+iFhTElPE+C3lWBrS2sXZvK5bIvkLbKuvrLMjb58znM1N4bPZbJIbEzU3z
         vuV9jb3OuGo9GmzECDeJQ8lf4TbMMgNSndIv4uYj7GT0B51GR2Zi4Qjwm7lThQisCyt2
         79D957+93zgQX/CBmT6w0XLj02aCrAP/Rl8P3InaV23R6CdI84bROhmpBHWyJTMNp+KX
         YY0vquA1/yNOIJnwTJlMZsvS99GRFfRkyn7xjREGxbQLs0OUdAnhDz6LvqcGDuZY1nxE
         oNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=nA7JZxm8rHaDXnBVOZMOKxbYfJ7ZTpGWM9NqZJ/tFe4=;
        b=EiND++0BACp2MPlFXRZ9MgiFuAld+KrDIRllZM5ml8Ouoj6FQkxMuSkZtkDMXYkej3
         wF8aryUu5RQpT+oiDGVkQrRSjs5yav+lSZWqcgr7q1+KiM5EznIZYd+BxcBdo6Lv748j
         ImC7ndC8uU2oGEe+z9oGRgRZJ0Hq+EcGP5nBgEqnHoouL0oBXHAoXStWDrGMvWAna4QG
         iJBet7kmTN09Ssf4hcUpYPTBr3zDVeK6AdnopuQ1Q6RXpXR+NvrILD+uCOKkeItyvzFF
         imfTpWeIURidj9OzR9lItkntsxgEmLB2NB/+rjMi8moJi3DCTfEzNMneqGPLVEHHgXEc
         Annw==
X-Gm-Message-State: APjAAAWAJJNnNVz+34FF+Fc2HhFtjOTPIXhsssGVNPa/yif9MeSNUEKY
	RP/ab6O5gOdSFSOa/znwExDSbpj2xF8=
X-Google-Smtp-Source: APXvYqzQAkKht1ykuT9GYxjDIdeYzsfHayzdT1CTrEU9sgh+MQ/X2dBQ/R0GjeEdrHL5IwzGN2MwZw==
X-Received: by 2002:a63:4c60:: with SMTP id m32mr13154204pgl.433.1581531108725;
        Wed, 12 Feb 2020 10:11:48 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:1011:7401:8a59:f04c? ([2601:646:9200:4e0:1011:7401:8a59:f04c])
        by smtp.gmail.com with ESMTPSA id a27sm1718066pfr.162.2020.02.12.10.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2020 10:11:48 -0800 (PST)
Subject: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute binary applications from other x86-64 linux OSes
To: Christian Lohr <christian.lohr.ext@zeiss.com>,
 Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM0P190MB07705DB273CD954279B282F3C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj-q2rFtyHGdJfTO6e=7C0RrokZwTcCoVd-nHw1=trd+_A@mail.gmail.com>
 <AM0P190MB07703F67D36E568E0AB7671CC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj_pP_-zSAUMt18Dh9_6LQCgWh-C7vjD-ygTOggFq-v7vA@mail.gmail.com>
 <AM0P190MB0770F8B1522BC252623F7098C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj8L5u197TNh9XNFed-U+8MLUb6r=58qyFSdkr6ubj4LMg@mail.gmail.com>
 <AM0P190MB0770F39B0C5D821CEB773BBCC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <c28f22c4-2c19-8742-5058-9ea88afa0d5d@gmail.com>
Date: Wed, 12 Feb 2020 10:11:47 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <AM0P190MB0770F39B0C5D821CEB773BBCC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2/12/20 3:19 AM, Christian Lohr wrote:
> Ok, I created a symbolic link with “ln -s /lib /lib64” and it seemed to 
> work. Thanks a lot.

right, if you built multilib image then it will be using /lib64 
automatically.

https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#combining-multiple-versions-library-files-into-one-image

> 
> *Von:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *Im 
> Auftrag von *Alexander Kanavin
> *Gesendet:* Mittwoch, 12. Februar 2020 12:00
> *An:* Lohr, Christian [ext] <christian.lohr.ext@zeiss.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Betreff:* Re: [yocto] Creating a QEmu (x86-64) Image, which can execute 
> binary applications from other x86-64 linux OSes
> 
> But this is exactly what happens: the kernel reads the dynamic 
> loader/interpreter path from the binary (which is different than the 
> list of dynamically linked libraries printed by ldd), isn't able to find 
> it and stops right there.
> 
> Try like this:
> 
> /lib/ld-linux-x86-64.so.2 /usr/share/dotnet/dotnet
> 
> Alex
> 
> On Wed, 12 Feb 2020 at 11:45, Lohr, Christian [ext] 
> <christian.lohr.ext@zeiss.com <mailto:christian.lohr.ext@zeiss.com>> wrote:
> 
>     I used the x86_64 variant from the layer (it only downloads the
>     binaries and copies them).
> 
>     And I checked that with ldd, it seemed ok so far:
> 
>     ---------------------------------------------------------
> 
>     root@qemux86-64:/usr/share/dotnet# ldd dotnet
> 
>                  linux-vdso.so.1 (0x00007fffea543000)
> 
>                  libpthread.so.0 => /lib/libpthread.so.0
>     (0x00007f9fde06c000)
> 
>                  libdl.so.2 => /lib/libdl.so.2 (0x00007f9fde067000)
> 
>     libstdc++.so.6 => /usr/lib/libstdc++.so.6 (0x00007f9fddee5000)
> 
>     libm.so.6 => /lib/libm.so.6 (0x00007f9fddda4000)
> 
>                  libgcc_s.so.1 => /lib/libgcc_s.so.1 (0x00007f9fddd8a000)
> 
>                  libc.so.6 => /lib/libc.so.6 (0x00007f9fddbd0000)
> 
>                  /lib64/ld-linux-x86-64.so.2 =>
>     /lib/ld-linux-x86-64.so.2 (0x00007f9fde097000)
> 
>     Strace didn’t help either:
> 
>     -------------------------------
> 
>     root@qemux86-64:/# strace /usr/share/dotnet/dotnet
> 
>     execve("/usr/share/dotnet/dotnet", ["/usr/share/dotnet/dotnet"],
>     0x7ffe22f0ab70 /* 22 vars */) = -1 ENOENT (No such file or directory)
> 
>     strace: exec: No such file or directory
> 
>     +++ exited with 1 +++
> 
>     It’s strange that it denies that the binaries are there. Normally I
>     would have expected something like “wrong elf architecture” or
>     something about missing libraries. The only thing I think I could do
>     now, is to turn this “—enable-default-pie” off, but I’m not sure if
>     this helps, and I don’t know where to turn it off. And what I’m also
>     trying is to go back to Yocto Rocko Release (for this experiment I
>     used Warrior Release)
> 
>     *Von:* yocto@lists.yoctoproject.org
>     <mailto:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.org
>     <mailto:yocto@lists.yoctoproject.org>> *Im Auftrag von *Alexander
>     Kanavin
>     *Gesendet:* Mittwoch, 12. Februar 2020 10:26
>     *An:* Lohr, Christian [ext] <christian.lohr.ext@zeiss.com
>     <mailto:christian.lohr.ext@zeiss.com>>
>     *Cc:* yocto@lists.yoctoproject.org <mailto:yocto@lists.yoctoproject.org>
>     *Betreff:* Re: [yocto] Creating a QEmu (x86-64) Image, which can
>     execute binary applications from other x86-64 linux OSes
> 
>     That layer does have the x86_64 variant as well, no? Is it not working?
> 
>     https://github.com/RDunkley/meta-dotnet-core/blob/master/recipes-runtime/dotnet-core/dotnet-core_3.1.1.inc
>     <https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2FRDunkley%2Fmeta-dotnet-core%2Fblob%2Fmaster%2Frecipes-runtime%2Fdotnet-core%2Fdotnet-core_3.1.1.inc&data=02%7C01%7C%7Cdb5e5b579ece4304296a08d7afaabc5d%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637171020148948337&sdata=Vsh9c35%2B8gIqU9Hh%2BXz07z6NkZ6bF9LekpSOXdMZ5wU%3D&reserved=0>
> 
>     The error you're seeing is almost certainly due to Yocto using
>     /lib/ld-so... for dynamic loader, and the binary hardcoding /lib64/....
> 
>     Alex
> 
>     On Wed, 12 Feb 2020 at 10:15, Lohr, Christian [ext]
>     <christian.lohr.ext@zeiss.com <mailto:christian.lohr.ext@zeiss.com>>
>     wrote:
> 
>         Hello Alex,
> 
>         Thanks for replying. Yes, I know that this isn’t the way it
>         works on Yocto (and I told the managers it is a crappy idea to
>         do that more than once). But they need .NET Core in that company
>         I work for, and Mono doesn’t work (that’s what they told me).
>         Compiling .NET Core through the Yocto process is ugly, because
>         Microsoft used a mixture of shell scripts to compile it for some
>         platforms, it won’t work this way on Yocto. Actually one already
>         tried it, but only until .NET Core 2.2:
>         https://github.com/Tragetaschen/meta-aspnet
>         <https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2FTragetaschen%2Fmeta-aspnet&data=02%7C01%7C%7Cdb5e5b579ece4304296a08d7afaabc5d%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637171020148948337&sdata=lQ2kX9cti11SXfWsL9sQM5n1PCYRLd1g0BYXOenXXJw%3D&reserved=0>
> 
>         And despite this, I already managed to get the dotnet binaries
>         for ARM32 and ARM64 already working on a i.MX6 and i.MX8
> 
>         There’s a layer which just deploys the binaries:
>         https://github.com/RDunkley/meta-dotnet-core
>         <https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2FRDunkley%2Fmeta-dotnet-core&data=02%7C01%7C%7Cdb5e5b579ece4304296a08d7afaabc5d%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637171020148958296&sdata=VZrIi9EKPKTzlGZ9el0qMCZLKXrLL119L18Ds%2FhzQg4%3D&reserved=0>
> 
>         This is currently the last step. I thought if it worked on i.MX6
>         and i.MX8 it shouldn’t be a problem to get it running on
>         Virtualbox with x86-64. It should only make the things easy for
>         the developers. It isn’t even our target platform.
> 
>         Best regards,
> 
>         Christian Lohr
> 
>         *Von:* yocto@lists.yoctoproject.org
>         <mailto:yocto@lists.yoctoproject.org>
>         <yocto@lists.yoctoproject.org
>         <mailto:yocto@lists.yoctoproject.org>> *Im Auftrag von
>         *Alexander Kanavin
>         *Gesendet:* Mittwoch, 12. Februar 2020 09:51
>         *An:* Lohr, Christian [ext] <christian.lohr.ext@zeiss.com
>         <mailto:christian.lohr.ext@zeiss.com>>
>         *Cc:* yocto@lists.yoctoproject.org
>         <mailto:yocto@lists.yoctoproject.org>
>         *Betreff:* Re: [yocto] Creating a QEmu (x86-64) Image, which can
>         execute binary applications from other x86-64 linux OSes
> 
>         Yocto generally does not support this use case. The binary was
>         compiled in a different environment and expects things in
>         different places, and probably being different versions too. I
>         could point out the specific problem why the executable doesn't
>         even start, but it's really the wrong way to approach it. Is the
>         source code for it available?
> 
>         Microsoft specifically lists which distributions are supported,
>         and there is nothing Yocto-based in it:
> 
>         https://docs.microsoft.com/en-us/dotnet/core/install/dependencies?tabs=netcore31&pivots=os-linux
>         <https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Finstall%2Fdependencies%3Ftabs%3Dnetcore31%26pivots%3Dos-linux&data=02%7C01%7C%7Cdb5e5b579ece4304296a08d7afaabc5d%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637171020148958296&sdata=eh%2BrdniGyyrkD8B9%2BihYKM0GSun3W%2FTrftIpptywNnY%3D&reserved=0>
> 
>         For mono things you can use meta-mono layer, but I am not sure
>         if it provides exactly the item you're after.
> 
>         Alex
> 
>         On Wed, 12 Feb 2020 at 09:36, Christian Lohr
>         <christian.lohr.ext@zeiss.com
>         <mailto:christian.lohr.ext@zeiss.com>> wrote:
> 
>             Hello,
> 
>             I’m trying to create a normal QEmu (x86-64) Image, which I
>             can let run in Virtualbox. As a addition I deployed .NET
>             Core, which I got from this side:
> 
>             https://dotnet.microsoft.com/download/dotnet-core/thank-you/runtime-aspnetcore-3.1.1-linux-x64-binaries
>             <https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdotnet.microsoft.com%2Fdownload%2Fdotnet-core%2Fthank-you%2Fruntime-aspnetcore-3.1.1-linux-x64-binaries&data=02%7C01%7C%7Cdb5e5b579ece4304296a08d7afaabc5d%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637171020148968250&sdata=qENira3bdwQEE8B2QfPoY6yymGoHtVBrYRIFq4NBUWg%3D&reserved=0>
> 
>             But I can’t execute it:
> 
>             ----------------------------
> 
>             root@qemux86-64:/usr/share/dotnet# ./dotnet
> 
>             -sh: ./dotnet: No such file or directory
> 
>             But it is there:
> 
>             ------------------
> 
>             root@qemux86-64:/usr/share/dotnet# ls -lh
> 
>             total 116K
> 
>             -rw-r--r-- 1 root root 1.1K Feb 10 02:33 LICENSE.txt
> 
>             -rw-r--r-- 1 root root  31K Feb 10 02:33 ThirdPartyNotices.txt
> 
>             -rwxr-xr-x 1 root root  72K Feb 10 02:33 dotnet
> 
>             drwxr-xr-x 3 root root 4.0K Feb 10 02:36 host
> 
>             drwxr-xr-x 4 root root 4.0K Feb 10 02:36 shared
> 
>             It tried to get more information about the dotnet-executable
> 
>             ------------------------------------------------------------------------------
> 
>             root@qemux86-64:/usr/share/dotnet# readelf -h dotnet
> 
>             ELF Header:
> 
>                Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
> 
>                Class:                             ELF64
> 
>                Data:                              2's complement, little
>             endian
> 
>                Version:                           1 (current)
> 
>                OS/ABI:                            UNIX - System V
> 
>                ABI Version:                       0
> 
>                Type:                              EXEC (Executable file)
> 
>                Machine:                           Advanced Micro Devices
>             X86-64
> 
>                Version:                           0x1
> 
>                Entry point address:               0x402f17
> 
>                Start of program headers:          64 (bytes into file)
> 
>                Start of section headers:          71032 (bytes into file)
> 
>                Flags:                             0x0
> 
>                Size of this header:               64 (bytes)
> 
>                Size of program headers:           56 (bytes)
> 
>                Number of program headers:         10
> 
>                Size of section headers:           64 (bytes)
> 
>                Number of section headers:         31
> 
>                Section header string table index: 30
> 
>             root@qemux86-64:/usr/share/dotnet#  file dotnet
> 
>             dotnet: ELF 64-bit LSB executable, x86-64, version 1 (SYSV),
>             dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2,
>             for GNU/Linux 2.6.32,
>             BuildID[sha1]=28c244c1953bcbee994709a4b849086ee7cf0c99, stripped
> 
>             I compared those values with that from Python, which does
>             run on this system
> 
>             -------------------------------------------------------------------------------------------------------
> 
>             root@qemux86-64:/opt/jre-8/bin# readelf -h /usr/bin/python3.7
> 
>             ELF Header:
> 
>                Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
> 
>                Class:                             ELF64
> 
>                Data:                              2's complement, little
>             endian
> 
>                Version:                           1 (current)
> 
>                OS/ABI:                            UNIX - System V
> 
>                ABI Version:                       0
> 
>                Type:                              DYN (Shared object file)
> 
>                Machine:                           Advanced Micro Devices
>             X86-64
> 
>                Version:                           0x1
> 
>                Entry point address:               0x1060
> 
>                Start of program headers:          64 (bytes into file)
> 
>                Start of section headers:          12568 (bytes into file)
> 
>                Flags:                             0x0
> 
>                Size of this header:               64 (bytes)
> 
>                Size of program headers:           56 (bytes)
> 
>                Number of program headers:         11
> 
>                Size of section headers:           64 (bytes)
> 
>                Number of section headers:         27
> 
>                Section header string table index: 26
> 
>             root@qemux86-64:/usr/share/dotnet# file /usr/bin/python3.7
> 
>             /usr/bin/python3.7: ELF 64-bit LSB pie executable, x86-64,
>             version 1 (SYSV), dynamically linked, interpreter
>             /lib/ld-linux-x86-64.so.2,
>             BuildID[sha1]=a455873f278466378405802b0e0171337e52a81c, for
>             GNU/Linux 3.2.0, stripped
> 
>             ================================================================================
> 
>             The only difference I found, is that Python is a “ELF 64-bit
>             LSB pie executable” whereas dotnet is a “ELF 64-bit LSB
>             executable”. I tried to turn that PIE (seemed to be a gcc
>             option: --enable-default-pie) feature of, but that didn’t
>             work well, and I couldn’t find a way to remove it.
> 
>             ----
> 
>             Best regards,
> 
>             Christian Lohr
> 
>             Im Auftrag von:
> 
>             Carl Zeiss Meditec AG
>             Göschwitzer Strasse 51-52
> 
>             07745 Jena, Deutschland
> 
>             christian.lohr.ext@zeiss.com
>             <mailto:christian.lohr.ext@zeiss.com>
> 
>             Tel: +493641220206
> 
> 
> 
> 

