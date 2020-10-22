Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
 by mx.groups.io with SMTP id smtpd.web08.8224.1603360780763033132
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2020 02:59:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gbg4ag6V;
 spf=pass (domain: gmail.com, ip: 209.85.217.43, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f43.google.com with SMTP id u7so506826vsq.11;
        Thu, 22 Oct 2020 02:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DOM5jlMP+gMVjhx+Jq45MeM46zYGj8620xYbY39V5IQ=;
        b=gbg4ag6VSjEy4XteHcH09/+5MOHzoYzr7bp1fRNR6clv4BakeoNxHAHpv5apY4eIKh
         CxlvyTaK6GladunjiSg9fGPaUc5A6cF5ESxhHYe5qGpW+S+fd6XoL2UdZTAnK7fglo0I
         3rY22R+r6P4DzeUeQjroTEWNdbWgRmH43KGyb1odT77SuQKP6XqP/3bhcuUdrjWFFESg
         ptBI8i2dpZrpLmgYvRt7NgDmdjuccK2N+kVsFGTbCZHcIEihjm/cGKSK0TQf1j1YG/vn
         IzzvdxqlQ5T8ZXl0t8A6PiSu3X6xfSdWU4vBrIHlYOh2mTOud696cdrDQtamXDr2wTVQ
         Is2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DOM5jlMP+gMVjhx+Jq45MeM46zYGj8620xYbY39V5IQ=;
        b=YhXELm+FjjZkpKZhUAihW3sKeIYOu298v3z3sbGoLzz5AWc0yFsVHo5ryiEYX0osa/
         rRRJ/4GqoyLfKXTNioPKVbb/g3kV48YKIxZsG5Q6pldttS/eilRz4uR3ho4bOcvGzj9q
         Lxtx6CPBXjd7A1lqyV1rtmuFPxlfK3VNe7kUq6+Ip5NAsVf1m2GYB4D77aFTRsXJKfna
         ROf0Y4wwDdPN0hPxBTZkC9NC8mIuGBEIEb9FIq9yQrC4lmD2srH7pN5r4NP5i0LSoNlB
         NDE/AiHbdfW1x3C4wvc1OFREbzd+ApSTpEhvtlAz9h7P4IDXd0dRggMQrcwKRprUJJj8
         AHew==
X-Gm-Message-State: AOAM533fElw+bKNGoLvJIFmgjP2TiXMgZO87Tp+B3dwfMJXzWEUGUVDm
	WOSGKbrC0zpjpxaVodTAnBO4axMnE2LXn4TubDw=
X-Google-Smtp-Source: ABdhPJya6xG0+g5xQiC467wBw+ZKLcAVTP+6cwYpT3awS6K+kwBOleymigPLUGbL0zIjzs31+HGhtwt20Tw54UaZqio=
X-Received: by 2002:a67:c11d:: with SMTP id d29mr744911vsj.23.1603360779771;
 Thu, 22 Oct 2020 02:59:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAJw=dJ_LgOdKN8OLccHU8+37m_zfTYxoQ3ev93DYiqxog6Z9gQ@mail.gmail.com>
 <CANNYZj-8XTh9=r=nU8oV0A_qLJO7MpTPDp9PLfnibDSNdwnWwQ@mail.gmail.com>
In-Reply-To: <CANNYZj-8XTh9=r=nU8oV0A_qLJO7MpTPDp9PLfnibDSNdwnWwQ@mail.gmail.com>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 22 Oct 2020 15:29:28 +0530
Message-ID: <CAJw=dJ91VCXT=L+S4v9g9bFVzSCDuDOjSeMdKdVs3zboOSoC3g@mail.gmail.com>
Subject: Re: [yocto] Included conf files in our receipes.
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b9a2f505b23f85b2"

--000000000000b9a2f505b23f85b2
Content-Type: text/plain; charset="UTF-8"

Hi ,
      1) U mean that , i need to create  for eg. *core-image-nikhil.bb
<http://core-image-nikhil.bb> *and inside that i need to give
IMAGE_INSTALL_APPEND = "minicom"  right ?

      2) Before we are including meta layers in bblayer.conf  .  *but any
other file so we can include our new meta layers (for eg . meta-test ) * ?


On Thu, Oct 22, 2020 at 3:09 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> You should make a new image recipe, and define what goes into it there.
>
> Alex
>
> On Thu, 22 Oct 2020 at 11:03, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
>
>> Hi Team ,
>>        We are using yocto sdk for intel leafhill board. For our
>> development purpose we are changing in local.conf. (for eg.  if i want
>> minicom package means we are doing IMAGE_INSTALL_APPEND += "minicom" ).
>>        But , As per requirement we dont want these ( means adding in
>> local.conf and bblayer.conf ) , so every needed packages (eg. minicom)  how
>> we can add packages in our meta-layer (like eg. meta-test ) . so all
>> required packages will come with our core image .
>>
>>    *how we can achieve these ?*
>>
>> 
>>
>>

--000000000000b9a2f505b23f85b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 =C2=A0 1) U mean that , i need to c=
reate=C2=A0 for eg. <b><a href=3D"http://core-image-nikhil.bb">core-image-n=
ikhil.bb</a> </b>and inside that i need to give IMAGE_INSTALL_APPEND =3D &q=
uot;minicom&quot;=C2=A0 right ?</div><div><br></div><div>=C2=A0 =C2=A0 =C2=
=A0 2) Before we are including meta layers in bblayer.conf=C2=A0 .=C2=A0 <=
b>but any other file so we can include our new meta layers (for eg . meta-t=
est )=C2=A0</b>=C2=A0?</div><div>=C2=A0 =C2=A0=C2=A0<br><table cellpadding=
=3D"0" class=3D"gmail-cf gmail-ix" style=3D"border-collapse:collapse;table=
-layout:fixed;width:803px"></table><table cellpadding=3D"0" class=3D"gmail-=
cf gmail-gJ" style=3D"border-collapse:collapse;margin-top:0px;width:auto;fo=
nt-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:14px;lett=
er-spacing:0.2px;display:block"></table></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 22, 2020 at 3:09 =
PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kan=
avin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div>You should make a new image recipe, and=
 define what goes into it there.</div><div><br></div><div>Alex<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, 22 Oct 2020 at 11:03, NIKHIL PATIL &lt;<a href=3D"mailto:nikhilvp29@gm=
ail.com" target=3D"_blank">nikhilvp29@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Team ,<d=
iv>=C2=A0 =C2=A0 =C2=A0 =C2=A0We are using yocto sdk for intel leafhill boa=
rd. For our development purpose we are changing in local.conf. (for eg.=C2=
=A0 if i want minicom package means we are doing IMAGE_INSTALL_APPEND +=3D=
 &quot;minicom&quot; ).</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0But , As per r=
equirement we dont=C2=A0want these ( means adding in local.conf and bblayer=
.conf ) , so every needed packages (eg. minicom)=C2=A0 how we can add packa=
ges in our meta-layer (like eg. meta-test ) . so all required packages will=
 come with our core image .=C2=A0</div><div>=C2=A0</div><div>=C2=A0 =C2=A0<=
b>how we can achieve these ?</b></div></div>
<br>
<br>
<br>
</blockquote></div>
</blockquote></div>

--000000000000b9a2f505b23f85b2--
