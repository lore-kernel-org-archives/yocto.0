Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f195.google.com (mail-ie0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40071E01409
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 01:55:05 -0700 (PDT)
Received: by mail-ie0-f195.google.com with SMTP id c10so3545066ieb.2
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 01:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=93Jpo2HJA7zA8mXo0s2lkyH+x2e5JwT5qLcnjHCAwkM=;
	b=sYALCX+Y3j8jclwpjq6cVtnv07dqNlFX+0syHjwpGAX+/0ZKltkV4wf0+VZiFKLXqm
	+iIISwxCrnu2mTvBsqLGRJVFJvT3ZxOGau+Yk2qyM1M20F6fmAcQ8AZWefwbhbcQOZsR
	tFbA8ynlF7ZFQpMRymFp8zDjb/aqPaMsgKf5CFVWdTlORRN0kyuDzIdPabVmE3JUd0Gl
	NHjVmxE+7ekL/kTlVzOgqzBBEZuEg+bGl9cxgomwPDRRDLK1YvN2P3ECvDhtvauntmTE
	JqWGUBpR8GiZqzshxyOP/D+q2hoAmDFnk8AM0fywqGaS1hYJ1pdgm/Rn7nu30HRtmpnI
	EMrQ==
MIME-Version: 1.0
X-Received: by 10.42.100.142 with SMTP id a14mr7921902ico.30.1371113704586;
	Thu, 13 Jun 2013 01:55:04 -0700 (PDT)
Received: by 10.50.43.167 with HTTP; Thu, 13 Jun 2013 01:55:04 -0700 (PDT)
Date: Thu, 13 Jun 2013 09:55:04 +0100
Message-ID: <CAM1ZcoU1VZLQeKCt=xySb8ji0v-dYTQkiXwPDG_oDOwafUdgjg@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: recipe using waf installation location
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
X-List-Received-Date: Thu, 13 Jun 2013 08:55:06 -0000
Content-Type: multipart/alternative; boundary=90e6ba614e804f05c704df054993

--90e6ba614e804f05c704df054993
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I'm creating a recipe for jack2_1.9.9.5.bb. The tarball uses waf to
configure, compile and install. It configures and compiles correctly, but
in the installation part I get:

WARNING: QA Issue: jack2: Files/directories were installed but not shipped
  /usr/local
  /usr/local/include
  /usr/local/share
  /usr/local/bin
  /usr/local/lib
  /usr/local/include/jack
.................... (all files in /usr/local/...)

I guess that it's installing it in the /usr/local/ folder instead of in
/usr? does anyone know how can I solve this?
This is my recipe so far, thanks in advance for any help you can give me.


DESCRIPTION = "JACK is a low-latency audio server. It can \
connect a number of different applications to an audio \
device, as well as allowing them to share audio between \
themselves."
SECTION = "libs/multimedia"

LICENSE = "GPLv3"
LIC_FILES_CHKSUM =
"file://windows/Setup/src/COPYING;md5=d32239bcb673463ab874e80d47fae504"

DEPENDS = "python alsa-lib"
PR = "r0"

SRCREV = "e814e508d534d36c90692ee2319f55ea0525a217"
SRC_URI = "git://github.com/jackaudio/jack2.git;protocol=http"

S = "${WORKDIR}/git"

PACKAGES =+ "libjack jack-server jack-utils"


do_configure() {
./waf configure --alsa --debug --clients=128
}

do_compile() {
./waf build
}

do_install() {
./waf install --destdir="${D}"
}

FILES_libjack = "${libdir}/*.so.* ${libdir}/jack/*.so"
FILES_jack-server = "${bindir}/jackd"
FILES_jack-utils = "${bindir}/*"

--90e6ba614e804f05c704df054993
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div style>I&#39;m creating a recipe=
 for <a href=3D"http://jack2_1.9.9.5.bb">jack2_1.9.9.5.bb</a>. The tarball =
uses waf to configure, compile and install. It configures and compiles corr=
ectly, but in the installation part I get:</div>
<div style><br></div><div style><div>WARNING: QA Issue: jack2: Files/direct=
ories were installed but not shipped</div><div>=A0 /usr/local</div><div>=A0=
 /usr/local/include</div><div>=A0 /usr/local/share</div><div>=A0 /usr/local=
/bin</div>
<div>=A0 /usr/local/lib</div><div>=A0 /usr/local/include/jack</div><div sty=
le>.................... (all files in /usr/local/...)</div><div><br></div><=
div style>I guess that it&#39;s installing it in the /usr/local/ folder ins=
tead of in /usr? does anyone know how can I solve this?</div>
<div style>This is my recipe so far, thanks in advance for any help you can=
 give me.</div><div style><br></div><div style><br></div><div style><div>DE=
SCRIPTION =3D &quot;JACK is a low-latency audio server. It can \</div><div>
connect a number of different applications to an audio \</div><div>device, =
as well as allowing them to share audio between \</div><div>themselves.&quo=
t;</div><div>SECTION =3D &quot;libs/multimedia&quot;</div><div><br></div>
<div>LICENSE =3D &quot;GPLv3&quot;</div><div>LIC_FILES_CHKSUM =3D &quot;fil=
e://windows/Setup/src/COPYING;md5=3Dd32239bcb673463ab874e80d47fae504&quot;<=
/div><div><br></div><div>DEPENDS =3D &quot;python alsa-lib&quot;</div><div>=
PR =3D &quot;r0&quot;</div>
<div><br></div><div>SRCREV =3D &quot;e814e508d534d36c90692ee2319f55ea0525a2=
17&quot;</div><div>SRC_URI =3D &quot;git://<a href=3D"http://github.com/jac=
kaudio/jack2.git;protocol=3Dhttp">github.com/jackaudio/jack2.git;protocol=
=3Dhttp</a>&quot;</div>
<div><br></div><div>S =3D &quot;${WORKDIR}/git&quot;</div><div><br></div><d=
iv>PACKAGES =3D+ &quot;libjack jack-server jack-utils&quot;</div><div><br><=
/div><div><br></div><div>do_configure() {</div><div><span class=3D"" style=
=3D"white-space:pre">	</span>./waf configure --alsa --debug --clients=3D128=
=A0</div>
<div>}</div><div><br></div><div>do_compile() {</div><div><span class=3D"" s=
tyle=3D"white-space:pre">	</span>./waf build=A0</div><div>}</div><div><br><=
/div><div>do_install() {</div><div><span class=3D"" style=3D"white-space:pr=
e">	</span>./waf install --destdir=3D&quot;${D}&quot;</div>
<div>}</div><div><br></div><div>FILES_libjack =3D &quot;${libdir}/*.so.* ${=
libdir}/jack/*.so&quot;</div><div>FILES_jack-server =3D &quot;${bindir}/jac=
kd&quot;</div><div>FILES_jack-utils =3D &quot;${bindir}/*&quot;</div></div>=
<div style>
<br></div></div></div>

--90e6ba614e804f05c704df054993--
