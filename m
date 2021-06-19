Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web10.17963.1624079042159216770
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jun 2021 22:04:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jXdCjKga;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: frederic.martinsons@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id w127so13114208oig.12
        for <yocto@lists.yoctoproject.org>; Fri, 18 Jun 2021 22:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GQkVSXT14om7PXjTDsaTeWs+5+9IhbxOk5X/vmHQvMY=;
        b=jXdCjKgaI/y8nWz9iRJxfDMazd78OENRMPdlLe4s56CwS19eX+K/S3xl0OTMICvKze
         aBuCh2CVnYfoXo5jQnCaPmDz2IH2FTorGu2eK5uSLLcqZOIq/c3klOGSFGLRKfiujPPB
         vUdtdYY8UJFWhitdZyV3JP3Z4uZY6Wvhf9ovpMvRbOK7irwK/VtEG4SQmBkLSwjE2jLw
         jdvklWU0zklYKA6tbmFN06nSvdSmBZcFXfv4x/++MJ9r+GK09AVfGfizjejZMgAoMl6O
         qPrz41MET3zLiinggfT3bTSY5/GFQQ7MqS0hot6a0skRbFMBt4VWwddsXwKsS7BWDP+D
         X2yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GQkVSXT14om7PXjTDsaTeWs+5+9IhbxOk5X/vmHQvMY=;
        b=iHZJlmKs0S0MD5nk/qyVeVVwSKs7KcL3MqHRkvK8T3KJ48696uURy6qQE8aom6Mbjg
         JYmAdI+qaAmmc7eSmZPYWWeVeclXqlJkr0vb6mI64J+43vFBCbmjL+izs+J75a6OHIam
         fXwTWvWcczoIlPuluAalgSl9t9zRUSv/1iKXom9NVHzfUIo+vz+N1gF0xiFA9s+MwceY
         g3LAiM5Byd/pHWVIaYVCJjulIHuOrMZlIsePOg95TttXSAieGTRlDH0xAICVP8eaCzOs
         Ta5FJgx3opAC9k5njYkXufszncnBj4uYo7/8EUtHlKjVw25FIhtPHi0W5hD3AHJ3zjdj
         GZ5g==
X-Gm-Message-State: AOAM530pkmJ2zQ1vPRGCP6FsDnUZ0CRaNw1rviICn0uSFZ3hHxHZBVBa
	bBh30N3sBQA23gPgVpaVCPR96XLqWO6QHhF9IwM=
X-Google-Smtp-Source: ABdhPJxNNC8M3XvdY4H6YSVl96JO1odSZcIVlf+ifFhd+3WhWwb78aEz/FOoirgsh2VhhoqM4+MHL5qQC2zVrfgpzKQ=
X-Received: by 2002:aca:281a:: with SMTP id 26mr17203075oix.142.1624079041420;
 Fri, 18 Jun 2021 22:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <CABqcFR=X0WQfkqvBz7+XLg2B=EQoUSTR7QERwJ+q1s7ny0uE1g@mail.gmail.com>
In-Reply-To: <CABqcFR=X0WQfkqvBz7+XLg2B=EQoUSTR7QERwJ+q1s7ny0uE1g@mail.gmail.com>
From: "Frederic Martinsons" <frederic.martinsons@gmail.com>
Date: Sat, 19 Jun 2021 07:03:50 +0200
Message-ID: <CA+cAkerJhOmwE49NyLkXYm3g3AG-aMQCy=WvcpCVCEQUP_bqwQ@mail.gmail.com>
Subject: Re: [yocto] Appending an existing machine .conf file
To: Mike Frampton <mikeframpo@gmail.com>
Cc: yocto@lists.yoctoproject.org, ayoub.zaki@embexus.com
Content-Type: multipart/alternative; boundary="00000000000059e27105c5175ed4"

--00000000000059e27105c5175ed4
Content-Type: text/plain; charset="UTF-8"

Hello,

 you can customize QB_OPT_APPEND by removing options you don't want, e.g.

QB_OPT_APPEND_remove = "-device usb-tablet"

and add your own after.

But maybe a lazy operator in the original conf file would be more suitable.

On Sat, 19 Jun 2021 at 06:41, Mike Frampton <mikeframpo@gmail.com> wrote:

> Greetings Yocto,
>
> I'm interested in assigning custom config settings for machine type
> qemuarm.
>
> I tried a method suggested in this thread
> https://lists.yoctoproject.org/g/yocto/message/38359 by Ayoub Zaki, he
> suggested defining the following in local.conf
>
> > include conf/machine/${MACHINE}-extra.conf
>
> However, this doesn't work for me because quemuarm.conf in poky/meta
> **assigns** its variables, e.g.,
>
> > QB_OPT_APPEND = "-device VGA,edid=on"
> > QB_OPT_APPEND += "-device qemu-xhci -device usb-tablet -device usb-kbd"
>
> So that if I define a value for this, it will be overwritten.
>
> Is there another method for achieving this? If not I could submit a
> patch to change poky's definitions to "??" assignments.
>
> Cheers,
> --Mike
>
> 
>
>

--00000000000059e27105c5175ed4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>=C2=A0you can customize QB=
_OPT_APPEND by removing options you don&#39;t want, e.g.</div><div><br></di=
v><div>QB_OPT_APPEND_remove =3D &quot;-device usb-tablet&quot;</div><div><b=
r></div><div>and add your own after.</div><div><br></div><div>But maybe a l=
azy operator in the original conf file would be more suitable.</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat,=
 19 Jun 2021 at 06:41, Mike Frampton &lt;<a href=3D"mailto:mikeframpo@gmail=
.com">mikeframpo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Greetings Yocto,<br>
<br>
I&#39;m interested in assigning custom config settings for machine type qe=
muarm.<br>
<br>
I tried a method suggested in this thread<br>
<a href=3D"https://lists.yoctoproject.org/g/yocto/message/38359" rel=3D"no=
referrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/=
38359</a> by Ayoub Zaki, he<br>
suggested defining the following in local.conf<br>
<br>
&gt; include conf/machine/${MACHINE}-extra.conf<br>
<br>
However, this doesn&#39;t work for me because quemuarm.conf in poky/meta<b=
r>
**assigns** its variables, e.g.,<br>
<br>
&gt; QB_OPT_APPEND =3D &quot;-device VGA,edid=3Don&quot;<br>
&gt; QB_OPT_APPEND +=3D &quot;-device qemu-xhci -device usb-tablet -device=
 usb-kbd&quot;<br>
<br>
So that if I define a value for this, it will be overwritten.<br>
<br>
Is there another method for achieving this? If not I could submit a<br>
patch to change poky&#39;s definitions to &quot;??&quot; assignments.<br>
<br>
Cheers,<br>
--Mike<br>
<br>
<br>
<br>
</blockquote></div>

--00000000000059e27105c5175ed4--
