Return-Path: <marekslomiany@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4B6AE00DE4; Fri,  2 Feb 2018 05:24:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marekslomiany[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f46.google.com (mail-pl0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1AC0E00D41
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 05:24:11 -0800 (PST)
Received: by mail-pl0-f46.google.com with SMTP id q17so3964151pll.1
	for <yocto@yoctoproject.org>; Fri, 02 Feb 2018 05:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dFwKoSq8vU0nBuUza3RluT4a1ihVJIzm+8dTDW+2uMk=;
	b=lyq8u6EJivM9bJOLMLLTsrMcVuYFoZXdbUwoQDk1dM9D8WyY4huGB5ufhkDed/ELGK
	tcOzqQY5SGakAFRwq1bVqxQi9NjLeCawwX8o2dJF9TUgJnJiPEPt8R3zqGAoTuit//Qt
	hK0YadRhUmrewyIeV7J4ZLqEtOcHJkauqrC9gHFL1/03QGtKYd1PwuXiDmsPsZ9S9FaW
	9YVJon1kIUKWdmTwF8enJ0VJvgzsLrLjt1ydS4LpJfMEiPi/s9EO5Djxxnssfry9+cOW
	a3e99f3AHwS/4OTfnf3uvOW7MZXnpvc0hvcqTwpJNit/Bx4MGlsrOOrh5XcCwYvYEgiO
	GPeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dFwKoSq8vU0nBuUza3RluT4a1ihVJIzm+8dTDW+2uMk=;
	b=LLQwLnqAza5AcS7srMhOUwTEV0CKQj/Gs+3RzytImSlG+HCtOsGqwg7XkS4/3uf7JM
	wTxAt8AzF2xx77Ke4fIOpZ3Ivb9n24gNmNZ6WzMXM8wwKP4ymdjUon6mNa6mvxzgq/GY
	7+WU8IMCF+KG1T1ZtmFXljyNvDgKW4nkiHtRBGppOHzsT6RKs5IvDMDCvE95L/93osUa
	mQlJHfmoaLVHJIQQHCC5Muo9MbyIemkYcR2Qz0SLU1lhWcEwTzaIGDDEtiFvpul5K9Kg
	Z2zAknJuMZxtBYl/m+IIKSSTbusIj9sy2f3j6tGE6am5IjTiIofvlkZxtW1GE1o+kLBw
	DzGw==
X-Gm-Message-State: AKwxyte68MEN7/AzHEstqqiKUAY4ljfV+qqaRCsxs4yzBY2VjUPrqC8c
	P8nWUC3nbz7w5Mdlg/Gn83LI0SDdt6EgafvycCY=
X-Google-Smtp-Source: AH8x226/rLQwQI/MLoiVe/VpC2WwtvlJANlDX5ngZ+aYcUGCVmeVx63N3imLt9Ne35rPoBpZ79aZDZHBjWiHBwrUTLc=
X-Received: by 2002:a17:902:7042:: with SMTP id
	h2-v6mr4214253plt.217.1517577850421; 
	Fri, 02 Feb 2018 05:24:10 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Date: Fri, 02 Feb 2018 13:23:59 +0000
Message-ID: <CAJCDnYZcUuLvG-70Tg_m_Rr968hH0A2OizkCcYOO014jkvK=1A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Remove nfs packages from image
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
X-List-Received-Date: Fri, 02 Feb 2018 13:24:12 -0000
Content-Type: multipart/alternative; boundary="000000000000b1873905643aa0bc"

--000000000000b1873905643aa0bc
Content-Type: text/plain; charset="UTF-8"

> Actually that's wrong, sorry for confusion. 'nfs' in DISTRO_FEATURES
> adds rpcbind and nfs kernel module to packages. 'nfs-client' in
> IMAGE_FEATURS adds nfs-utils-client, 'nfs-server' also adds nfs-utils.
>
> Dropping nfs-related stuff from both DISTRO_FEATURES and IMAGE_FEATURES
> should be enough.

After checking DISTRO_FEATURES and IMAGE_FEATURES I have found many
unnecesary packages and nfs too, but removing nfs gave me no result.
bitbake <image> -e |grep -v ^# |grep "^DISTRO_FEATURES=\|^IMAGE_FEATURES="
DISTRO_FEATURES="acl alsa argp bluetooth ext2 irda largefile pcmcia
usbgadget usbhost wifi xattr zeroconf pci 3g nfc ipv4 ipv6 libc-backtrace
libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets
libc-crypt libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg
libc-fstab libc-ftraverse libc-getlogin libc-idn libc-inet-anl libc-libm
libc-locales libc-locale-code libc-memusage libc-nis libc-nsswitch
libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc libc-utmp
libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
libc-posix-regexp-glibc libc-posix-wchar-io largefile ptest multiarch
opengl opengles2 egl pulseaudio sysvinit bluez5 gobject-introspection-data
ldconfig"
IMAGE_FEATURES="debug-tweaks package-management splash ssh-server-openssh
tools-debug"

It's still on target:
root@target# opkg list |grep nfs
libnfsidmap0 - 0.25-r0
nfs-utils - 2.1.1-r0
nfs-utils-client - 2.1.1-r0
nfs-utils-mount - 2.1.1-r0

While checking for any nfs-things using "bitbake <image> -e |grep -v ^#
|grep -i nfs" the only interesting thing I got is this:
EXCLUDE_FROM_WORLD_pn-unfs3_libc-musl="1"
FEATURE_PACKAGES_nfs-client="packagegroup-core-nfs-client"
FEATURE_PACKAGES_nfs-server="packagegroup-core-nfs-server"

from which first one is not the thing, and two following are
from /meta/classes/core-image.bbclass and if I'm correct it's just defining
what will happen when I add nfs-client or nfs-server to IMAGE_FEATURES.
Maybe I should delete manually some sstate or something?

Regards,
Marek

--000000000000b1873905643aa0bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; Actually that&#39;s wrong, sorry for confusion. =
&#39;nfs&#39; in DISTRO_FEATURES=C2=A0</div><div>&gt; adds rpcbind and nfs =
kernel module to packages. &#39;nfs-client&#39; in=C2=A0</div><div>&gt; IMA=
GE_FEATURS adds nfs-utils-client, &#39;nfs-server&#39; also adds nfs-utils.=
</div><div>&gt;=C2=A0<br></div><div>&gt; Dropping nfs-related stuff from bo=
th DISTRO_FEATURES and IMAGE_FEATURES=C2=A0</div><div>&gt; should be enough=
.</div><div><br></div><div>After checking DISTRO_FEATURES and IMAGE_FEATURE=
S I have found many unnecesary packages and nfs too, but removing nfs gave =
me no result.</div><div><div>bitbake &lt;image&gt; -e |grep -v ^# |grep &qu=
ot;^DISTRO_FEATURES=3D\|^IMAGE_FEATURES=3D&quot;</div><div>DISTRO_FEATURES=
=3D&quot;acl alsa argp bluetooth ext2 irda largefile pcmcia usbgadget usbho=
st wifi xattr zeroconf pci 3g nfc ipv4 ipv6 libc-backtrace libc-big-macros =
libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt libc-crypt-uf=
c libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse=
 libc-getlogin libc-idn libc-inet-anl libc-libm libc-locales libc-locale-co=
de libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spaw=
n libc-streams libc-sunrpc libc-utmp libc-utmpx libc-wordexp libc-posix-cla=
ng-wchar libc-posix-regexp libc-posix-regexp-glibc libc-posix-wchar-io larg=
efile ptest multiarch opengl opengles2 egl pulseaudio sysvinit bluez5 gobje=
ct-introspection-data ldconfig&quot;</div><div>IMAGE_FEATURES=3D&quot;debug=
-tweaks package-management splash ssh-server-openssh tools-debug&quot;</div=
></div><div><br></div><div>It&#39;s still on target:</div><div><div>root@ta=
rget# opkg list |grep nfs</div><div>libnfsidmap0 - 0.25-r0</div><div>nfs-ut=
ils - 2.1.1-r0</div><div>nfs-utils-client - 2.1.1-r0</div><div>nfs-utils-mo=
unt - 2.1.1-r0</div></div><div><br></div><div>While checking for any nfs-th=
ings using &quot;bitbake &lt;image&gt; -e |grep -v ^# |grep -i nfs&quot; th=
e only interesting thing I got is this:</div><div><div>EXCLUDE_FROM_WORLD_p=
n-unfs3_libc-musl=3D&quot;1&quot;</div><div>FEATURE_PACKAGES_nfs-client=3D&=
quot;packagegroup-core-nfs-client&quot;</div><div>FEATURE_PACKAGES_nfs-serv=
er=3D&quot;packagegroup-core-nfs-server&quot;</div></div><div><br></div><di=
v>from which first one is not the thing, and two following are from=C2=A0/m=
eta/classes/core-image.bbclass and if I&#39;m correct it&#39;s just definin=
g what will happen when I add nfs-client or nfs-server to IMAGE_FEATURES.</=
div><div>Maybe I should delete manually some sstate or something?</div><div=
><br></div><div>Regards,</div><div>Marek</div></div>

--000000000000b1873905643aa0bc--
