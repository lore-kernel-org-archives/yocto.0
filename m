Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web11.1412.1603392659863260966
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2020 11:51:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XTTp3P5o;
 spf=pass (domain: gmail.com, ip: 209.85.221.175, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vk1-f175.google.com with SMTP id y10so614686vkl.5;
        Thu, 22 Oct 2020 11:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i1SHvYbUBFl6QW9r8iV1cIsyf/x/OzuglQrl6yLfXmQ=;
        b=XTTp3P5ozy7xE4MKx9A0uu9WJ5z7aKwytOSn5kb5WCpnC43q2YqtUZI8XIcws8zfvB
         KNnABosG0rk4T4mhxsiaz6b5Gaj/UOFo7Ski7losZX0toht3pATWhdzPv4yW/WYZ5rpW
         pnXzn9o6G1WSWJ5J/5ZNno5Nk8PUBmB5XRswvQbdVkIwCp/HRQ4wHUddWiHVJcLLfAMt
         HSOwJFKmKCdon7jJx3ONs8bKu6dG56s1HXLeAriQBvqcNX1orxGETDb1kQki/KaMPwAo
         BiWcaeb3boe2q8ZaHqU0lGLIJ5KF+j44O5mjCV+c1vIincafld4gr96EsOw+AuXJljjy
         bGgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i1SHvYbUBFl6QW9r8iV1cIsyf/x/OzuglQrl6yLfXmQ=;
        b=NhU9tsuyzAdrGqdKwVUbApvsBjOqqEenyT1R4cKx2qz0rJ0FNzoi/ytYEOXdXAiYj1
         6JB2GIWYzrZGp5Ns3tTZ6vvnA9pa7/gElk/H6qU1vBTe0UEBf/6QzkJKFuVzE1R6Hvbi
         r8zsRCizeOIxHrH29T3ANOpqK+ifRAi9qYZorlJjRz2S6aX/auGqGe7GQvPeuVp0TYRL
         zUQWNuoKo3HswcXbEXB3NNgtFYKrsuas5UKQIW/nP+tFocvgvsMM92y5R1+gHRItHhyR
         xl65CalNntCsz6poap3HStMFLxYgMpfMX3eEbXpyknD5mhUXkrLV1EVJugmbhoG/EpJ3
         su0Q==
X-Gm-Message-State: AOAM531OAqwerRppEYHg93t1hMSr5nm39dVON9RXAWm9V0vmQGuQs4nU
	L9/EcAmelF+yBUrwCnhkENYjg6IYwtlQJhllKdI=
X-Google-Smtp-Source: ABdhPJwYaq86zD5YMAt2dekGEErdM0EfqD5DACO+QR6eSgvV0fAsksnzW2HZwuUh1fvPCU7FoM+IQ3/B55A05YwhO0Y=
X-Received: by 2002:a1f:3655:: with SMTP id d82mr3122233vka.22.1603392658792;
 Thu, 22 Oct 2020 11:50:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAJw=dJ_LgOdKN8OLccHU8+37m_zfTYxoQ3ev93DYiqxog6Z9gQ@mail.gmail.com>
 <CANNYZj-8XTh9=r=nU8oV0A_qLJO7MpTPDp9PLfnibDSNdwnWwQ@mail.gmail.com> <16404822B4B906DE.30171@lists.yoctoproject.org>
In-Reply-To: <16404822B4B906DE.30171@lists.yoctoproject.org>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Fri, 23 Oct 2020 00:20:47 +0530
Message-ID: <CAJw=dJ8LyrwA=JNJ4V38mB_RLA_8_7ZJwO1jQmz7+PONqTH4HQ@mail.gmail.com>
Subject: Re: [yocto] Included conf files in our receipes.
To: Nikhil Patil <nikhilvp29@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, yocto+help@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dce50c05b246f176"

--000000000000dce50c05b246f176
Content-Type: text/plain; charset="UTF-8"

Hi ,
    Where we can add new meta layers instead of bblayers.conf ? Is there
any other file is there to add meta layers ?

On Thu, Oct 22, 2020 at 3:29 PM NIKHIL PATIL via lists.yoctoproject.org
<nikhilvp29=gmail.com@lists.yoctoproject.org> wrote:

> Hi ,
>       1) U mean that , i need to create  for eg. *core-image-nikhil.bb
> <http://core-image-nikhil.bb> *and inside that i need to give
> IMAGE_INSTALL_APPEND = "minicom"  right ?
>
>       2) Before we are including meta layers in bblayer.conf  .  *but any
> other file so we can include our new meta layers (for eg . meta-test ) * ?
>
>
> On Thu, Oct 22, 2020 at 3:09 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> You should make a new image recipe, and define what goes into it there.
>>
>> Alex
>>
>> On Thu, 22 Oct 2020 at 11:03, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
>>
>>> Hi Team ,
>>>        We are using yocto sdk for intel leafhill board. For our
>>> development purpose we are changing in local.conf. (for eg.  if i want
>>> minicom package means we are doing IMAGE_INSTALL_APPEND += "minicom" ).
>>>        But , As per requirement we dont want these ( means adding in
>>> local.conf and bblayer.conf ) , so every needed packages (eg. minicom)  how
>>> we can add packages in our meta-layer (like eg. meta-test ) . so all
>>> required packages will come with our core image .
>>>
>>>    *how we can achieve these ?*
>>>
>>>
>>>
>>>
> 
>
>

--000000000000dce50c05b246f176
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 Where we can add new meta layers in=
stead=C2=A0of bblayers.conf ? Is there any other file is there to add meta =
layers ?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Oct 22, 2020 at 3:29 PM NIKHIL PATIL via <a href=
=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;nikhilvp=
29=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yo=
ctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 =C2=A0 1) U mean that=
 , i need to create=C2=A0 for eg. <b><a href=3D"http://core-image-nikhil.bb=
" target=3D"_blank">core-image-nikhil.bb</a> </b>and inside that i need to =
give IMAGE_INSTALL_APPEND =3D &quot;minicom&quot;=C2=A0 right ?</div><div><=
br></div><div>=C2=A0 =C2=A0 =C2=A0 2) Before we are including meta layers i=
n bblayer.conf=C2=A0 .=C2=A0 <b>but any other file so we can include our ne=
w meta layers (for eg . meta-test )=C2=A0</b>=C2=A0?</div><div>=C2=A0 =C2=
=A0=C2=A0<br><table cellpadding=3D"0" style=3D"border-collapse:collapse;ta=
ble-layout:fixed;width:803px"></table><table cellpadding=3D"0" style=3D"bor=
der-collapse:collapse;margin-top:0px;width:auto;font-family:Roboto,RobotoDr=
aft,Helvetica,Arial,sans-serif;font-size:14px;letter-spacing:0.2px;display:=
block"></table></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Oct 22, 2020 at 3:09 PM Alexander Kanavin &lt;=
<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>You should make a new image recipe, and define=
 what goes into it there.</div><div><br></div><div>Alex<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 22=
 Oct 2020 at 11:03, NIKHIL PATIL &lt;<a href=3D"mailto:nikhilvp29@gmail.com=
" target=3D"_blank">nikhilvp29@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Team ,<div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0We are using yocto sdk for intel leafhill board. F=
or our development purpose we are changing in local.conf. (for eg.=C2=A0 if=
 i want minicom package means we are doing IMAGE_INSTALL_APPEND +=3D &quot;=
minicom&quot; ).</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0But , As per requirem=
ent we dont=C2=A0want these ( means adding in local.conf and bblayer.conf )=
 , so every needed packages (eg. minicom)=C2=A0 how we can add packages in =
our meta-layer (like eg. meta-test ) . so all required packages will come w=
ith our core image .=C2=A0</div><div>=C2=A0</div><div>=C2=A0 =C2=A0<b>how w=
e can achieve these ?</b></div></div>
<br>
<br>
<br>
</blockquote></div>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000dce50c05b246f176--
