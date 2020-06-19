Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web12.8849.1592578848155928840
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 08:00:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ALaOe1c7;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: gabbla.malist@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id u25so5763209lfm.1
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 08:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2nYPoRD90X7d5sD0aZ4nDiCczNOxnDuautJWYkpnr+4=;
        b=ALaOe1c7v8+TOaD9c3+ZMrnLwv3geA1B31KowtwDcKCANKEuR2MYrf8fXnXuMfaX3x
         R3s1dMyQ3MSGNaZkDZ+UonDW/icPbTAX42XiEroC9yDus0jrXEG5ap7yCoftgcRqYyMe
         FakYp5XG8ztiVPGyW8rFpOLCmLSJX0s9YUM1RS+qSv2dSwOKI3FcIIzjbZayUU2pq1TK
         qn45p7NcVQIMdxojsUkjGGZml5Yq8gSTTMPAsD6uFjTS0lzEL9OwqT2pwclqQ2CVl/bw
         1sD1o/h97olzLg8kQp12H45kL+NxExjg7xvKgE6m3Te0r0uEu0bU5uj+tj28ZiJeMZqR
         dPTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2nYPoRD90X7d5sD0aZ4nDiCczNOxnDuautJWYkpnr+4=;
        b=tWtS/aHGBBvE//XhKvIkeObN5unC7gjcaDZsPSQWjv9B15yVlaKsGRD2qtOe0k5uoV
         Ps+H54eci00Ym7I3lSqb6lnGwcWiVG2duTOeq0md+dTtFJnlZc99hg0EwoypIcsXEq/n
         9+QTNlvgFgzgkvI3P5Z5mLYooCGsYgBr9GNf4ZVpywxP/S7q1/NCF/5IhxcWaKN8zz4V
         sgA0IEdZmD0otP8XaNxiVcbLyvY7zSeql/OxCN+IBbZ1Wg+pZMmS9kZwp8yB/l59h8tO
         VEnKBbdRsO6TKlyanXEtD5ODzW/nourv8YCxKts84CnLu0lcvPleBND4wG/npY2qTXnf
         /MDw==
X-Gm-Message-State: AOAM531RasCO6REFTka+9U6SaKQezRXMBLYGKvrQ7PAPMnek7p5+d9hU
	7eThIhuI+azdOFSACKTgOvgFLOtA2IkwDrYA31k=
X-Google-Smtp-Source: ABdhPJwoTUmkKboM5TnfFsz5K4yEsigOp28aSL7q/81fBa03quetmTSnwWiJyrR8VCGcX6gHhmReSm0E7ZQNB5UqMmU=
X-Received: by 2002:a05:6512:10c3:: with SMTP id k3mr2232161lfg.33.1592578846242;
 Fri, 19 Jun 2020 08:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAA4NGyuwrkQrQ05AR_2OyaYTxrF41sqx1AoaDFbJaU99TwCjxQ@mail.gmail.com>
 <CAAx3WaB-8BapkcGYtz2KftvAY7hE0HRBcEKfhKs5V-V+H3M2HQ@mail.gmail.com> <CAA4NGyv2S1S009zeTezOt+DU42ggfOGt5priOVc49Toi9aCFPA@mail.gmail.com>
In-Reply-To: <CAA4NGyv2S1S009zeTezOt+DU42ggfOGt5priOVc49Toi9aCFPA@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Fri, 19 Jun 2020 17:00:34 +0200
Message-ID: <CAAx3WaA4cCVD8rz5SV13Ciku5+YP+bE92AmEea+Q+V6-1Ur=EA@mail.gmail.com>
Subject: Re: [yocto] MACHINE and inc files
To: Tomek The Messenger <tomekthemessenger@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000683c6705a87128bf"

--000000000000683c6705a87128bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You do not need to include anything. Maybe I did not understand you. Can
you provide a file structure/use case?

Gabriele

NOTE: I won't be able to reply till Tuesday 23rd

On Fri, Jun 19, 2020 at 3:36 PM Tomek The Messenger <
tomekthemessenger@gmail.com> wrote:

> And then do include ${MAGIC_NUMBER}. But this is not good idea. Each tim=
e
> new x version appers I will have to extend temp.bb file about the line
> you wrote but with another x version.
>
> pt., 19.06.2020, 15:26 u=C5=BCytkownik Gabriele Zampieri <
> gabbla.malist@gmail.com> napisa=C5=82:
>
>> Hi Tomek,
>>
>> you can specify machine-specific variables/function with the following
>> syntax:
>>  <PROPERTY_NAME>_[MACHINE_NAME] =3D "value"
>> ex:
>>  MAGIC_NUMBER_velismate-x21 =3D "12345"
>> inside your temp.bb
>>
>> Regards,
>> Gabriele
>>
>> On Fri, Jun 19, 2020 at 3:21 PM Tomek The Messenger <
>> tomekthemessenger@gmail.com> wrote:
>>
>>> Hi
>>> I have various ${MACHINE} called:
>>> uruguay-x11
>>> uruguay-x21
>>> supa-rte-x11
>>> supa-rte-x13
>>> supa-rte-x21
>>> velismate-x11
>>> velismate-x21
>>>
>>> I created some bb recipe:
>>> temp.bb
>>> where there are common things done for all machines.
>>> Now I need to perform different things for  uruguay, supa-rte and
>>> velismate.
>>> How to do this? Should I create
>>> uruguay-%.inc supa-%.inc and velismate-%.inc?
>>> and in temp.bb write:
>>> include ${MACHINE}.inc
>>> but this won't work as bitbake will expect full name with x11 etc part=
.
>>> How to exclude part with x11, rte-x21 etc? Is any way?
>>> Anybody can help?
>>>
>>> BR
>>> Tomek
>>>=20
>>>
>>

--000000000000683c6705a87128bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You do not need to include anything. Maybe I did not =
understand you. Can you provide a file structure/use case?</div><div><br></=
div><div>Gabriele</div><div><br></div><div>NOTE: I won&#39;t be able to rep=
ly till Tuesday 23rd<br></div></div><br><div class=3D"gmail_quote"><div dir=
=
=3D"ltr" class=3D"gmail_attr">On Fri, Jun 19, 2020 at 3:36 PM Tomek The Me=
ssenger &lt;<a href=3D"mailto:tomekthemessenger@gmail.com">tomekthemessenge=
r@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"auto">And then do include ${MAGIC_NUMBER}. But this=
 is not good idea. Each time new x version appers I will have to extend <a =
href=3D"http://temp.bb" target=3D"_blank">temp.bb</a> file about the line y=
ou wrote but with another x version.</div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">pt., 19.06.2020, 15:26 u=C5=BCytkownik =
Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com" target=3D"=
_blank">gabbla.malist@gmail.com</a>&gt; napisa=C5=82:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Tomek,</div>=
<div><br></div><div>you can specify machine-specific variables/function wit=
h the following syntax:</div><div>=C2=A0<span style=3D"font-family:monospac=
e">&lt;PROPERTY_NAME&gt;_[MACHINE_NAME] =3D &quot;value&quot;</span></div><=
div>ex:</div><div>=C2=A0<span style=3D"font-family:monospace">MAGIC_NUMBER_=
velismate-x21 =3D &quot;12345&quot;</span></div><div>inside your <a href=3D=
"http://temp.bb" rel=3D"noreferrer" target=3D"_blank">temp.bb</a></div><div=
><br></div><div>Regards,</div><div>Gabriele<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 19, 202=
0 at 3:21 PM Tomek The Messenger &lt;<a href=3D"mailto:tomekthemessenger@gm=
ail.com" rel=3D"noreferrer" target=3D"_blank">tomekthemessenger@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Hi<br>I have various ${MACHINE} called:<br>uruguay-x11<br>ur=
uguay-x21<br>supa-rte-x11<br>supa-rte-x13<br>supa-rte-x21<br>velismate-x11<=
br>velismate-x21<br><br>I created some bb recipe:<br><a href=3D"http://temp=
.bb" rel=3D"noreferrer" target=3D"_blank">temp.bb</a><br>where there are co=
mmon things done for all machines.<br>Now I need to perform different thing=
s for =C2=A0uruguay, supa-rte and velismate.<br>How to do this? Should I cr=
eate <br>uruguay-%.inc supa-%.inc and velismate-%.inc?<br>and in <a href=3D=
"http://temp.bb" rel=3D"noreferrer" target=3D"_blank">temp.bb</a> write:<br=
>include ${MACHINE}.inc<br>but this won&#39;t work as bitbake will expect f=
ull name with x11 etc part. How to exclude=C2=A0part=C2=A0with x11, rte-x21=
 etc? Is any way?<br>Anybody can help?<br><div><br></div><div>BR</div><div>=
Tomek</div></div>
<br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000683c6705a87128bf--
