Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B13EEE006CC
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 08:55:20 -0800 (PST)
Received: by mail-ee0-f46.google.com with SMTP id e49so159069eek.19
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 08:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=ItI8yJ25kTPlevpNjuKDekMJrQgPxxnIBwJ+PmU40hc=;
	b=TrnCnIqjkoR9plpkYurmjGjVULTFdcYRSfCDKQMhKfGq9XvVQmmwjUAykR/zttD4yU
	hkA4hQqfMNBOccsxQkYYKKJc1XYjEhHkBewnwj1U+axFcdpltbd/R5PIarH+4gSU75Fa
	luYUXbwI62o5fnRWOvxrW3O8tpcGYL2AbwpaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=ItI8yJ25kTPlevpNjuKDekMJrQgPxxnIBwJ+PmU40hc=;
	b=OszqdraQQnktbBy/pq1nMcJZaZn0AUBadEKlLqRHvCTgIjLEnCtJ4zkh5c2A0P9U4k
	O1V2JEBbM5PAlBQT7ZNj8ruwmgjG8AVAsr/f1iHtrwmG1QIVZLwK6QohEGOa+POngBT5
	JcHSmbiTqEzg9XjdzdM55X8eL0lhZogfp79pv76bpVZZLvJ+kWAUiuCvC5Cr7RbZ+hBj
	1y7MiceDDL/K1du5qoALzhX1xn+6kz/i120yv2bY0pDjtGk6cYs13NaZJK/u4SI7Pw9p
	UipbHq7dbP7kf9WZI4pY+b03HGNfdTyibxrnbsO8TsOnnr7klMOt605oLw6SP5hURvv6
	1bng==
MIME-Version: 1.0
X-Received: by 10.14.219.6 with SMTP id l6mr64115894eep.23.1360688118418; Tue,
	12 Feb 2013 08:55:18 -0800 (PST)
Received: by 10.223.197.195 with HTTP; Tue, 12 Feb 2013 08:55:18 -0800 (PST)
In-Reply-To: <2610234.Af8hC8zhhu@helios>
References: <CA+gsK-oajsnY7o0BZbXvn_Yh70o5fwUnVOU+HCr6qGqXZXPPow@mail.gmail.com>
	<CA+gsK-qAD49kkTScEAjKWs5zvsSyskKqumFqzj2j7LfHs43VJQ@mail.gmail.com>
	<CA+gsK-rZKVkXe762QUa7mGV2Vc0owKDQiDy3zor+7YJZb-cHQg@mail.gmail.com>
	<2610234.Af8hC8zhhu@helios>
Date: Tue, 12 Feb 2013 08:55:18 -0800
Message-ID: <CA+gsK-oOfyC91P9GwFrX-ZaQPrV6ijKG+m0bEj=ecH1UepNaYA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQk/tmRuE/OXZFOvhIQ1uf7cJq0GnX/kGFsNrBdH1F2UJD0ozwHZ58j1IFVgq9HhU9iSRH/u
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [danny] core-image-minimal-dev is missing dev packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Feb 2013 16:55:21 -0000
Content-Type: multipart/alternative; boundary=047d7b603c14f2cd6e04d589e3ab

--047d7b603c14f2cd6e04d589e3ab
Content-Type: text/plain; charset=ISO-8859-1

I will look into this further and then file a bug report with the details.

What I mean is that with Denzil a minimal-dev image could be used as a
sysroot for ADT. With an external toolchain you are able to compile and
link userspace applications.

With Danny this does not for an x86 minimal-dev image anymore. Linking
fails because in /usr/lib the directory i586-poky-linux is not present. (ld
complains that it cannot find crtbegin.o etc.) And possibly other files are
missing which I cannot tell because I have not yet had time to dig through
everything.

However, for an ARM minimal-dev image that works. /usr/lib contains as
expected arm-poky-linux-gnueabi.

I am not sure what the status is for PPC and MIPS. I have not tried them.

:rjs


On Tue, Feb 12, 2013 at 1:42 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Saturday 09 February 2013 09:25:09 Rudolf Streif wrote:
> > I have not verified every single dev package but the linker files in
> > /usr/lib/<arch> and related are missing. You cannot link against a dev
> > image sysroot. That used to work.
>
> I'm not quite sure what you mean, but if this is a regression would you
> mind
> filing a bug for this in bugzilla if you haven't already?
>
> Thanks,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
-- 
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b603c14f2cd6e04d589e3ab
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I will look into this further and then file a bug report w=
ith the details.<div><br></div><div style>What I mean is that with Denzil a=
 minimal-dev image could be used as a sysroot for ADT. With an external too=
lchain you are able to compile and link userspace applications.</div>
<div style><br></div><div style>With Danny this does not for an x86 minimal=
-dev image anymore. Linking fails because in /usr/lib the directory=A0i586-=
poky-linux is not present. (ld complains that it cannot find crtbegin.o etc=
.) And possibly other files are missing which I cannot tell because I have =
not yet had time to dig through everything.</div>
<div style><br></div><div style>However, for an ARM minimal-dev image that =
works. /usr/lib contains as expected=A0arm-poky-linux-gnueabi.</div><div st=
yle><br></div><div style>I am not sure what the status is for PPC and MIPS.=
 I have not tried them.</div>
<div style><br></div><div style>:rjs</div></div><div class=3D"gmail_extra">=
<br><br><div class=3D"gmail_quote">On Tue, Feb 12, 2013 at 1:42 AM, Paul Eg=
gleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.co=
m" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br=
>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Saturday 09 February 20=
13 09:25:09 Rudolf Streif wrote:<br>
&gt; I have not verified every single dev package but the linker files in<b=
r>
&gt; /usr/lib/&lt;arch&gt; and related are missing. You cannot link against=
 a dev<br>
&gt; image sysroot. That used to work.<br>
<br>
</div>I&#39;m not quite sure what you mean, but if this is a regression wou=
ld you mind<br>
filing a bug for this in bugzilla if you haven&#39;t already?<br>
<br>
Thanks,<br>
<div class=3D"HOEnZb"><div class=3D"h5">Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
--=A0<br><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b=
></font><div><font face=3D"arial, helvetica, sans-serif">Director of Embedd=
ed Solutions</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b603c14f2cd6e04d589e3ab--
