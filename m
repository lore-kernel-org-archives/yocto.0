Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-bk0-f51.google.com (mail-bk0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8991E0121A
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 09:09:13 -0700 (PDT)
Received: by mail-bk0-f51.google.com with SMTP id y8so3664009bkt.24
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 09:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=I700v8OBMM4Pnc+KZdbPSX9qISbosYcZlxbvp7/KX4A=;
	b=dTnv9HbIMVO46ZWhj0dIdT1qCtagnuhBQQn4HC9a355GNM0Vo9LdVF2c1vUIX62jZK
	VgGYfuRP3tTmKv5QOVj0ScnSG/jqfh9WRKck4bKxrv+e937pPZij4Euj9QK9MYT9kr2c
	p1n08YhPnw72SOr4IoA7xUNhK6D+YVRe5pBsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=I700v8OBMM4Pnc+KZdbPSX9qISbosYcZlxbvp7/KX4A=;
	b=I+3S+SH1K6Kozhe9In3SaGd7MXketNqIyufAEmtrDEcTD3Gbe3QGe1mblQFR85KgYk
	5PJLe8+sej8g5urVO3wI2dJaFskmWygOGdu6yH6IwxJcp1WCpXuDrqv+yOIbGMtQMjD4
	cungsv9cQ/4nE9bdC3aQAhAqSLiRPffMSh0wbEyDYKX9NJM/M9G6R3hEc5PGLFPxVjk4
	zs8XTxi80oM5+/Pl2ZX4rLYHtOukdqOIoyEC1Ece3y34GrCR/f4UvOor3rmVA/IvszuZ
	geACnMSigiuSHXB5PtQohcDYdei9XB0usYe41qikpInbCOnswBFcqqwkZpIghQMsXu67
	FVhw==
MIME-Version: 1.0
X-Received: by 10.205.17.200 with SMTP id qd8mr12974125bkb.36.1365523752558;
	Tue, 09 Apr 2013 09:09:12 -0700 (PDT)
Received: by 10.204.237.74 with HTTP; Tue, 9 Apr 2013 09:09:12 -0700 (PDT)
In-Reply-To: <36ED13F3654AE54CA763E6821D93A57122D7FD5E@szxeml534-mbs.china.huawei.com>
References: <36ED13F3654AE54CA763E6821D93A571104C91C9@szxeml534-mbx.china.huawei.com>
	<000301ce3185$ab049a20$010dce60$@annabooks.com>
	<CAHUNapRQ+hWo7P2eXUYNof=MsqJVDRY2HE4KV8-=dOeUro=scQ@mail.gmail.com>
	<000001ce34a2$f584a3e0$e08deba0$@annabooks.com>
	<CAHUNapQkneoLF7_7DBFxd+Cm23iTBkJezDsy4NEq9v06GiSybw@mail.gmail.com>
	<CA+gsK-p1AradoFSPrwE-oiWF2NQtaEjiq4GQUqK47cEi4fXQpA@mail.gmail.com>
	<36ED13F3654AE54CA763E6821D93A57122D7FD5E@szxeml534-mbs.china.huawei.com>
Date: Tue, 9 Apr 2013 09:09:12 -0700
Message-ID: <CA+gsK-qy_MO_RxvaRWwHYVHNW3-zUt+E488kxgwQPmHJ+jyV2Q@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
X-Gm-Message-State: ALoCoQldlBOWEWdlk5LoxM9deHMg+te10j6rcUZRyqx4SAFgqCF0+xlZrwDQ2M9ExTP3ts0IYNlK
Cc: Sanil kumar <sanil.kumar@huawei.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Post build configuration
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
X-List-Received-Date: Tue, 09 Apr 2013 16:09:14 -0000
Content-Type: multipart/alternative; boundary=20cf3022361d3464e404d9efc60f

--20cf3022361d3464e404d9efc60f
Content-Type: text/plain; charset=ISO-8859-1

Ramana,

Maybe I do not understand what exactly you are looking for. Maybe you have
some concrete examples.

Anything that somehow changes the configuration of the target has to go
into the root file system one way or the other. You can easily include
packages into the root file system by adding them to the IMAGE_INSTALL
variable. But no matter what BitBake will have to re-run the tasks building
the root file system.

That works fine for a small number of devices but it does not scale. If you
need to scale it you need to do configuration management after you have
brought up the device for the first time during test. Then you can use the
package manager to install new packages.

:rjs

--20cf3022361d3464e404d9efc60f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ramana,<div><br></div><div>Maybe I do not understand what =
exactly you are looking for. Maybe you have some concrete examples.</div><d=
iv><br></div><div>Anything that somehow changes the configuration of the ta=
rget has to go into the root file system one way or the other. You can easi=
ly include packages into the root file system by adding them to the IMAGE_I=
NSTALL variable. But no matter what BitBake will have to re-run the tasks b=
uilding the root file system.<br>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra" style>That =
works fine for a small number of devices but it does not scale. If you need=
 to scale it you need to do configuration management after you have brought=
 up the device for the first time during test. Then you can use the package=
 manager to install new packages.</div>
<div class=3D"gmail_extra" style><br></div><div class=3D"gmail_extra" style=
>:rjs</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"><b=
r></div>
</div></div></div>

--20cf3022361d3464e404d9efc60f--
