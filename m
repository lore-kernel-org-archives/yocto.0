Return-Path: <jngigiw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1058E00B76; Wed, 19 Jul 2017 05:58:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jngigiw[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.47 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A96CE00B76
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 05:58:38 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id k14so47649pgr.0
	for <yocto@yoctoproject.org>; Wed, 19 Jul 2017 05:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mZCbk+a/EWRfirRbsh2Uuor+KgkZGh7jRjMJlg85VQs=;
	b=gfAQ0PamfWR3sL99PAnct8HJgczLu4f9BnVaKR1nX2+5BGcAITRczvzcqpqJIfn2lA
	JtL0B8TV8XcRZHrP6e4w2puyLsS05JJmcM2Mx0PRpm7av6Bh1avrRxG2NbubhlDPRbZd
	YW+lYh/6Vz6silM2SLZSx1CWD4orNqKrxocaDUJ6WAVq5pMKYkWTQO8CvEesIbOEowHZ
	kRGLrLIy3hWdlGqd2YzPg1GTypYOBKi4BDErdpMDFD2UGBFmKCckoD7POYSNsQSvDiQ9
	AtH0DtZvygSZW7iuVvjkQh+mtFnTYa1AcLexbDgkH1ZYEyU6zMuJ6KrvjXTX1CxcADXy
	z5gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mZCbk+a/EWRfirRbsh2Uuor+KgkZGh7jRjMJlg85VQs=;
	b=OnynAiGsZK42LW8HQ6O89pBWG576IsOucoHSVsg+/IFRjaS+JAjgVXz0sb2onXeh2h
	TGwmTZDYpMsZnkrPdCPuB9dsTfh93VhqLdynnM4ImurXA0NT1n9clM5D7nRGyNIOqY4C
	jsnd7n7maZMnHjxwIQSRXdr+J1ZWjhXvnDLulsGWq/NkM5S+W1wHyPF+F6ejh+T0AAe4
	xzPsQUCIQ9grfDd8TwVYXaZXhpTZm/0ZFAOmrKf4+47Os/LOh1aDPeAhPdcJzhqXPri7
	Zjt+b4+yPlGBnEMywxjIIQbvtZznotvyZcXj1uViSU1geDatu8fg3lwnmNdwyOHXHyY5
	GaVg==
X-Gm-Message-State: AIVw111ktXINlEPe3+/Va7kHMcvOgZxH3FxAleSIJiqo+CnQtZ3S5NuF
	QqSjV9lh5GwWFF4rCjqaS9nZSFD1rKg4
X-Received: by 10.98.205.69 with SMTP id o66mr2803435pfg.173.1500469118359;
	Wed, 19 Jul 2017 05:58:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.150.200 with HTTP; Wed, 19 Jul 2017 05:58:38 -0700 (PDT)
From: Joseph Ngigi <jngigiw@gmail.com>
Date: Wed, 19 Jul 2017 15:58:38 +0300
Message-ID: <CABaDK3V7Rdt4ahQ7kBHVHr8=T3Lct8a7kWTLV6yjn9Mu+5nu5w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_compile errors.
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
X-List-Received-Date: Wed, 19 Jul 2017 12:58:40 -0000
Content-Type: multipart/alternative; boundary="94eb2c1458eccbdc3c0554ab30f4"

--94eb2c1458eccbdc3c0554ab30f4
Content-Type: text/plain; charset="UTF-8"

I seem to be having a lot of do_compile failure errors, building
core-image-sato for cubieboard2 using poky pyro. I do not understand
whether it is a gcc compiler issue or any other problem. Any assistance
will be highly appreciated.

Below is my logfile.

DEBUG: Executing shell function do_compile
NOTE: make -j 8
ERROR: oe_runmake failed
cd lib; make all
make[1]: Entering directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
make[1]: Nothing to be done for 'all'.
make[1]: Leaving directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/lib'
cd src; make all
make[1]: Entering directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
g++
-isystem/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/include
-O2 -pipe -D_GLIBCXX_USE_CXX11_ABI=0
-L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
-L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
-Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
-Wl,-rpath-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
-Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/usr/lib
-Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib
-Wl,-O1 -o gperf version.o positions.o options.o keyword.o keyword-list.o
input.o bool-array.o hash-table.o search.o output.o main.o ../lib/libgp.a
-lm
g++: error: version.o: No such file or directory
g++: error: positions.o: No such file or directory
g++: error: options.o: No such file or directory
g++: error: keyword.o: No such file or directory
g++: error: keyword-list.o: No such file or directory
g++: error: input.o: No such file or directory
g++: error: bool-array.o: No such file or directory
g++: error: hash-table.o: No such file or directory
g++: error: output.o: No such file or directory
g++: error: main.o: No such file or directory
g++: error: ../lib/libgp.a: No such file or directory
Makefile:74: recipe for target 'gperf' failed
make[1]: *** [gperf] Error 1
make[1]: Leaving directory
'/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build/src'
Makefile:33: recipe for target 'all' failed
make: *** [all] Error 2
ERROR: Function failed: do_compile (log file is located at
/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_compile.600)

-- 
J.W.Ngigi

--94eb2c1458eccbdc3c0554ab30f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I seem to be having a lot of do_compile failure error=
s, building core-image-sato for cubieboard2 using poky pyro. I do not under=
stand whether it is a gcc compiler issue or any other problem. Any assistan=
ce will be highly appreciated.<br><br></div>Below is my logfile.<br><br cle=
ar=3D"all"><div><div>DEBUG: Executing shell function do_compile<br>NOTE: ma=
ke -j 8<br>ERROR: oe_runmake failed<br>cd lib; make all<br>make[1]: Enterin=
g directory &#39;/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_=
64-linux/gperf-native/3.0.4-r0/build/lib&#39;<br>make[1]: Nothing to be don=
e for &#39;all&#39;.<br>make[1]: Leaving directory &#39;/home/ngigijoe/src/=
git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/build=
/lib&#39;<br>cd src; make all<br>make[1]: Entering directory &#39;/home/ngi=
gijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.=
4-r0/build/src&#39;<br>g++=C2=A0 -isystem/home/ngigijoe/src/git/pyro/poky/c=
ubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-nativ=
e/usr/include -O2 -pipe -D_GLIBCXX_USE_CXX11_ABI=3D0 -L/home/ngigijoe/src/g=
it/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe=
-sysroot-native/usr/lib -L/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/=
work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib -Wl,-rpat=
h-link,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/g=
perf-native/3.0.4-r0/recipe-sysroot-native/usr/lib -Wl,-rpath-link,/home/ng=
igijoe/src/git/pyro/poky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0=
.4-r0/recipe-sysroot-native/lib -Wl,-rpath,/home/ngigijoe/src/git/pyro/poky=
/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-nat=
ive/usr/lib -Wl,-rpath,/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/wor=
k/x86_64-linux/gperf-native/3.0.4-r0/recipe-sysroot-native/lib -Wl,-O1 -o g=
perf version.o positions.o options.o keyword.o keyword-list.o input.o bool-=
array.o hash-table.o search.o output.o main.o ../lib/libgp.a -lm<br>g++: er=
ror: version.o: No such file or directory<br>g++: error: positions.o: No su=
ch file or directory<br>g++: error: options.o: No such file or directory<br=
>g++: error: keyword.o: No such file or directory<br>g++: error: keyword-li=
st.o: No such file or directory<br>g++: error: input.o: No such file or dir=
ectory<br>g++: error: bool-array.o: No such file or directory<br>g++: error=
: hash-table.o: No such file or directory<br>g++: error: output.o: No such =
file or directory<br>g++: error: main.o: No such file or directory<br>g++: =
error: ../lib/libgp.a: No such file or directory<br>Makefile:74: recipe for=
 target &#39;gperf&#39; failed<br>make[1]: *** [gperf] Error 1<br>make[1]: =
Leaving directory &#39;/home/ngigijoe/src/git/pyro/poky/cubieboard2/tmp/wor=
k/x86_64-linux/gperf-native/3.0.4-r0/build/src&#39;<br>Makefile:33: recipe =
for target &#39;all&#39; failed<br>make: *** [all] Error 2<br>ERROR: Functi=
on failed: do_compile (log file is located at /home/ngigijoe/src/git/pyro/p=
oky/cubieboard2/tmp/work/x86_64-linux/gperf-native/3.0.4-r0/temp/log.do_com=
pile.600)<br><br>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><di=
v><div dir=3D"ltr"><div><div dir=3D"ltr">J.W.Ngigi</div><div dir=3D"ltr"><b=
r><br></div></div></div></div></div></div>
</div></div></div>

--94eb2c1458eccbdc3c0554ab30f4--
