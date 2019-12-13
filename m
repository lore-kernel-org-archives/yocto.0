Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web09.1029.1576266188858799404
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 11:43:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LuLLG0ug;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.174, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-oi1-f174.google.com with SMTP id c16so985460oic.3
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 11:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3K8CjjKM6B+jzT1sjlRhTG4xXfamlq8D4zskGSMX5R4=;
        b=LuLLG0ugxn5gy4UvhyqOzQvu4B0VyhVUpsjsN13ud6hdrUnyxzZX/58GkeFv5HiIlD
         VvNbnN056d67ECRsVmajLiuvRKY8u3ISA8VpbQRdCwYrJvHjeRPY7PMGRD0fJ4oGXK/P
         32/us3XNVrBo8IVZvflr3U8/zxODjQz8B/xRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3K8CjjKM6B+jzT1sjlRhTG4xXfamlq8D4zskGSMX5R4=;
        b=q6bOcc3kckWcxPIARVOcWcmxqlUEpae3UB4R+Uk5XFpNcbfPDs3sq4u7XYw4w/qJY9
         X/HKNQ7M2WoAb3mSO/ZW0hyuBZhFxrbXxqIX+3QHQhnLC0u0xlUiao0adCxN2ZjB+U/3
         2W/By/xBvNmYZYxD3xUrlj9IEqlNHCVWEQNS4P6P/1sKXcY5E9fIZ/UEXAhMjB+iMREP
         3qfRPHtPjpf8uC86KLxFStBbCXO2PAXBAAOXGfIkekiPZkaFvIbSapcodhWwmexBwVj2
         WmW7B5zP7VOKM1OdPofx3Ah8I0M1Rb+JsJqZo61tpjmyEwT59qS5BmBUaGjcIv+ZgDMb
         Svgg==
X-Gm-Message-State: APjAAAVu4Loz2tNTetY++p7fNiAGCAkAQD/ftGPqikt0eZV10JUIXXn4
	1wFkscrr0Q6w7IbHBEH1Jep6f9ORSC88MaGDUBbcAQ==
X-Google-Smtp-Source: APXvYqySRs1JJzOhqp17HLBYPLVRvccO1V9vS5UhCxOGEZToTuBjyCkjD8wttUAdjdYGnFfMvAUCVBqnMv5cmYOYKVc=
X-Received: by 2002:aca:fc17:: with SMTP id a23mr7983341oii.63.1576266187980;
 Fri, 13 Dec 2019 11:43:07 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com> <CAGhBkzzSOPkOW2LHjhh4P0_By3CB9Ev9R+vDa=naB2JEBpCVBA@mail.gmail.com>
In-Reply-To: <CAGhBkzzSOPkOW2LHjhh4P0_By3CB9Ev9R+vDa=naB2JEBpCVBA@mail.gmail.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Fri, 13 Dec 2019 11:42:56 -0800
Message-ID: <CADfgfoYzGW5jGKd2ru1wKsomuFbSgOthPhGGRYQ8g7tBavp8zw@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: FLoraVLogs <eripflo@gmail.com>
Cc: akuster <akuster@mvista.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000034d60705999b1234"

--00000000000034d60705999b1234
Content-Type: text/plain; charset="UTF-8"

Update: Spare hardware is racked and cabled. Data center staff is beginning
configuration. I expect service to be restored in 30 to 40 minutes.

On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs <eripflo@gmail.com> wrote:

> Thank you for your response. Kindly keep me posted.
>
> Regards,
> Ripu
>
> On Fri., Dec. 13, 2019, 12:36 p.m. akuster, <akuster@mvista.com> wrote:
>
>>
>>
>> On 12/13/19 7:46 AM, FLoraVLogs wrote:
>>
>> Hi,
>>
>> I went to "http://downloads.yoctoproject.org/" and I get the
>> following message:
>> Gateway Timeout
>>
>> Server error - server 198.145.29.63 is unreachable at this moment.
>>
>> Please retry the request or contact your administrator.
>>
>> Kindly assist here.
>>
>>
>> Thanks. The LF IT department is aware of  this and working towards a
>> solution.
>>
>> No ETA.
>>
>> Regards,
>> Armin
>>
>> Regards,
>>
>> Ripu
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47662): https://lists.yoctoproject.org/g/yocto/message/47662
>> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1024635
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47670):
> https://lists.yoctoproject.org/g/yocto/message/47670
> Mute This Topic: https://lists.yoctoproject.org/mt/68533979/1003190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> mhalstead@linuxfoundation.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--00000000000034d60705999b1234
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Update: Spare hardware is racked and cabled. Data center s=
taff is beginning configuration. I expect service to be restored in 30 to 4=
0 minutes.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs &lt;<a href=3D"mailto=
:eripflo@gmail.com">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Thank you=C2=A0for y=
our response. Kindly keep me posted.=C2=A0<div dir=3D"auto"><br></div><div =
dir=3D"auto">Regards,</div><div dir=3D"auto">Ripu=C2=A0</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri., Dec. =
13, 2019, 12:36 p.m. akuster, &lt;<a href=3D"mailto:akuster@mvista.com" tar=
get=3D"_blank">akuster@mvista.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
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
 rel=3D"noreferrer" target=3D"_blank">http://downloads.yoctoproject.org/</a=
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
to/message/47662" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47662</a>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68533979/1024=
635" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/68533979/1024635</a>
Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproject.org" rel=3D"n=
oreferrer" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>  [<a href=3D"mailto:akuster@mvista.com" rel=3D"noreferrer" target=
=3D"_blank">akuster@mvista.com</a>]
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
to/message/47670" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47670</a><br>
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

--00000000000034d60705999b1234--
