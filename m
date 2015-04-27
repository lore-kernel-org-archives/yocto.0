Return-Path: <sureshnagaraja@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F16CFE0086D; Mon, 27 Apr 2015 11:32:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sureshnagaraja[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC72BE00477
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2015 11:32:26 -0700 (PDT)
Received: by obbeb7 with SMTP id eb7so90174052obb.3
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2015 11:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=/utslrmveVmu4XsNWPCssZ9/r7p2E3woG1KK3Z96py0=;
	b=zQXZNZDBqFCbJmpS/r9/xjQ6JBJH6Lp5iZ92VjqaBUrATiQ58Bn0ruzqdx6i3vhhOa
	74oCeZ9P6HL28K5rXhsswXNpi8wv2svkCDhDm5uqDxWFJMiuTZnrLuDHXSn200bbFfvX
	TyCGJjtddVyu+edo4C19aGWcXX5RCJHYEOY8Sk2ZMeJkW4hJcHomHUG8zriyvQ2T1I4D
	ywU5UBjZLD0w+RfzFD5SlpBYS2550tX7+pzLVvlUEkNu4cMNWViynjeaq6IanseDpMhm
	8+xSWjw3fdiECB9XqLwFE2whN59ICM25ZMWUgTFmKgG4pn7PjbeA+TZRZ4nTen0GAogk
	8MoA==
MIME-Version: 1.0
X-Received: by 10.202.212.86 with SMTP id l83mr10589774oig.50.1430159545627;
	Mon, 27 Apr 2015 11:32:25 -0700 (PDT)
Received: by 10.60.62.106 with HTTP; Mon, 27 Apr 2015 11:32:25 -0700 (PDT)
Date: Mon, 27 Apr 2015 11:32:25 -0700
Message-ID: <CACbZ9VL8BtqUEdsdcqfZrqL3Aaa+_J3j9kZV=cBb87aN_JqWOQ@mail.gmail.com>
From: Suresh Nagarajan <sureshnagaraja@gmail.com>
To: yocto@yoctoproject.org, Khem Raj <raj.khem@gmail.com>
X-Mailman-Approved-At: Wed, 29 Apr 2015 08:07:35 -0700
Subject: libgomp inclusion
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
X-List-Received-Date: Mon, 27 Apr 2015 18:32:30 -0000
Content-Type: multipart/alternative; boundary=001a113d23ecb078ee0514b8f7b3

--001a113d23ecb078ee0514b8f7b3
Content-Type: text/plain; charset=UTF-8

Hi,

I'm trying to look to see if OpenMP library is included in my yocto build.

I could not find libgomp library in /usr/lib
However, when I look at gcc-runtime.inc, I do notice that

RUNTIMETARGET = "libssp libstdc++-v3 libgomp"
PACKAGES = "\
  ${PN}-dbg \
  libstdc++ \
  libstdc++-precompile-dev \
  libstdc++-dev \
  libstdc++-staticdev \
  libg2c \
  libg2c-dev \
  libssp \
  libssp-dev \
  libssp-staticdev \
  libgfortran \
  libgfortran-dev \
  libgfortran-staticdev \
  libmudflap \
  libmudflap-dev \
  libmudflap-staticdev \
  libquadmath \
  libquadmath-dev \
  libquadmath-staticdev \
  libgomp \
  libgomp-dev \
  libgomp-staticdev \


Also, I noticed that in gmane and other web-pages that it is OK to have
INTIAL/INTERMEDIATE EXTRA_OECONF  to have --disable-libgomp

However, it is not disabled in BASE which reads
EXTRA_OECONF_BASE = " --enable-lto \
--enable-libssp \
--disable-bootstrap \
--disable-libmudflap \
--with-system-zlib \
--with-linker-hash-style=${LINKER_HASH_STYLE} \
--enable-linker-build-id \
--with-ppl=no \
--with-cloog=no \
--enable-checking=release \
--enable-cheaders=c_global "


Also, it is mentioned that <see below>

Autoconf will not detect OpenMP after this change, because it will
build and run a target binary on the build system. In order to use
OpenMP, the variable ac_cv_prog_c_openmp=-fopenmp must be set.

Where exactly are we supposed to set this variable ac_cv_prog_c_openmp=-fopenmp?


Thanks

Suresh

--001a113d23ecb078ee0514b8f7b3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I&#39;m trying to look to see if OpenMP library=
 is included in my yocto build.<div><br></div><div>I could not find libgomp=
 library in /usr/lib</div><div>However, when I look at gcc-runtime.inc, I d=
o notice that</div><div><br></div><div><div><div>RUNTIMETARGET =3D &quot;li=
bssp libstdc++-v3 libgomp&quot;</div></div></div><div><div>PACKAGES =3D &qu=
ot;\</div><div>=C2=A0 ${PN}-dbg \</div><div>=C2=A0 libstdc++ \</div><div>=
=C2=A0 libstdc++-precompile-dev \</div><div>=C2=A0 libstdc++-dev \</div><di=
v>=C2=A0 libstdc++-staticdev \</div><div>=C2=A0 libg2c \</div><div>=C2=A0 l=
ibg2c-dev \</div><div>=C2=A0 libssp \</div><div>=C2=A0 libssp-dev \</div><d=
iv>=C2=A0 libssp-staticdev \</div><div>=C2=A0 libgfortran \</div><div>=C2=
=A0 libgfortran-dev \</div><div>=C2=A0 libgfortran-staticdev \</div><div>=
=C2=A0 libmudflap \</div><div>=C2=A0 libmudflap-dev \</div><div>=C2=A0 libm=
udflap-staticdev \</div><div>=C2=A0 libquadmath \</div><div>=C2=A0 libquadm=
ath-dev \</div><div>=C2=A0 libquadmath-staticdev \</div><div>=C2=A0<span st=
yle=3D"background-color:rgb(255,255,0)"> libgomp \</span></div><div>=C2=A0<=
span style=3D"background-color:rgb(255,255,0)"> libgomp-dev \</span></div><=
div>=C2=A0 libgomp-staticdev \</div></div><div><br></div><div><br></div><di=
v>Also, I noticed that in gmane and other web-pages that it is OK to have I=
NTIAL/INTERMEDIATE EXTRA_OECONF =C2=A0to have=C2=A0--disable-libgomp</div><=
div><br></div><div>However, it is not disabled in BASE which reads</div><di=
v><div>EXTRA_OECONF_BASE =3D &quot; --enable-lto \</div><div><span class=3D=
"" style=3D"white-space:pre">			</span>--enable-libssp \</div><div><span cl=
ass=3D"" style=3D"white-space:pre">			</span>--disable-bootstrap \</div><di=
v><span class=3D"" style=3D"white-space:pre">			</span>--disable-libmudflap=
 \</div><div><span class=3D"" style=3D"white-space:pre">			</span>--with-sy=
stem-zlib \</div><div><span class=3D"" style=3D"white-space:pre">			</span>=
--with-linker-hash-style=3D${LINKER_HASH_STYLE} \</div><div><span class=3D"=
" style=3D"white-space:pre">			</span>--enable-linker-build-id \</div><div>=
<span class=3D"" style=3D"white-space:pre">			</span>--with-ppl=3Dno \</div=
><div><span class=3D"" style=3D"white-space:pre">			</span>--with-cloog=3Dn=
o \</div><div><span class=3D"" style=3D"white-space:pre">			</span>--enable=
-checking=3Drelease \</div><div><span class=3D"" style=3D"white-space:pre">=
			</span>--enable-cheaders=3Dc_global &quot;</div></div><div><br></div><di=
v><br></div><div>Also, it is mentioned that &lt;see below&gt;<br><pre class=
=3D"" style=3D"font-family:Menlo,&#39;Liberation Mono&#39;,Consolas,&#39;De=
jaVu Sans Mono&#39;,&#39;Ubuntu Mono&#39;,&#39;Courier New&#39;,&#39;andale=
 mono&#39;,&#39;lucida console&#39;,monospace;font-size:12px;white-space:pr=
e-wrap;padding:0px;margin-top:15px;margin-bottom:0px;line-height:1.42857142=
9;word-break:break-all;word-wrap:break-word;color:rgb(51,51,51);border:none=
;border-radius:4px;background-image:none;background-repeat:initial">Autocon=
f will not detect OpenMP after this change, because it will
build and run a target binary on the build system. In order to use
OpenMP, the variable ac_cv_prog_c_openmp=3D-fopenmp must be set.</pre><pre =
class=3D"" style=3D"font-family:Menlo,&#39;Liberation Mono&#39;,Consolas,&#=
39;DejaVu Sans Mono&#39;,&#39;Ubuntu Mono&#39;,&#39;Courier New&#39;,&#39;a=
ndale mono&#39;,&#39;lucida console&#39;,monospace;font-size:12px;white-spa=
ce:pre-wrap;padding:0px;margin-top:15px;margin-bottom:0px;line-height:1.428=
571429;word-break:break-all;word-wrap:break-word;color:rgb(51,51,51);border=
:none;border-radius:4px;background-image:none;background-repeat:initial"><s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;line-height:normal;white-space:normal">Where exactly are we supposed to =
set this variable=C2=A0</span><span style=3D"line-height:1.428571429">ac_cv=
_prog_c_openmp=3D-fopenmp?</span><br></pre><pre class=3D"" style=3D"font-fa=
mily:Menlo,&#39;Liberation Mono&#39;,Consolas,&#39;DejaVu Sans Mono&#39;,&#=
39;Ubuntu Mono&#39;,&#39;Courier New&#39;,&#39;andale mono&#39;,&#39;lucida=
 console&#39;,monospace;font-size:12px;white-space:pre-wrap;padding:0px;mar=
gin-top:15px;margin-bottom:0px;line-height:1.428571429;word-break:break-all=
;word-wrap:break-word;color:rgb(51,51,51);border:none;border-radius:4px;bac=
kground-image:none;background-repeat:initial"><span style=3D"line-height:1.=
428571429"><br></span></pre><pre class=3D"" style=3D"font-family:Menlo,&#39=
;Liberation Mono&#39;,Consolas,&#39;DejaVu Sans Mono&#39;,&#39;Ubuntu Mono&=
#39;,&#39;Courier New&#39;,&#39;andale mono&#39;,&#39;lucida console&#39;,m=
onospace;font-size:12px;white-space:pre-wrap;padding:0px;margin-top:15px;ma=
rgin-bottom:0px;line-height:1.428571429;word-break:break-all;word-wrap:brea=
k-word;color:rgb(51,51,51);border:none;border-radius:4px;background-image:n=
one;background-repeat:initial"><span style=3D"line-height:1.428571429">Than=
ks</span></pre><pre class=3D"" style=3D"font-family:Menlo,&#39;Liberation M=
ono&#39;,Consolas,&#39;DejaVu Sans Mono&#39;,&#39;Ubuntu Mono&#39;,&#39;Cou=
rier New&#39;,&#39;andale mono&#39;,&#39;lucida console&#39;,monospace;font=
-size:12px;white-space:pre-wrap;padding:0px;margin-top:15px;margin-bottom:0=
px;line-height:1.428571429;word-break:break-all;word-wrap:break-word;color:=
rgb(51,51,51);border:none;border-radius:4px;background-image:none;backgroun=
d-repeat:initial"><span style=3D"line-height:1.428571429">Suresh</span></pr=
e><pre class=3D"" style=3D"font-family:Menlo,&#39;Liberation Mono&#39;,Cons=
olas,&#39;DejaVu Sans Mono&#39;,&#39;Ubuntu Mono&#39;,&#39;Courier New&#39;=
,&#39;andale mono&#39;,&#39;lucida console&#39;,monospace;font-size:12px;wh=
ite-space:pre-wrap;padding:0px;margin-top:15px;margin-bottom:0px;line-heigh=
t:1.428571429;word-break:break-all;word-wrap:break-word;color:rgb(51,51,51)=
;border:none;border-radius:4px;background-image:none;background-repeat:init=
ial"><br></pre></div></div>

--001a113d23ecb078ee0514b8f7b3--
