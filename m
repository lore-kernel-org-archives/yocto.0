Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
 by mx.groups.io with SMTP id smtpd.web11.5500.1610431362379332793
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jan 2021 22:02:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kjE6jN8n;
 spf=pass (domain: gmail.com, ip: 209.85.166.45, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-io1-f45.google.com with SMTP id y19so1739013iov.2
        for <yocto@lists.yoctoproject.org>; Mon, 11 Jan 2021 22:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q2LHx1+tp9iSI/JCP8fyzrWmi1AoQdR42SPRFl9Unk0=;
        b=kjE6jN8nkRVLRvUiW00g5NHH0FwpS8avS8oDxCmY6tKJwIaQnXTetW3JlFKCBWwdy6
         pqksKGykVWMG6sVN2iqZOcrpV9ybkTWHYFrhbDk/W9NxApC0pY26oajHiwnNUBuqQzva
         ENW6oA/f1ngniptt+eKGQvmu0YsIyIxfORYAefi7NwYIINpbc2IXBiQ4CPV9uFthXF2D
         AvDCLBbDQvZnSo8J0+/k3/JDIY1ACm/NBpdlJkmmtcAffo/hduUl5GKl+8HsgtXiPgjj
         CiZkU6pYerG8J2iOsZod7Y0kvt+D3x0vTtkP5oBs+XZs8pefzkIgjXoIp72PgBO29Nog
         inbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q2LHx1+tp9iSI/JCP8fyzrWmi1AoQdR42SPRFl9Unk0=;
        b=c8bMELlXBNqKF0mzmYL/90YAXr3gIVkrZdUXXFiJ2DGk/jMl4suD/QPJcR+vN4stvM
         HbOGBzJNdOmJqVZ07WL7JBcuNT/XdNttcbu36QVnJ/1uR8tT10XSsDhUZ99AO7Mvigcw
         LvagfZw6IIwtBgZBWMKeCdRYg8fKPreyUOKW33a1FpFJLmKXJRmuEmnwy05/apO0GMB4
         o66YTuSrvWGSoRi9+ABJJ1OOF8cTsl5yX+BZ600XitOIr4DR+4pFtLD1iXIgXW9LNEFj
         U0fs/1htjomtMrqkSAKgLmBtg9jbADtwQtASKcSk3YKlJdMszyykbCY9VZ3z/wqaxM8T
         uRbg==
X-Gm-Message-State: AOAM532VO6k6mSIBJhayOMQEdBMno2WRN5Glx9nx+ChAp0zFm6ZV7dK5
	UJNy7N0I4H9kcxjgrUrJa0RWqMqm0APQKyNv3x0=
X-Google-Smtp-Source: ABdhPJxM84XTlqbBvvgo6gXrmt8CvYOADuRCWfFHzB7ETVVSkvf8AaEQTCXfX1rqYziN3/7u87oEM31WFG4CZk/eKcM=
X-Received: by 2002:a92:cf44:: with SMTP id c4mr2452778ilr.207.1610431361604;
 Mon, 11 Jan 2021 22:02:41 -0800 (PST)
MIME-Version: 1.0
References: <CACX=-dXasA=Q4vjDXza9N36K=yZ68REiSTXEtTitbta3E71aUQ@mail.gmail.com>
 <DM6PR17MB2474AD2BC28614101A2F9F90F8AB0@DM6PR17MB2474.namprd17.prod.outlook.com>
In-Reply-To: <DM6PR17MB2474AD2BC28614101A2F9F90F8AB0@DM6PR17MB2474.namprd17.prod.outlook.com>
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Tue, 12 Jan 2021 11:32:29 +0530
Message-ID: <CACX=-dWkaYcynokF4AuHBApqwzodOBc2V-t9OCRY05tb_CSqWw@mail.gmail.com>
Subject: Re: [yocto] BITBAKE HANGS
To: "Davis, Michael" <michael.davis@essvote.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003e619505b8adc5b0"

--0000000000003e619505b8adc5b0
Content-Type: text/plain; charset="UTF-8"

Hello Davis,

              I will try using 16 GB ram. Thank you very much for your
response.
Thanks,
ravi uppada.

On Mon, Jan 11, 2021 at 11:18 PM Davis, Michael <michael.davis@essvote.com>
wrote:

> QTWebengine needs a considerable amount of RAM to compile and link
> relative to the rest of Yocto.
>
> Normally around 12-16GB.  Less than that and the system tends to hang.
>
>
>
>
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *U RAVI KUMAR via lists.yoctoproject.org
> *Sent:* Monday, January 11, 2021 11:25 AM
> *To:* yocto@lists.yoctoproject.org
> *Subject:* [yocto] BITBAKE HANGS
>
>
>
> hi guys,
>
>
>
>  I have encountered with a problem.I have built a custom linux for
> raspberrypi and included
> meta-openembedded,meta-raspberrypi,meta-qt5,meta-python2 layers and
> compiled on the bitbake. it is working fine.
>
> I have added recipe "qtwebengine" , here i have encountered an issue i.e
> the system hangs. only while compiling qtwebengine system hangs.Can anyone
> suggest me the solution.So that i canovercome and proceed fiurther..
>
>
>
> Thanks and regards,
>
> ravikumar
>
>
> * CONFIDENTIALITY NOTICE:*
>
> This e-mail transmission and any documents, files or previous e-mail
> messages attached to it may contain information that is confidential,
> protected by the attorney/client or other privileges, and may constitute
> non-public information. It is intended to be conveyed only to the
> designated recipient(s) named above.
>
> Any unauthorized use, reproduction, forwarding, distribution or other
> dissemination of this transmission is strictly prohibited and may be
> *unlawful.* If you are not an intended recipient of this email
> transmission, please notify the sender by return e-mail and permanently
> delete any record of this transmission. Your cooperation is appreciated. To
> find out more Click Here <http://www.essvote.com/legal/>.
>

--0000000000003e619505b8adc5b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Davis,<div><br></div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 I will try using 16 GB ram. Thank you very=C2=A0mu=
ch for your response.</div><div>Thanks,</div><div>ravi uppada.</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Jan 11, 2021 at 11:18 PM Davis, Michael &lt;<a href=3D"mailto:michael.davi=
s@essvote.com">michael.davis@essvote.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">



<div lang=3D"EN-US">
<div class=3D"gmail-m_6136045234912499451WordSection1">
<p class=3D"MsoNormal">QTWebengine needs a considerable amount of RAM to co=
mpile and link relative to the rest of Yocto.<u></u><u></u></p>
<p class=3D"MsoNormal">Normally around 12-16GB.=C2=A0 Less than that and th=
e system tends to hang.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>From:</b> <a href=3D"mailto:yocto@lists.yoctoproj=
ect.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"=
mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctopro=
ject.org</a>&gt;
<b>On Behalf Of </b>U RAVI KUMAR via <a href=3D"http://lists.yoctoproject.o=
rg" target=3D"_blank">lists.yoctoproject.org</a><br>
<b>Sent:</b> Monday, January 11, 2021 11:25 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> [yocto] BITBAKE HANGS<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">hi guys,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0I have encountered with a problem.I have built=
 a custom linux for raspberrypi and included meta-openembedded,meta-raspber=
rypi,meta-qt5,meta-python2 layers and compiled on the bitbake. it is workin=
g fine.
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I have added recipe &quot;qtwebengine&quot; , here i=
 have encountered an issue i.e the system hangs. only while compiling qtweb=
engine system hangs.Can anyone suggest me the
<a href=3D"http://solution.So" target=3D"_blank">
solution.So</a> that i canovercome and proceed fiurther..<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks and regards,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">ravikumar<u></u><u></u></p>
</div>
</div>
</div>


<br><br><p style=3D"font-family:Verdana;font-size:10pt;color:rgb(102,102,10=
2)"><b>
CONFIDENTIALITY NOTICE:</b></p><p style=3D"font-family:Verdana;font-size:8p=
t;color:rgb(102,102,102)">This e-mail transmission and any documents, files=
 or previous e-mail messages attached to it may contain information that is=
 confidential, protected by the attorney/client or other privileges, and ma=
y constitute non-public information. It is intended to be conveyed only to =
the designated recipient(s) named above.<br><br>Any unauthorized use, repro=
duction, forwarding, distribution or other dissemination of this transmissi=
on is strictly prohibited and may be <b>unlawful.</b> If you are not an int=
ended recipient of this email transmission, please notify the sender by ret=
urn e-mail and permanently delete any record of this transmission. Your coo=
peration is appreciated.


To find out more <a href=3D"http://www.essvote.com/legal/" target=3D"_blank=
">Click Here</a>.</p></div>
</blockquote></div>

--0000000000003e619505b8adc5b0--
