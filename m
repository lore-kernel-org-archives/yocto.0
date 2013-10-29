Return-Path: <joaohf@gmail.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1066EE0179E
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 03:38:10 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id z12so8142884wgg.24
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 03:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2i7sqLKy5aONX1jwtKFzDkVcIszUxnksFUKI99oyZhc=;
	b=Xh2C3FKQBP2DUkdGujJ4Os4ERxPbM7Lgku1gves1sb9Nldb4VoMG+alVoD+WKymc5e
	Lb52fzQZlxCgAZcUlFtlDbwigZC1yFoWWzEx6JQxjhFsFvJIuqonDdoBqrvMQ9raXuxX
	VU4AwmquJg/ROCWtGHl7w6Ej9uxjOZw1+lIo/z8XjQvoAMlWiW8SOI0legeNKZmaiPph
	dFZTEqwgxC3oT8Moffa1NzczNjEkletSZByMoZdePKgTRRrBY2aEg07VfkHiNRLWW8dz
	Deo1MkrQICmi1JB/JVsS7vHO0WZFLWlpy8P7IseLMvK/bGCmmBjG6YLQ9PqLUfZDMMEd
	SakQ==
MIME-Version: 1.0
X-Received: by 10.180.11.37 with SMTP id n5mr12793388wib.25.1383043088830;
	Tue, 29 Oct 2013 03:38:08 -0700 (PDT)
Received: by 10.216.90.132 with HTTP; Tue, 29 Oct 2013 03:38:08 -0700 (PDT)
In-Reply-To: <CAMKF1so9W4TR=FKFX7JFbCBR1hhu5NGd+T3RiXC_eo1vSDqdNQ@mail.gmail.com>
References: <CANFVK7-RGLuL9=wYagjNmScMt7gi_1nUOM=V8DiWJiTfRCahGw@mail.gmail.com>
	<CAMKF1so9W4TR=FKFX7JFbCBR1hhu5NGd+T3RiXC_eo1vSDqdNQ@mail.gmail.com>
Date: Tue, 29 Oct 2013 08:38:08 -0200
Message-ID: <CANFVK7_azNhZLYD1G8Sgs44y==eH9GZc6jPj6DYEi02sztp+-g@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto-dora problems building python
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Oct 2013 10:38:11 -0000
Content-Type: multipart/alternative; boundary=001a11c25b4804d65604e9ded091

--001a11c25b4804d65604e9ded091
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,


> python build system is very stubborn and does not respect cross
> compilation many times. You might have uncovered some case
> that hasnt been seen yet.  You should put your build logs for python
> somewhere so we can take a look and understand better
> whats going on
>
>

I found in my $HOME a directory named .local. Inside this there was a
python local installation. Previously I used to install a python package
there. So I removed the $HOME/.local and the build got working again.

To figure out this I created another user on my ubuntu installation and
tryed to run my build, using the $HOME of the new user. Bitbake didn't
complain anymore.

The $HOME/.local had this directory struct:

/home/jfreitas/./local/lib/python2.7/site-packages
/home/jfreitas/./local/bin

Is possible that python is seeing some files from .local?

The libxml2-native has the same problem. Both (libxml2-native and python)
complains about Python.h header file not found.


PS:

I was thinking that the problem was Ubuntu version. But this is not true.


Thanks.
--=20
Jo=C3=A3o Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil

--001a11c25b4804d65604e9ded091
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br><div><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D=
"im">
<br>
</div>python build system is very stubborn and does not respect cross<br>
compilation many times. You might have uncovered some case<br>
that hasnt been seen yet. =C2=A0You should put your build logs for python<b=
r>
somewhere so we can take a look and understand better<br>
whats going on<br><br></blockquote></div><br><br>I found in my $HOME a dire=
ctory named .local. Inside this there was a python local installation. Prev=
iously I used to install a python package there. So I removed the $HOME/.lo=
cal and the build got working again.<br>
<br>To figure out this I created another user on my ubuntu installation and=
 tryed to run my build, using the $HOME of the new user. Bitbake didn&#39;t=
 complain anymore.<br><br>The $HOME/.local had this directory struct:<br>
<br>/home/jfreitas/./local/lib/python2.7/site-packages<br>/home/jfreitas/./=
local/bin<br><br>Is possible that python is seeing some files from .local?<=
br><br>The libxml2-native has the same problem. Both (libxml2-native and py=
thon) complains about Python.h header file not found.<br>
<br clear=3D"all"><br></div><div class=3D"gmail_extra">PS: <br><br></div><d=
iv class=3D"gmail_extra">I was thinking that the problem was Ubuntu version=
. But this is not true.<br></div><div class=3D"gmail_extra"><br><br></div><=
div class=3D"gmail_extra">
Thanks.<br></div><div class=3D"gmail_extra">-- <br><div dir=3D"ltr">Jo=C3=
=A3o Henrique Ferreira de Freitas - <a href=3D"http://joaohf_at_gmail.com" =
target=3D"_blank">joaohf_at_gmail.com</a><br>Campinas-SP-Brasil</div>
</div></div></div>

--001a11c25b4804d65604e9ded091--
