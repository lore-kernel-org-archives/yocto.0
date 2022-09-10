Return-Path: <zaqhielhorus@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EC1ECAAD5
	for <webhook@archiver.kernel.org>; Sat, 10 Sep 2022 06:50:22 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com
 [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web10.1277.1662792609242665616
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Sep 2022 23:50:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CskU8jvn;
 spf=pass (domain: gmail.com, ip: 209.85.160.44,
 mailfrom: zaqhielhorus@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id
 586e51a60fabf-1280590722dso9661765fac.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 09 Sep 2022 23:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=/72hBFwJi8C0zzsOko2PDwNIu35CX6ZCpeeVUZhT9Yo=;
        b=CskU8jvnR2qkoOKlNdb3KfPPpndW0erjmgLbIgRmGRbiwEJHvzcR2AgpS6FQ0usFWS
         6NIhlR5XvZp4fEqr6WV8v3GC6EUcn+j4aD9Ew6jQfjJRKei27/Q2ie2A527ZJcqN2bLU
         Kt1l9VOkvTEkeBU9WQ6QuI2iRS6JcdtAH9CesQF6YrzJWz6TkbG/v1n2sYE/OXyYQP1s
         QuaLBmV/CaZPbCn1S/dNRJuEXa7Hwjbuh+jQXrUpZQwIveqq749BgffIe8bGvDbAuERt
         cFqhVzERInyr2Fo50VmfKfRrfhJ3gXI5lJHAqya6OzagrSvNxVtbQk562evsvFfIBwgx
         2JXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=/72hBFwJi8C0zzsOko2PDwNIu35CX6ZCpeeVUZhT9Yo=;
        b=i2Kty6ajAeur7UnLxNL8s3NZyau5SJPFXvxjVRXbMWaw8osvfdFrMwHhxrsYNB7Mjw
         /nkDmLGN+vDfhcBQde7+wef+GtYFacpukZPxNrg5gohuBfiZj2kZhvN29cby5u8bmmVd
         d8pCIJmqvPnokQk/tm8QdceFyADasp+cXBYh7K4wXypDe3LWNHj9USi57Oyo1r+7GE7p
         QJmWRXzrUgrGEOIe9thLIMiFiQmJeDvCl0tH1lFDzG9hhXm1qt+oCJGfYJio8KGkXs5P
         KTcBjUCCWsfiur0o7mxexJhoT5Mg/pZwFoWWMpoqAvpTKh3DmBDEiqVBI2eu8nmAe1a6
         i8HA==
X-Gm-Message-State: ACgBeo2N86b5sz4aO4xkoJZ9Z5psuUKHHdIAXdRYgbiCzwwBZr6yqtPX
	DkPsPF4joD6i64Enl/ErBjEt4sDwTHjTrxhg7s6LboN15Wk0ag==
X-Google-Smtp-Source: 
 AA6agR7JlyKk2T0fZTFMtzTrMR6xjivdGft/moMQxEckGJ97sMG/lcmictIelcV1U6YXFv5xBGgvWV4raaYVTRxoZXo=
X-Received: by 2002:a05:6808:13cd:b0:343:41aa:4cbe with SMTP id
 d13-20020a05680813cd00b0034341aa4cbemr5068759oiw.264.1662792608423; Fri, 09
 Sep 2022 23:50:08 -0700 (PDT)
MIME-Version: 1.0
From: Freya the Goddess <zaqhielhorus@gmail.com>
Date: Sat, 10 Sep 2022 13:49:57 +0700
Message-ID: 
 <CALUh_+36ZbnV=UGgWKzMXEMsB8UqGpab13bfwzGOS-Df8nv09Q@mail.gmail.com>
Subject: Psplash
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c2c3c505e84d1209"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Sep 2022 06:50:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58010

--000000000000c2c3c505e84d1209
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

SSB3YW50IHRvIGNyZWF0ZSBhIHNwbGFzaHNjcmVlbiBmb3IgbXkgTEZTIE9TIHdpdGggU3lzdGVt
IFYuIElzIGFueW9uZSBldmVyDQp0cmllZCBpdD8NCg0KDQotLSANCtChINC90LDQuNC70YPRh9GI
0LjQvNC4INC/0L7QttC10LvQsNC90LjRj9C80LgsINCR0L7Qs9C40L3RjyDQpNGA0LXQudGPDQpB
dGVuY2lvc2FtZW50ZSwgRnJleWEgdGhlIEdvZGRlc3MNCk1laWxsZXVycyB2b2V1eCwgRnJleWEg
dGhlIEdvZGRlc3MNCkxpZWJlIEdyw7zDn2UsIEZyZXlhIHRoZSBHb2RkZXNzDQpCZXN0IHdpc2hl
cywgRnJleWEgdGhlIEdvZGRlc3MNCuOCiOOCjeOBl+OBj+OBiumhmOOBhOOBl+OBvuOBmeOAgUZy
ZXlhIHRoZSBHb2RkZXNzDQrmnIDlpb3nmoTnpZ3npo/vvIxGcmV5YSB0aGUgR29kZGVzcw0KTWF0
YWt3YSBtZW1hLCBGcmV5YSB0aGUgR29kZGVzcw0K2YXYuSDYo9i32YrYqCDYp9mE2KrZhdmG2YrY
p9iqINiMINmB2LHZitinINin2YTYpdmE2YfYqQ0K
--000000000000c2c3c505e84d1209
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I want to create a splashscreen for my LFS OS with System =
V. Is anyone ever tried it?<font color=3D"#888888"><br clear=3D"all"></font=
><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div dir=3D"ltr"><span style=3D"font-size:=
13px;color:rgb(38,38,38);font-family:Roboto,sans-serif">=D0=A1 =D0=BD=D0=B0=
=D0=B8=D0=BB=D1=83=D1=87=D1=88=D0=B8=D0=BC=D0=B8 =D0=BF=D0=BE=D0=B6=D0=B5=
=D0=BB=D0=B0=D0=BD=D0=B8=D1=8F=D0=BC=D0=B8,=C2=A0</span><span style=3D"colo=
r:rgb(38,38,38);font-family:Roboto,sans-serif;font-size:13px">=D0=91=D0=BE=
=D0=B3=D0=B8=D0=BD=D1=8F =D0=A4=D1=80=D0=B5=D0=B9=D1=8F</span><br style=3D"=
color:rgb(136,136,136)"><div style=3D"color:rgb(136,136,136)"><span style=
=3D"color:rgb(38,38,38);font-family:Roboto,sans-serif;font-size:13px">Atenc=
iosamente, Freya the Goddess</span><font face=3D"-apple-system, BlinkMacSys=
temFont, Roboto, Helvetica Neue, Arial, sans-serif" color=3D"#4d4d4d"><span=
 style=3D"font-size:16px;white-space:pre-wrap"><br></span></font></div><div=
 style=3D"color:rgb(136,136,136)"><span style=3D"color:rgb(38,38,38);font-f=
amily:Roboto,sans-serif;font-size:13px">Meilleurs voeux</span><span style=
=3D"color:rgb(38,38,38);font-family:Roboto,sans-serif;font-size:13px">,=C2=
=A0</span><span style=3D"color:rgb(38,38,38);font-family:Roboto,sans-serif;=
font-size:13px">Freya the Goddess</span><span style=3D"color:rgb(38,38,38);=
font-family:Roboto,sans-serif;font-size:13px"><br></span></div><div style=
=3D"color:rgb(136,136,136)"><span style=3D"color:rgb(38,38,38);font-family:=
Roboto,sans-serif;font-size:13px">Liebe Gr=C3=BC=C3=9Fe,=C2=A0</span><span =
style=3D"color:rgb(38,38,38);font-family:Roboto,sans-serif;font-size:13px">=
Freya the Goddess</span><span style=3D"color:rgb(38,38,38);font-family:Robo=
to,sans-serif;font-size:13px"><br></span></div><div style=3D"color:rgb(136,=
136,136)"><span style=3D"color:rgb(38,38,38);font-family:Roboto,sans-serif;=
font-size:13px">Best wishes,=C2=A0</span><span style=3D"color:rgb(38,38,38)=
;font-family:Roboto,sans-serif;font-size:13px">Freya the Goddess</span><spa=
n style=3D"color:rgb(38,38,38);font-family:Roboto,sans-serif;font-size:13px=
"><br></span></div><div style=3D"color:rgb(136,136,136)"><span style=3D"col=
or:rgb(38,38,38);font-family:Roboto,sans-serif;font-size:13px">=E3=82=88=E3=
=82=8D=E3=81=97=E3=81=8F=E3=81=8A=E9=A1=98=E3=81=84=E3=81=97=E3=81=BE=E3=81=
=99=E3=80=81</span><span style=3D"color:rgb(38,38,38);font-family:Roboto,sa=
ns-serif;font-size:13px">Freya the Goddess</span><span style=3D"color:rgb(3=
8,38,38);font-family:Roboto,sans-serif;font-size:13px"><br></span></div><di=
v style=3D"color:rgb(136,136,136)"><span style=3D"color:rgb(38,38,38);font-=
family:Roboto,sans-serif;font-size:13px">=E6=9C=80=E5=A5=BD=E7=9A=84=E7=A5=
=9D=E7=A6=8F=EF=BC=8C</span><span style=3D"color:rgb(38,38,38);font-family:=
Roboto,sans-serif;font-size:13px">Freya the Goddess</span><span style=3D"co=
lor:rgb(38,38,38);font-family:Roboto,sans-serif;font-size:13px"><br></span>=
</div><div style=3D"color:rgb(136,136,136)"><span style=3D"color:rgb(38,38,=
38);font-family:Roboto,sans-serif;font-size:13px">Matakwa mema,=C2=A0</span=
><span style=3D"color:rgb(38,38,38);font-family:Roboto,sans-serif;font-size=
:13px">Freya the Goddess</span></div><div style=3D"text-align:center;color:=
rgb(136,136,136)"><span style=3D"color:rgb(38,38,38);font-family:Roboto,san=
s-serif;font-size:13px;text-align:right">=D9=85=D8=B9 =D8=A3=D8=B7=D9=8A=D8=
=A8 =D8=A7=D9=84=D8=AA=D9=85=D9=86=D9=8A=D8=A7=D8=AA =D8=8C =D9=81=D8=B1=D9=
=8A=D8=A7 =D8=A7=D9=84=D8=A5=D9=84=D9=87=D8=A9</span><span style=3D"color:r=
gb(38,38,38);font-family:Roboto,sans-serif;font-size:13px"><br></span></div=
></div></div></div>

--000000000000c2c3c505e84d1209--

