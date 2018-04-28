Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EAB9E009F8; Sat, 28 Apr 2018 04:11:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DADAE009DC
	for <yocto@yoctoproject.org>; Sat, 28 Apr 2018 04:11:25 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id p3-v6so4946918itc.0
	for <yocto@yoctoproject.org>; Sat, 28 Apr 2018 04:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=POUzk0hZfjoaKKBaghDWNCPHJgNksZJma/Kc3ybqOgE=;
	b=KXO4Jwni9E+NmJbL2LieWbpYtn54DCZvTB3kt0uTxPtUEMyutEGORBWRS8ytFTvjUo
	av9HcLoOXJsr9VN6NWFOARRlYQ32cNHRMdfHx/Q5aKa8MBa/hZ+cfeak7QVkRZwfAmou
	ngPUeJq+O8RA46+jeg3BA4NnOCLdLFxM1olkXZZ60h2KQjhLfbHMri1vbTAyTZ2nIC0o
	N3t0DM/AjT/LpqP+th7TnYE1wOKrlEEnKh0JOXddls030+VxXkzbYnEwnGIgMV3/XXju
	yLO9x4Q7bY6zRwIyjNx9sAENzdrEtQ7W4xynBEaAn2aBDQf9DiQi3MI7IUkP1zJP3W0r
	LeEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=POUzk0hZfjoaKKBaghDWNCPHJgNksZJma/Kc3ybqOgE=;
	b=DrvRRFli1+1aVoUvsMFqvJKdIiM1yn+Bc3IJhX27g4k2fUaFefzahIEVUmrIdPrkKl
	gSF4n3SCmlrSBMq7T5EeZua9JIlayp+4iErPQ2/xIQ1UjwloNl0vbkkhGaZ63UngjCa5
	VydmgyzidwHMOy+eXv2Qv68+LqVY2riSoxF53aXcZ+vOzsIiqUv+D3WIOjEFFgNnZdAb
	mW5QfBB/RVFSCUj/QCHJmbKX7rSSlnTiaPzLcwzKrlnkOkXxrwrCXG4uqW6Ybf6fsiMI
	VqIoNaB18MC5kZfdCWob3P+DUUTtN8Xb/1GfF+pHHRgdB2pAM0eIaev+kKBGbCQjA/mg
	mSqw==
X-Gm-Message-State: ALQs6tDTQcVzh2i0YvpKaISkUhYXjTw9bcI9HkXrDusvSMiBS/xOGNpZ
	QOnMuOve/m6Z4ZeNrkRoMfRaSD9iqUxl61IShxV8
X-Google-Smtp-Source: AB8JxZppk60Thv0uQvqfTWgy+0+1fH4y4LrwAaGD7ugO+RPvTOf8Ht84C7V3m7E1Z7GHt6eJa3L2RZ0j8AV7PVwyMEw=
X-Received: by 2002:a24:740a:: with SMTP id
	o10-v6mr5518496itc.82.1524913884601; 
	Sat, 28 Apr 2018 04:11:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:69d5:0:0:0:0:0 with HTTP; Sat, 28 Apr 2018 04:11:24
	-0700 (PDT)
In-Reply-To: <35bcadb3-3ceb-94a1-fd5b-80da39e62c11@windriver.com>
References: <CA+FhBv87F=hTjo5R3kt1KiK4oghwxEgxBGh5NEAUdHFoLLjvbQ@mail.gmail.com>
	<CAJ86T=Ui20qYO0p_WFpZSjJAK6an2-i_bmhM+Oyp+avWbt5fiA@mail.gmail.com>
	<35bcadb3-3ceb-94a1-fd5b-80da39e62c11@windriver.com>
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Sat, 28 Apr 2018 14:11:24 +0300
Message-ID: <CA+FhBv-mjP-esO0mUJBdAKYp_W1aEOdrbjkLo8-uqbUqpWpLJQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: LINUX_VERSION issue in recipe
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
X-List-Received-Date: Sat, 28 Apr 2018 11:11:26 -0000
Content-Type: multipart/alternative; boundary="00000000000067a4dd056ae6ae12"

--00000000000067a4dd056ae6ae12
Content-Type: text/plain; charset="UTF-8"

 OK, thanks for the clarification guys!

I think I'll just overwrite the keymaps recipe script to get rid of the
kernel version and continue from here =)

Cheers,
-Damien


On Sat, Apr 28, 2018 at 5:20 AM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

>
>
> On 4/27/2018 5:34 PM, Andre McCurdy wrote:
>
>> On Fri, Apr 27, 2018 at 3:44 AM, Damien LEFEVRE <lefevre.da@gmail.com>
>> wrote:
>>
>>> Hi,
>>>
>>> This must be a stupid basic question. I have the following recipe append:
>>>
>>> keymaps_1.0.bbappend
>>> ------------------------------------------------------------
>>> -----------------
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> SRC_URI_append = " file://keymaps.service \
>>>                     file://keymap.sh \
>>> "
>>>
>>> do_install_append() {
>>>      install -d ${D}${sysconfdir}
>>>      ln -sf /usr/share/keymaps/i386/qwerty/fi.map.gz
>>> ${D}${sysconfdir}/keymap-${LINUX_VERSION}.map.gz
>>>
>>>      install -d ${D}${systemd_system_unitdir}
>>>      install -m 0644 ${WORKDIR}/keymaps.service
>>> ${D}${systemd_system_unitdir}
>>> }
>>>
>>> FILES_${PN} += " ${sysconfdir}/* \
>>>                   ${systemd_system_unitdir}/* \
>>> "
>>>
>>> inherit systemd
>>> SYSTEMD_SERVICE_${PN} = "${PN}.service"
>>> ------------------------------------------------------------
>>> -----------------
>>>
>>> The LINUX_VERSION is not expanded and the final symlink name becomes
>>> /etc/keymap-.map.gz.
>>>
>>> What's correct way to get the linux version in the recipe files?
>>>
>>
>> In general, there isn't a correct way to do that. The LINUX_VERSION
>> variable is defined within the kernel recipe and other recipes won't
>> have access to it.
>>
>> A core concept in OE is that recipes build independently of each
>> other. In this case, since the keymaps recipe has no direct dependency
>> on the kernel, you should not expect the keymaps recipe to be rebuilt
>> (or affected in any way) when the kernel or kernel version changes.
>>
>
> Yep. Unless you inherit the kernel build classes there's no
> easy way to do this. But if the kernel classes are inherited,
> then some of the variables like KERNEL_VERSION become available
> to use .. but of course, you've just tightly coupled things to
> the kernel.
>
> Cheers,
>
> Bruce
>
>
>
>> The keymaps init script ( meta/recipes-bsp/keymaps/files/keymap.sh )
>> detects the kernel version dynamically at runtime. If you need a
>> kernel version specific symlink in your target rootfs, maybe you could
>> create it at runtime from your keymaps service file?
>>
>>


-- 
___________________________

        LEFEVRE Damien
        lefevre.da@gmail.com
        http://www.lfdm.net
  ___________________________

--00000000000067a4dd056ae6ae12
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
2.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">OK, thanks for the clarification guys!=C2=A0</sp=
an><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif=
;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial">I think I&#39;ll just overwrite the=C2=A0<span style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:in=
line">keymaps recipe script to get rid of the kernel version and continue f=
rom here =3D)</span><div><span style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline"><br></span></div><div><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12=
.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">Cheers,</span></div><div><span style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e">-Damien</span></div></div>

<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat,=
 Apr 28, 2018 at 5:20 AM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@windri=
ver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=
=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 4/27/2018 5:34 PM, Andre McCurdy wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Fri, Apr 27, 2018 at 3:44 AM, Damien LEFEVRE &lt;<a href=3D"mailto:lefev=
re.da@gmail.com" target=3D"_blank">lefevre.da@gmail.com</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
This must be a stupid basic question. I have the following recipe append:<b=
r>
<br>
keymaps_1.0.bbappend<br>
------------------------------<wbr>------------------------------<wbr>-----=
------------<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
SRC_URI_append =3D &quot; file://keymaps.service \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file:=
//keymap.sh \<br>
&quot;<br>
<br>
do_install_append() {<br>
=C2=A0 =C2=A0 =C2=A0install -d ${D}${sysconfdir}<br>
=C2=A0 =C2=A0 =C2=A0ln -sf /usr/share/keymaps/i386/qwerty<wbr>/fi.map.gz<br=
>
${D}${sysconfdir}/keymap-${LIN<wbr>UX_VERSION}.map.gz<br>
<br>
=C2=A0 =C2=A0 =C2=A0install -d ${D}${systemd_system_unitdir}<br>
=C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/keymaps.service ${D}${system=
d_system_unitdir}<br>
}<br>
<br>
FILES_${PN} +=3D &quot; ${sysconfdir}/* \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${systemd_sy=
stem_unitdir}/* \<br>
&quot;<br>
<br>
inherit systemd<br>
SYSTEMD_SERVICE_${PN} =3D &quot;${PN}.service&quot;<br>
------------------------------<wbr>------------------------------<wbr>-----=
------------<br>
<br>
The LINUX_VERSION is not expanded and the final symlink name becomes<br>
/etc/keymap-.map.gz.<br>
<br>
What&#39;s correct way to get the linux version in the recipe files?<br>
</blockquote>
<br>
In general, there isn&#39;t a correct way to do that. The LINUX_VERSION<br>
variable is defined within the kernel recipe and other recipes won&#39;t<br=
>
have access to it.<br>
<br>
A core concept in OE is that recipes build independently of each<br>
other. In this case, since the keymaps recipe has no direct dependency<br>
on the kernel, you should not expect the keymaps recipe to be rebuilt<br>
(or affected in any way) when the kernel or kernel version changes.<br>
</blockquote>
<br></div></div>
Yep. Unless you inherit the kernel build classes there&#39;s no<br>
easy way to do this. But if the kernel classes are inherited,<br>
then some of the variables like KERNEL_VERSION become available<br>
to use .. but of course, you&#39;ve just tightly coupled things to<br>
the kernel.<br>
<br>
Cheers,<br>
<br>
Bruce<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
The keymaps init script ( meta/recipes-bsp/keymaps/files<wbr>/keymap.sh )<b=
r>
detects the kernel version dynamically at runtime. If you need a<br>
kernel version specific symlink in your target rootfs, maybe you could<br>
create it at runtime from your keymaps service file?<br>
<br>
</blockquote>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">_________=
__________________<br>=C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 LEFEVRE Damien<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:lefevre.da@gmail.com" targ=
et=3D"_blank">lefevre.da@gmail.com</a><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a hr=
ef=3D"http://www.lfdm.net" target=3D"_blank">http://www.lfdm.net</a>
<br>=C2=A0 ___________________________</div>
</div>

--00000000000067a4dd056ae6ae12--
