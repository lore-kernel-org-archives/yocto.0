Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAAC1E00D35; Thu,  2 May 2019 10:28:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E7D5E00D32
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 10:28:21 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id g4so3434836qtq.10
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 10:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ed4ThFMhijIETAWUHQ5E0QmRoPHBvEl5qblcn0GUopA=;
	b=TheQe7blSJkH0SXNtgU1DiEW1LJ3eVu+SK11a/9nOZ0FUyZrG5BfCY3g5G5hwF7RY6
	hIay7KTWvTRhyyf9gDl2Zr04ucN8B5RvdPjxqvoO0bShxerwP3kWfJw3eiN6kM7BDPzg
	CZHfzlqNc9MCmbNPcEBV/yXSlJRt/T9DgfsNj6SAQ4IbqJ1Un4JFd4l/kCMsARhoVrku
	RtSW8l6s5EmmaZBQFHHhuxRSMT4f+w3O0cyo53YbnsvYH5INQlBil5yzbC1tzxIrKjk7
	TQu/c9cRAfA/SUH47nMyo42cXRFp5brdpMLipZz6ioNIcgYss3deDZzDTcYVAdnJ5OKo
	MIZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ed4ThFMhijIETAWUHQ5E0QmRoPHBvEl5qblcn0GUopA=;
	b=PHWhCYglJLhE3vU95p1PPj4KMYJQ1L+m1PHyAfUhWQamqau+NqpJqKJh88X7TGC1Tg
	ltx5ltzwWh9qBVlRw4GnATrGT36qGnO64mkh27UZoYX+Wcao11sUHRlkc1pAoseXoCSJ
	MzHWd3TZ5FgnP620WVE3S59xw2T6zRIf+kwo6+PSnjbxTIvbdYG2kHjW8Bi5uOl5k+4e
	O68+9sTmGJJa/oU6T8EazwHYg2ydWiz7VzYp/F5pmHtTmqyK5EdXOGQbTb0+zCFi6sIC
	Wy1RnA/mZq4W+/yFYZKW9f5tWgSNYTwYk0JgHDDg1MiKd/2h/VKvnLYOW1JMGRFKL7gA
	4scQ==
X-Gm-Message-State: APjAAAUMRZgGVNGys+mgpcL2nFHSsJvxpgRIsQJ3xFb2SpP5cFkTNndq
	iX0/9yk4XyphsVc15YX4vhM7DZpolN1BUsWD7ORHTA==
X-Google-Smtp-Source: APXvYqzs5b5jvROR+Xhp/+1MjF2sDut7uMNxOeBwYOmXoN4pCIpiY8tC1yBBl5x6rszm+7NAnGxX3Sk+x+AJ88R3buo=
X-Received: by 2002:ac8:fd5:: with SMTP id f21mr2005237qtk.163.1556818100855; 
	Thu, 02 May 2019 10:28:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWS8L-dByznaDUALrZ2_Qt_Q0mXJ6uuGoEyQ=EoC2HiHUA@mail.gmail.com>
In-Reply-To: <CAA=hcWS8L-dByznaDUALrZ2_Qt_Q0mXJ6uuGoEyQ=EoC2HiHUA@mail.gmail.com>
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Thu, 2 May 2019 10:28:10 -0700
Message-ID: <CAHSUxjR=gitPU=663Df+3=wZ2gqU1vDbt1viKmLCrA7Q9MWxUA@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
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
X-List-Received-Date: Thu, 02 May 2019 17:28:22 -0000
Content-Type: multipart/alternative; boundary="000000000000e1bb240587eaf5d3"

--000000000000e1bb240587eaf5d3
Content-Type: text/plain; charset="UTF-8"

Looks like it's dropping the service in ${sysconfdir}/init.d which resolves
to /etc/init.d. I'm not sure that systemd won't look into init.d for
services. The standard place to put them is ${D}/${systemd_system_unitdir},
which resolves to /lib/systemd/system.

Also, check the "SYSTEMD_AUTO_ENABLE_pn-ofono" variable for that recipe.
The systemd class sets it to "enable" by default, but something else could
be overriding it and setting it to "disable".  Alternatively, confirm that
the service isn't actually starting up and failing. It may be that you're
restarting it once the system is fully booted and everything ofono needs is
now ready.

On Thu, May 2, 2019 at 7:55 AM JH <jupiter.hce@gmail.com> wrote:

> Hi,
>
> The official ofono.inc recipe defines SYSTEMD_SERVICE_${PN} =
> "ofono.service", but when I built the image, the system service does
> not start ofono daemon automatically, I have to run the ofono daemon
> manually. What I could be missing here? Here is the ofono recipes,
> sorry if I need to ask ofono mailing list.
>
> $ cat ofono.inc
> HOMEPAGE = "http://www.ofono.org"
> SUMMARY  = "open source telephony"
> DESCRIPTION = "oFono is a stack for mobile telephony devices on Linux.
> oFono supports speaking to telephony devices through specific drivers,
> or with generic AT commands."
> LICENSE  = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
>
>
> file://src/ofono.h;beginline=1;endline=20;md5=3ce17d5978ef3445def265b98899c2ee"
>
> inherit autotools pkgconfig update-rc.d systemd bluetooth
> gobject-introspection-data
>
> DEPENDS  = "dbus glib-2.0 udev mobile-broadband-provider-info"
>
> INITSCRIPT_NAME = "ofono"
> INITSCRIPT_PARAMS = "defaults 22"
>
> PACKAGECONFIG ??= "\
>     ${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)} \
>     ${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', 'bluez', '', d)} \
>     "
> PACKAGECONFIG[systemd] =
> "--with-systemdunitdir=${systemd_unitdir}/system/,--with-systemdunitdir="
> PACKAGECONFIG[bluez] = "--enable-bluetooth, --disable-bluetooth, ${BLUEZ}"
>
> EXTRA_OECONF += "--enable-test"
>
> SYSTEMD_SERVICE_${PN} = "ofono.service"
>
> do_install_append() {
>   install -d ${D}${sysconfdir}/init.d/
>   install -m 0755 ${WORKDIR}/ofono ${D}${sysconfdir}/init.d/ofono
> }
>
> PACKAGES =+ "${PN}-tests"
>
> RDEPENDS_${PN} += "dbus"
> RRECOMMENDS_${PN} += "kernel-module-tun mobile-broadband-provider-info"
>
> FILES_${PN} += "${systemd_unitdir}"
> FILES_${PN}-tests = "${libdir}/${BPN}/test"
> RDEPENDS_${PN}-tests = "python3 python3-dbus"
> RDEPENDS_${PN}-tests += "${@bb.utils.contains('GI_DATA_ENABLED',
> 'True', 'python3-pygobject', '', d)}"
>
> Thank you.
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--000000000000e1bb240587eaf5d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Looks like it&#39;s dropping the ser=
vice in ${sysconfdir}/init.d which resolves to /etc/init.d. I&#39;m not sur=
e that systemd won&#39;t look into init.d for services. The standard place =
to put them is=C2=A0${D}/${systemd_system_unitdir}, which resolves to /lib/=
systemd/system.=C2=A0</div><div><br></div><div dir=3D"ltr">Also, check the =
&quot;SYSTEMD_AUTO_ENABLE_pn-ofono&quot; variable for that recipe. The syst=
emd class sets it to &quot;enable&quot; by default, but something else coul=
d be overriding it and setting it to &quot;disable&quot;.=C2=A0 Alternative=
ly, confirm that the service isn&#39;t actually starting up and failing. It=
 may be that you&#39;re restarting it once the system is fully booted and e=
verything ofono needs is now ready.</div></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2019 at 7:55 =
AM JH &lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,=
<br>
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
 class=3D"gmail_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Linu=
x Engineer</div><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_bl=
ank">tfroehlich@archsys.io</a></div><div>215-218-8955</div></div></div>

--000000000000e1bb240587eaf5d3--
