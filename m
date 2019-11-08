Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F418E00E02; Fri,  8 Nov 2019 05:06:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C54CE00B0B
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2019 05:06:03 -0800 (PST)
Received: by mail-qv1-f50.google.com with SMTP id g12so2130125qvy.12
	for <yocto@yoctoproject.org>; Fri, 08 Nov 2019 05:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:autocrypt:organization:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=8MTfGmZ4/bKrskn9INkjr21b8RTJyYP8JLuVwAlPVvU=;
	b=XnXj8nJKONjv2kDNUePYk/oW3WTtm0WiLv8q4yctbB/7vYFTzC4peUWAHcu7g3DmOh
	LvJTo0vieAQfgE191zTUTrhgMpMMDSXsFaJGB6xvn41mBX+eFz9j7bGFI7rZ1P5IaC63
	GHdi5s/D1XC4HtkHXpn5LIz9ZMd6jQMoGvHqDH9y94Qo52EKr15RyH3Ojme99XqvM3sW
	V2izyDwA2GnR4wGfLvgVG4lHMW5pD9mJwLRA2OxIYrLkR6U8UGJd1MG5x3A96z8X2JOV
	9zCdv6NRYqWKoeFIxNrzjdsrVaRexscoSohrxJYnbq5tj/M8YvqdYaZqHDkqJeAL5p2v
	+UfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:autocrypt
	:organization:message-id:date:user-agent:mime-version:in-reply-to;
	bh=8MTfGmZ4/bKrskn9INkjr21b8RTJyYP8JLuVwAlPVvU=;
	b=NPfiOX5kKEiPdS0duVxi0hEMLaDqaUfLbs+3AfMH4iGoftg5nX/Tcm9J/8cuBVjvlo
	H2MdrkFPvBbCMnOiQ0LICc3BDggRltH74wDLwNq4QPdoOEp/8Aq98oEb4rRxQISStw1b
	EB7rZuz+CCkvzxLlls9a3NZEsIhrc8b2L46F7uu/wkNHlhG858BLRVQvWiiDWztMGMEF
	A2kWy54IuTUHl6kQZw67bJu/fE2zsqq2gd1ZHvvVhM8zP8gvURdNrUrrLQQWnpSjkFbq
	/rz1jllX+hcWViacOqCPkNK5Ozawsjz/89mH3vY6z1gfMIdK22ZaocwRf7nmucdWayDP
	MEfQ==
X-Gm-Message-State: APjAAAWCuEVNnT2eQPAbaIvLK1PtKLALIpA+EOAtMhTb0PMTiRpIbn70
	19lXOC+k6tT8e2XoPeivuIvVmGTNXtNAW08U
X-Google-Smtp-Source: APXvYqxp7tX4A7Q8NPE3cd6qnWvN1g4erSy+OckYa3+VDk4trZBKHxOKao6zttWKOtllZep+7Qaekw==
X-Received: by 2002:a0c:c684:: with SMTP id d4mr9127610qvj.148.1573218362795; 
	Fri, 08 Nov 2019 05:06:02 -0800 (PST)
Received: from [172.20.1.71] ([67.71.219.202])
	by smtp.gmail.com with ESMTPSA id
	u187sm1985881qkc.7.2019.11.08.05.06.00
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 08 Nov 2019 05:06:01 -0800 (PST)
To: berthold-yocto@xn--hllmanns-n4a.de, yocto@yoctoproject.org
References: <87wocb79tw.fsf@xn--hllmanns-n4a.de>
	<CAPxNcndkjjW_EEnxWuLN1n8q9TskWW-gngTRkcamJtRf=cfppw@mail.gmail.com>
	<87imnuirmq.fsf@xn--hllmanns-n4a.de>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; prefer-encrypt=mutual; keydata=
	mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
	Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
	/Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
	cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
	3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
	AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
	IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
	3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
	txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
	lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
	Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
	zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
	5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
	RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
	w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
	svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
	tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
	GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
	s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
	fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
	Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
	P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
	ROZj4g==
Organization: ibeeto
Message-ID: <e08fa9f0-502f-8c10-d0f3-2bc7e249d85e@ibeeto.com>
Date: Fri, 8 Nov 2019 05:05:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <87imnuirmq.fsf@xn--hllmanns-n4a.de>
Subject: Re: Yocto newbie: Need help with recipe
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
X-List-Received-Date: Fri, 08 Nov 2019 13:06:05 -0000
X-Groupsio-MsgNum: 47185
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="yXdkxdFT1LEE9ndmx4HlZiYeYCF1bvjt3"

--yXdkxdFT1LEE9ndmx4HlZiYeYCF1bvjt3
Content-Type: multipart/mixed; boundary="TLQifbs9sQWw34B8nJJwrcVTYX3AS4g7R"

--TLQifbs9sQWw34B8nJJwrcVTYX3AS4g7R
Content-Type: multipart/alternative;
 boundary="------------AA0E103D1BCB532AD3B04F17"
Content-Language: en-US

--------------AA0E103D1BCB532AD3B04F17
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I suppose you just removed setting the PACKAGES variable from your recipe=
?

You are including

require recipes-qt/qt5/qt5.inc

which redefines the PACKAGES variable adding a ${PN}-tools package that
consumes what's in {bindir}. I am not sure why you are including qt5.inc =
as

DEPENDS +=3D "qtbase"

should suffice to build against Qt. qt5.inc is for building Qt itself.

:rjs

On 11/8/19 2:34 AM, Berthold H=C3=B6llmann wrote:
> Rudolf Streif <rudolf.streif@ibeeto.com> writes:
>
>> Hi Berthold,
>>
>> Welcome to the Yocto Project.
> Thank You
>
>> This line is the problem with your recipe:
>>
>> PACKAGES =3D "${PN}"
>>
>> This tells the build system to only create one package, the default
>> package. Because this line FILES_${PN} =3D "${bindir}" tells the build=
 system
>> to include everything in ${bindir} into that package the package also
>> includes the .debug directory which is then flagged by the QA checker.=
 To
>> fix this:
>>
>> PACKAGES =3D "${PN}-dbg ${PN}"
>>
>> You have to specify the debug package before the default package as th=
e
>> variable is processed from left to right and whatever is consumed by a=

>> package will not be packaged anymore. However, even simpler is to remo=
ve
>> the PACKAGES line altogether as the default already does it correctly.=

>>
>> Best regards,
>> :rjs
> OK, the project is building now, but for some reasons the generated
> executable is ending up in the wrong package (I renamed executable and
> recipes in order to try to fix this):
>
> build@812ee6d53ca8:~/shared/rpi/rpi2-build$ dpkg -c tmp/deploy/ipk/cort=
exa7t2hf-neon-vfpv4/lissajousexplorer_git-r0_cortexa7t2hf-neon-vfpv4.ipk =

> drwxrwxrwx root/root         0 2019-11-08 10:04 ./
> build@812ee6d53ca8:~/shared/rpi/rpi2-build$ dpkg -c tmp/deploy/ipk/cort=
exa7t2hf-neon-vfpv4/lissajousexplorer-tools_git-r0_cortexa7t2hf-neon-vfpv=
4.ipk=20
> drwxrwxrwx root/root         0 2019-11-08 10:04 ./
> drwxr-xr-x root/root         0 2019-11-08 10:03 ./usr/
> drwxr-xr-x root/root         0 2019-11-08 10:03 ./usr/bin/
> -rwxr-xr-x root/root     38392 2019-11-08 10:03 ./usr/bin/lissajousexpl=
orer
>
> The executable is ending up in the "lissajousexplorer-tools" package,
> instead of the "lissajousexplorer" package, why is that?
>
> Best regards,
> Berthold
>
>>
>>
>> On Thu, Nov 7, 2019 at 12:04 PM Berthold H=C3=B6llmann <
>> berthold-yocto@h=C3=B6llmanns.de> wrote:
>>
>>> Hello,
>>>
>>> I'm trying my way around yocto. I thought I try adding a small projec=
t
>>> of mine to a Raspberry Pi image as a first try in writing recipes. At=

>>> least I managed to get the project compiling, but the generation of t=
he
>>> packages is failing:
>>>
>>> $ bitbake  qtlissajous
>>> ...
>>> ERROR: qtlissajous-git-r0 do_package_qa: QA Issue: non debug package
>>> contains .debug directory: qtlissajous path
>>> /work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/qtlissajous/git-r0/p=
ackages-split/qtlissajous/usr/bin/.debug/lissajous_explorer
>>> [debug-files]
>>> ERROR: qtlissajous-git-r0 do_package_qa: QA run found fatal errors. P=
lease
>>> consider fixing them.
>>> ERROR: qtlissajous-git-r0 do_package_qa:
>>> ERROR: qtlissajous-git-r0 do_package_qa: Function failed: do_package_=
qa
>>> ERROR: Logfile of failure stored in:
>>> /home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-po=
ky-linux-gnueabi/qtlissajous/git-r0/temp/log.do_package_qa.4823
>>> ERROR: Task
>>> (/home/build/shared/rpi/meta-qtlissajous/recipes-qtlissajous/qtlissaj=
ous/qtlissajous_git.bb:do_package_qa)
>>> failed with exit code '1'
>>> ...
>>>
>>> $ (cd
>>> /home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-po=
ky-linux-gnueabi/qtlissajous/git-r0/packages-split/;find
>>> -type f)
>>>
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_doublesl=
ider.cpp
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_phaselab=
el.cpp
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.c=
pp
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.h=

>>>
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_expl=
orer.cpp
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_expl=
orer.h
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid=
=2Ecpp
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid=
=2Eh
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/main.cpp
>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.cpp=

>>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.h
>>> ./qtlissajous-tools/usr/bin/lissajous_explorer
>>> ./qtlissajous/usr/bin/.debug/lissajous_explorer
>>> ./qtlissajous-tools.shlibdeps
>>>
>>> My qtlissajous_git.gg file is:
>>>
>>> -------------------------------------------------------
>>> DESCRIPTION =3D "Explore Lissajous figures for Raspberry Pi"
>>> SECTION =3D "games"
>>> DEPENDS +=3D "qtbase"
>>>
>>> PACKAGES =3D "${PN}"
>>>
>>> LICENSE =3D "MIT"
>>> LIC_FILES_CHKSUM =3D
>>> "file://LICENSE;md5=3D7e26fc87b2c255632232dc535ed2700b;sha256=3Dc8ea5=
a5ce0ef734ec1d0be3e214bed71673f1ffc628fe86bbd055d61abd52cc8"
>>>
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>>>
>>> SRCREV =3D "${AUTOREV}"
>>> SRC_URI =3D "git://gitlab.com/bhoel/qlissajousexplorer.git;protocol=3D=
https"
>>>
>>> S =3D "${WORKDIR}/git"
>>>
>>> require recipes-qt/qt5/qt5.inc
>>>
>>> FILES_${PN} =3D "${bindir}"
>>> FILES_${PN}-dbg +=3D "${bindir}/.debug"
>>>
>>> do_install() {
>>>       install -d ${D}/usr/bin
>>>       install -m 0755 lissajous_explorer ${D}/usr/bin
>>> }
>>>
>>> RDEPENDS_${PN} =3D "qtbase-plugins"
>>> -------------------------------------------------------
>>>
>>> Why is the release executable ending up in the tools tree?
>>> Why is the debug executable ending up in the release tree?
>>> Is this the right place to ask this kind of questions?
>>>
>>> Thank you
>>> Berthold
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
--=20
Rudolf J Streif
CEO/CTO
ibeeto
1.855.442.3386 x700


--------------AA0E103D1BCB532AD3B04F17
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>I suppose you just removed setting the PACKAGES variable from
      your recipe?</p>
    <p>You are including <br>
    </p>
    <pre class=3D"moz-quote-pre" wrap=3D"">require recipes-qt/qt5/qt5.inc=

</pre>
    <div class=3D"moz-cite-prefix">which redefines the PACKAGES variable
      adding a ${PN}-tools package that consumes what's in {bindir}. I
      am not sure why you are including qt5.inc as <br>
      <pre class=3D"moz-quote-pre" wrap=3D"">DEPENDS +=3D "qtbase"</pre>
    </div>
    <div class=3D"moz-cite-prefix">should suffice to build against Qt.
      qt5.inc is for building Qt itself.</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">:rjs<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 11/8/19 2:34 AM, Berthold H=C3=B6ll=
mann
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:87imnuirmq.fsf@xn--hllmanns-n4a.de">
      <pre class=3D"moz-quote-pre" wrap=3D"">Rudolf Streif <a class=3D"mo=
z-txt-link-rfc2396E" href=3D"mailto:rudolf.streif@ibeeto.com">&lt;rudolf.=
streif@ibeeto.com&gt;</a> writes:

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Hi Berthold,

Welcome to the Yocto Project.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Thank You

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">
This line is the problem with your recipe:

PACKAGES =3D "${PN}"

This tells the build system to only create one package, the default
package. Because this line FILES_${PN} =3D "${bindir}" tells the build sy=
stem
to include everything in ${bindir} into that package the package also
includes the .debug directory which is then flagged by the QA checker. To=

fix this:

PACKAGES =3D "${PN}-dbg ${PN}"

You have to specify the debug package before the default package as the
variable is processed from left to right and whatever is consumed by a
package will not be packaged anymore. However, even simpler is to remove
the PACKAGES line altogether as the default already does it correctly.

Best regards,
:rjs
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
OK, the project is building now, but for some reasons the generated
executable is ending up in the wrong package (I renamed executable and
recipes in order to try to fix this):

build@812ee6d53ca8:~/shared/rpi/rpi2-build$ dpkg -c tmp/deploy/ipk/cortex=
a7t2hf-neon-vfpv4/lissajousexplorer_git-r0_cortexa7t2hf-neon-vfpv4.ipk=20
drwxrwxrwx root/root         0 2019-11-08 10:04 ./
build@812ee6d53ca8:~/shared/rpi/rpi2-build$ dpkg -c tmp/deploy/ipk/cortex=
a7t2hf-neon-vfpv4/lissajousexplorer-tools_git-r0_cortexa7t2hf-neon-vfpv4.=
ipk=20
drwxrwxrwx root/root         0 2019-11-08 10:04 ./
drwxr-xr-x root/root         0 2019-11-08 10:03 ./usr/
drwxr-xr-x root/root         0 2019-11-08 10:03 ./usr/bin/
-rwxr-xr-x root/root     38392 2019-11-08 10:03 ./usr/bin/lissajousexplor=
er

The executable is ending up in the "lissajousexplorer-tools" package,
instead of the "lissajousexplorer" package, why is that?

Best regards,
Berthold

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">


On Thu, Nov 7, 2019 at 12:04 PM Berthold H=C3=B6llmann &lt;
berthold-yocto@h=C3=B6llmanns.de&gt; wrote:

</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">
Hello,

I'm trying my way around yocto. I thought I try adding a small project
of mine to a Raspberry Pi image as a first try in writing recipes. At
least I managed to get the project compiling, but the generation of the
packages is failing:

$ bitbake  qtlissajous
=2E..
ERROR: qtlissajous-git-r0 do_package_qa: QA Issue: non debug package
contains .debug directory: qtlissajous path
/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/qtlissajous/git-r0/packa=
ges-split/qtlissajous/usr/bin/.debug/lissajous_explorer
[debug-files]
ERROR: qtlissajous-git-r0 do_package_qa: QA run found fatal errors. Pleas=
e
consider fixing them.
ERROR: qtlissajous-git-r0 do_package_qa:
ERROR: qtlissajous-git-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-l=
inux-gnueabi/qtlissajous/git-r0/temp/log.do_package_qa.4823
ERROR: Task
(/home/build/shared/rpi/meta-qtlissajous/recipes-qtlissajous/qtlissajous/=
qtlissajous_git.bb:do_package_qa)
failed with exit code '1'
=2E..

$ (cd
/home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-l=
inux-gnueabi/qtlissajous/git-r0/packages-split/;find
-type f)

=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_doubleslid=
er.cpp
=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_phaselabel=
=2Ecpp
=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.cpp=

=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.h

=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explor=
er.cpp
=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explor=
er.h
=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.c=
pp
=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.h=

=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/main.cpp
=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.cpp
=2E/qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.h
=2E/qtlissajous-tools/usr/bin/lissajous_explorer
=2E/qtlissajous/usr/bin/.debug/lissajous_explorer
=2E/qtlissajous-tools.shlibdeps

My qtlissajous_git.gg file is:

-------------------------------------------------------
DESCRIPTION =3D "Explore Lissajous figures for Raspberry Pi"
SECTION =3D "games"
DEPENDS +=3D "qtbase"

PACKAGES =3D "${PN}"

LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D
<a class=3D"moz-txt-link-rfc2396E" href=3D"file://LICENSE;md5=3D7e26fc87b=
2c255632232dc535ed2700b;sha256=3Dc8ea5a5ce0ef734ec1d0be3e214bed71673f1ffc=
628fe86bbd055d61abd52cc8">"file://LICENSE;md5=3D7e26fc87b2c255632232dc535=
ed2700b;sha256=3Dc8ea5a5ce0ef734ec1d0be3e214bed71673f1ffc628fe86bbd055d61=
abd52cc8"</a>

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"

SRCREV =3D "${AUTOREV}"
SRC_URI =3D "git://gitlab.com/bhoel/qlissajousexplorer.git;protocol=3Dhtt=
ps"

S =3D "${WORKDIR}/git"

require recipes-qt/qt5/qt5.inc

FILES_${PN} =3D "${bindir}"
FILES_${PN}-dbg +=3D "${bindir}/.debug"

do_install() {
      install -d ${D}/usr/bin
      install -m 0755 lissajous_explorer ${D}/usr/bin
}

RDEPENDS_${PN} =3D "qtbase-plugins"
-------------------------------------------------------

Why is the release executable ending up in the tools tree?
Why is the debug executable ending up in the release tree?
Is this the right place to ask this kind of questions?

Thank you
Berthold
--
_______________________________________________
yocto mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@yoctoproject.o=
rg">yocto@yoctoproject.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoctoproject.org=
/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>

</pre>
          <br>
          <fieldset class=3D"mimeAttachmentHeader"></fieldset>
        </blockquote>
      </blockquote>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Rudolf J Streif
CEO/CTO
ibeeto
1.855.442.3386 x700</pre>
  </body>
</html>

--------------AA0E103D1BCB532AD3B04F17--

--TLQifbs9sQWw34B8nJJwrcVTYX3AS4g7R--

--yXdkxdFT1LEE9ndmx4HlZiYeYCF1bvjt3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl3FaDcACgkQjYyoKScz
m3XwGQgAkM9DCRkZRJHu9zGNG9iKiY4nCnSgVqARP6WzHU7e/lmqidLRqokxkiNr
9GVwees30SKvq4AlFFv0/3072pgLTwOrALgmYGipjjK1CSswcjss+dcqC+/hcB0d
DWtigHOediZramclYI6frxdEAwYuikIucyD5naZAQpg7Blk0LZrWyAsXb0RoQP6n
V5/juZtfC2ego+pOE0Io3v3vQQzLkH/k6n7DGij6LwhRE4KjcXVN1CxM+f0dmNvm
ddKroerbhxCXENpxrjifRul+86LwIm1P1kJw+rBzaYsLBlVsEIcyZGEFu9jPmNhA
vWGoV5zBa7Ti2kKOVqyOUGGSI8ec2g==
=0yfd
-----END PGP SIGNATURE-----

--yXdkxdFT1LEE9ndmx4HlZiYeYCF1bvjt3--
