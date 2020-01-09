Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web11.1331.1578606258922144074
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:44:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Bxik6A4Z;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.176, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-oi1-f176.google.com with SMTP id c77so54881oib.7
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2020 13:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9ZNCkX9sydXEnnXV7TtWPYgVDQdWiu6swNlewRDBTkI=;
        b=Bxik6A4ZHjoWTgbRYClPM4ofL1ysC1HqGOt6Tv7+Dj+5MkT3ayKopmQ2jbRxKdGVjj
         owVJRloxR0nVHAaVzPCqwKnk0dc6GPEFy0V/fAcDJ6W0mZHe8ON0wdsTFlzUKttVDzSM
         EBXnOX5ke+OEfOEkpKQHtD+3EDMhWkmdlOnqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9ZNCkX9sydXEnnXV7TtWPYgVDQdWiu6swNlewRDBTkI=;
        b=EeIhbzOJZlDYR140thxkvTdimCXjSklrcAgjcv0Ijhu/dAWCCn0gY4BbhgJBW8Zdzl
         HqCvti/xTgkfeKc0ZvQl4xqcwLwbaHGZDIuhS+BZF1wjiSiGRxKtvCC2acPJcGn/+KJ3
         xJ7Ui3A3wm2f9NiwNneKx3wV2NnHQ8qj9Jk+tRAtJhsd5Z/mMyL/7z4oFkZ7kTaORa8u
         PV8AQA1SVUL4qOWdWNIA35aQG+iy5Ixbc2Be6ELGH0UTNnUbN/qMTUkBIERUVqEsh8h2
         PvO5tq7Td/lvJX59YZrWcIRErvCy/5euYKx4319VxWtyehgr1qZuO9ss5I4xRfkqQrTM
         CqLw==
X-Gm-Message-State: APjAAAUvODLck/yS/QVPcWZKJ9gx+WB68hW/GEpSgl1E4VuW/KNBHouo
	UJfFRtSSF+84XwCW2KPjYueD0fdOAzICR/ZnnQMu0A==
X-Google-Smtp-Source: APXvYqxZtVjTSp30SqHltlwjMbk39sx9eMqJ/528DEgugEzogSjoQDfU7/BxumvVBWqHe535G/v/xmLp/U0gMzj6SpU=
X-Received: by 2002:a54:4085:: with SMTP id i5mr5013960oii.17.1578606258161;
 Thu, 09 Jan 2020 13:44:18 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
In-Reply-To: <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Thu, 9 Jan 2020 13:44:07 -0800
Message-ID: <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: FLoraVLogs <eripflo@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000422022059bbbe9c8"

--000000000000422022059bbbe9c8
Content-Type: text/plain; charset="UTF-8"

There was a brief outage while rebooting a storage device. The error should
have been resolved several minutes ago. If you are still seeing this error
please let me know.

Michael Halstead

On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com> wrote:

> Also, I do see:
>
> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection refused.
>
>
>
> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com> wrote:
>
>> Hi,
>>
>> I tried to go into the following:
>> http://downloads.yoctoproject.org/
>>
>> I get the following error:
>>
>> Host Not Found
>>
>> DNS error (the host name of the page you are looking for does not exist)
>> or Server did not accept the connection.
>>
>> Please check that the host name has been spelled correctly.
>>
>> Regards,
>>
>> Ripu
>>
> 
>

--000000000000422022059bbbe9c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There was a brief=C2=A0outage while rebooting a storage de=
vice. The error should have been resolved several minutes ago. If you are s=
till seeing this error please=C2=A0let me know.<div><br></div><div>Michael =
Halstead</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs &lt;<a href=3D"m=
ailto:eripflo@gmail.com">eripflo@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Also, I do see:<=
br><pre style=3D"box-sizing:border-box;white-space:pre-wrap;margin-top:0px;=
margin-bottom:0px;font-size:14px;background:rgb(38,50,56);color:rgb(233,237=
,237);padding:10px 20px;font-family:&quot;Roboto Mono&quot;,monospace">Conn=
ecting to <a href=3D"http://downloads.yoctoproject.org" target=3D"_blank">d=
ownloads.yoctoproject.org</a> (<a href=3D"http://downloads.yoctoproject.org=
" target=3D"_blank">downloads.yoctoproject.org</a>)|198.145.29.63|:80... fa=
iled: Connection refused.

</pre></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs &lt;<a href=3D"mailto:erip=
flo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div>=
<br></div><div>I tried to go into the following:</div><div><a href=3D"http:=
//downloads.yoctoproject.org/" target=3D"_blank"><span>http</span>://<span>=
downloads</span>.<span>yoctoproject</span>.<span>org</span>/</a></div><div>=
<br></div><div>I get the following error:</div><div>=C2=A0</div><h1 style=
=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot;">Host Not Fou=
nd</h1><p style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot;=
;font-size:medium">DNS error (the host name of the page you are looking for=
 does not exist) or Server did not accept the connection.<br><br>Please che=
ck that the host name has been spelled correctly.</p><p style=3D"color:rgb(=
0,0,0);font-family:&quot;Times New Roman&quot;;font-size:medium">Regards,</=
p><p style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot;;font=
-size:medium">Ripu</p></div>
</blockquote></div>
<br>
</blockquote></div>

--000000000000422022059bbbe9c8--
