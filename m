Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACAFCE00D8C; Wed, 15 May 2019 05:32:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0763CE00D75
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 05:32:33 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id d8so1858918lfb.8
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 05:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Lsytp+rhpSTQrGu+uaVp8CN5AfN8AwuEbu0uBsWPUec=;
	b=KzIL4JhYGlSKSxvn0cvJpanQIssO/CIfXj398vmPDq3jxjdBTN8LdEKGosl1jmmVox
	GkVov+5pqs8JZ+Fds7Psb0lxVQdNXY650CwSM8oq1QZQR7ESiMLvZUvFKqzq6OeDiJbC
	KO/kdm3aUVOJl/2C107Zfltx8cr4nwaguCMZPCX5Wvg+er8kvBa+oiwmt1Ebp2x2Go7+
	NmkNFw/UxyXCcnUH6fpQIjdxnWfj39UPfsBFFLsi+OnOmMTYdH06QKbu5azVvg3JuTKV
	3icwfiG6k4ogeW/280AHVea4xkxjDnirCg7olzEBPDVjDX7KE0zHSok1tSq1dPSG8YDc
	wOeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Lsytp+rhpSTQrGu+uaVp8CN5AfN8AwuEbu0uBsWPUec=;
	b=K+AuYtWKh1YIUkeujyvYBWKiBJoPFlEy3zQblRnN7LTnVwAxIWrtQ/XSA7iUOOnH0P
	9CCvrKhTMpn4VGU++7A7bAl1nx68iN2/lNtenUu/dZcHGStCQ14Tm/CP3P9JSFCiZ4xk
	vZRGxnHHpiiZP2U/1xoXBdOn3VxImdO5Fs2UUnYrwcY88vkXQQUszmOn1EfT8mTRdvj2
	h0ymysTzQwtUvB5qh9atKKcAwTJ065KBURv/3TfI73hQ5sfGAPPWvZgvd8+LcMR3fjc5
	FrLh39y8WHstdyXTKXsmL3ZMke8FoMYnZZ44xKKvmKjF8/p02mJa8nBRfmN+U5EBDngn
	tJFA==
X-Gm-Message-State: APjAAAXJxBBJO4SaD/DVxLJU+UR6jYLh+6quizPMuPdfQvo7gUNez/CV
	FaO0CbgdSD87vuuRyU5uBgWEz9nHuFO92ztNgtbrYFDB
X-Google-Smtp-Source: APXvYqxCTDiHCY/OCDP0BewwDGTlN5U9I8Xk2tzd4e0xIFiodqErEv5n6PPQrftWMv6lKk3neDBzgNNCjDjyLn/BGXg=
X-Received: by 2002:ac2:5446:: with SMTP id d6mr4550938lfn.47.1557923552849;
	Wed, 15 May 2019 05:32:32 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Wed, 15 May 2019 14:32:21 +0200
Message-ID: <CAAx3WaDWNX3Rwh1qAOaxa_tmbgXP8Mtrt5yTDGD8J8quT7sVTg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Unable to install additional tools in SDK
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
X-List-Received-Date: Wed, 15 May 2019 12:32:34 -0000
Content-Type: multipart/alternative; boundary="000000000000f473eb0588ec5797"

--000000000000f473eb0588ec5797
Content-Type: text/plain; charset="UTF-8"

Hi all,

I need to include in my native sdk the ODB compiler in order to produce
some sources. Since it is a nativesdk- only package, I wrote the following
nativesdk-odb-compiler_2.5.0.bb
------------------------------------------------------------------------------------------------------------------------
inherit nativesdk

CONFIG_NAME = "odb-gcc-X"
B = "${WORKDIR}/build2"

# We must have a valid configuration before fetching
do_fetch_prepend() {
    install -d ${B}
    bpkg create -d ${B}/${CONFIG_NAME} cc       \
        --wipe                                  \
        config.cxx=g++                          \
        config.cc.coptions=-O3                  \
        config.install.root=${D}/usr
}

do_fetch() {
    bpkg fetch --trust-yes \
        --directory ${B}/${CONFIG_NAME} https://pkg.cppget.org/1/beta
}

do_compile() {
    bpkg build odb -y ${PARALLEL_MAKE} --directory ${B}/${CONFIG_NAME}
}

do_install() {
    bpkg install odb --verbose 3 --directory ${B}/${CONFIG_NAME}
}

FILES_${PN}_append = " ${SDKPATHNATIVE}"
FILES_${PN}_append = " /usr/*"
------------------------------------------------------------------------------------------------------------------------
Then added the following line in my custom image recipe:

TOOLCHAIN_HOST_TASK_append = " nativesdk-odb-compiler"

Then I run bitbake <image> -c populate_sdk and the SDK is build. Once
installed, there is no trace about ODB. I digged in the bitbake output
directories (image/, package/ and package-split/) and the file tree is
correct, also the rpm packages are generated (however the main package is
1/10th of the ODB installed tree). Maybe I'm missing something?

Thanks in advance,
Gabriele

--000000000000f473eb0588ec5797
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><=
br></div><div>I need to include in my native sdk the ODB compiler in order =
to produce some sources. Since it is a nativesdk- only package, I wrote the=
 following <a href=3D"http://nativesdk-odb-compiler_2.5.0.bb">nativesdk-odb=
-compiler_2.5.0.bb</a></div><div>------------------------------------------=
---------------------------------------------------------------------------=
---</div><div>inherit nativesdk<br><br>CONFIG_NAME =3D &quot;odb-gcc-X&quot=
;<br>B =3D &quot;${WORKDIR}/build2&quot;<br><br># We must have a valid conf=
iguration before fetching<br>do_fetch_prepend() {<br>=C2=A0=C2=A0=C2=A0 ins=
tall -d ${B}<br>=C2=A0=C2=A0=C2=A0 bpkg create -d ${B}/${CONFIG_NAME} cc=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 --wipe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.cxx=3Dg++=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.cc.coptions=3D-O3=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 config.install.root=
=3D${D}/usr<br>}<br><br>do_fetch() {<br>=C2=A0=C2=A0=C2=A0 bpkg fetch --tru=
st-yes \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 --directory ${B}/${C=
ONFIG_NAME} <a href=3D"https://pkg.cppget.org/1/beta">https://pkg.cppget.or=
g/1/beta</a><br>}<br><br>do_compile() {<br>=C2=A0=C2=A0=C2=A0 bpkg build od=
b -y ${PARALLEL_MAKE} --directory ${B}/${CONFIG_NAME}<br>}<br><br>do_instal=
l() {<br>=C2=A0=C2=A0=C2=A0 bpkg install odb --verbose 3 --directory ${B}/$=
{CONFIG_NAME}<br>}<br><br>FILES_${PN}_append =3D &quot; ${SDKPATHNATIVE}&qu=
ot;<br>FILES_${PN}_append =3D &quot; /usr/*&quot;</div><div>---------------=
---------------------------------------------------------------------------=
------------------------------</div><div>Then added the following line in m=
y custom image recipe:</div><div><br></div><div>TOOLCHAIN_HOST_TASK_append =
=3D &quot; nativesdk-odb-compiler&quot;</div><div><br></div><div>Then I run=
 bitbake &lt;image&gt; -c populate_sdk and the SDK is build. Once installed=
, there is no trace about ODB. I digged in the bitbake output directories (=
image/, package/ and package-split/) and the file tree is correct, also the=
 rpm packages are generated (however the main package is 1/10th of the ODB =
installed tree). Maybe I&#39;m missing something?</div><div><br></div><div>=
Thanks in advance,</div><div>Gabriele<br></div></div></div></div>

--000000000000f473eb0588ec5797--
