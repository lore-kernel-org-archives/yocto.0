Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC321E00C70; Tue, 10 Jul 2018 09:35:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F8FBE004F6
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 09:35:42 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id l16-v6so32229119ita.0
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 09:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FVMa50EtvNyOBNlm73DgvExc793MZiGLsaWCMUhZstE=;
	b=kksIfxhdEfj6TeDvbunHZVb1ryT1SDn0RHRpsgrUVXzRm5a2JGrLa86EBbsiR95ZgY
	WjYl5c0tE3Y1Jsbey4fwNujteUaVbHfYP4WpAs5WDDWv7Fe7NBOK67ZUo8EWxkqaV4MX
	C+6QfkSvocVG6ch1MiY5iKqSL7zSNUbQSbwP2Fld/bYNp3VhMufVP6s8NDtcM4G+/dYq
	lntK8CodJRFQZfVAVjA69TWj5/245HSZhV2SLNVlaYZzoCMv9spc+Mk/zvVs4JE8agmI
	5N+LIT6iZu4CMM9LGvv0R4FfP2kF2NaBACxH2ON2mvVVjVsjTG28Gjz4Z8+2/UD1RAdQ
	X/0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FVMa50EtvNyOBNlm73DgvExc793MZiGLsaWCMUhZstE=;
	b=JJ/qasKq8DFWcmqlZ8yMnxBp60R8YpZKJ/37cwStsMG6SFFrjkMDqtGhywP8ZatXdq
	1JBXNExQjvpwAT3fzHod+jWCapiTLtHbR0G3uF4H2IjL+LU4KhYgoJ01ko+6YyjtLsu4
	osLhKXk+hAlT2kuG2sotjvjaLFyP+oouy/i7lLkIqTiPZq+8wMphlaipSubVsNvOhp3t
	NIOaRnsrjgF2FFI/KswhYfknluwpVeXCEEDkwURYfVQ5kS+AAYvLyLbgCrYI6jWraj5i
	KBn6I3JBBappQHRcOnjN4JivrcbV9Yxw9lPesPrRnGWIzGx+FnaQO9ZpNxCjzKgT4/Tj
	kpag==
X-Gm-Message-State: AOUpUlFSZCumXr+gsRCDYFqKKqn5tg2hg7r4jdbovtedDhreNpfgtHkj
	luvLS8XmIke+ReAHpz9wGoPJtyZRV45D3uK1X280PA==
X-Google-Smtp-Source: AAOMgpc6mcfMMQBrVu8zFyVzYhH0nihVoEZ3OU5OkSQeUEwjKooYgElEGIupiGiPYOVgBJbJmj/kjZdZ+gPhTKUvF3s=
X-Received: by 2002:a24:89c3:: with SMTP id
	s186-v6mr9922057itd.122.1531240541473; 
	Tue, 10 Jul 2018 09:35:41 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 10 Jul 2018 12:35:30 -0400
Message-ID: <CAFzUWGkMqX_yUhE-+Mo+8Uu_MzeD7g_V+r8eAOs_72onvRDJmg@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: LLVM: error adding symbols: File in wrong format
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
X-List-Received-Date: Tue, 10 Jul 2018 16:35:43 -0000
Content-Type: multipart/alternative; boundary="0000000000008a57de0570a7b8b6"

--0000000000008a57de0570a7b8b6
Content-Type: text/plain; charset="UTF-8"

Hi all,

|
/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/recipe-sysroot-native/usr/lib/libLLVMSupport.a:
error adding symbols: File in wrong format
| clang-5.0: error: linker command failed with exit code 1 (use -v to see
invocation)
|
interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/build.make:95:
recipe for target 'interpreter/llvm/src/bin/clang-tblgen' failed
| make[2]: *** [interpreter/llvm/src/bin/clang-tblgen] Error 1
| make[2]: Leaving directory
'/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00-r0/build'
| CMakeFiles/Makefile2:791: recipe for target
'interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/all'
failed
| make[1]: ***
[interpreter/llvm/src/tools/clang/utils/TableGen/CMakeFiles/clang-tblgen.dir/all]
Error 2
| make[1]: *** Waiting for unfinished jobs....

Here's the full log:
https://gist.github.com/3403addf74b5e902adec93b75fb0e138

Any ideas how to get a more verbose invocation if needed? I suspect the
error is due to some pre-built libraries being shipped in this recipe, but
I'm not sure what's causing the error in the first place.

Note: I am using meta-clang. The recipe I'm using looks like:

SUMMARY = "Numerical data analysis framework (OO)"
DESCRIPTION = "Object oriented framework for large scale data analysis"
HOMEPAGE = "http://root.cern.ch"
LICENSE = "LGPLv2.1"
LIC_FILES_CHKSUM = "file://LICENSE;md5=5ec773ab82cbea1f17ec5b98e8ce60cf"
SRC_URI = "https://root.cern.ch/download/root_v${PV}.source.tar.gz"

S = "${WORKDIR}/${BPN}-${PV}"

TOOLCHAIN = "clang"
#TARGET_CXXFLAGS_append_toolchain-clang = " -stdlib=libc++ "

DEPENDS += "llvm-native libpcre lz4 libx11 libxpm libxft gsl fftw
libatomic-ops freetype glew xrootd"

inherit cmake pkgconfig pythonnative


do_configure_prepend(){
export FC=${GFORTRAN}
}

EXTRA_OECMAKE = "\
    -Drootfit=ON \
    -Dminuit2=ON \
    -Dpython=ON \
    -Dssl=ON \
    -Dxrootd=ON \
    -Dbuiltin_freetype=OFF \
    -Dbuiltin_llvm=OFF \
    -Dbuiltin_glew=OFF \
    -Dastiff=OFF \
    -Dasimage=OFF \
    -Dbuiltin_afterimage=OFF \
    -Dalien=OFF \
    -Dvdt=OFF \
"

-- 
Giordon Stark

--0000000000008a57de0570a7b8b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div><font face=3D"monosp=
ace">| /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.14.00=
-r0/recipe-sysroot-native/usr/lib/libLLVMSupport.a: error adding symbols: F=
ile in wrong format</font></div><div><font face=3D"monospace">| clang-5.0: =
error: linker command failed with exit code 1 (use -v to see invocation)</f=
ont></div><div><font face=3D"monospace">| interpreter/llvm/src/tools/clang/=
utils/TableGen/CMakeFiles/clang-tblgen.dir/build.make:95: recipe for target=
 &#39;interpreter/llvm/src/bin/clang-tblgen&#39; failed</font></div><div><f=
ont face=3D"monospace">| make[2]: *** [interpreter/llvm/src/bin/clang-tblge=
n] Error 1</font></div><div><font face=3D"monospace">| make[2]: Leaving dir=
ectory &#39;/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/root/6.=
14.00-r0/build&#39;</font></div><div><font face=3D"monospace">| CMakeFiles/=
Makefile2:791: recipe for target &#39;interpreter/llvm/src/tools/clang/util=
s/TableGen/CMakeFiles/clang-tblgen.dir/all&#39; failed</font></div><div><fo=
nt face=3D"monospace">| make[1]: *** [interpreter/llvm/src/tools/clang/util=
s/TableGen/CMakeFiles/clang-tblgen.dir/all] Error 2</font></div><div><font =
face=3D"monospace">| make[1]: *** Waiting for unfinished jobs....</font></d=
iv><div><br></div><div>Here&#39;s the full log: <a href=3D"https://gist.git=
hub.com/3403addf74b5e902adec93b75fb0e138">https://gist.github.com/3403addf7=
4b5e902adec93b75fb0e138</a>=C2=A0</div><div><br></div><div>Any ideas how to=
 get a more verbose invocation if needed? I suspect the error is due to som=
e pre-built libraries being shipped in this recipe, but I&#39;m not sure wh=
at&#39;s causing the error in the first place.</div><div><br></div><div>Not=
e: I am using meta-clang. The recipe I&#39;m using looks like:</div><div><b=
r></div><div><div><font face=3D"monospace">SUMMARY =3D &quot;Numerical data=
 analysis framework (OO)&quot;</font></div><div><font face=3D"monospace">DE=
SCRIPTION =3D &quot;Object oriented framework for large scale data analysis=
&quot;</font></div><div><font face=3D"monospace">HOMEPAGE =3D &quot;<a href=
=3D"http://root.cern.ch">http://root.cern.ch</a>&quot;</font></div><div><fo=
nt face=3D"monospace">LICENSE =3D &quot;LGPLv2.1&quot;</font></div><div><fo=
nt face=3D"monospace">LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D5ec77=
3ab82cbea1f17ec5b98e8ce60cf&quot;</font></div><div><font face=3D"monospace"=
>SRC_URI =3D &quot;<a href=3D"https://root.cern.ch/download/root_v${PV}.sou=
rce.tar.gz">https://root.cern.ch/download/root_v${PV}.source.tar.gz</a>&quo=
t;</font></div><div><font face=3D"monospace"><br></font></div><div><font fa=
ce=3D"monospace">S =3D &quot;${WORKDIR}/${BPN}-${PV}&quot;</font></div><div=
><font face=3D"monospace"><br></font></div><div><font face=3D"monospace">TO=
OLCHAIN =3D &quot;clang&quot;</font></div><div><font face=3D"monospace">#TA=
RGET_CXXFLAGS_append_toolchain-clang =3D &quot; -stdlib=3Dlibc++ &quot;</fo=
nt></div><div><font face=3D"monospace"><br></font></div><div><font face=3D"=
monospace">DEPENDS +=3D &quot;llvm-native libpcre lz4 libx11 libxpm libxft =
gsl fftw libatomic-ops freetype glew xrootd&quot;</font></div><div><font fa=
ce=3D"monospace"><br></font></div><div><font face=3D"monospace">inherit cma=
ke pkgconfig pythonnative</font></div><div><font face=3D"monospace"><br></f=
ont></div><div><font face=3D"monospace"><br></font></div><div><font face=3D=
"monospace">do_configure_prepend(){</font></div><div><font face=3D"monospac=
e"><span style=3D"white-space:pre">	</span>export FC=3D${GFORTRAN}</font></=
div><div><font face=3D"monospace">}</font></div><div><font face=3D"monospac=
e"><br></font></div><div><font face=3D"monospace">EXTRA_OECMAKE =3D &quot;\=
</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Drootfit=3DON \</=
font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dminuit2=3DON \</fo=
nt></div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dpython=3DON \</font>=
</div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dssl=3DON \</font></div>=
<div><font face=3D"monospace">=C2=A0 =C2=A0 -Dxrootd=3DON \</font></div><di=
v><font face=3D"monospace">=C2=A0 =C2=A0 -Dbuiltin_freetype=3DOFF \</font><=
/div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dbuiltin_llvm=3DOFF \</fo=
nt></div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dbuiltin_glew=3DOFF \=
</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dastiff=3DOFF \</=
font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dasimage=3DOFF \</f=
ont></div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dbuiltin_afterimage=
=3DOFF \</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dalien=3D=
OFF \</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 -Dvdt=3DOFF \=
</font></div><div><font face=3D"monospace">&quot;</font></div></div><div><b=
r></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--0000000000008a57de0570a7b8b6--
