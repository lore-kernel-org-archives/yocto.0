Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web10.1240.1576266905036956941
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 11:55:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZCfwI67z;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: eripflo@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id h15so429492ile.4
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 11:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8pqkfw5NylbZA+T5X5MJbsMrS9BD95FjnSdx32MS25s=;
        b=ZCfwI67zusDfo44NpPx/kCWLEoRbce4/ucd6Us0W3N1CJuHEthUdiVemSB059JssnN
         LQ3/Ol9fImzQE4WbhgqqjZxk4AoIvfGj1Y3uWACAGy6OQqMUGYK7uKZVYnHj3J0XvnYb
         jshPkvHiO59PQJBvIynRQ7shs2JV/m/ofVZwwGAv12O1mSY/33qtRu5rngzvSro5Dz3L
         F9OtrcjU++BHONujR4QLP3sp4yWUXTMPqKj+4BNk0/fxQUUE6n+zZBov7DIZFtCinryi
         ncmOmOwW1SYx4uONg/kIb8kdbTfDJPOm8vqNkk63I1hi43h0ckK852LXje6pvWFqXkMj
         SAsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8pqkfw5NylbZA+T5X5MJbsMrS9BD95FjnSdx32MS25s=;
        b=uYJXrFh+B8FELptZrKWN/wlsEhMHEl/wtPP3Ax9o7CKml2F8xiDZ7wuRFH9sRM1OlJ
         mSZqR8lX7h77esCD2/SETB5S2XEcCIpLGYk6hCUgsIb/T22Wc1Ly8hCca1JPvu7zv6Lg
         cvzDSRl341VkYcQ8aIMVo+8Xum5av8I+wskqyOocipGEsfbt+no95F/oRfJbHEmnPmYF
         cYKvcbfNpsoUPGeQu2zdEZbJJTtJIvDpJm+5m6WznsiYtMNnb4rcNjl1ouf1nruvymiy
         zidZwUGkIGHrF1qRkfEAHdyHdxUmqnLfHgeV/XuU9GUgmakvQSavI97WVU6VObpYjJ20
         y/Iw==
X-Gm-Message-State: APjAAAWAa+09/+MRYrpexVTRpbaSZvPrVyfibgkja7oWjnUn2NfRFffQ
	TrrTV2y07T1WWYBtOYRMs/llRBhQkP95iEr9KWU=
X-Google-Smtp-Source: APXvYqwZZ0nzxEKt2p2eWpook4FuCauSbwZLzfBT6uDiCtIQxNuC9H4jcT9VR+A5tbuNmvJOxJbqBWSL9+kF24WrnMI=
X-Received: by 2002:a92:7d07:: with SMTP id y7mr1002306ilc.270.1576266904381;
 Fri, 13 Dec 2019 11:55:04 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com> <CAGhBkzzSOPkOW2LHjhh4P0_By3CB9Ev9R+vDa=naB2JEBpCVBA@mail.gmail.com>
 <CADfgfoYzGW5jGKd2ru1wKsomuFbSgOthPhGGRYQ8g7tBavp8zw@mail.gmail.com>
In-Reply-To: <CADfgfoYzGW5jGKd2ru1wKsomuFbSgOthPhGGRYQ8g7tBavp8zw@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Fri, 13 Dec 2019 14:54:55 -0500
Message-ID: <CAGhBkzxH3c_mUtdJF2wYRe3ovdb4TO73T6wYM1vPZZWvAbsw9w@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: akuster <akuster@mvista.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e82ecd05999b3cde"

--000000000000e82ecd05999b3cde
Content-Type: text/plain; charset="UTF-8"

Ok, thanks for the update :)

On Fri., Dec. 13, 2019, 2:43 p.m. Michael Halstead, <
mhalstead@linuxfoundation.org> wrote:

> Update: Spare hardware is racked and cabled. Data center staff is
> beginning configuration. I expect service to be restored in 30 to 40
> minutes.
>
> On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs <eripflo@gmail.com> wrote:
>
>> Thank you for your response. Kindly keep me posted.
>>
>> Regards,
>> Ripu
>>
>> On Fri., Dec. 13, 2019, 12:36 p.m. akuster, <akuster@mvista.com> wrote:
>>
>>>
>>>
>>> On 12/13/19 7:46 AM, FLoraVLogs wrote:
>>>
>>> Hi,
>>>
>>> I went to "http://downloads.yoctoproject.org/" and I get the
>>> following message:
>>> Gateway Timeout
>>>
>>> Server error - server 198.145.29.63 is unreachable at this moment.
>>>
>>> Please retry the request or contact your administrator.
>>>
>>> Kindly assist here.
>>>
>>>
>>> Thanks. The LF IT department is aware of  this and working towards a
>>> solution.
>>>
>>> No ETA.
>>>
>>> Regards,
>>> Armin
>>>
>>> Regards,
>>>
>>> Ripu
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>>
>>> View/Reply Online (#47662): https://lists.yoctoproject.org/g/yocto/message/47662
>>> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1024635
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47670):
>> https://lists.yoctoproject.org/g/yocto/message/47670
>> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1003190
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
>> mhalstead@linuxfoundation.org]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>

--000000000000e82ecd05999b3cde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, thanks for the update :)</div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri., Dec. 13, 2019, 2:43 =
p.m. Michael Halstead, &lt;<a href=3D"mailto:mhalstead@linuxfoundation.org"=
>mhalstead@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr">Update: Spare hardware is racked and cabled. Da=
ta center staff is beginning configuration. I expect service to be restored=
 in 30 to 40 minutes.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs &lt;<a hre=
f=3D"mailto:eripflo@gmail.com" target=3D"_blank" rel=3D"noreferrer">eripflo=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">Thank you=C2=A0for your response. Kindly keep =
me posted.=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div=
><div dir=3D"auto">Ripu=C2=A0</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri., Dec. 13, 2019, 12:36 p.m. akust=
er, &lt;<a href=3D"mailto:akuster@mvista.com" target=3D"_blank" rel=3D"nore=
ferrer">akuster@mvista.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
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
 rel=3D"noreferrer noreferrer" target=3D"_blank">http://downloads.yoctoproj=
ect.org/</a>&quot;
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
to/message/47662" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/47662</a>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68533979/1024=
635" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/68533979/1024635</a>
Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproject.org" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">yocto+owner@lists.yoctoproject.org<=
/a>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a>  [<a href=3D"mailto:akuster@mvista.com" rel=3D"noreferre=
r noreferrer" target=3D"_blank">akuster@mvista.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <br>
  </div>

</blockquote></div>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47670): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47670" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/47670</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68533979/1003=
190" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/68533979/1003190</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a>=C2=A0 [<a href=3D"mailto:mhalstead@linuxfoundation.org" =
target=3D"_blank" rel=3D"noreferrer">mhalstead@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>
</blockquote></div>

--000000000000e82ecd05999b3cde--
