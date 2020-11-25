Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.5582.1606304758983246693
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 03:45:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=G5soqEVR;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: icegood1980@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id y4so2217624edy.5
        for <yocto@lists.yoctoproject.org>; Wed, 25 Nov 2020 03:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=MjROzem6CwHmmawyhXhtX2VIXPk1dEWQOTBWx9kHV/k=;
        b=G5soqEVRULtDeFZn6rhqxOaN+rIgjhNCGcy5ifHJz0Vpbfg8YmeWNwPJxuwGKFcV0l
         BiVzWrZ2kPNWZBoPrvBbOAVCdydGtjxFTZqJWcQUCmpvW/+kvlfwwmvKHUYRxTzLGJZQ
         1taN/4taYgwAfFi/UDEbdmD+eVf1hXViOTmtcZmL/PKwzib7uQJEc+KEtPsRAYO+q/oN
         vBL82uMp0pny33P7RH++sBcqABCtZJR7chijbatwFtbuvkcHq5UjwC+Zwia2gmFyEzlP
         Etk2LcYVO27CDeW/Z67sgHk97z+l8BBMi78d3PpniXEbWxb4r9ZT8PCN1p8tNHmh5qCZ
         VRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=MjROzem6CwHmmawyhXhtX2VIXPk1dEWQOTBWx9kHV/k=;
        b=OL2q9uDNN9potc2QUmvEEsahdK8odn5y4MN+QGcdxlPkDCZzrQac+Uy1ak4IpKBOcN
         BFoMHi01bxwaFN2XuvDKkrYEipx0viqM201NJxUsYeDX4j4rJg/zjIS6+K32Sm0MvKBy
         z15A8PYwp8Az6SEeYfoR7pZQ4THmuIS9RMsIG305uKbmYPgNEy7nhDQCkB8McIdACnJw
         +PJG//8abJrOi2kMpg1HMDwTQ87RiU0GDj3KkuqbgJ75D/wQEF9XByVI7ar/YTtYj7o8
         xYzXwkqbG7Jh8ve5SvySu2E7RMQlGL+FYiIzvHMRgei3JSa2J7iOsK3d5M61Ly2IGgHM
         x38Q==
X-Gm-Message-State: AOAM530cctKRw3pmUZcnyIHEPVhr5sJWDudbvn9I14dm4d93A7Y59AmS
	joAvzrXBVIq7FwSs0fP5sH4RJmkt91nsuLMxsvUGPjxKDlLHdw==
X-Google-Smtp-Source: ABdhPJzy2c+ePN01l84nI22AnIQc10UB+sFbJfKFP6ztjEAXWA68EmdnnbrtGF7nTqXRzMYt3gYMrJhZSIGAYP3adUo=
X-Received: by 2002:a50:bc06:: with SMTP id j6mr3199309edh.150.1606304757032;
 Wed, 25 Nov 2020 03:45:57 -0800 (PST)
MIME-Version: 1.0
References: <164ABBEEEA04C5FD.25682@lists.yoctoproject.org>
In-Reply-To: <164ABBEEEA04C5FD.25682@lists.yoctoproject.org>
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Wed, 25 Nov 2020 13:45:45 +0200
Message-ID: <CAJCbrz7_5F_rWd+7NJh82uN0WSA=WYr+33MqVYF3bGAS--j8ww@mail.gmail.com>
Subject: Re: [yocto] Parsing recipes: 0% | - hangs for a while
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000071aad005b4ecf808"

--00000000000071aad005b4ecf808
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The issue was located. I had overridden to the local path of one recipe via

"devtool modify -n <my_recipe>" /my/local/path
and during parsing it hangs at
"Inheriting /yocto/sources/poky/meta/classes/externalsrc.bbclass" from
custom devtools bbappend for my recipe.
Moreover, "devtool reset -n <my_recipe>" turned out into other errors:



NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#1)...
NOTE: Reconnecting to bitbake server...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#1)...
NOTE: Retrying server connection (#1)...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#2)...
NOTE: Reconnecting to bitbake server...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#2)...
NOTE: Retrying server connection (#2)...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#3)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Reconnecting to bitbake server...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#3)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Retrying server connection (#3)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#4)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Reconnecting to bitbake server...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#4)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Retrying server connection (#4)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#5)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Reconnecting to bitbake server...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#5)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Retrying server connection (#5)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#6)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Reconnecting to bitbake server...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#6)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Retrying server connection (#6)... (Traceback (most recent call last=
):
  File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in
setup_bitbake
    server_connection =3D bb.server.process.connectProcessServer(sockname,
featureset)
  File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490, i=
n
connectProcessServer
    sock.connect(os.path.basename(sockname))
BlockingIOError: [Errno 11] Resource temporarily unavailable
)
NOTE: Starting bitbake server...


I wonder why devtool needs bitbake server.





=D1=81=D1=80, 25 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 13:14, Serg=
ey Ivanov via lists.yoctoproject.org
<icegood1980=3Dgmail.com@lists.yoctoproject.org>:

> Since today i encountered issue in the topic.
>
> I had this issue before when i forgot to turn on vpn (somehow parsing
> depends on it). But today is everything is OK and i wonder what went wro=
ng.
> More precisely, i'm interested in two points:
>
> 1) at which stage parsing of receipts is interested in remote resources?
> 2) how to disable remote resource usage during parsing in some
> sophisticated way?
>
> P.S. after waiting for a while bitbake continues but it is annoying anyw=
ay.
>
> --
> Kind regards,
> Sergey Ivanov
>
>=20
>
>

--=20
Kind regards,
Sergey Ivanov

--00000000000071aad005b4ecf808
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The issue was located. I had overridden to the local =
path of one recipe via<br><br></div><div>&quot;devtool modify -n &lt;my_rec=
ipe&gt;&quot; /my/local/path</div><div>and during parsing it hangs at <br>&=
quot;Inheriting /yocto/sources/poky/meta/classes/externalsrc.bbclass&quot; =
from custom devtools bbappend for my recipe. <br></div><div>Moreover, &quot=
;devtool reset -n &lt;my_recipe&gt;&quot; turned out into other errors:<br>=
<br><br><br>NOTE: Reconnecting to bitbake server...<br>NOTE: Retrying serve=
r connection (#1)...<br>NOTE: Reconnecting to bitbake server...<br>NOTE: Re=
connecting to bitbake server...<br>NOTE: Retrying server connection (#1)...=
<br>NOTE: Retrying server connection (#1)...<br>NOTE: Reconnecting to bitba=
ke server...<br>NOTE: Retrying server connection (#2)...<br>NOTE: Reconnect=
ing to bitbake server...<br>NOTE: Reconnecting to bitbake server...<br>NOTE=
: Retrying server connection (#2)...<br>NOTE: Retrying server connection (#=
2)...<br>NOTE: Reconnecting to bitbake server...<br>NOTE: Retrying server c=
onnection (#3)... (Traceback (most recent call last):<br>=C2=A0 File &quot;=
/yocto/sources/poky/bitbake/lib/bb/main.py&quot;, line 455, in setup_bitbak=
e<br>=C2=A0 =C2=A0 server_connection =3D bb.server.process.connectProcessSe=
rver(sockname, featureset)<br>=C2=A0 File &quot;/yocto/sources/poky/bitbake=
/lib/bb/server/process.py&quot;, line 490, in connectProcessServer<br>=C2=
=A0 =C2=A0 sock.connect(os.path.basename(sockname))<br>BlockingIOError: [E=
rrno 11] Resource temporarily unavailable<br>)<br>NOTE: Reconnecting to bit=
bake server...<br>NOTE: Reconnecting to bitbake server...<br>NOTE: Retrying=
 server connection (#3)... (Traceback (most recent call last):<br>=C2=A0 Fi=
le &quot;/yocto/sources/poky/bitbake/lib/bb/main.py&quot;, line 455, in set=
up_bitbake<br>=C2=A0 =C2=A0 server_connection =3D bb.server.process.connect=
ProcessServer(sockname, featureset)<br>=C2=A0 File &quot;/yocto/sources/pok=
y/bitbake/lib/bb/server/process.py&quot;, line 490, in connectProcessServer=
<br>=C2=A0 =C2=A0 sock.connect(os.path.basename(sockname))<br>BlockingIOErr=
or: [Errno 11] Resource temporarily unavailable<br>)<br>NOTE: Retrying serv=
er connection (#3)... (Traceback (most recent call last):<br>=C2=A0 File &q=
uot;/yocto/sources/poky/bitbake/lib/bb/main.py&quot;, line 455, in setup_bi=
tbake<br>=C2=A0 =C2=A0 server_connection =3D bb.server.process.connectProce=
ssServer(sockname, featureset)<br>=C2=A0 File &quot;/yocto/sources/poky/bit=
bake/lib/bb/server/process.py&quot;, line 490, in connectProcessServer<br>=
=C2=A0 =C2=A0 sock.connect(os.path.basename(sockname))<br>BlockingIOError:=
 [Errno 11] Resource temporarily unavailable<br>)<br>NOTE: Reconnecting to =
bitbake server...<br>NOTE: Retrying server connection (#4)... (Traceback (m=
ost recent call last):<br>=C2=A0 File &quot;/yocto/sources/poky/bitbake/lib=
/bb/main.py&quot;, line 455, in setup_bitbake<br>=C2=A0 =C2=A0 server_conne=
ction =3D bb.server.process.connectProcessServer(sockname, featureset)<br>=
=C2=A0 File &quot;/yocto/sources/poky/bitbake/lib/bb/server/process.py&quo=
t;, line 490, in connectProcessServer<br>=C2=A0 =C2=A0 sock.connect(os.path=
.basename(sockname))<br>BlockingIOError: [Errno 11] Resource temporarily un=
available<br>)<br>NOTE: Reconnecting to bitbake server...<br>NOTE: Reconnec=
ting to bitbake server...<br>NOTE: Retrying server connection (#4)... (Trac=
eback (most recent call last):<br>=C2=A0 File &quot;/yocto/sources/poky/bit=
bake/lib/bb/main.py&quot;, line 455, in setup_bitbake<br>=C2=A0 =C2=A0 serv=
er_connection =3D bb.server.process.connectProcessServer(sockname, features=
et)<br>=C2=A0 File &quot;/yocto/sources/poky/bitbake/lib/bb/server/process.=
py&quot;, line 490, in connectProcessServer<br>=C2=A0 =C2=A0 sock.connect(o=
s.path.basename(sockname))<br>BlockingIOError: [Errno 11] Resource temporar=
ily unavailable<br>)<br>NOTE: Retrying server connection (#4)... (Traceback=
 (most recent call last):<br>=C2=A0 File &quot;/yocto/sources/poky/bitbake/=
lib/bb/main.py&quot;, line 455, in setup_bitbake<br>=C2=A0 =C2=A0 server_co=
nnection =3D bb.server.process.connectProcessServer(sockname, featureset)<b=
r>=C2=A0 File &quot;/yocto/sources/poky/bitbake/lib/bb/server/process.py&qu=
ot;, line 490, in connectProcessServer<br>=C2=A0 =C2=A0 sock.connect(os.pat=
h.basename(sockname))<br>BlockingIOError: [Errno 11] Resource temporarily u=
navailable<br>)<br>NOTE: Reconnecting to bitbake server...<br>NOTE: Retryin=
g server connection (#5)... (Traceback (most recent call last):<br>=C2=A0 F=
ile &quot;/yocto/sources/poky/bitbake/lib/bb/main.py&quot;, line 455, in se=
tup_bitbake<br>=C2=A0 =C2=A0 server_connection =3D bb.server.process.connec=
tProcessServer(sockname, featureset)<br>=C2=A0 File &quot;/yocto/sources/po=
ky/bitbake/lib/bb/server/process.py&quot;, line 490, in connectProcessServe=
r<br>=C2=A0 =C2=A0 sock.connect(os.path.basename(sockname))<br>BlockingIOEr=
ror: [Errno 11] Resource temporarily unavailable<br>)<br>NOTE: Reconnecting=
 to bitbake server...<br>NOTE: Reconnecting to bitbake server...<br>NOTE: R=
etrying server connection (#5)... (Traceback (most recent call last):<br>=
=C2=A0 File &quot;/yocto/sources/poky/bitbake/lib/bb/main.py&quot;, line 4=
55, in setup_bitbake<br>=C2=A0 =C2=A0 server_connection =3D bb.server.proce=
ss.connectProcessServer(sockname, featureset)<br>=C2=A0 File &quot;/yocto/s=
ources/poky/bitbake/lib/bb/server/process.py&quot;, line 490, in connectPro=
cessServer<br>=C2=A0 =C2=A0 sock.connect(os.path.basename(sockname))<br>Blo=
ckingIOError: [Errno 11] Resource temporarily unavailable<br>)<br>NOTE: Ret=
rying server connection (#5)... (Traceback (most recent call last):<br>=C2=
=A0 File &quot;/yocto/sources/poky/bitbake/lib/bb/main.py&quot;, line 455,=
 in setup_bitbake<br>=C2=A0 =C2=A0 server_connection =3D bb.server.process.=
connectProcessServer(sockname, featureset)<br>=C2=A0 File &quot;/yocto/sour=
ces/poky/bitbake/lib/bb/server/process.py&quot;, line 490, in connectProces=
sServer<br>=C2=A0 =C2=A0 sock.connect(os.path.basename(sockname))<br>Blocki=
ngIOError: [Errno 11] Resource temporarily unavailable<br>)<br>NOTE: Reconn=
ecting to bitbake server...<br>NOTE: Retrying server connection (#6)... (Tr=
aceback (most recent call last):<br>=C2=A0 File &quot;/yocto/sources/poky/b=
itbake/lib/bb/main.py&quot;, line 455, in setup_bitbake<br>=C2=A0 =C2=A0 se=
rver_connection =3D bb.server.process.connectProcessServer(sockname, featur=
eset)<br>=C2=A0 File &quot;/yocto/sources/poky/bitbake/lib/bb/server/proces=
s.py&quot;, line 490, in connectProcessServer<br>=C2=A0 =C2=A0 sock.connect=
(os.path.basename(sockname))<br>BlockingIOError: [Errno 11] Resource tempor=
arily unavailable<br>)<br>NOTE: Reconnecting to bitbake server...<br>NOTE: =
Reconnecting to bitbake server...<br>NOTE: Retrying server connection (#6).=
.. (Traceback (most recent call last):<br>=C2=A0 File &quot;/yocto/sources/=
poky/bitbake/lib/bb/main.py&quot;, line 455, in setup_bitbake<br>=C2=A0 =C2=
=
=A0 server_connection =3D bb.server.process.connectProcessServer(sockname,=
 featureset)<br>=C2=A0 File &quot;/yocto/sources/poky/bitbake/lib/bb/server=
/process.py&quot;, line 490, in connectProcessServer<br>=C2=A0 =C2=A0 sock.=
connect(os.path.basename(sockname))<br>BlockingIOError: [Errno 11] Resource=
 temporarily unavailable<br>)<br>NOTE: Retrying server connection (#6)... (=
Traceback (most recent call last):<br>=C2=A0 File &quot;/yocto/sources/poky=
/bitbake/lib/bb/main.py&quot;, line 455, in setup_bitbake<br>=C2=A0 =C2=A0 =
server_connection =3D bb.server.process.connectProcessServer(sockname, feat=
ureset)<br>=C2=A0 File &quot;/yocto/sources/poky/bitbake/lib/bb/server/proc=
ess.py&quot;, line 490, in connectProcessServer<br>=C2=A0 =C2=A0 sock.conne=
ct(os.path.basename(sockname))<br>BlockingIOError: [Errno 11] Resource temp=
orarily unavailable<br>)<br>NOTE: Starting bitbake server...<br><br><br></d=
iv><div>I wonder why devtool needs bitbake server.<br></div><div> <br><br><=
br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">=D1=81=D1=80, 25 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=
=
=B3. =D0=B2 13:14, Sergey Ivanov via <a href=3D"http://lists.yoctoproject.=
org">lists.yoctoproject.org</a> &lt;icegood1980=3D<a href=3D"mailto:gmail.c=
om@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt;:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
<div><div><div>Since today i encountered issue in the topic. <br><br></div>=
I had this issue before when i forgot to turn on vpn (somehow parsing depen=
ds on it). But today is everything is OK and i wonder what went wrong. More=
 precisely, i&#39;m interested in two points:<br><br></div>1) at which stag=
e parsing of receipts is interested in remote resources?<br></div>2) how to=
 disable remote resource usage during parsing in some sophisticated way?<br=
><br></div>P.S. after waiting for a while bitbake continues but it is annoy=
ing anyway.<br clear=3D"all"><div><div><div><div><div><br>-- <br><div dir=
=3D"ltr">Kind regards,<br>Sergey Ivanov</div></div></div></div></div></div=
></div>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Kind regards,<br>Sergey Ivanov</div>

--00000000000071aad005b4ecf808--
