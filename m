Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.5766.1606305867210761016
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 04:04:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=abNKCqEi;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: jeanmarie.lemetayer@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id l2so1377871qtq.4
        for <yocto@lists.yoctoproject.org>; Wed, 25 Nov 2020 04:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=yfFF72RgRG1YKjhefIquC8iy4FTEzupsK0duHbc6bvg=;
        b=abNKCqEiDi0/G+zi86I3WivwrLdo/Og8zZ4W0WPs6Ev4Af7p4b+nQwIaEpai8Sd7pk
         DCIhCDWCXOzs5mCycqEzUZW7sG1Q9qmmLL/IXoy1WXMhmH1w7p1w10czCxSl4bIxiJQL
         JsbLpSOu7JNhfP03RtVb4Be6w/Mt7k68CIXdIJXHUnbdtnj0D5BnA6K1FPkDmJ9oXvq8
         ES1hfpS0C73WjVlDbZtZXSV1f4j9VpqQNXQoTqpaXiNLKGOspIYfTzTBYuGe5nw926lt
         nMihnDRYO7ySBJLSDRF+MQcL1xHkpDikXO+R03ciqLhMDoPKb3xaoqTOHmSjd9UutqLl
         gn2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=yfFF72RgRG1YKjhefIquC8iy4FTEzupsK0duHbc6bvg=;
        b=ZyqyxdxL1GKLmNAjIV4bXAiF4Gsj3FphA3L3dmBlztTMQPIZBd9WXVsRsboD7dFhYr
         PAIYlwWFUlRP/i6pEoFzOlWZNNpzG7BqVmTdjWsfP5hEEZ7bvmAFTkDmCy0OiZkX3BRL
         0a7EpEcbbUe/iR2m9e20+KtjIVyrsoHpUJLMbIA9nqoAAxyYr55tg5RbAiIfvFWozo5B
         IW44GshgF3x2Hb3kZ14RrJhdauXJKa/pZ7KlshUQgVG7LyCcwIocQeh1p9HtiyORn4kz
         NZMsF+9Mjky2wA2VADih7UJfe7oYUBO9PcwcBiR6QP7eVqeARV8Wal4Z6i8cRGw+fhq6
         mIjg==
X-Gm-Message-State: AOAM530bXdXX2zIUSZDsWusCHzoBTcTwBMynaKyhy9n+KELGgxgjXlf+
	YNC+DurPyy0+kTukvriEiPrL2vXNpZpx1sfou5LM14fBgv4=
X-Google-Smtp-Source: ABdhPJwsPo9nNZ5bPsJnV1xbdx9mqNY/RvE0SfPbbfv9tK5qW2LJAXMVdG6IDqbME0m/eth1AwInBg059zTdHeOAh9s=
X-Received: by 2002:ac8:44b5:: with SMTP id a21mr2684368qto.104.1606305866144;
 Wed, 25 Nov 2020 04:04:26 -0800 (PST)
MIME-Version: 1.0
References: <164ABBEEEA04C5FD.25682@lists.yoctoproject.org> <CAJCbrz7_5F_rWd+7NJh82uN0WSA=WYr+33MqVYF3bGAS--j8ww@mail.gmail.com>
In-Reply-To: <CAJCbrz7_5F_rWd+7NJh82uN0WSA=WYr+33MqVYF3bGAS--j8ww@mail.gmail.com>
From: "Jean-Marie Lemetayer" <jeanmarie.lemetayer@gmail.com>
Date: Wed, 25 Nov 2020 13:04:15 +0100
Message-ID: <CAAdc0hzxDLU7Aw_rNxiQXNTZuOwhK6V36mm_JQt8F9Svv3Vg5A@mail.gmail.com>
Subject: Re: [yocto] Parsing recipes: 0% | - hangs for a while
To: Sergey Ivanov <icegood1980@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Maybe related to this: meta/conf/distro/include/default-distrovars.inc

    # The CONNECTIVITY_CHECK_URIS are used to test whether we can succesfu=
lly
    # fetch from the network (and warn you if not). To disable the test se=
t
    # the variable to be empty.
    # Git example url:
git://git.yoctoproject.org/yocto-firewall-test;protocol=3Dgit;rev=3Dmaster
    CONNECTIVITY_CHECK_URIS ?=3D "https://www.example.com/"

Try to overwrite CONNECTIVITY_CHECK_URIS in your local.conf by
something like google.com or even an empty string and see the result.

Best regards,
Jean-Marie


On Wed, Nov 25, 2020 at 12:46 PM Sergey Ivanov <icegood1980@gmail.com> wro=
te:
>
> The issue was located. I had overridden to the local path of one recipe =
via
>
> "devtool modify -n <my_recipe>" /my/local/path
> and during parsing it hangs at
> "Inheriting /yocto/sources/poky/meta/classes/externalsrc.bbclass" from c=
ustom devtools bbappend for my recipe.
> Moreover, "devtool reset -n <my_recipe>" turned out into other errors:
>
>
>
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#1)...
> NOTE: Reconnecting to bitbake server...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#1)...
> NOTE: Retrying server connection (#1)...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#2)...
> NOTE: Reconnecting to bitbake server...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#2)...
> NOTE: Retrying server connection (#2)...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#3)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Reconnecting to bitbake server...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#3)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Retrying server connection (#3)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#4)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Reconnecting to bitbake server...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#4)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Retrying server connection (#4)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#5)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Reconnecting to bitbake server...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#5)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Retrying server connection (#5)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#6)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Reconnecting to bitbake server...
> NOTE: Reconnecting to bitbake server...
> NOTE: Retrying server connection (#6)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Retrying server connection (#6)... (Traceback (most recent call la=
st):
>   File "/yocto/sources/poky/bitbake/lib/bb/main.py", line 455, in setup_=
bitbake
>     server_connection =3D bb.server.process.connectProcessServer(socknam=
e, featureset)
>   File "/yocto/sources/poky/bitbake/lib/bb/server/process.py", line 490,=
 in connectProcessServer
>     sock.connect(os.path.basename(sockname))
> BlockingIOError: [Errno 11] Resource temporarily unavailable
> )
> NOTE: Starting bitbake server...
>
>
> I wonder why devtool needs bitbake server.
>
>
>
>
>
> =D1=81=D1=80, 25 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 13:14, Se=
rgey Ivanov via lists.yoctoproject.org <icegood1980=3Dgmail.com@lists.yocto=
project.org>:
>>
>> Since today i encountered issue in the topic.
>>
>> I had this issue before when i forgot to turn on vpn (somehow parsing d=
epends on it). But today is everything is OK and i wonder what went wrong. =
More precisely, i'm interested in two points:
>>
>> 1) at which stage parsing of receipts is interested in remote resources=
?
>> 2) how to disable remote resource usage during parsing in some sophisti=
cated way?
>>
>> P.S. after waiting for a while bitbake continues but it is annoying any=
way.
>>
>> --
>> Kind regards,
>> Sergey Ivanov
>>
>>
>>
>
>
> --
> Kind regards,
> Sergey Ivanov
>
>=20
>
