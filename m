Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0113FE0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 13:16:29 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id c4so925216qae.14
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 13:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=Kt8tuVgw9zrOb6PnuVe0lDkxSuionmREzr5mEfNSfE8=;
	b=MWfo8g2AD/f41r3nOy/mR/mTbgLSvMENj/3CcuqYbVzQWjjTCUVVkYxwbmu6wEwYS2
	sdMgxVbuL+gJymgLXomew573e+HqSjIrOcjG75+PEbE8pZM/Tr6KYGSiqaWl+dpmy6fG
	RMaN1xxo/LfOaUqlGoZTHe4sZGnAEGeh6n+P9AeiHqP/YqaEUtz7pOY+ePzYvlkY/yoi
	Yn8GAwtZ0Fp0KqlZhHIoFFO5bOnWW4flJKLQCaZNr0RPwTt0nmXkCe1BGFv+X2CCvkxX
	z//YGUZvTft3vjUM5WFD2/T9JFUo0GRfn7PKEfq77PPUeW/3yHvbbDUKHSrfvhCcGhoU
	tVMw==
MIME-Version: 1.0
Received: by 10.224.190.2 with SMTP id dg2mr33273641qab.51.1350504989184; Wed,
	17 Oct 2012 13:16:29 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Wed, 17 Oct 2012 13:16:29 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85D13@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
	<8390795.VYneHzJZUd@helios>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A85D13@ORSMSX101.amr.corp.intel.com>
Date: Wed, 17 Oct 2012 13:16:29 -0700
X-Google-Sender-Auth: PCKmKVbMy528cAqf9NnytJNVnqo
Message-ID: <CA+gsK-ovhd30EZ3R68R=o4=iWb5MJqZAAenwRo2yJg+_Tn1NTQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQlidXpepKqHcRk48EjQj7nvOwkBS/hETBwKaV+fk1GjJDc6XUjXX0lgMLMSxz9MAuK3Pd0e
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Requesting information on some variables
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
X-List-Received-Date: Wed, 17 Oct 2012 20:16:30 -0000
Content-Type: multipart/alternative; boundary=20cf3010eddb25d44e04cc46f206

--20cf3010eddb25d44e04cc46f206
Content-Type: text/plain; charset=ISO-8859-1

Scott,

Thanks for addressing this confusing part. The list of DISTRO_FEATURES (DF)
and MACHINE_FEATURES (MF) in the documentation also does not seem to be
complete. For instance, vfat is (at least the code in bitbake.conf that
intersects DF and MF suggests so) is a MF as well as a DF.

It also seems that any package is fair game for DF (which makes sense) but
the documentation says "The items below are valid options for
DISTRO_FEATURES<http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-manual.html#var-DISTRO_FEATURES>
:".

Some elaboration on the features would be great too. From the explanation
it is not obvious why ext2 is considered a DF as well as a MF. The same
seems to be the case with vfat (although not listed in the documentation).
Other file systems e.g. ext3 etc. are purely considered DF.

Here are the variables from a build environment building for the Beagleboard

bitbake core-image-minimal -e | grep MACHINE_FEATURES
MACHINE_FEATURES="apm usbgadget usbhost vfat alsa"

bitbake core-image-minimal -e | grep DISTRO_FEATURES
DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia usbgadget
usbhost wifi xattr nfs zeroconf pci 3g x11 ipv4 ipv6 libc-backtrace
libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets
libc-crypt libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg
libc-fstab libc-ftraverse libc-getlogin libc-idn libc-inet-anl libc-libm
libc-libm-big libc-locales libc-locale-code libc-memusage libc-nis
libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc
libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp
libc-posix-regexp-glibc libc-posix-wchar-io largefile opengl pulseaudio"

bitbake core-image-minimal -e | grep COMBINED_FEATURES
COMBINED_FEATURES="alsa usbgadget usbhost"

CF seems to be an intersection of DF and MF.  If I remove usbgadget from MF
then CF will of course not contain it. DF will still have it. What actually
does get included with the image? Is it DF - [list of all available machine
features] + CF?

[list of all available machine features] is then the superset of MF that is
typically defined in a machine.conf file. That list must be implicit
somewhere in the classes/configuration files somewhere, possibly
bitbake.conf.

That leads me to the next question. I have seen BSPs that include 'screen'
into MF in their machine.conf files. That feature is also in the
documentation. But it does not show up anywhere in DF or bitbake.conf etc.

Cheers,
Rudi

--20cf3010eddb25d44e04cc46f206
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Scott,<div><br></div><div>Thanks for addressing this confusing part. The li=
st of DISTRO_FEATURES (DF) and MACHINE_FEATURES (MF) in the documentation a=
lso does not seem to be complete. For instance, vfat is (at least the code =
in bitbake.conf that intersects DF and MF suggests so) is a MF as well as a=
 DF.</div>
<div><br></div><div style=3D"text-align:left">It also seems that any packag=
e is fair game for DF (which makes sense) but the documentation says &quot;=
<font face=3D"arial, helvetica, sans-serif"><span style=3D"color:rgb(51,51,=
51);line-height:24px;background-color:rgb(255,255,255)">The items below are=
 valid options for=A0</span><code class=3D"filename" style=3D"color:rgb(51,=
51,51);line-height:24px;background-color:rgb(255,255,255)"><a class=3D"link=
" href=3D"http://www.yoctoproject.org/docs/1.3/poky-ref-manual/poky-ref-man=
ual.html#var-DISTRO_FEATURES" title=3D"DISTRO_FEATURES" style=3D"color:rgb(=
68,68,68);background-color:transparent">DISTRO_FEATURES</a></code><span sty=
le=3D"color:rgb(51,51,51);line-height:24px;background-color:rgb(255,255,255=
)">:&quot;.</span></font></div>
<div style=3D"text-align:left"><br></div><div style=3D"text-align:left">Som=
e elaboration on the features would be great too. From the explanation it i=
s not obvious why ext2 is considered a DF as well as a MF. The same seems t=
o be the case with vfat (although not listed in the documentation). Other f=
ile systems e.g. ext3 etc. are purely considered DF.</div>
<div style=3D"text-align:left"><br></div><div style=3D"text-align:left">Her=
e are the variables from a build environment building for the Beagleboard</=
div><div style=3D"text-align:left"><div><br></div><div><div>bitbake core-im=
age-minimal -e | grep MACHINE_FEATURES</div>
</div><div>MACHINE_FEATURES=3D&quot;apm usbgadget usbhost vfat alsa&quot;</=
div><div><br></div><div><div>bitbake core-image-minimal -e | grep DISTRO_FE=
ATURES</div><div>DISTRO_FEATURES=3D&quot;alsa argp bluetooth ext2 irda larg=
efile pcmcia usbgadget usbhost wifi xattr nfs zeroconf pci 3g x11 ipv4 ipv6=
 libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-c=
harsets libc-crypt libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-=
fmtmsg libc-fstab libc-ftraverse libc-getlogin libc-idn libc-inet-anl libc-=
libm libc-libm-big libc-locales libc-locale-code libc-memusage libc-nis lib=
c-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc li=
bc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp li=
bc-posix-regexp-glibc libc-posix-wchar-io largefile opengl pulseaudio&quot;=
</div>
</div><div><br></div><div><div>bitbake core-image-minimal -e | grep COMBINE=
D_FEATURES</div><div>COMBINED_FEATURES=3D&quot;alsa usbgadget usbhost&quot;=
</div></div><div><br></div><div>CF seems to be an intersection of DF and MF=
. =A0If I remove usbgadget from MF then CF will of course not contain it. D=
F will still have it.=A0What actually does get included with the image? Is =
it DF - [list of all available machine features] + CF?</div>
<div><br></div><div>[list of all available machine features] is then the su=
perset of MF that is typically defined in a machine.conf file. That list mu=
st be implicit somewhere in the classes/configuration files somewhere, poss=
ibly bitbake.conf.</div>
<div><br></div><div>That leads me to the next question. I have seen BSPs th=
at include &#39;screen&#39; into MF in their machine.conf files. That featu=
re is also in the documentation. But it does not show up anywhere in DF or =
bitbake.conf etc.</div>
</div><div style=3D"text-align:left"><br></div><div style=3D"text-align:lef=
t">Cheers,</div><div style=3D"text-align:left">Rudi</div>

--20cf3010eddb25d44e04cc46f206--
