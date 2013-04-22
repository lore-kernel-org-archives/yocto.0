Return-Path: <katutxakurra@gmail.com>
Received: from mail-ia0-f196.google.com (mail-ia0-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05652E014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:39:27 -0700 (PDT)
Received: by mail-ia0-f196.google.com with SMTP id i38so370509iae.11
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:cc:content-type;
	bh=OX0KAANoiMCRjNlFsOV6Lup5GapUxh0ttgFMlfbiR34=;
	b=s+DFg4jX098THZEzAoIeulVIcPkxZJndEo8gtkL6Bcgf0XVmZ4hDVnuL/e6bmLnhbP
	fpcvrINIMEsQtFE40LN4Qq1/x3kKJimctqyqyiPGEzutixIIGevICdKfDxKDYemZXPxR
	a41yzXZN0JzoUD3TsUmrZFA1Ph9klIW/FnQ5VvU/TKjQffx/O+pYxTD0tezEWfkXm4Ah
	LBkSruGwvQScbZzZauV+G+Hlsdu9VzY/dgaM6gXTXM/JK0t24LYzMnbFxojZKd+VVK0R
	s5Hf104ph7bZR0S6h2W6GgNhY/Xp6HUSm/cV9QJlBpSt2TvYLMOqRtwkUigTTzii7s5h
	3j/A==
MIME-Version: 1.0
X-Received: by 10.50.30.99 with SMTP id r3mr2484889igh.109.1366634367219; Mon,
	22 Apr 2013 05:39:27 -0700 (PDT)
Received: by 10.50.53.212 with HTTP; Mon, 22 Apr 2013 05:39:26 -0700 (PDT)
In-Reply-To: <CAM1ZcoVrpr8BX6eG9V3X_RMXNv0txTH3XMgjOgnn8vxQDt_qhA@mail.gmail.com>
References: <CAM1ZcoW1aaZUZW=t2J+GbNjyYQQPjSpRoGfJC9u-dh2ZJXFQoQ@mail.gmail.com>
	<2626269.NDBbjkYV5W@helios>
	<CAM1ZcoVrpr8BX6eG9V3X_RMXNv0txTH3XMgjOgnn8vxQDt_qhA@mail.gmail.com>
Date: Mon, 22 Apr 2013 13:39:26 +0100
Message-ID: <CAM1ZcoU9NSdNG7QP1FgyG5-ir==eUn4i6JJuoTYD+F+vo64-Hw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: libsnmp-dev in yocto built image
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
X-List-Received-Date: Mon, 22 Apr 2013 12:39:28 -0000
Content-Type: multipart/alternative; boundary=047d7bd6c1ccff4d0204daf25bcc

--047d7bd6c1ccff4d0204daf25bcc
Content-Type: text/plain; charset=ISO-8859-1

I edited the file
~/yocto/poky/meta-openembedded/meta-oe/recipes-extended/net-snmp/net-snmp.inc
and I changed
EXTENDPV for EXTENDPKGV in all the places (4).
After that, bitbaking the gumstix-console-image with IMAGE_INSTALL +=
"net-snmp-dev"
(and others) in the build/conf/local.conf worked!
This is with net-snmp_5.7.1.bb
Thanks for your help Paul.
Hob is a very useful tool too.


2013/4/19 Katu Txakur <katutxakurra@gmail.com>

> Thanks Paul,
>
> I followed these instructions
> https://github.com/gumstix/Gumstix-YoctoProject-Repo
> The recipe was in
> ~/yocto/poky/meta-openembedded/meta-oe/recipes-extended/net-snmp/
> net-snmp_5.7.1.bb
> I'm using
> BB version 1.15.1
> Distro Poky 1.2.1
>
> Cheers
>
>
>
> 2013/4/19 Paul Eggleton <paul.eggleton@linux.intel.com>
>
>> On Friday 19 April 2013 15:44:39 Katu Txakur wrote:
>> > I want to include net-snmp in an image that I'm building with the Yocto
>> > project (gumstix-console-image). When I add it net-snmp-client or
>> server to
>> > the local.conf I get this error when bitbake is creating the rootfs.
>> >
>> > Processing perl-module-text-soundex...
>> >
>> > error: Failed dependencies:
>> >
>> > net-snmp-server = ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a
>> >
>> > net-snmp-client = ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a
>>
>> We don't use EXTENDPV anymore; EXTENDPV is not defined and that's why
>> you're
>> seeing that unexpanded value. Where did you get your net-snmp recipe from?
>> Which version of the build system are you using?
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>
>

--047d7bd6c1ccff4d0204daf25bcc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I edited the file=A0<span style=3D"font-family:arial,sans-=
serif;font-size:13px">~/yocto/poky/meta-</span><span style=3D"font-family:a=
rial,sans-serif;font-size:13px">openembedded/meta-oe/recipes-</span><span s=
tyle=3D"font-family:arial,sans-serif;font-size:13px">extended/net-snmp/net-=
snmp.inc and I changed</span><div>
<span style=3D"font-family:arial,sans-serif;font-size:13px">EXTENDPV for=A0=
</span><font face=3D"arial, sans-serif">EXTENDPKGV in all the places (4).</=
font><span style=3D"font-family:arial,sans-serif;font-size:13px"><br></span=
></div>
<div style><font face=3D"arial, sans-serif">After that, bitbaking the gumst=
ix-console-image with IMAGE_INSTALL +=3D &quot;</font><span style=3D"font-f=
amily:arial,sans-serif">net-snmp-dev&quot; (and others) in the build/conf/l=
ocal.conf worked!</span></div>
<div style><span style=3D"font-family:arial,sans-serif">This is with=A0</sp=
an><span style=3D"font-family:arial,sans-serif"><a href=3D"http://net-snmp_=
5.7.1.bb">net-snmp_5.7.1.bb</a></span></div><div style><font face=3D"arial,=
 sans-serif">Thanks for your help Paul.</font></div>
<div style><font face=3D"arial, sans-serif">Hob is a very useful tool too.<=
/font></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_qu=
ote">2013/4/19 Katu Txakur <span dir=3D"ltr">&lt;<a href=3D"mailto:katutxak=
urra@gmail.com" target=3D"_blank">katutxakurra@gmail.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks Paul,<div><br></div>=
<div>I followed these instructions=A0<a href=3D"https://github.com/gumstix/=
Gumstix-YoctoProject-Repo" target=3D"_blank">https://github.com/gumstix/Gum=
stix-YoctoProject-Repo</a></div>
<div>The recipe was in</div>
<div>~/yocto/poky/meta-openembedded/meta-oe/recipes-extended/net-snmp/<a hr=
ef=3D"http://net-snmp_5.7.1.bb" target=3D"_blank">net-snmp_5.7.1.bb</a><br>=
</div><div>I&#39;m using=A0</div><div>BB version 1.15.1</div><div>Distro Po=
ky 1.2.1</div>

<div><br></div><div>Cheers</div><div><br></div></div><div class=3D"HOEnZb">=
<div class=3D"h5"><div class=3D"gmail_extra"><br><br><div class=3D"gmail_qu=
ote">2013/4/19 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.e=
ggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a=
>&gt;</span><br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Friday 19 April 2013 15:44:39 Katu T=
xakur wrote:<br>
&gt; I want to include net-snmp in an image that I&#39;m building with the =
Yocto<br>
&gt; project (gumstix-console-image). When I add it net-snmp-client or serv=
er to<br>
&gt; the local.conf I get this error when bitbake is creating the rootfs.<b=
r>
&gt;<br>
&gt; Processing perl-module-text-soundex...<br>
&gt;<br>
&gt; error: Failed dependencies:<br>
&gt;<br>
&gt; net-snmp-server =3D ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.arm=
v7a<br>
&gt;<br>
&gt; net-snmp-client =3D ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.arm=
v7a<br>
<br>
</div>We don&#39;t use EXTENDPV anymore; EXTENDPV is not defined and that&#=
39;s why you&#39;re<br>
seeing that unexpanded value. Where did you get your net-snmp recipe from?<=
br>
Which version of the build system are you using?<br>
<br>
Cheers,<br>
Paul<br>
<span><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7bd6c1ccff4d0204daf25bcc--
