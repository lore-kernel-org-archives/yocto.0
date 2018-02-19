Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5EE7E00A61; Mon, 19 Feb 2018 00:35:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B70AE00D91
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 00:35:21 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id p188so10476628ioe.12
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 00:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=1ZL+UoO/nJPGoDiLCwDOvuurRrVJfli/AS5r0bT+9b0=;
	b=SdUYbqT44wUY8i+CRZugmqoVkAoG/HT4rK97nFSZgmA9D25Iovpe4K6NK/O6ne3Rwq
	3KHV82mx5yika66S6u9gnNrJ+yXeBhbdP8PKSowrRnQ6+MroKZ5tccpjbh2qrP6gvjNi
	tsp91LQHUreKFrPzXf/Mh3PJCVEMamWJr+19s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=1ZL+UoO/nJPGoDiLCwDOvuurRrVJfli/AS5r0bT+9b0=;
	b=bWF6JKd0EEbiHcZIXuP6Ld8AAnB+DPKO4IDqtU2gKegtq0m2f3I9Qmgixz2PQ7/dUK
	wukiC8tLDJOx2xTN52Z9TIA50gJw4xJVLjEa+PRNqSLZO3zOprGvr30Iepy1jBSGbB6W
	hzzbxl8zNRIrWiJ7LTBx/MwpXP5nYJC8Jzsb0ffuYktOclPxgK+YTnJV0EPVJaXZPbQC
	89G71qdXt9yNi1sSzhwF6EsJ9uB9H8YHN3UNWDVddTKnyoGU+U6p1PcCK4n54P0VnEXt
	Ajk8aKd3Uza/HtQRJ5vZssRVDP8F2+eJKwi1+4QZijrTGDqKwXQKedx6h3dcBo+TN5H2
	0jjA==
X-Gm-Message-State: APf1xPCLKRr4rCF3HmtlkgGi8xzC0T/Tx8mq9+uHSNEC4iVT76QPMCGY
	m2vZRpjMMvlvSrepzHJDCH6oPWylhND3OWCuH5VdZfGa
X-Google-Smtp-Source: AH8x225jHCkdLAGxPPRhkx4HfUuIpQ4N1AkkGttmo+SYbgIdI9Mlmo0eFmZg6fX4VLkkMUwbv1us4d3/dTc6p8fnBMw=
X-Received: by 10.107.78.11 with SMTP id c11mr11541985iob.229.1519029320758;
	Mon, 19 Feb 2018 00:35:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Mon, 19 Feb 2018 00:35:20 -0800 (PST)
In-Reply-To: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
References: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Mon, 19 Feb 2018 09:35:20 +0100
Message-ID: <CAALXFYy7nN1ZahoR_+mCLeD4U7z4zEoiNwv+mzwT8dEf+e-pmg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Removing busybox completely from the generated image
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
X-List-Received-Date: Mon, 19 Feb 2018 08:35:22 -0000
Content-Type: multipart/alternative; boundary="f403043cc168114f4b05658c9393"

--f403043cc168114f4b05658c9393
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have tried breaking apart packagegroup-core-boot, making a copy in my
custom layer, removing the line referencing busybox:

    ## VIRTUAL-RUNTIME_login_manager ?=3D "busybox"

But now bitbake complains with an error message:

    ERROR: Nothing RPROVIDES '${VIRTUAL-RUNTIME_login_manager}'

It seems "VIRTUAL-RUNTIME_login_manager" needs to be defined with a valid
option. I have tested with the option "tinylogin" but that options seems
not implemented in "rocko" branch, because I'm getting this error:

    ERROR: Nothing RPROVIDES 'tinylogin'

Is there some valid alternative available? Where are these alternatives
defined?

In general, is it posible to build yocto images without using busybox at
all?


2018-02-16 16:56 GMT+01:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:

> Hello forum!
>
> I'm trying to build a yocto image without busybox and without any busybox
> applet deployed.
>
> I have tried that configuring my distro.conf file in this way:
>
>     DISTRO_FEATURES_remove =3D " busybox"
>     VIRTUAL-RUNTIME_base-utils =3D ""
>     PREFERRED_PROVIDER_virtual/base-utils =3D ""
>
> Nonetheless, busybox binary and two related applets (syslog and udhcpc)
> are installed in the generated image:
>
>     $ rpm -qa | grep busybox
>     busybox-syslog-1.24.1-r0.corei7_64
>     busybox-1.24.1-r0.corei7_64
>     busybox-udhcpc-1.24.1-r0.corei7_64
>
> I have tried disabling syslog applet appending to my distro.conf file:
>
>     VIRTUAL-RUNTIME_syslog ?=3D ""
>
> But syslogd applet is still installed:
>
>     # ls -l /sbin/syslogd
>     lrwxrwxrwx 1 root root 19 Feb 15 14:03 /sbin/syslogd ->
> /bin/busybox.nosuid
>
> Is there some way to remove busybox completely from the generated image?
>
> Thank you in advance! :-)
>

--f403043cc168114f4b05658c9393
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have tried breaking apart packagegroup-core-boot, m=
aking a copy in my custom layer, removing the line referencing busybox:<br>=
</div><div><br></div><div><span style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 ## VIRTUA=
L-RUNTIME_login_manager ?=3D &quot;busybox&quot;</span><br></div><div><span=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline"><br></span></div><div><span style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;float:none;display:inline"><span =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">But now bitbake complains with an error message:</span>=
</span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,=
34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-space:=
normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline"><br><=
/span></span></div><div><span style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline"><span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>=C2=A0 =C2=A0 ERROR: Nothing RPROVIDES &#39;${VIRTUAL-RUNTIME_login_manage=
r}&#39;<span>=C2=A0</span></span><br></span></div><div><span style=3D"color=
:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:in=
line"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:small;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline"><span><br></span></span></span></div><div><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline"><span><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline">It seems &quot;VIRTUAL-RUNTIME_login_manager&quot; needs to be defi=
ned with a valid option. I have tested with the option &quot;tinylogin&quot=
; but that options seems not implemented in &quot;rocko&quot; branch, becau=
se I&#39;m getting this error:</span></span></span></span></div><div><span =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline"><span><span style=3D"color:rg=
b(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e"><br></span></span></span></span></div><div><span style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><sp=
an style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline"><span><span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 ERROR:=
 Nothing RPROVIDES &#39;tinylogin&#39;</span></span></span></span></div><di=
v><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline"><span><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline"><br></span></span></span></span></div><div><span style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline"><span><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">Is there som=
e valid alternative available? Where are these alternatives defined?</span>=
<br></span></span></span></div><div><span style=3D"color:rgb(34,34,34);font=
-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline"><span><span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline"><br></span></span></span></s=
pan></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline"><span><s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial;flo=
at:none;display:inline">In general, is it posible to build yocto images wit=
hout using busybox at all?</span></span></span></span></div><div><br></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-02-16 16:56 =
GMT+01:00 Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=3D"mailto:icastel=
l@nayarsystems.com" target=3D"_blank">icastell@nayarsystems.com</a>&gt;</sp=
an>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello forum!</=
div><div><br></div><div>I&#39;m trying to build a yocto image without busyb=
ox and without any busybox applet deployed.</div><div><br></div><div>I have=
 tried that configuring my distro.conf file in this way:</div><div><br></di=
v><div>=C2=A0 =C2=A0 DISTRO_FEATURES_remove =3D &quot; busybox&quot;<br></d=
iv><div>=C2=A0 =C2=A0 VIRTUAL-RUNTIME_base-utils =3D &quot;&quot;<br></div>=
<div>=C2=A0 =C2=A0 PREFERRED_PROVIDER_virtual/<wbr>base-utils =3D &quot;&qu=
ot;<br></div><div><br></div><div>Nonetheless, busybox binary and two relate=
d applets (syslog and=C2=A0udhcpc) are installed in the generated image:</d=
iv><div><br></div><div>=C2=A0 =C2=A0 $ rpm -qa | grep busybox</div><div><di=
v>=C2=A0 =C2=A0 busybox-syslog-1.24.1-r0.<wbr>corei7_64</div><div>=C2=A0 =
=C2=A0 busybox-1.24.1-r0.corei7_64</div><div>=C2=A0 =C2=A0 busybox-udhcpc-1=
.24.1-r0.<wbr>corei7_64</div></div><div><br></div><div>I have tried disabli=
ng syslog applet appending to my distro.conf file:</div><div><br></div><div=
>=C2=A0 =C2=A0=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline">VIRTUAL-RUNTIME_syslog ?=3D &=
quot;&quot;</span></div><div><br></div><div>But syslogd applet is still ins=
talled:<br></div><div><br></div><div><div>=C2=A0 =C2=A0 # ls -l /sbin/syslo=
gd=C2=A0</div><div>=C2=A0 =C2=A0 lrwxrwxrwx 1 root root 19 Feb 15 14:03 /sb=
in/syslogd -&gt; /bin/busybox.nosuid</div></div><div><br></div><div>Is ther=
e some way to remove busybox completely from the generated image?</div><div=
><br></div><div>Thank you in advance! :-)</div></div></blockquote></div>
</div></div>

--f403043cc168114f4b05658c9393--
