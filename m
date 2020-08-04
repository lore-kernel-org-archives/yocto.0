Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web12.5014.1596546858839954525
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 06:14:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rJE9uaLL;
 spf=pass (domain: gmail.com, ip: 209.85.166.179, mailfrom: eripflo@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id 77so5644228ilc.5
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 06:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=erB1z+4GLRlfthphdXoL72etdc/v5FExrjsmUg/Rb/w=;
        b=rJE9uaLLTYYTlfZI05Lh4TzLHKsRNe5UnbgwxDI3R6HmIZUjCMN8ZUs4pJDpUe436V
         kARKQe4oX7KG4Jp1th6zWOevkdXtsEzhx5k3ULYX/NSHws+wEksW03sEy1nxikjDiXI7
         OToxyts3zdmX9w0Tw7BIAOckFahcrG2hUFA1MGTX8vHb+CNPYF6MoK6ZL5P0YUBoFUbF
         L95aL5EP95XYT2d/izMIblWjjbcSTONnFYtrsQi1MZPDTVrfjtABnUhtpl2/ZOfBdgzy
         d1Fz28KGvdpXio5FksbVBH/d0iNFckHCQaqmUGiveAehSpyJu2AQ7MdfDPQoy615KLAZ
         cfbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=erB1z+4GLRlfthphdXoL72etdc/v5FExrjsmUg/Rb/w=;
        b=Qlb02k/c0GzKg3wZp2NzCbD8d7CfXMgd3/h0ukFGMMFW5hZnIpTD96WtW1r+FnjAyD
         gmrC8fvyEXioNl+igxr9xuqICpO9xqtQnxe5wnLzcsGBXC3pk7+SO8ySoxtYZ7BgD984
         J35oE7TVSP93OIpxzFmJH76S9zESG+lb+Uk1n2oOedUo14EOoA8Z1lrLRSPo3axvPV95
         C5dx9OjyOxJ+ubC3rzPIFEW5Qr3USqdB0pk/+Z9sxCZTDqfzQaVXepm3qCOwJydzmu7E
         nJJHEpFKl0lNwBx6TZZ1etfzkEKPPGYGnELwbHgHTWMMTOkqUkKGEp3yqJEOQgws4Tl6
         QkZA==
X-Gm-Message-State: AOAM533k8qZRXgsJR0TKO+8MXfLg6FO3Wlyg1HT7b8Cr5n3137lUDXad
	CmxtNmj8lSHA04LnOE7muFJ3RCQK/lepGruDyE4=
X-Google-Smtp-Source: ABdhPJwAAgOzFc0Y7BMRAfj2heFhcz6LG4R2SNL0PA15zMTtWAgImwKl3YbPYuuFe+395CtB0pnkjhBT/pOL9X7Pq1U=
X-Received: by 2002:a92:bac5:: with SMTP id t66mr4569026ill.125.1596546858363;
 Tue, 04 Aug 2020 06:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
 <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com> <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
In-Reply-To: <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Tue, 4 Aug 2020 09:14:07 -0400
Message-ID: <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005c2d6205ac0d08a1"

--0000000000005c2d6205ac0d08a1
Content-Type: text/plain; charset="UTF-8"

Hi,

It seems like Yocto is down again.

http://downloads.yoctoproject.org/

Could you please help solve this?

Regards,

Ripu

On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs <eripflo@gmail.com> wrote:

> It is working now.
>
> Thank you
>
> Regards,
>
> Ripu
>
> On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, <
> mhalstead@linuxfoundation.org> wrote:
>
>> There was a brief outage while rebooting a storage device. The error
>> should have been resolved several minutes ago. If you are still seeing this
>> error please let me know.
>>
>> Michael Halstead
>>
>> On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>
>>> Also, I do see:
>>>
>>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection refused.
>>>
>>>
>>>
>>> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>>
>>>> Hi,
>>>>
>>>> I tried to go into the following:
>>>> http://downloads.yoctoproject.org/
>>>>
>>>> I get the following error:
>>>>
>>>> Host Not Found
>>>>
>>>> DNS error (the host name of the page you are looking for does not
>>>> exist) or Server did not accept the connection.
>>>>
>>>> Please check that the host name has been spelled correctly.
>>>>
>>>> Regards,
>>>>
>>>> Ripu
>>>>
>>> 
>>>
>>

--0000000000005c2d6205ac0d08a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>It seems like Yocto is down again.<=
/div><div><br></div><div><a href=3D"http://downloads.yoctoproject.org/">htt=
p://downloads.yoctoproject.org/</a>=C2=A0</div><div><br></div><div>Could=C2=
=
=A0you please help solve this?</div><div><br></div><div>Regards,</div><div=
><br></div><div>Ripu=C2=A0<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 9, 2020 at 4:50 PM FLoraVLo=
gs &lt;<a href=3D"mailto:eripflo@gmail.com">eripflo@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"au=
to">It is working now.=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">T=
hank you</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Ripu</div></div><br><div class=
=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu., Jan. 9, 20=
20, 4:44 p.m. Michael Halstead, &lt;<a href=3D"mailto:mhalstead@linuxfounda=
tion.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">T=
here was a brief=C2=A0outage while rebooting a storage device. The error sh=
ould have been resolved several minutes ago. If you are still seeing this e=
rror please=C2=A0let me know.<div><br></div><div>Michael Halstead</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Jan 9, 2020 at 1:38 PM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.c=
om" rel=3D"noreferrer" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Also, I do see:<br><pre style=3D"box-sizing:border-box;white-space:pre-wrap=
;margin-top:0px;margin-bottom:0px;font-size:14px;background:rgb(38,50,56);c=
olor:rgb(233,237,237);padding:10px 20px;font-family:&quot;Roboto Mono&quot;=
,monospace">Connecting to <a href=3D"http://downloads.yoctoproject.org" rel=
=
=3D"noreferrer" target=3D"_blank">downloads.yoctoproject.org</a> (<a href=
=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank=
">downloads.yoctoproject.org</a>)|198.145.29.63|:80... failed: Connection r=
efused.

</pre></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs &lt;<a href=3D"mailto:erip=
flo@gmail.com" rel=3D"noreferrer" target=3D"_blank">eripflo@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hi,<div><br></div><div>I tried to go into the following:</div><d=
iv><a href=3D"http://downloads.yoctoproject.org/" rel=3D"noreferrer" target=
=
=3D"_blank"><span>http</span>://<span>downloads</span>.<span>yoctoproject<=
/span>.<span>org</span>/</a></div><div><br></div><div>I get the following e=
rror:</div><div>=C2=A0</div><h1 style=3D"color:rgb(0,0,0);font-family:&quot=
;Times New Roman&quot;">Host Not Found</h1><p style=3D"color:rgb(0,0,0);fon=
t-family:&quot;Times New Roman&quot;;font-size:medium">DNS error (the host =
name of the page you are looking for does not exist) or Server did not acce=
pt the connection.<br><br>Please check that the host name has been spelled =
correctly.</p><p style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roma=
n&quot;;font-size:medium">Regards,</p><p style=3D"color:rgb(0,0,0);font-fam=
ily:&quot;Times New Roman&quot;;font-size:medium">Ripu</p></div>
</blockquote></div>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000005c2d6205ac0d08a1--
