Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
 by mx.groups.io with SMTP id smtpd.web10.24971.1604996599488714962
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 00:23:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=G7megzVP;
 spf=pass (domain: gmail.com, ip: 209.85.221.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f172.google.com with SMTP id w123so2523096vka.4
        for <yocto@lists.yoctoproject.org>; Tue, 10 Nov 2020 00:23:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7pbihAl2WZcpq5D0trPopdcQL+TNU5bXfuC9VuLK3KA=;
        b=G7megzVPpHBPmGVDRarievUUjYFIl8CfhNLHqjHPyG2UuUxW0PEUHW54qbDj2OMHrj
         tLmOCAYBbZWJA3SaVphCROVCuOPMQfrN5ydvCLAEJ9M43nC7Wed4SkscCHQ9C9Mkdk6x
         J5xmn70x8MzT5DDDDYF/40CeH1OOEDRBiIQM9uRDn3aR97iWB6F3+IXAIPKnfAdhoO8k
         XRubOLKANMNKqIER6f3Z/jsMtnQ4kPAGrBdxhqqNwe9My9YIIeByB3Zpjm8HFszTqSbM
         ykhbk7rKLPdEawasULLr8tYvz8GULENm3g0Po7buRKniUtrbgjainzePrrQv6It0QuKZ
         xQjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7pbihAl2WZcpq5D0trPopdcQL+TNU5bXfuC9VuLK3KA=;
        b=tcAnCro74jg03js0g8EqppRz8ADdqRKkJDphypQzqg+zu8JmKvLnshGG+9WJOMvfa3
         cLANvVANdsM0Qx9rmIZIMR8dNvhyUAo7Ttk9wufk7HOvES7CYvepkUyq2ZhTDseI5wmJ
         Uk3Iu3bfM/CfednA2T/JPeczGooR9cyYAEFWHB5Td5RsvQZUiaIag4Q4iInS9EH2u8EA
         JpGuPtjJV0DnuyU2I6+CzgnmKPVJXYQCoXDpN2r9tIM68YEWb5OCuw5uXJAWmrNmEdo/
         9pvgSC+rOK7zDyEXPpuxSgZed1lFRBtuhunVidKJsu7qOJXRpW2tt1tNa5mXuCBXmCYb
         cwoA==
X-Gm-Message-State: AOAM533gMhjaZqjH+O/+vICB9MarNGzIZ957r+kyASFta+ZZ+LqBIpWx
	wjNxYP++DkeyCodP/JZEJLzSaBvnTfM3odSSnkM=
X-Google-Smtp-Source: ABdhPJwMa6ezAYB9eXZMIpS922wEWCTiKcutLUqG6vGxxOHy0hJSEKU+be5hyDYu/3W8NkHCbBypoyEboG2BrP+e+H0=
X-Received: by 2002:a05:6122:10eb:: with SMTP id m11mr9605467vko.8.1604996598547;
 Tue, 10 Nov 2020 00:23:18 -0800 (PST)
MIME-Version: 1.0
References: <4D84553A-FE9E-4D28-B1EF-A39364CCA107@iki.fi> <CADfgfoZOEek=0TQ2Qo+K2nmayAxwcbathT+sh=4Za-9dTpLUug@mail.gmail.com>
In-Reply-To: <CADfgfoZOEek=0TQ2Qo+K2nmayAxwcbathT+sh=4Za-9dTpLUug@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 10 Nov 2020 09:23:07 +0100
Message-ID: <CANNYZj_ujOdQ-Sm2wJ0xj8qd_eP8z6otLWOnpMXw2b6UgdjmaQ@mail.gmail.com>
Subject: Re: [yocto] Yoctoproject.org cgit tags CSS
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Anders Montonen <Anders.Montonen@iki.fi>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001f49eb05b3bc647a"

--0000000000001f49eb05b3bc647a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am not seeing a change - the tags are still not highlighted (e.g. commit
on top):
http://git.yoctoproject.org/cgit.cgi/poky/log/?h=3Dyocto-3.2

This file still contains only the old name:
http://git.yoctoproject.org/cgit/cgit.css

Alex

On Tue, 10 Nov 2020 at 08:24, Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> I've copied the style into the new class name. Please let me know if thi=
s
> looks correct to you.
>
> On Mon, Nov 9, 2020 at 12:29 PM Anders Montonen <Anders.Montonen@iki.fi>
> wrote:
>
>> Hi,
>>
>> Since some time, the tags in the log view of yoctoproject.org=E2=80=99s=
 cgit
>> have not been highlighted correctly. The problem seems to be that in th=
e
>> HTML, tags are given the class =E2=80=9Ctag-annotated-deco=E2=80=9D, wh=
ich doesn=E2=80=99t exist in
>> the CSS. The CSS does have a =E2=80=9Ctag-deco=E2=80=9D style which is =
probably what=E2=80=99s
>> intended.
>>
>> Regards,
>> Anders Montonen
>>
>>
>>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>
>=20
>
>

--0000000000001f49eb05b3bc647a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am not seeing a change - the tags are still not hig=
hlighted (e.g. commit on top):</div><div><a href=3D"http://git.yoctoproject=
.org/cgit.cgi/poky/log/?h=3Dyocto-3.2">http://git.yoctoproject.org/cgit.cgi=
/poky/log/?h=3Dyocto-3.2</a></div><div><br></div><div>This file still conta=
ins only the old name:</div><div><a href=3D"http://git.yoctoproject.org/cgi=
t/cgit.css">http://git.yoctoproject.org/cgit/cgit.css</a></div><div><br></d=
iv><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, 10 Nov 2020 at 08:24, Michael Halstead &lt;<a=
 href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">I&#39;ve copied the style into the new class name. Please=
 let me know if this looks correct to you.</div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 9, 2020 at 12:29 PM A=
nders Montonen &lt;<a href=3D"mailto:Anders.Montonen@iki.fi" target=3D"_bla=
nk">Anders.Montonen@iki.fi</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Hi,<br>
<br>
Since some time, the tags in the log view of <a href=3D"http://yoctoprojec=
t.org" rel=3D"noreferrer" target=3D"_blank">yoctoproject.org</a>=E2=80=99s =
cgit have not been highlighted correctly. The problem seems to be that in t=
he HTML, tags are given the class =E2=80=9Ctag-annotated-deco=E2=80=9D, whi=
ch doesn=E2=80=99t exist in the CSS. The CSS does have a =E2=80=9Ctag-deco=
=E2=80=9D style which is probably what=E2=80=99s intended.<br>
<br>
Regards,<br>
Anders Montonen<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
"><div dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</d=
iv><div>Systems Operations Engineer</div></div></div>
<br>
<br>
<br>
</blockquote></div>

--0000000000001f49eb05b3bc647a--
