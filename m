Return-Path: <henriklindblomster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83917E00D3A; Thu,  2 May 2019 11:15:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (henriklindblomster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E78EE00754
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 11:15:16 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id o39so2962694ota.6
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 11:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=EaNFlORKnBS7aohX7eDL3/di6Ao8RxnSbbv9HaOHNfM=;
	b=EuGrxqvhqtbwvk3pHw9E2YXqd19+3QPF/j2NlULybVE7qxPL6RBxI44CIvYdtd0G1z
	mYUYlYui5lVKfhRA0/VTQ1O2yL2wgvQKYLNAc7RR+N4lpZ7nRKwSzVt3ZooensKZg7Pi
	cku2iqKdURGsYr2lgniz5Yakr5YUEQBPKPxTSyiLM0QMKQz0lR6wZ+C3WrpINDuLSo+g
	Fm7rxnfoqTgs7DnHYrtF89Kya5mNSv4ag3/PC/A1grEkPnKo/jW6qhuA3j9zJ6IlaxC6
	svVqAVBAH+Z3zIbilaNceW4swj9NH8bpUDJveyOkMV2/GyaWqi7GZN2JIkvZ9q9GmGIO
	/nWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=EaNFlORKnBS7aohX7eDL3/di6Ao8RxnSbbv9HaOHNfM=;
	b=Ki0Pey4SWZWRacwWvtbFdJ0dzBT31tmnlmlV6RZ/H4n5Kzyemdmkm+rNgR7eiLBozK
	MnBCvbbq+Aed4IYllvIbjMteGarDqY/6wFFYb42dAGO3+ZDlCP6Y1j7ToeVxr4nNg8IY
	65o05Sy3ksUeV4SUI/GSlR4TUxFqLIwi6pBRi6lBl10QE58eFcWplsUnJJMxie3ahodt
	MR6iuBM7oJnxH9dXBNHHN1EehBH4Brw2U4ULloPIe09hI47UHt2EpTWuwLFr5sWK/M/5
	Z64p2n58zo8AUG7ytXhWxuPEcNvjaa+wuP+u/llbQw6qsVhOURwoJEqtWorlBt8ZsxMB
	Wa1Q==
X-Gm-Message-State: APjAAAUzFA24pe9AV+oeNNynkCgoFycdjQ6FW/Cq0pA7Cif40uwTKhUr
	zJ9pL+D7ZiyEZcDh0bvLYkDr+koFhO4sO948lV4=
X-Google-Smtp-Source: APXvYqyQ3Yp10szb6hTgtomvjpp+hDAacK9MrPBA9Oy1VdR4z4E7ReWgY7JP1WLmSJ3tYpJb2G5ruDKObL1E+vmi04Q=
X-Received: by 2002:a05:6830:11c2:: with SMTP id
	v2mr3490390otq.161.1556820915197; 
	Thu, 02 May 2019 11:15:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWS8L-dByznaDUALrZ2_Qt_Q0mXJ6uuGoEyQ=EoC2HiHUA@mail.gmail.com>
	<CAHSUxjR=gitPU=663Df+3=wZ2gqU1vDbt1viKmLCrA7Q9MWxUA@mail.gmail.com>
In-Reply-To: <CAHSUxjR=gitPU=663Df+3=wZ2gqU1vDbt1viKmLCrA7Q9MWxUA@mail.gmail.com>
From: Henrik Lindblom <henriklindblomster@gmail.com>
Date: Thu, 2 May 2019 21:15:04 +0300
Message-ID: <CAOgGgERZz36zceTjoNUShi-vjn9VC+Mvjw339xzVtTDHMp2MCA@mail.gmail.com>
To: Timothy Froehlich <tfroehlich@archsys.io>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: System service
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
X-List-Received-Date: Thu, 02 May 2019 18:15:17 -0000
Content-Type: multipart/alternative; boundary="000000000000a11ba90587eb9df3"

--000000000000a11ba90587eb9df3
Content-Type: text/plain; charset="UTF-8"

> Looks like it's dropping the service in ${sysconfdir}/init.d which
> resolves to /etc/init.d. I'm not sure that systemd won't look into
> init.d for services.

It doesn't.

> The standard place to put them is ${D}/${systemd_system_unitdir},
> which resolves to /lib/systemd/system.

Systemd's unit search path is documented in

https://www.freedesktop.org/software/systemd/man/systemd.unit.html

but the ones I've personally used most are /usr/lib/systemd/user and
/etc/systemd/system. These are a personal preference more than
anything else.

>> do_install_append() {
>>   install -d ${D}${sysconfdir}/init.d/
>>   install -m 0755 ${WORKDIR}/ofono ${D}${sysconfdir}/init.d/ofono
>> }

do_install() seems to be installing only non-systemd ofono shell
script in.

>> FILES_${PN} += "${systemd_unitdir}"

This line is redundant, AFAIK, since systemd.bbclass will handle
packaging for you, assuming you install the service files that you
advertise in SYSTEMD_SERVICE_${PN}. However, as I'm writing this from
memory, I recommend you skim through the class definition and check
for further details there.

Cheers,
Henrik

On Thu, May 2, 2019 at 8:28 PM Timothy Froehlich <tfroehlich@archsys.io>
wrote:

> Looks like it's dropping the service in ${sysconfdir}/init.d which
> resolves to /etc/init.d. I'm not sure that systemd won't look into init.d
> for services. The standard place to put them
> is ${D}/${systemd_system_unitdir}, which resolves to /lib/systemd/system.
>
> Also, check the "SYSTEMD_AUTO_ENABLE_pn-ofono" variable for that recipe.
> The systemd class sets it to "enable" by default, but something else could
> be overriding it and setting it to "disable".  Alternatively, confirm that
> the service isn't actually starting up and failing. It may be that you're
> restarting it once the system is fully booted and everything ofono needs is
> now ready.
>
> On Thu, May 2, 2019 at 7:55 AM JH <jupiter.hce@gmail.com> wrote:
>
>> Hi,
>>
>> The official ofono.inc recipe defines SYSTEMD_SERVICE_${PN} =
>> "ofono.service", but when I built the image, the system service does
>> not start ofono daemon automatically, I have to run the ofono daemon
>> manually. What I could be missing here? Here is the ofono recipes,
>> sorry if I need to ask ofono mailing list.
>>
>> $ cat ofono.inc
>> HOMEPAGE = "http://www.ofono.org"
>> SUMMARY  = "open source telephony"
>> DESCRIPTION = "oFono is a stack for mobile telephony devices on Linux.
>> oFono supports speaking to telephony devices through specific drivers,
>> or with generic AT commands."
>> LICENSE  = "GPLv2"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
>>
>>
>> file://src/ofono.h;beginline=1;endline=20;md5=3ce17d5978ef3445def265b98899c2ee"
>>
>> inherit autotools pkgconfig update-rc.d systemd bluetooth
>> gobject-introspection-data
>>
>> DEPENDS  = "dbus glib-2.0 udev mobile-broadband-provider-info"
>>
>> INITSCRIPT_NAME = "ofono"
>> INITSCRIPT_PARAMS = "defaults 22"
>>
>> PACKAGECONFIG ??= "\
>>     ${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)} \
>>     ${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', 'bluez', '', d)}
>> \
>>     "
>> PACKAGECONFIG[systemd] =
>> "--with-systemdunitdir=${systemd_unitdir}/system/,--with-systemdunitdir="
>> PACKAGECONFIG[bluez] = "--enable-bluetooth, --disable-bluetooth, ${BLUEZ}"
>>
>> EXTRA_OECONF += "--enable-test"
>>
>> SYSTEMD_SERVICE_${PN} = "ofono.service"
>>
>> do_install_append() {
>>   install -d ${D}${sysconfdir}/init.d/
>>   install -m 0755 ${WORKDIR}/ofono ${D}${sysconfdir}/init.d/ofono
>> }
>>
>> PACKAGES =+ "${PN}-tests"
>>
>> RDEPENDS_${PN} += "dbus"
>> RRECOMMENDS_${PN} += "kernel-module-tun mobile-broadband-provider-info"
>>
>> FILES_${PN} += "${systemd_unitdir}"
>> FILES_${PN}-tests = "${libdir}/${BPN}/test"
>> RDEPENDS_${PN}-tests = "python3 python3-dbus"
>> RDEPENDS_${PN}-tests += "${@bb.utils.contains('GI_DATA_ENABLED',
>> 'True', 'python3-pygobject', '', d)}"
>>
>> Thank you.
>>
>> - jupiter
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
> Tim Froehlich
> Embedded Linux Engineer
> tfroehlich@archsys.io
> 215-218-8955
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000a11ba90587eb9df3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>&g=
t; Looks like it&#39;s dropping the service in ${sysconfdir}/init.d which</=
div><div>&gt; resolves to /etc/init.d. I&#39;m not sure that systemd won&#3=
9;t look into</div><div>&gt; init.d for services.=C2=A0</div><div><br></div=
><div>It doesn&#39;t.=C2=A0</div><div><br></div><div>&gt; The standard plac=
e to put them is ${D}/${systemd_system_unitdir},</div><div>&gt; which resol=
ves to /lib/systemd/system.</div><div><br></div><div>Systemd&#39;s unit sea=
rch path is documented in</div><div><br></div><div><a href=3D"https://www.f=
reedesktop.org/software/systemd/man/systemd.unit.html">https://www.freedesk=
top.org/software/systemd/man/systemd.unit.html</a>=C2=A0</div><div><br></di=
v><div>but the ones I&#39;ve personally used most are /usr/lib/systemd/user=
 and</div><div>/etc/systemd/system. These are a personal preference more th=
an</div><div>anything else.</div><div><br></div><div>&gt;&gt; do_install_ap=
pend() {</div><div>&gt;&gt;=C2=A0 =C2=A0install -d ${D}${sysconfdir}/init.d=
/</div><div>&gt;&gt;=C2=A0 =C2=A0install -m 0755 ${WORKDIR}/ofono ${D}${sys=
confdir}/init.d/ofono</div><div>&gt;&gt; }</div><div><br></div><div>do_inst=
all() seems to be installing only non-systemd ofono shell</div><div>script =
in.</div><div><br></div><div>&gt;&gt; FILES_${PN} +=3D &quot;${systemd_unit=
dir}&quot;</div><div><br></div><div><div><div>This line is redundant, AFAIK=
, since systemd.bbclass will handle</div><div>packaging for you, assuming y=
ou install the service files that you</div><div>advertise in SYSTEMD_SERVIC=
E_${PN}. However, as I&#39;m writing this from</div><div>memory, I recommen=
d you skim through the class definition and check</div><div>for further det=
ails there.</div></div></div><div><br></div><div>Cheers,</div><div>Henrik</=
div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, May 2, 2019 at 8:28 PM Timothy Froehlich &lt;=
<a href=3D"mailto:tfroehlich@archsys.io">tfroehlich@archsys.io</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div dir=3D"ltr"><div>Looks like it&#39;s dropping the service in ${sys=
confdir}/init.d which resolves to /etc/init.d. I&#39;m not sure that system=
d won&#39;t look into init.d for services. The standard place to put them i=
s=C2=A0${D}/${systemd_system_unitdir}, which resolves to /lib/systemd/syste=
m.=C2=A0</div><div><br></div><div dir=3D"ltr">Also, check the &quot;SYSTEMD=
_AUTO_ENABLE_pn-ofono&quot; variable for that recipe. The systemd class set=
s it to &quot;enable&quot; by default, but something else could be overridi=
ng it and setting it to &quot;disable&quot;.=C2=A0 Alternatively, confirm t=
hat the service isn&#39;t actually starting up and failing. It may be that =
you&#39;re restarting it once the system is fully booted and everything ofo=
no needs is now ready.</div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2019 at 7:55 AM JH &lt;<a =
href=3D"mailto:jupiter.hce@gmail.com" target=3D"_blank">jupiter.hce@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Hi,<br>
<br>
The official ofono.inc recipe defines SYSTEMD_SERVICE_${PN} =3D<br>
&quot;ofono.service&quot;, but when I built the image, the system service d=
oes<br>
not start ofono daemon automatically, I have to run the ofono daemon<br>
manually. What I could be missing here? Here is the ofono recipes,<br>
sorry if I need to ask ofono mailing list.<br>
<br>
$ cat ofono.inc<br>
HOMEPAGE =3D &quot;<a href=3D"http://www.ofono.org" rel=3D"noreferrer" targ=
et=3D"_blank">http://www.ofono.org</a>&quot;<br>
SUMMARY=C2=A0 =3D &quot;open source telephony&quot;<br>
DESCRIPTION =3D &quot;oFono is a stack for mobile telephony devices on Linu=
x.<br>
oFono supports speaking to telephony devices through specific drivers,<br>
or with generic AT commands.&quot;<br>
LICENSE=C2=A0 =3D &quot;GPLv2&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Deb723b61539feef013de476e68b=
5c50a \<br>
<br>
file://src/ofono.h;beginline=3D1;endline=3D20;md5=3D3ce17d5978ef3445def265b=
98899c2ee&quot;<br>
<br>
inherit autotools pkgconfig update-rc.d systemd bluetooth<br>
gobject-introspection-data<br>
<br>
DEPENDS=C2=A0 =3D &quot;dbus glib-2.0 udev mobile-broadband-provider-info&q=
uot;<br>
<br>
INITSCRIPT_NAME =3D &quot;ofono&quot;<br>
INITSCRIPT_PARAMS =3D &quot;defaults 22&quot;<br>
<br>
PACKAGECONFIG ??=3D &quot;\<br>
=C2=A0 =C2=A0 ${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;systemd&#3=
9;, d)} \<br>
=C2=A0 =C2=A0 ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;bluetoot=
h&#39;, &#39;bluez&#39;, &#39;&#39;, d)} \<br>
=C2=A0 =C2=A0 &quot;<br>
PACKAGECONFIG[systemd] =3D<br>
&quot;--with-systemdunitdir=3D${systemd_unitdir}/system/,--with-systemdunit=
dir=3D&quot;<br>
PACKAGECONFIG[bluez] =3D &quot;--enable-bluetooth, --disable-bluetooth, ${B=
LUEZ}&quot;<br>
<br>
EXTRA_OECONF +=3D &quot;--enable-test&quot;<br>
<br>
SYSTEMD_SERVICE_${PN} =3D &quot;ofono.service&quot;<br>
<br>
do_install_append() {<br>
=C2=A0 install -d ${D}${sysconfdir}/init.d/<br>
=C2=A0 install -m 0755 ${WORKDIR}/ofono ${D}${sysconfdir}/init.d/ofono<br>
}<br>
<br>
PACKAGES =3D+ &quot;${PN}-tests&quot;<br>
<br>
RDEPENDS_${PN} +=3D &quot;dbus&quot;<br>
RRECOMMENDS_${PN} +=3D &quot;kernel-module-tun mobile-broadband-provider-in=
fo&quot;<br>
<br>
FILES_${PN} +=3D &quot;${systemd_unitdir}&quot;<br>
FILES_${PN}-tests =3D &quot;${libdir}/${BPN}/test&quot;<br>
RDEPENDS_${PN}-tests =3D &quot;python3 python3-dbus&quot;<br>
RDEPENDS_${PN}-tests +=3D &quot;${@bb.utils.contains(&#39;GI_DATA_ENABLED&#=
39;,<br>
&#39;True&#39;, &#39;python3-pygobject&#39;, &#39;&#39;, d)}&quot;<br>
<br>
Thank you.<br>
<br>
- jupiter<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_4678418897158399167gmail_signature"><div dir=3D"ltr">Tim =
Froehlich<div>Embedded Linux Engineer</div><div><a href=3D"mailto:tfroehlic=
h@archsys.io" target=3D"_blank">tfroehlich@archsys.io</a></div><div>215-218=
-8955</div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000a11ba90587eb9df3--
