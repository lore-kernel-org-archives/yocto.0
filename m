Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web12.121.1632261983548055107
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 15:06:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jrqZdDy8;
 spf=pass (domain: gmail.com, ip: 209.85.222.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f41.google.com with SMTP id 2so267261uav.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 Sep 2021 15:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JFdA4hLm5JSyWfZ72yCHBlEQHV/3PG24QL+HIxoRv8A=;
        b=jrqZdDy8keTPx2XZgadr8Kd6H53zBK1QRVMEnXwUjUM7XC+8w0CHjV0V0dSf8EO54v
         cE/38jxun0FYodsv8xCkg7jJksChMII3gZQ+Mg1IOp/U0hOcT1iK+wNhMzZAQVoMnzYI
         tH2iKPt2R4l3ElzKkETrdon1eNLKtWgCW/W6MMrfromwGH+b+/tzDj+3zJRRwDKAFVe4
         zVSojkvS40JO+tF+KeZNy49d2GKd8oLlwHZ2/3/zImv40DJYg4qNhpPz+cTj+FNeBfgn
         XngTIfT4dUF0k1lUMLxtyLDAIXsEz8R70xZhCF7nm+McDjikaIMO5nmS8McakDySJZKi
         HqMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JFdA4hLm5JSyWfZ72yCHBlEQHV/3PG24QL+HIxoRv8A=;
        b=l1Y4HnqXD3qZz3PI3fZaQPg5kviZjxZ7oF3mTKN+ccSB8TfyMa7tCB07t1ABv1FfAV
         kQM8u9jXJzR3u5rY+qNxMrEIh/G4OCpb/FHH1HWCXaDdJsz91xpN1vLgMSuJnKLmZVRZ
         xvJ1obl3QUdegCrdqi8tvKl/gPKtBwqg1B9F5ioLWagysGIRNK/nCdsHCAHHuwT6alMa
         PkiG2YpCe8DWr+EjFvTKec/aMoB9VQ5wzrc60dv8ikVGlk48/EzDx7Y/l5ByxsiVOSft
         wAdGicCiRy+nv6fIfy8yBmWLKBmJVHoB9w3zNJnzW+R5JrSyqQ77JmRIK0UsUQdFZVvA
         SN2A==
X-Gm-Message-State: AOAM530kFH4igYzlsHgAQdEdTkiaSq5giw2JVh0DaVAW2znkDeoxMyVX
	qR9S4GJW49sg1edOzXIKzdHww9snmELZx0+akWdx1gpn
X-Google-Smtp-Source: ABdhPJzY8TGZ8wCdAgZOEPOeuhtFZgghr3Wa73UBVsB95RfNbAcoVrH42np5U8vIMKkxunKh4H+mOnmgBTz3zUOPDr4=
X-Received: by 2002:a05:6130:392:: with SMTP id az18mr19210938uab.71.1632261982567;
 Tue, 21 Sep 2021 15:06:22 -0700 (PDT)
MIME-Version: 1.0
References: <91a33a503a4a4dfa8c1fa0aae18d4d1c@blackberry.com>
In-Reply-To: <91a33a503a4a4dfa8c1fa0aae18d4d1c@blackberry.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 22 Sep 2021 00:06:11 +0200
Message-ID: <CANNYZj9UatN-+9moDY8SFhCmNypMOs5DW1ykmX9cU4e3HXw1bA@mail.gmail.com>
Subject: Re: [yocto] Switch to a different Python3 version
To: Lijun Chen <lijchen@blackberry.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a6bf2905cc889bc6"

--000000000000a6bf2905cc889bc6
Content-Type: text/plain; charset="UTF-8"

The best way is to fix the app. Such major downgrades are firmly uncharted
territory, and aren't supported. If you have errors, you need to figure out
yourself how to fix them - but if you provide the logs, we can try to help.

Alex

On Tue, 21 Sept 2021 at 22:00, Lijun Chen <lijchen@blackberry.com> wrote:

> Hi,
>
>
> Currently we are building a Yocto image based on Hardknott release, which
> includes python 3.9.4. Due to a App constraint, we have to downgrade
> Python3 to 3.8. I tried copying over 3.8.5 bb file and associated
> poky/meta/recipes-devtools/python/python3/ folder, but the building
> failed. What is the best way to switch/downgrade python3 version?
>
>
> Thanks,
>
> Lijun
> ------------------------------
> This transmission (including any attachments) may contain confidential
> information, privileged material (including material protected by the
> solicitor-client or other applicable privileges), or constitute non-public
> information. Any use of this information by anyone other than the intended
> recipient is prohibited. If you have received this transmission in error,
> please immediately reply to the sender and delete this information from
> your system. Use, dissemination, distribution, or reproduction of this
> transmission by unintended recipients is not authorized and may be unlawful.
>
> 
>
>

--000000000000a6bf2905cc889bc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The best way is to fix the app. Such major downgrades=
 are firmly uncharted territory, and aren&#39;t supported. If you have erro=
rs, you need to figure out yourself how to fix them - but if you provide th=
e logs, we can try to help.</div><div><br></div><div>Alex<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
21 Sept 2021 at 22:00, Lijun Chen &lt;<a href=3D"mailto:lijchen@blackberry.=
com">lijchen@blackberry.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_136677639584162725divtagdefaultwrapper" style=3D"font-si=
ze:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"l=
tr">
<p>Hi,</p>
<p><br>
</p>
<p>Currently we are building a Yocto image based on Hardknott release, whic=
h includes python 3.9.4. Due to a App constraint, we have to downgrade Pyth=
on3 to 3.8. I tried copying over 3.8.5 bb file and
<span>associated poky/meta/recipes-devtools/python/python3</span>/ folder, =
but the building failed. What is the best way to switch/downgrade python3 v=
ersion?</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Lijun<br>
</p>
</div>

<hr>This transmission (including any attachments) may contain confidential =
information, privileged material (including material protected by the solic=
itor-client or other applicable privileges), or constitute non-public infor=
mation. Any use of this information by anyone other than the intended recip=
ient is prohibited. If you have received this transmission in error, please=
 immediately reply to the sender and delete this information from your syst=
em. Use, dissemination, distribution, or reproduction of this transmission =
by unintended recipients is not authorized and may be unlawful.<br>
</div>

<br>
<br>
<br>
</blockquote></div>

--000000000000a6bf2905cc889bc6--
