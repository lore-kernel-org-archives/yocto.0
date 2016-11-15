Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50BE7E009A5; Tue, 15 Nov 2016 00:33:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 828EDE0080A
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 00:31:59 -0800 (PST)
Received: by mail-qk0-f182.google.com with SMTP id q130so126892113qke.1
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 00:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hR/vyO2t1OfOdJthv/gmLsR+x3oKmxnuVio8jBuUrq0=;
	b=W138gksxCH6YF6qMvBnXZKoXJZW3ImuSi29SZ5VQhZ/3u6QAxZm1rapysGEfMGzaBU
	AroSjf8H2GPXLiUveA2PWaZrmaAprO7+hP6CFyTKB/YHT35DDUKfT7Vu0QUrrbTCRDjl
	OX+dnf3N7YWyepRNArCbKYu0Y5nmvTksp8znS5d/EExkzQ3/SXs/gfb5Lwj05df8Vo6e
	D72dmi67y7Yw39GuJmOq0lZwUdJUkDbm2La3h506l76LhxyhETz0hA0Z4nrER5/RO8ua
	eTIYaIvyU/IJrOLbaMTZQM4vVre6ayKBLn4d9j85KUzBCbMxbm/U8LBGx7G0dZHvYRoR
	tFow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hR/vyO2t1OfOdJthv/gmLsR+x3oKmxnuVio8jBuUrq0=;
	b=XEwlNPNbi74Ih7Utnd6YWUngS+m0UnT9pL3RLDlW4CPpouUaRepY7XnFvJS2DSwN/e
	sZ9GYVH5fJMkj5cvfgt+LvXejjl0yEYkHT7gfYFKXBo8O5GzgqZXBWDMm+EMCPzl0SWP
	IUQ6g8RcnGqNU1GWi8oShWVCnXj3mKOlzcxyPhvppg56ZTX3NnsShHr0O2FToTRkjvfR
	zL4bkGAt4pn593fjwurByLnAbNOY3zrST8sFXh0y/wpRMsUya4BG9+x9WXwp658Rb+4d
	HUGxXLgjPLf1c1J1+mx9XSqrs8dMUjBuG7jeBJ3TRUqs9rVE+b+beSZ9g+UDy11HwSWB
	EdAA==
X-Gm-Message-State: ABUngvdyB5O4103YP0r4ruLj/N/ugVFxZ1FpQsEYZLkKTrjl8G78Hhd4OmWmaf3J/8o32Zyv0eJeGWRukpq+ZqDV
X-Received: by 10.55.133.134 with SMTP id h128mr14372858qkd.190.1479198718695; 
	Tue, 15 Nov 2016 00:31:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.34.74 with HTTP; Tue, 15 Nov 2016 00:31:28 -0800 (PST)
In-Reply-To: <20161113155141.7c0ca5dc@jawa>
References: <20161113155141.7c0ca5dc@jawa>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 15 Nov 2016 10:31:28 +0200
Message-ID: <CAHiDW_E5G6Sbeb__Kza3XGTXDh=v2670FOXKvfXKLkR4Ld7gAg@mail.gmail.com>
To: Lukasz Majewski <l.majewski@majess.pl>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [sysvinit] Problem with disabling sysvinit service
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
X-List-Received-Date: Tue, 15 Nov 2016 08:33:28 -0000
Content-Type: multipart/alternative; boundary=94eb2c07cf082e38c3054152ca8c

--94eb2c07cf082e38c3054152ca8c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 13 November 2016 at 16:51, Lukasz Majewski <l.majewski@majess.pl> wrote:

> Dear All,
>
> Maybe here I would find answer to question which puzzles me from some
> time.
>
> The problem:
>
> Disable syslog service on startup of sysvinit based board.
> (syslog is defined in e.g. /etc/rc5.d/S20syslog -> /etc/init.d/syslog)
>
> Syslog on my setup is provided by busybox.
>
> I was trying to find where 'update-rc.d ... syslog ...' is called in the
> poky (2.1.2) source tree but without any success.
>
> Then, I've discovered that it is appended to INITSCRIPT_NAME variable
> and further processed by update-rc.d.bbclass
>

> Is there any method/recipe which would allow just removing S20klogd
> symlink from /etc/rcX.d from the created rootfs?
>
>
You should be able to modify (append) the busybox recipe to not create the
symlinks in the first place. I'm not 100% sure what the correct line is
but INITSCRIPT_PARAMS is the variable you want to modify. Maybe something
like this?

INITSCRIPT_PARAMS_${PN}-syslog =3D "start 80 . stop 20 0 1 6 ."

(that should be the default except with all start runlevels removed)

 - Jussi



> The goal is to have syslog installed (in this case built into busybox),
> but disabled at boot up time.
>
> Any help is more than welcome.
>
> Tanks in advance,
> =C5=81ukasz Majewski
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c07cf082e38c3054152ca8c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 13 November 2016 at 16:51, Lukasz Majewski <span dir=3D"ltr">&lt;<a =
href=3D"mailto:l.majewski@majess.pl" target=3D"_blank">l.majewski@majess.pl=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Dear All,<br>
<br>
Maybe here I would find answer to question which puzzles me from some<br>
time.<br>
<br>
The problem:<br>
<br>
Disable syslog service on startup of sysvinit based board.<br>
(syslog is defined in e.g. /etc/rc5.d/S20syslog -&gt; /etc/init.d/syslog)<b=
r>
<br>
Syslog on my setup is provided by busybox.<br>
<br>
I was trying to find where &#39;update-rc.d ... syslog ...&#39; is called i=
n the<br>
poky (2.1.2) source tree but without any success.<br>
<br>
Then, I&#39;ve discovered that it is appended to INITSCRIPT_NAME variable<b=
r>
and further processed by update-rc.d.bbclass=C2=A0<br></blockquote><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
<br>
Is there any method/recipe which would allow just removing S20klogd<br>
symlink from /etc/rcX.d from the created rootfs?<br>
<br></blockquote><div><br></div><div>You should be able to modify (append) =
the busybox recipe to not create the symlinks in the first place. I&#39;m n=
ot 100% sure what the correct line is but=C2=A0INITSCRIPT_PARAMS is the var=
iable you want to modify. Maybe something like this?</div><div><br></div><d=
iv><div>INITSCRIPT_PARAMS_${PN}-syslog =3D &quot;start 80 . stop 20 0 1 6 .=
&quot;</div></div><div><br></div><div>(that should be the default except wi=
th all start runlevels removed)</div><div><br></div><div>=C2=A0- Jussi</div=
><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
The goal is to have syslog installed (in this case built into busybox),<br>
but disabled at boot up time.<br>
<br>
Any help is more than welcome.<br>
<br>
Tanks in advance,<br>
=C5=81ukasz Majewski<br>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--94eb2c07cf082e38c3054152ca8c--
