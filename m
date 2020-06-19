Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web11.6927.1592573786939097991
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 06:36:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vPjP8pCA;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: tomekthemessenger@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id y23so2285206vkd.13
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 06:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yKPed7uAZ0mwmNT3dGs/ggaOr6hhYafDGXOT2uP3Xgg=;
        b=vPjP8pCAfsdNavqAafxFQ1Oc+VlNjQw2i9NQCToJlPX9whE9UtBOO9Vtjuah5+3lWM
         nrRkHU1VuV+kdo4hQPINF1NaILrTu18I/xglP+UQ8GA1tIvC5o9r05Xr0fYMJBoxDDhE
         5conpIllbGxkXW7Fjbn97u0cf89gTHs2j1jKQvqW+vYCgSnU6tqLPuK7etwssRUobFTo
         B0L8rhagkD9Gf+yYC8l3GZjHZr44KlCXesCVvYiX/hKDGo1jVmDWknVOcwWcauvHcg5E
         IbVBF/0Jssvw1Aa/oLiOZrA7YukX7OlW1LeHld8heVcBL8Ezg2NxAopJ6de2D8z3bQZE
         W8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yKPed7uAZ0mwmNT3dGs/ggaOr6hhYafDGXOT2uP3Xgg=;
        b=XyYAtpknr5rVQzrgqIOf0Nw15d7L4HbokG7ZPJ6pZPlE3YgfhxWOE0GgF2LaK3Qq+f
         JDZbu3fLnI5h7cpDEbsGuhtwFX5+tzk3Ehmmp1TnPsU3BtRIaub6dd104uqFy6dGnDHF
         Q3/aMIXlWHd05dGGmo+ypPJJTVC5+gdCTDZLaG1qohNRLRCt31iCc0bQNrZ5vivHGZTg
         OyQ/AfvyzgoD55TurCPZUT611vU1hAPRdYhWKXQ25YPzYST1byDeE2CkE52pK7Lfpmz/
         +IYZxz/r9C3taHRbNnobRr3Vpz5xJwdLAAxTxAI6lqF0Wy8PvnP/tP2ytYpwFOm8Erxt
         trFw==
X-Gm-Message-State: AOAM533HZBo6SfapxkKtvtauYT7y4b2iQ0fgiOZVh1vKJDZT1w6NdxeL
	0u0Co/Ll3K82EJX2GsVkJsAf1LBBDnzHms3DCHY=
X-Google-Smtp-Source: ABdhPJzSVr7+EUgo4eM3OImae7/c9wTVqDLUDL0TRRU1CYU5s9TAB6qpnOb8JF1IjGSeZwu6sTWJ8LJiM1L0A0/cdRg=
X-Received: by 2002:a05:6122:106f:: with SMTP id k15mr7129183vko.21.1592573785794;
 Fri, 19 Jun 2020 06:36:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAA4NGyuwrkQrQ05AR_2OyaYTxrF41sqx1AoaDFbJaU99TwCjxQ@mail.gmail.com>
 <CAAx3WaB-8BapkcGYtz2KftvAY7hE0HRBcEKfhKs5V-V+H3M2HQ@mail.gmail.com>
In-Reply-To: <CAAx3WaB-8BapkcGYtz2KftvAY7hE0HRBcEKfhKs5V-V+H3M2HQ@mail.gmail.com>
From: "Tomek The Messenger" <tomekthemessenger@gmail.com>
Date: Fri, 19 Jun 2020 15:36:13 +0200
Message-ID: <CAA4NGyv2S1S009zeTezOt+DU42ggfOGt5priOVc49Toi9aCFPA@mail.gmail.com>
Subject: Re: [yocto] MACHINE and inc files
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c7ec8005a86ffaf6"

--000000000000c7ec8005a86ffaf6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

And then do include ${MAGIC_NUMBER}. But this is not good idea. Each time
new x version appers I will have to extend temp.bb file about the line you
wrote but with another x version.

pt., 19.06.2020, 15:26 u=C5=BCytkownik Gabriele Zampieri <gabbla.malist@gm=
ail.com>
napisa=C5=82:

> Hi Tomek,
>
> you can specify machine-specific variables/function with the following
> syntax:
>  <PROPERTY_NAME>_[MACHINE_NAME] =3D "value"
> ex:
>  MAGIC_NUMBER_velismate-x21 =3D "12345"
> inside your temp.bb
>
> Regards,
> Gabriele
>
> On Fri, Jun 19, 2020 at 3:21 PM Tomek The Messenger <
> tomekthemessenger@gmail.com> wrote:
>
>> Hi
>> I have various ${MACHINE} called:
>> uruguay-x11
>> uruguay-x21
>> supa-rte-x11
>> supa-rte-x13
>> supa-rte-x21
>> velismate-x11
>> velismate-x21
>>
>> I created some bb recipe:
>> temp.bb
>> where there are common things done for all machines.
>> Now I need to perform different things for  uruguay, supa-rte and
>> velismate.
>> How to do this? Should I create
>> uruguay-%.inc supa-%.inc and velismate-%.inc?
>> and in temp.bb write:
>> include ${MACHINE}.inc
>> but this won't work as bitbake will expect full name with x11 etc part.
>> How to exclude part with x11, rte-x21 etc? Is any way?
>> Anybody can help?
>>
>> BR
>> Tomek
>>=20
>>
>

--000000000000c7ec8005a86ffaf6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">And then do include ${MAGIC_NUMBER}. But this is not good=
 idea. Each time new x version appers I will have to extend <a href=3D"http=
://temp.bb">temp.bb</a> file about the line you wrote but with another x ve=
rsion.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">pt., 19.06.2020, 15:26 u=C5=BCytkownik Gabriele Zampieri &lt;<a href=
=3D"mailto:gabbla.malist@gmail.com">gabbla.malist@gmail.com</a>&gt; napisa=
=
=C5=82:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hi T=
omek,</div><div><br></div><div>you can specify machine-specific variables/f=
unction with the following syntax:</div><div>=C2=A0<span style=3D"font-fami=
ly:monospace">&lt;PROPERTY_NAME&gt;_[MACHINE_NAME] =3D &quot;value&quot;</s=
pan></div><div>ex:</div><div>=C2=A0<span style=3D"font-family:monospace">MA=
GIC_NUMBER_velismate-x21 =3D &quot;12345&quot;</span></div><div>inside your=
 <a href=3D"http://temp.bb" target=3D"_blank" rel=3D"noreferrer">temp.bb</a=
></div><div><br></div><div>Regards,</div><div>Gabriele<br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun=
 19, 2020 at 3:21 PM Tomek The Messenger &lt;<a href=3D"mailto:tomekthemess=
enger@gmail.com" target=3D"_blank" rel=3D"noreferrer">tomekthemessenger@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hi<br>I have various ${MACHINE} called:<br>uruguay-x=
11<br>uruguay-x21<br>supa-rte-x11<br>supa-rte-x13<br>supa-rte-x21<br>velism=
ate-x11<br>velismate-x21<br><br>I created some bb recipe:<br><a href=3D"htt=
p://temp.bb" target=3D"_blank" rel=3D"noreferrer">temp.bb</a><br>where ther=
e are common things done for all machines.<br>Now I need to perform differe=
nt things for =C2=A0uruguay, supa-rte and velismate.<br>How to do this? Sho=
uld I create <br>uruguay-%.inc supa-%.inc and velismate-%.inc?<br>and in <a=
 href=3D"http://temp.bb" target=3D"_blank" rel=3D"noreferrer">temp.bb</a> w=
rite:<br>include ${MACHINE}.inc<br>but this won&#39;t work as bitbake will =
expect full name with x11 etc part. How to exclude=C2=A0part=C2=A0with x11,=
 rte-x21 etc? Is any way?<br>Anybody can help?<br><div><br></div><div>BR</d=
iv><div>Tomek</div></div>
<br>
</blockquote></div>
</blockquote></div>

--000000000000c7ec8005a86ffaf6--
