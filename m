Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66DBBE7718A
	for <webhook@archiver.kernel.org>; Thu, 19 Dec 2024 22:18:27 +0000 (UTC)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web10.140172.1734646701347254294
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2024 14:18:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=N2Yl7HTO;
 spf=pass (domain: gmail.com, ip: 209.85.166.179, mailfrom: chuckwolber@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3a7d7db4d89so4445365ab.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Dec 2024 14:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734646700; x=1735251500; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q0XkpYOSaLpVv/9D7iwufSisKegWD0oScG/MgROjmXg=;
        b=N2Yl7HTOoI2HGcelrxPgyNqN+xUKWhNOlTj8cj8dZomRYcpO0dhar/TixccaFzw9WF
         PBtm5cgoUyoDjBw4LWleRtpgXYm3bVHZ/bo9jea2e7Gv3TADy3uoy1CpYFikFmR+VaIQ
         O53pTNzVK83SDBU44t9R9L8wMfNj2JJqkeNOlb6Hrt7f7l9AeyNsVsvTplcRyDgC1Y4m
         BbMKDpb53uJhS5Db6nPc9fgJj0dOhyMVMu6bED1YB5YXIQJShX8uPeRFtOIrBuV/FhMp
         NVV7S2RhGCgn0Y5vlM7REYblDzfORK68KvmxcouEMkAqpN1CntZmFJC5swvqxSvARfZx
         ieYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734646700; x=1735251500;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q0XkpYOSaLpVv/9D7iwufSisKegWD0oScG/MgROjmXg=;
        b=qtjgTZ8r7tFNEBn7tK5/J2SKmKs//UujQTetM2B3voGr7+384wYtJbTEls5SKytiqx
         EPF2JVNHxf5Zr5i00RMoEHWwpxBWMmhdKyRJm7yMv5Gs3L6NvopBJ78E64pSVuLnHnrf
         SKRuU5i98mfZg0h5WaqBYJ1HyAxSwmNtBlyV/z6t3hFw3i1cDKlU1/gGv+RYAR114iL9
         +5/C/PFhuA4CVFWCaSf9hAnMXDgFIeYQi5gpmvj3MzDABCSpyYi3wUjTYHLUf6tBIASe
         h0Aof6+YIU8Vj1uoB/zgpB8GiHpNKxV7OWUc8xh2qm4mzA/5E9r0L0xDHNBFJ8vHMqEC
         30Og==
X-Forwarded-Encrypted: i=1; AJvYcCXUylk0aZuygkWXBrq1A9cs10WnjKQFj+wC0AZnRRfdAkN7HXZ4GQVSh3b5hhQkTt1OicncDw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwkbZOBZB1nEa3Zp+rJ0bMAuKKqWvxHZoqsS7gNouGKnooelHB6
	vEHMelY//EUN6Qq9X+QxOIDGxrm2rAne+WbwzzNDBddD7vOHhXYqJ/9OesEfRjBZwiXWGL/Weq/
	1++0CL8suDLyFqUzndUI+K8bwgA8=
X-Gm-Gg: ASbGncvwg6KmY+BRSU4gUc4yE9+g9qdKQPT+uF8IRLa46i1rtgyPIqVRwb9/PBYnSMO
	V8hWxXikxuM8R20r1hphOzQSPIxqtIo6REfrW5cCTuKbsgB7Wcdg4w30O7Ko4SCRZifekOzQ=
X-Google-Smtp-Source: AGHT+IF0bGXXGdVT1fFs7vIeVmscD5O4up5k3N7hZAFIylapNGNghCv8VcdM9dpgG9qVTh+4PDLfXyIToagPgCyI9rM=
X-Received: by 2002:a05:6e02:3f8f:b0:3a7:a3a4:2d4b with SMTP id
 e9e14a558f8ab-3c2d2d4cfccmr6335825ab.14.1734646700491; Thu, 19 Dec 2024
 14:18:20 -0800 (PST)
MIME-Version: 1.0
References: <20241218124722.2030523-1-alex.kanavin@gmail.com>
In-Reply-To: <20241218124722.2030523-1-alex.kanavin@gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 19 Dec 2024 14:18:09 -0800
Message-ID: <CAB=6tBTTn=C5xAqDwtUm9nyTnnxh2s+Lfwoe+sD3Ara3cCKtLw@mail.gmail.com>
Subject: Re: [bitbake-devel] [RFC PATCH] bitbake-setup: add the proof of
 concept implementation
To: alex.kanavin@gmail.com
Cc: bitbake-devel@lists.openembedded.org, yocto@lists.yoctoproject.org, 
	openembedded-architecture@lists.openembedded.org, 
	Alexander Kanavin <alex@linutronix.de>
Content-Type: multipart/alternative; boundary="00000000000064d52b0629a6e8f4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Dec 2024 22:18:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64472

--00000000000064d52b0629a6e8f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 18, 2024 at 4:47=E2=80=AFAM Alexander Kanavin via lists.openemb=
edded.org
<alex.kanavin=3Dgmail.com@lists.openembedded.org> wrote:

> From: Alexander Kanavin <alex@linutronix.de>
>
>
> %< SNIP %<
>
> 3. The above message refers to a one-liner shell script that would build
> the targets
> specified in the chosen configuration:
> =3D=3D=3D
> alex@Zen2:/srv/work/alex/bitbake$ cat
> /home/alex/builds/poky-alex/build-gadget/build.sh
> . /home/alex/builds/poky-alex/build-gadget/init-build-env && bitbake
> core-image-minimal
> =3D=3D=3D
>

Would it be possible to change that to just "build" rather than "build.sh"?
For
an executable, there really is no need to telegraph the language it was
written
in. It also makes things very difficult later on if a more sophisticated
implementation in a different language is warranted.

Related: https://google.github.io/styleguide/shellguide.html#file-extension=
s

..Ch:W..

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000064d52b0629a6e8f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Dec 18, 2024 at 4:47=E2=80=AFAM A=
lexander Kanavin via <a href=3D"http://lists.openembedded.org">lists.openem=
bedded.org</a> &lt;alex.kanavin=3D<a href=3D"mailto:gmail.com@lists.openemb=
edded.org">gmail.com@lists.openembedded.org</a>&gt; wrote:</div><div class=
=3D"gmail_quote gmail_quote_container"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div>From: Alexander Kanavin &lt;<a href=3D"mailto:alex@linut=
ronix.de" target=3D"_blank">alex@linutronix.de</a>&gt;<br>
<br><br></div>%&lt; SNIP %&lt;<br><div><br>
3. The above message refers to a one-liner shell script that would build th=
e targets<br>
specified in the chosen configuration:<br>
=3D=3D=3D<br>
alex@Zen2:/srv/work/alex/bitbake$ cat /home/alex/builds/poky-alex/build-gad=
get/build.sh<br>
. /home/alex/builds/poky-alex/build-gadget/init-build-env &amp;&amp; bitbak=
e core-image-minimal<br>
=3D=3D=3D<br></div></blockquote><div><br></div>Would it be possible to chan=
ge that to just &quot;build&quot; rather than &quot;build.sh&quot;? For<br>=
an executable, there really is no need to telegraph the language it was wri=
tten<br>in. It also makes things very difficult later on if a more sophisti=
cated<br>implementation in a different language is warranted.<br><br></div>=
<div class=3D"gmail_quote gmail_quote_container">Related: <a href=3D"https:=
//google.github.io/styleguide/shellguide.html#file-extensions">https://goog=
le.github.io/styleguide/shellguide.html#file-extensions</a></div><div class=
=3D"gmail_quote gmail_quote_container"><div><br></div><div>..Ch:W..<br></di=
v><div><br></div></div><span class=3D"gmail_signature_prefix">-- </span><br=
><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><b><span =
style=3D"font-family:monospace">&quot;Perfection must be reached by degrees=
; she requires the slow hand of time.&quot; - Voltaire</span></b></div></di=
v></div></div>

--00000000000064d52b0629a6e8f4--

