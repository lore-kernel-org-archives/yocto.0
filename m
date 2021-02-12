Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web09.2998.1613133038270636131
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Feb 2021 04:30:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=1CZYP23q;
 spf=pass (domain: burtonini.com, ip: 209.85.208.172, mailfrom: ross@burtonini.com)
Received: by mail-lj1-f172.google.com with SMTP id g11so274363ljj.7
        for <yocto@lists.yoctoproject.org>; Fri, 12 Feb 2021 04:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oqmcRMvMe7uUIDmj83mXBA2tnuYz+oPFcI3a7lEDUVY=;
        b=1CZYP23qC4m+xVN5O+nRlgF1tlI56djKAUzzTlPVBHt6qt5GUWGql/7r67OKIUmPAO
         oYmq+d+JPHRgeOyYT6s4p5ngpxfcXKmxc9ZskuMI+6mp2VyxjjMdWP1Wy/r3vF4FPQMK
         yhXDsBNCSiVTEe7XndHZZQZVDa9pKTalfbBJfi430IJTGvQ8FoTYDjKJoRZD00RTswqH
         Nc1mG3JDO7fPLFARTEfphHMybC/gS6ouHf7tJZ6mcf7y7ebqsiwb7RzPy/9PHgVTUewf
         jS9mIl2w79IaleSDRZS02E6QzWHHSNijjbHjCIkW3LEUCrOWEuAaeA94OZ3iF0noUxqS
         RqLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oqmcRMvMe7uUIDmj83mXBA2tnuYz+oPFcI3a7lEDUVY=;
        b=ruid8tEJPq+JGHWu8A2Cezs1rI2jBzdN3YQd2SJxoijy/2gXPsJAH+B/VmXRpHT9ov
         yKPTRLWIH1KvTuhxBgb90zxcjonabGlTp77Co1Qv8ItDFEtOltOT323Wrp4eSCMVRDIs
         x/asD625cb/W8Osh11Db9d+YT0pn93hEbBK4klvEWBardNQvZ8DnepqCLtM8EKemH8vY
         qDcdtAE4KW2OMal2rFfG8FsarDWZSSY/D4L1VL9wzNv0JqDbbS50dpOwbsIxUJ15GlGc
         fu9pe1lZXYRD4dgtKLwM2eMiveIBZaTs61eCr46fjLnC4p3OJlzuPXRDJMiBT8o2BsFb
         ChWA==
X-Gm-Message-State: AOAM531Hpb2BGIPstO+UwB2rak3fqXhvsjAksMqw0CInq/kYJ36gpGBI
	wU67NYXBweKWIjqgsuYbpuKzUCCnBzFnhxgWvewdcw==
X-Google-Smtp-Source: ABdhPJxYs0EbNBeO0XYa2lBRTr1hZsj2kCCkmAGyqZ3Bh0zd6BjShQnHwJ48fpiFXhHxv0rOuMstrlDZPmIw4MYda3U=
X-Received: by 2002:a2e:145d:: with SMTP id 29mr1534505lju.391.1613133036381;
 Fri, 12 Feb 2021 04:30:36 -0800 (PST)
MIME-Version: 1.0
References: <sA16.1613130550517284980.m91e@lists.yoctoproject.org>
In-Reply-To: <sA16.1613130550517284980.m91e@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Fri, 12 Feb 2021 12:30:24 +0000
Message-ID: <CAAnfSTvej0OyaGp6TTgQ8t2invpFmvBU4EG5QZaNz5VV0ApgJw@mail.gmail.com>
Subject: Re: [yocto] Integrating Ubuntu 20.04 root file system in yocto for i.MX8M #yocto #kernel #linux
To: poornesh.g@phytecembedded.in
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

The first question is why.  It sounds like you want Ubuntu but the
bootloader and kernel built by Yocto.  I'm struggling to see what this
would achieve.

On Fri, 12 Feb 2021 at 11:49, <poornesh.g@phytecembedded.in> wrote:
>
> Greetings !
>
> I am trying to integrate the ubuntu 20.04 Root file system with the yocto build . Ultimately my final image should consists of :
>
> Bootloader and Kernel : From default yocto build system.
>
> Rootfile system : Should be taken the ubuntu 20.04 RFS.
>
> I am adding the ubuntu 20.04 rfs as a recipe in yocto, but I am failing to integrate this ubuntu RFS over the default yocto root file system.
>
> Requesting your solutions and steps .
>
> Thanks in advance
>
>
> 
>
