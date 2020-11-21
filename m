Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web10.12213.1605996686308567154
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 14:11:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AIx6lR62;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: chuckwolber@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id k7so6857562plk.3
        for <yocto@lists.yoctoproject.org>; Sat, 21 Nov 2020 14:11:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AMmaGpv3T4vPLr9rttRbn45MrqNLAX7AvEdnclH5eGE=;
        b=AIx6lR62AJ5aplHbkIuuEo+b8RRc1imZaQf29fjds6AecyydaCFsdGcfq4rdHhtc26
         R/KkOetYHCoWXySphQVoDognnHrS+dq55ISNDra8lmMLUaSVEYdP9WTU4IAhQrzO78b/
         7QnbD1UuFnTzoSxbO4mqE+dMe8uToa7TMrr6cslRixPQ7OTQRZVdl66ZmvwXOUilaFDY
         pssWpNsEs4rP7XeY06QrPSMqfjGo5FHxXfNaBy6Hoe6sqqpuGomntV+OysZ9//4TotM7
         Cay5Q44Oklu2erE8uQT5vUmhmM8aDfbCQ4CMxGXLGH+3HXDVCAMxs8OQ6Hq0SPpK8Bs1
         qqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AMmaGpv3T4vPLr9rttRbn45MrqNLAX7AvEdnclH5eGE=;
        b=mwEyEk3KXfyng5/v/1zFyqpVR6FwqESxmchRDPxMAaZkwh2pEtzHX/alVr193P3SR5
         6Js0OKNUvP8yap86aJjIYGhz+fW8iRO8XWTNyLwLByGw6CMdIKzgOx9vPZFlKKhRXjbC
         AMLL8gwj/92BcTQjrqPOPR3uDfgIAaADmU1lD10r+MNDkqetauyrGaopvcLY+Bg3b0RX
         pk1sNwPVz91KLWyOcQCrPucd7ZjFvCQ4xAACiQ6jxyapz4NT8j5uDZEtxUQuUtDyMWtC
         sbl4zkxC5QOi35AtGtzUMRupjp/Hsmb6ABFuZ6kq2MpgjqAg901fCwIEcF5FndNPo/NI
         HHDQ==
X-Gm-Message-State: AOAM531wQhWW5tpePChTJiZL5adCBp6aFsafgpRmwh5APwB24KeQTINi
	ZtaNWeQaaY1Tjw9HmlwjxWqeLwr72UdANxvut4s=
X-Google-Smtp-Source: ABdhPJzu7kLhfPt3eyoJNnVOBLKmAeJDVYyuLKr2V79jLb83o1sFf6HgXNbimhvpC6TpN423bbYN1dIa3a7xYnC85SA=
X-Received: by 2002:a17:902:b90c:b029:d6:868d:f566 with SMTP id
 bf12-20020a170902b90cb02900d6868df566mr19184422plb.2.1605996685436; Sat, 21
 Nov 2020 14:11:25 -0800 (PST)
MIME-Version: 1.0
References: <SGGF.1605926973795518137.Lv2i@lists.yoctoproject.org>
 <CAB=6tBTXBc+77Eh0hDKGLtWDzU+PwFr1HRAeica-4ckftO33GQ@mail.gmail.com>
 <CAB=6tBRZoRMzAtHGaT5T+_8QEK9EaeUa-KbckvrYvQQmiJiAgw@mail.gmail.com> <8251b71-2826-42c7-9d63-b0587f61898@crashcourse.ca>
In-Reply-To: <8251b71-2826-42c7-9d63-b0587f61898@crashcourse.ca>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Sat, 21 Nov 2020 14:11:14 -0800
Message-ID: <CAB=6tBQ-dgAmqyMSh883WLP369mz_NXP9SRR4dWi53ZDdxZchg@mail.gmail.com>
Subject: Re: [yocto] Best convention for FILES variable
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: rustyhowell@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f22b9905b4a53dfa"

--000000000000f22b9905b4a53dfa
Content-Type: text/plain; charset="UTF-8"

On Sat, Nov 21, 2020 at 7:48 AM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

%< SNIP %<


>   pedantically speaking, since you're using "+=", you don't need those
> leading spaces.
>

Indeed you are correct. I believe I mistakenly conflated that particular
aspect of "_append" with "+=".

Thank you for pointing this out.

..Ch:W..

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000f22b9905b4a53dfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sat, Nov 21, 2020 at 7:48 AM Robert P.=
 J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca<=
/a>&gt; wrote:<br></div><div class=3D"gmail_quote"><div><br></div><div>%&lt=
; SNIP %&lt;<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
=C2=A0 pedantically speaking, since you&#39;re using &quot;+=3D&quot;, you =
don&#39;t need those<br>
leading spaces.<br></blockquote><div><br></div><div>Indeed you are correct.=
 I believe I mistakenly conflated that particular aspect of &quot;_append&q=
uot; with &quot;+=3D&quot;.</div><div><br></div><div>Thank you for pointing=
 this out.</div><div><br></div><div>..Ch:W..<br></div></div><br>-- <br><div=
 dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><b><span style=
=3D"font-family:monospace">&quot;Perfection must be reached by degrees; she=
 requires the slow hand of time.&quot; - Voltaire</span></b></div></div></d=
iv></div>

--000000000000f22b9905b4a53dfa--
