Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
 by mx.groups.io with SMTP id smtpd.web10.14470.1576259679683863706
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 09:54:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kPlNr6yh;
 spf=pass (domain: gmail.com, ip: 209.85.166.42, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f42.google.com with SMTP id b10so446539iof.11
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 09:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PEUzrpC0QQAks/BRG8+n3x3KH4ZaaTV0hZ073HBVQ+0=;
        b=kPlNr6yhc/iV1qT5eebrnTFAs6GkQHP1XJI+TK3kSRD0PhPfWu6A1lKQk/dEhuhZ44
         Sjo+Tnhf+58Cg0LksXY9WA9gwtsrJyT/j7vmClBgxAPh7iTGyKQmqj/tMPAoIeRtYxNI
         vK1pG2omkdaVNH4yW/fikXZ4WRXx04l1lamPfH8eBrbT9CSE4BPxZRrDNcGr6CDWzBlA
         JZfjBQq9zmYzmxxej2ndXoZZdYsm3laz9EUpBpSXHw53L2YWuJ6RcJ4dPeE+Vhv24xAo
         wLhkkkno8a7+OYv2FSIFko4jGwxKFUZ4DMQXFOJxf0DN6SNG/n1LH21Sx0505deVZQ4l
         PhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PEUzrpC0QQAks/BRG8+n3x3KH4ZaaTV0hZ073HBVQ+0=;
        b=q3uwsenSMNI1jMQTgAzVhyH8gN13XvK1EgdZlbxlbeixpiH4uzHk7jHu9Lxkr7+FSR
         1abaN8uTUWOXXlon3S0v6CV4CSFJYZ859pIEuOP8bhSuyEh0mbqUe3xVKvGwLSyV8I7g
         +IM7DSg2xQX1unqS00p2twVnrK17q36/S3+cH+Lmy9o1S+uVG5JnoFatB1hzDrj/C0jJ
         AuLq3zmOcfVrmIW3MEbJXTBeTMxb4NGLIxUwK4+s35iapkT9jjd+wrxl0fwAp/32Q7fH
         rdMfModJ6SVBpTHRmv3YvXHnymbPrQiDAhQ5FpbucSTmNBaOGo0RHTzaNyunQHOPi8Sl
         Of+A==
X-Gm-Message-State: APjAAAUnvPDzM4ACltwCchqMmIPYLYJlcQvPTIHk9f9JO0kal37rlrdr
	c/QaOzHT7pyzAvedqacfVApD2fmA8b881wXnHhZ7VXZJ
X-Google-Smtp-Source: APXvYqwlkL77yoEWQedGvQ8cOIsFnePpQ1C6Umgn5RXlot/kcabdnVFvUKbE8JgDS9DEq/RBcLjLJ8R/7KOZPjMoWaw=
X-Received: by 2002:a02:b38f:: with SMTP id p15mr613726jan.56.1576259679041;
 Fri, 13 Dec 2019 09:54:39 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com>
In-Reply-To: <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Fri, 13 Dec 2019 12:54:30 -0500
Message-ID: <CAGhBkzzSOPkOW2LHjhh4P0_By3CB9Ev9R+vDa=naB2JEBpCVBA@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: akuster <akuster@mvista.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003e3c740599998e5e"

--0000000000003e3c740599998e5e
Content-Type: text/plain; charset="UTF-8"

Thank you for your response. Kindly keep me posted.

Regards,
Ripu

On Fri., Dec. 13, 2019, 12:36 p.m. akuster, <akuster@mvista.com> wrote:

>
>
> On 12/13/19 7:46 AM, FLoraVLogs wrote:
>
> Hi,
>
> I went to "http://downloads.yoctoproject.org/" and I get the
> following message:
> Gateway Timeout
>
> Server error - server 198.145.29.63 is unreachable at this moment.
>
> Please retry the request or contact your administrator.
>
> Kindly assist here.
>
>
> Thanks. The LF IT department is aware of  this and working towards a
> solution.
>
> No ETA.
>
> Regards,
> Armin
>
> Regards,
>
> Ripu
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47662): https://lists.yoctoproject.org/g/yocto/message/47662
> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1024635
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>
>

--0000000000003e3c740599998e5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you=C2=A0for your response. Kindly keep me posted.=
=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div dir=
=3D"auto">Ripu=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri., Dec. 13, 2019, 12:36 p.m. akuster, &lt;<=
a href=3D"mailto:akuster@mvista.com">akuster@mvista.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div>On 12/13/19 7:46 AM, FLoraVLogs wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hi,
        <div><br>
        </div>
        <div>I went to &quot;<a href=3D"http://downloads.yoctoproject.org/"=
 target=3D"_blank" rel=3D"noreferrer">http://downloads.yoctoproject.org/</a=
>&quot;
          and I get the following=C2=A0message:</div>
        <div>
          <h1><font size=3D"2">Gateway Timeout</font></h1>
          <p>Server error - server 198.145.29.63 is
            unreachable at this moment.<br>
            <br>
            Please retry the request or contact your administrator.</p>
          <p style=3D"color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Ki=
ndly
              assist here.</font></p>
        </div>
      </div>
    </blockquote>
    <br>
    <font face=3D"arial, sans-serif">Thanks. The LF IT department is aware
      of=C2=A0 this and working towards a solution.<br>
      <br>
      No ETA.<br>
      <br>
      Regards,<br>
      Armin<br>
    </font>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <p style=3D"color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Re=
gards,</font></p>
          <p style=3D"color:rgb(0,0,0)"><font face=3D"arial, sans-serif">Ri=
pu</font></p>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47662): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47662" target=3D"_blank" rel=3D"noreferrer">https://lists.yoctop=
roject.org/g/yocto/message/47662</a>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68533979/1024=
635" target=3D"_blank" rel=3D"noreferrer">https://lists.yoctoproject.org/mt=
/68533979/1024635</a>
Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" targe=
t=3D"_blank" rel=3D"noreferrer">https://lists.yoctoproject.org/g/yocto/unsu=
b</a>  [<a href=3D"mailto:akuster@mvista.com" target=3D"_blank" rel=3D"nore=
ferrer">akuster@mvista.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000003e3c740599998e5e--
