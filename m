Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web11.14451.1576259672687073425
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 09:54:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RwtUbyW9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.41, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-ot1-f41.google.com with SMTP id p8so12912oth.10
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 09:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=udE4/1eqXxtw9JIOuCVj4YQIBGv0BNZXlzQ0B7oZoZg=;
        b=RwtUbyW9t7mlRBrzhkwU2eSnV2HNfKaIWfTkKj/rEBKcBFto1//YwcX3GxgLOsdTjl
         rYf7H8dPBu9p6+H+cbshZYxsEJdcsPLfQ7jes+piQz6x4cYenQAIL9rA8WeSjD2fXe3w
         dBn1r3WNBsPfXAi4TpLPn6br2mBAsR3RiB+uo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=udE4/1eqXxtw9JIOuCVj4YQIBGv0BNZXlzQ0B7oZoZg=;
        b=tegQ2S6L4vTutO13XXTo2qgkeeGtFCKv4C7nY7KBItHFOqpNY+rfwwmYTvGtLCvTsX
         6tLzkVm0bCGQSE4iQiHAKkwwogoZ9Reu13TUhbqg4dM0R6c6Cx/tKVktczUHttQgSxMR
         RaGIyK9LgjEBmYj9nx70klE/DTQ4l1J7bkk5+a6baEI2e+L0t9Zyyem7vBPMUzq8hG5n
         ozw8FeWNx6TYvP90gHaeEEEvqm1sSA2vV1aWBcwlCFNf/fm1JpX/OZKKUwSZRlAU3dHO
         2N8uR797PHPED75UMo7fndfiKYYr+2FSLAZNbX6OTcrtbhZr8pe3Y9HtLJhM96C0ep61
         O78A==
X-Gm-Message-State: APjAAAVespMYrL3flRoyP82ar2oIpPgSUNxrHb2iBT5+09+ZWs+dFtXc
	hUCqbPPnlPu+aP1M33x8o9LElsR8PXL0Rt+I8Kn4wg==
X-Google-Smtp-Source: APXvYqwMvm71gwmIzQw/n4ols2DZtFVyIJI0iILb8MezlidjillfShSzhjXPB2bPtdnclb/p4uCm3USCAmV0VoY2xDI=
X-Received: by 2002:a9d:7c91:: with SMTP id q17mr15268017otn.70.1576259671838;
 Fri, 13 Dec 2019 09:54:31 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com>
In-Reply-To: <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Fri, 13 Dec 2019 09:54:19 -0800
Message-ID: <CADfgfoZFn--AUG+cKr_wcn5zyyyG4AUbJj6jf1BsUj4HZQzUPA@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Armin Kuster <akuster@mvista.com>
Cc: FLoraVLogs <eripflo@gmail.com>, yocto@lists.yoctoproject.org, 
	yocto-infrastructure@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d06cd00599998d0f"

--000000000000d06cd00599998d0f
Content-Type: text/plain; charset="UTF-8"

The router provided by our colocation provider went offline December 13 at
3:07am PST. I've been working with them since to restore service. I'm now
on site at the data center with a senior network tech. We should have a
timeline for the repair soon.

Until the repair is complete downloads.yoctoproject.org,
state.yoctoproject.org, autobuilder.yocto.io, and the typhoon autobulder
workers are not available.


-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer


On Fri, Dec 13, 2019 at 9:36 AM Armin Kuster <akuster@mvista.com> wrote:

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
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47663):
> https://lists.yoctoproject.org/g/yocto/message/47663
> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1003190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> mhalstead@linuxfoundation.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--000000000000d06cd00599998d0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The router provided by our colocation provider went offlin=
e December=C2=A013 at 3:07am PST. I&#39;ve been working with them since to =
restore service. I&#39;m now on site at the data center with a senior netwo=
rk tech. We should have a timeline for the repair soon.<div><br></div><div>=
Until the repair is complete <a href=3D"http://downloads.yoctoproject.org">=
downloads.yoctoproject.org</a>, <a href=3D"http://state.yoctoproject.org">s=
tate.yoctoproject.org</a>, <a href=3D"http://autobuilder.yocto.io">autobuil=
der.yocto.io</a>, and the typhoon autobulder workers are not available.</di=
v><div><br></div><div><br></div><div><blockquote type=3D"cite"><font size=
=3D"2" face=3D"Calibri"><span style=3D"font-size:11pt"><div></div>
        </span></font>
    </blockquote>
    <pre class=3D"gmail-moz-signature" cols=3D"72">--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer</pre></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 9:36 AM Armi=
n Kuster &lt;<a href=3D"mailto:akuster@mvista.com">akuster@mvista.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
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
 target=3D"_blank">http://downloads.yoctoproject.org/</a>&quot;
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
to/message/47662" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/=
message/47662</a>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68533979/1024=
635" target=3D"_blank">https://lists.yoctoproject.org/mt/68533979/1024635</=
a>
Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" targe=
t=3D"_blank">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a href=3D"=
mailto:akuster@mvista.com" target=3D"_blank">akuster@mvista.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <br>
  </div>

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47663): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47663" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47663</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68533979/1003=
190" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/68533979/1003190</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_=
blank">mhalstead@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>

--000000000000d06cd00599998d0f--
