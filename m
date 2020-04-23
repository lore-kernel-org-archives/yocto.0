Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
 by mx.groups.io with SMTP id smtpd.web11.1812.1587625327095081007
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Apr 2020 00:02:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.210.65, mailfrom: per.hallsmark@gmail.com)
Received: by mail-ot1-f65.google.com with SMTP id g14so4442503otg.10
        for <yocto@lists.yoctoproject.org>; Thu, 23 Apr 2020 00:02:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bvPFClV14LJrTz6oMFUt5PfrJuU+80ZD6OBAE9anxzw=;
        b=LUOOQnjR9yu6PsWF0hJj7zMotNwXCEnFyLoQ2gtiUPi0i5nCZl0TmJTb6t9UHAvRAx
         DUQp61n2Uc7rv1poOniJpjcClwvgxuLvzuBODhDawct718RgJ5gntV6FVv3r7zmpQHKk
         maTEYS61o4K4IjcMyZzV9mu+RCCew1PU77KAvYrwwakjeVXRUhFwJRqA2XGof/8QoOsa
         vzkwCHDAKlhoojUOt5B0WhMJ7zI2xz2Q7wwuAX2ZWg6mx5ZPWu8Q9uIx+L4oMZcXYqbU
         UUGlXJoRQafYXUzBRyEv+Phrp5WUfAhr+2iLujaG16PSXhKURcg2jcxdHR4MSfYTRSA+
         yFIQ==
X-Gm-Message-State: AGi0PuZyTgGdTS5cgp2zmguevo0PtiB69ywMsV2HTvjnzyBaFx1oPY/e
	+IojdSCGH5Vv78+lEVEjxtXOMxJqP5aSfyjFvzQ=
X-Google-Smtp-Source: APiQypICUINQFXbBIHkmJ2Iwo/LCMbpLOwkcBB0V57ypwk/ITNwbcGueIp0yxD8Zv9YKG/tb6DR+36+elJbezVUZKp4=
X-Received: by 2002:a9d:6952:: with SMTP id p18mr2206791oto.89.1587625326494;
 Thu, 23 Apr 2020 00:02:06 -0700 (PDT)
MIME-Version: 1.0
References: <lz1S.1587619716614083620.LFsb@lists.yoctoproject.org> <a1d40a2e-aa70-d56f-4761-9eb2d4726dac@gmail.com>
In-Reply-To: <a1d40a2e-aa70-d56f-4761-9eb2d4726dac@gmail.com>
From: per@hallsmark.se
Date: Thu, 23 Apr 2020 09:01:55 +0200
Message-ID: <CAPaVuL8QziP+S9oJAmUNAQmFh5HSjwSDaSxpABLot0Cmpucf7w@mail.gmail.com>
Subject: Re: [yocto] meta-javascripts
To: Nicholas Krause <xerofoify@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009f48b905a3efd389"

--0000000000009f48b905a3efd389
Content-Type: text/plain; charset="UTF-8"

Hi Nicholas,

Thanks, I was thinking as providing it to Yocto but not maintaining it
myself. Too much other stuff going on
so it would be a slowly updated layer then.

BR,
Per

On Thu, 23 Apr 2020 at 07:59, Nicholas Krause <xerofoify@gmail.com> wrote:

>
>
> On 4/23/20 1:28 AM, per@hallsmark.se wrote:
>
> Hello fellow Yocto developers,
>
> To be able todo efficient HTML5 programming we of course needs some
> javascript libraries.
> I've not seen Yocto have them packaged so I made up this idea of putting
> them into their own /usr/lib/js path
> with a subdir for each javascript library. It is published here :
>
> https://gitlab.com/saxofon/meta-javascripts
>
> With an example usage here :
>
> https://github.com/Wind-River/device-remote-gui
>
> Would this be something yoctoproject is interested of perhaps?
>
> BR,
> Per
>
>
> Hi,
>
> I'm not a maintainer but you may want to see if you or other  people are
> able to maintain
> then as a open embedded layer as part of the index. Not sure if someone
> else can
> chip in if this is a useful recipe set to add to the open embedded index.
>
> That would ideally be where you would want this to go if this is useful
> and maintained,
>
> Nick
>
> 
>
>
>

--0000000000009f48b905a3efd389
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Nicholas,<div><br></div><div>Thanks, I was thinking as =
providing it to Yocto but not maintaining it myself. Too much other stuff g=
oing on</div><div>so it would be a slowly updated layer then.</div><div><br=
></div><div>BR,</div><div>Per</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, 23 Apr 2020 at 07:59, Nicholas K=
rause &lt;<a href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
    <br>
    <br>
    <div>On 4/23/20 1:28 AM, <a href=3D"mailto:per@hallsmark.se" target=3D=
"_blank">per@hallsmark.se</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      Hello fellow Yocto developers,<br>
      <br>
      To be able todo efficient HTML5 programming we of course needs
      some javascript libraries.<br>
      I&#39;ve not seen Yocto have them packaged so I made up this idea of
      putting them into their own /usr/lib/js path<br>
      with a subdir for each javascript library. It is published here :<br=
>
      <br>
      <a href=3D"https://gitlab.com/saxofon/meta-javascripts" rel=3D"noope=
ner" target=3D"_blank">https://gitlab.com/saxofon/meta-javascripts</a><br>
      <br>
      With an example usage here :<br>
      <br>
      <a href=3D"https://github.com/Wind-River/device-remote-gui" rel=3D"n=
oopener" target=3D"_blank">https://github.com/Wind-River/device-remote-gui<=
/a><br>
      <br>
      Would this be something yoctoproject is interested of perhaps?<br>
      <br>
      BR,<br>
      Per
      <br>
    </blockquote>
    <br>
    Hi,<br>
    <br>
    I&#39;m not a maintainer but you may want to see if you or other=C2=A0=
 people
    are able to maintain<br>
    then as a open embedded layer as part of the index. Not sure if
    someone else can<br>
    chip in if this is a useful recipe set to add to the open embedded
    index.<br>
    <br>
    That would ideally be where you would want this to go if this is
    useful and maintained,<br>
    <br>
    Nick<br>
    <blockquote type=3D"cite">
      <fieldset></fieldset>
      <pre>
</pre>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000009f48b905a3efd389--
