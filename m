Return-Path: <torstensievers@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54589E00CA5; Wed, 23 Aug 2017 10:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (torstensievers[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 460D1E00C45
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 10:41:25 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id j144so8412784oib.1
	for <yocto@yoctoproject.org>; Wed, 23 Aug 2017 10:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FjM+6pZESPl8cBEri/ecMAImY3WT9AP4rt3PZjW4P54=;
	b=JzmIeSjhbVhGBFqMId5C7KTv0jCudN23qEqmRYqLZykvmK1shmptcmknS9qSBeZHPn
	JvuKtk3l5KWD7dyfMYW0fgDayaxrmYtAp8tNLT0ch+9iKPHgu/dvRag3a5TXdob4TW4i
	OUXXm2Y+7Y6CLDBn/YCyO3tZVBzory4n2X/VP26UXhYhzlveAzgR9BXrgF5ujDCcJ2jV
	JzeLcnEHZ2KJkyDCGOZZHE3dJgbwYeCw0EdDO+pmowLyqyB9yXPFB1/XxbOKEihwjlB9
	bZ++p5v44Xb1VT9xzbILQUg7fExLhsK3JZek6DrM3/AyHbSUS71QUlq6zwFcD3geKWIy
	Tw+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FjM+6pZESPl8cBEri/ecMAImY3WT9AP4rt3PZjW4P54=;
	b=HAtgugL6iFpCgEaAb8MPNQeR07wvNdeUh2iqCj3mgBAOV0VwHzd4fHJ1ECOUWypFFM
	C2shSDo/vV+hsBhrAhjKroWQUd44EIITjOEPJaEh3QuqJn7XrRPh74TJ4YC/tuo//c3E
	8iijfYE8kjvXXzLWPEYE/rvuUpLvK2U7e163EEQ2ygG1VWwYOTi0Mi2nnmF4IjEjcJXO
	pOZKrGur1lBcife2n0TTTrwG8MVNWFnfAyh1tSGYLR+R1Sb6pDhUTFL4DA6ZKYIbEchO
	K+LAcDrDbZYFjLevfw5IqFA+zFnRCtUbcVzvhfuNtdDwC5X0pYfUPNO2qfPqvlW1N+KI
	EwZQ==
X-Gm-Message-State: AHYfb5hcH2Ph4MX5YauJ7gYzSmAQb/KNgQALQvunpx9Q9ZL8gR+klMUn
	fuj4lbzgBjZHDj4YE9/Gi2g3s8JApwHz
X-Received: by 10.202.208.70 with SMTP id h67mr4091421oig.106.1503510084370;
	Wed, 23 Aug 2017 10:41:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.139.16 with HTTP; Wed, 23 Aug 2017 10:41:23 -0700 (PDT)
From: Torsten Sievers <torstensievers@googlemail.com>
Date: Wed, 23 Aug 2017 19:41:23 +0200
Message-ID: <CAPZw6vNdWvidmxEhYDU+i3sAYaYZJ=e_nudT3y-f=upcr-SVzQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 23 Aug 2017 15:14:16 -0700
Subject: Runtime Dependencies dependent on lowercase recipe name?
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
X-List-Received-Date: Wed, 23 Aug 2017 17:41:26 -0000
Content-Type: multipart/alternative; boundary="001a11401b367ec7a205576f38a7"

--001a11401b367ec7a205576f38a7
Content-Type: text/plain; charset="UTF-8"

Hi everybody,

i am using Poky/Pyro for one of my projects. The chosen Package Format is
RPM.

After some hours of debugging in ran into this pretty interesting behaviour
were i would guess it is a bug...

My starting point was a really simple  HelloWorld Recipe:
---------- snip ----------------
$ cat helloworld_0.1.bb
DESCRIPTION = "Simple helloworld application"
LICENSE = "CLOSED"
RDEPENDS_${PN}+="procps"
do_compile() {
             echo 'int main(int argc, char **argv) { return 0; }' >
helloworld.c
             ${CC} ${LDFLAGS} helloworld.c -o helloworld
}

do_install() {
             install -d ${D}${bindir}
             install -m 0755 helloworld ${D}${bindir}
}
---------- snap --------------

As you can see it does just compile a program that is immediately
returning.
However it introduces an arbitrary runtime dependency to procps
Building it results in an RPM that depends to procps

---------------snip -------------------
$ rpm -qpR helloworld-0.1-r0.cortexa7hf_neon_vfpv4.rpm
libc6 >= 2.25
procps
rpmlib(CompressedFileNames) <= 3.0.4-1
rpmlib(PayloadFilesHavePrefix) <= 4.0-1
---------- snap --------------


Now the strange thing happens: copy the helloworld_0.1.bb to
Helloworld_0.1.bb
So the only difference is the lowercase vs capital "H" in the recipe name.

rebuild and look at the rpm dependencies
----------- snip --------------------------
$ rpm -qpR Helloworld-0.1-r0.cortexa7hf_neon_vfpv4.rpm
rpmlib(CompressedFileNames) <= 3.0.4-1
rpmlib(PayloadFilesHavePrefix) <= 4.0-1
------------- snap ------------------------

both the libc as well as the procps dependencies are gone...
It is also gone in the spec-file and already forgotton in the
package_rpm.class

Other than the omitted dependencies the rpm looks fine. It contains the
binary as well as hashes etc...


Anybody can explain me if this is intended or do i run into a bug?

Many thanks and best regards
  Torsten

--001a11401b367ec7a205576f38a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everybody,<div><br></div><div>i am using Poky/Pyro for =
one of my projects. The chosen Package Format is RPM.</div><div><br></div><=
div>After some hours of debugging in ran into this pretty interesting behav=
iour were i would guess it is a bug...</div><div><br></div><div>My starting=
 point was a really simple =C2=A0HelloWorld Recipe:</div><div><div>--------=
-- snip ----------------</div><div>$ cat <a href=3D"http://helloworld_0.1.b=
b">helloworld_0.1.bb</a></div><div>DESCRIPTION =3D &quot;Simple helloworld =
application&quot;</div><div>LICENSE =3D &quot;CLOSED&quot;</div><div>RDEPEN=
DS_${PN}+=3D&quot;procps&quot;</div><div>do_compile() {</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &#39;int main(int argc, char =
**argv) { return 0; }&#39; &gt; helloworld.c</div><div>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0${CC} ${LDFLAGS} helloworld.c -o helloworld</di=
v><div>}</div><div><br></div><div>do_install() {</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${bindir}</div><div>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 0755 helloworld ${D}${=
bindir}</div><div>}</div></div><div>---------- snap --------------</div><di=
v><br></div><div>As you can see it does just compile a program that is imme=
diately returning.=C2=A0</div><div>However it introduces an arbitrary runti=
me dependency to procps=C2=A0</div><div>Building it results in an RPM that =
depends to procps</div><div><br></div><div>---------------snip ------------=
-------</div><div><div>$ rpm -qpR helloworld-0.1-r0.cortexa7hf_neon_vfpv4.r=
pm</div><div>libc6 &gt;=3D 2.25<br></div><div>procps</div><div>rpmlib(Compr=
essedFileNames) &lt;=3D 3.0.4-1</div><div>rpmlib(PayloadFilesHavePrefix) &l=
t;=3D 4.0-1</div></div><div><div>---------- snap --------------</div></div>=
<div><br></div><div><br></div><div>Now the strange thing happens: copy the =
<a href=3D"http://helloworld_0.1.bb">helloworld_0.1.bb</a> to <a href=3D"ht=
tp://Helloworld_0.1.bb">Helloworld_0.1.bb</a>=C2=A0</div><div>So the only d=
ifference is the lowercase vs capital &quot;H&quot; in the recipe name.</di=
v><div><br></div><div>rebuild and look at the rpm dependencies</div><div>--=
--------- snip --------------------------</div><div><div>$ rpm -qpR Hellowo=
rld-0.1-r0.cortexa7hf_neon_vfpv4.rpm</div><div>rpmlib(CompressedFileNames) =
&lt;=3D 3.0.4-1</div><div>rpmlib(PayloadFilesHavePrefix) &lt;=3D 4.0-1</div=
></div><div>------------- snap ------------------------</div><div><br></div=
><div>both the libc as well as the procps dependencies are gone...</div><di=
v><div>It is also gone in the spec-file and already forgotton in the packag=
e_rpm.class</div></div><div><br></div><div>Other than the omitted dependenc=
ies the rpm looks fine. It contains the binary as well as hashes etc...</di=
v><div><br></div><div><br></div><div>Anybody can explain me if this is inte=
nded or do i run into a bug?</div><div><br></div><div>Many thanks and best =
regards</div><div>=C2=A0 Torsten</div><div><br></div></div>

--001a11401b367ec7a205576f38a7--
