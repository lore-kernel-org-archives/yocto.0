Return-Path: <marekslomiany@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72DE4E00D8C; Mon, 18 Dec 2017 03:11:58 -0800 (PST)
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
	*      [74.125.83.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 617D6E00CE1
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 03:11:57 -0800 (PST)
Received: by mail-pg0-f43.google.com with SMTP id k15so9023962pgr.7
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 03:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=nzsRHfnX5AMFYng/z6QXAU05iCUh6prV7aOEvrZ/Y3k=;
	b=SS4v9qkE1rCaDX+y0y8Asqs0AesoxcBVvZhUexvUCiKwJXY5sP81lPqrRtcyuTuDcY
	G9pWd0Hx+s4BLv9685om1E4MGxss110DdgIlli3guvYQJa2cLBe47OW1rhenlA9iiYhz
	N6DfTKQ0ZJK5MSSn96cC/Lyo8pIs45DyuZN9FvKeswCeZN3qMh3e66w90a35BKZ8SI1b
	kOjtztCYvxN9X+1Lf+xOmdkCMHwDID19SqjGYd8GfAMajuoQMMAkHcgkEw0MDoJCTeTg
	lzPWtcJxPq7tILqsmjR18g2CCK8If2jJL6r88n9Rz8O4qfT/zWsG9KuLr7EF5UkSyWVA
	jIdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nzsRHfnX5AMFYng/z6QXAU05iCUh6prV7aOEvrZ/Y3k=;
	b=W9dsn412DrLi3ORmsBN62AlZZs/QIEH+xfmXN5KqUfLFsOTPcmZBY441KO2zLcajMs
	ELqN47wc0wueYhKVzGzBcKX3z1NWuDsvDNqamysWHgzpChbmMm04vh0WWBQvqz9eZkNa
	b2NP6HHlv1tQReDqwdf8mBgfEzm7KVxoswi/f71kwbv+g44z70QDmdy80bzRXf2ShbDQ
	0W3b/8lUp8sOmfcooXD+T8MBQlKsvxmwTyFMlkTflxGm90d7EhdC6gJmI+gcXlXxAHSy
	pwSRvTAuRtGFZxBbX3blCWrx/shhQN69JiQpgfnmso18L0vIkBThS1I9//hG0EHHQ/bT
	LfRg==
X-Gm-Message-State: AKGB3mLknsNwozOvg3C8dEsFxZcNERFfcMqRgp4X0D3Jhia0RW/m9FIx
	O1nwUeR1tgKtLo9NnyJZ6EIx358GMMjzJwIrKss=
X-Google-Smtp-Source: ACJfBotBkrbJ6SW4fDT//fluqO2tF4bS5wMYMpqAILiTrJBaMCwExtuiuU0kgYmvVQ3lrtxb3+5GfiH9MutWI4oyqGA=
X-Received: by 10.99.125.71 with SMTP id m7mr19844285pgn.349.1513595516220;
	Mon, 18 Dec 2017 03:11:56 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Date: Mon, 18 Dec 2017 11:11:45 +0000
Message-ID: <CAJCDnYYgN=nFYwOz5inC3W5jZojj1QdAG9ck90rXAiPZ1b0xCg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: wrong distro name in toolchain
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
X-List-Received-Date: Mon, 18 Dec 2017 11:11:58 -0000
Content-Type: multipart/alternative; boundary="f403045e2fba13f9dd05609b6b3c"

--f403045e2fba13f9dd05609b6b3c
Content-Type: text/plain; charset="UTF-8"

Hi, I'm having problem while building Qt application inside of yocto and
using generated SDK.
I have bypassed it when using generated SDK, which I describe here.

My setup in short:
I'm using for Qt this layer git://github.com/meta-qt5/meta-qt5.git in rocko
branch
beside Qt, other layers that might be important:
meta-poky (rocko)
meta-oe (morty)
meta-python (morty)
meta-networking (morty)
meta-ti (morty)

The platform is am335x
distro name is "etos"

I had some problems with sdk (at first I added Qt to my build but
applications were developped and build by my coleagues using external
toolchains).
Recently I've added recipes for those apps to my layer.
To test if code I got from my team is building fine, I have generated SDK
using "bitbake <image-name> -c populate_sdk" and deployed it in default
path which is /opt/etos/1.0/. When I have sourced it and tried to configure
I got:

  CMake Error at
/opt/etos/1.0/sysroots/armv7ahf-neon-etos-linux-gnueabi/usr/lib/cmake/Qt5Core/Qt5CoreConfig.cmake:32
(message):
  The imported target "Qt5::Core" references the file

 "/opt/etos/1.0/sysroots/armv7ahf-neon-etos-linux-gnueabi/../x86_64-oesdk-linux/usr/bin/qt5/qmake"
  but this file does not exist.  Possible reasons include:
  * The file was deleted, renamed, or moved to another location.
  * An install or uninstall procedure did not complete successfully.
  * The installation package was faulty and contained

 "/opt/etos/1.0/sysroots/armv7ahf-neon-etos-linux-gnueabi/usr/lib/cmake/Qt5Core/Qt5CoreConfigExtras.cmake"
  but not all the files it references.

To solve that problem I coppied the
/opt/etos/1.0/sysroots/x86_64-etossdk-linux/ to
/opt/etos/1.0/sysroots/x86_64-oesdk-linux/ with all its content.
Even if that's not the right solution, it worked.
But now I wat to add the recipe to my image. I get something similar:

Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| CMake Error at
/home/mslomiany/linux-dev/poky/build/tmp/sysroots/x86_64-linux/usr/lib/cmake/Qt5Core/Qt5CoreConfig.cmake:20
(message):
|   The imported target "Qt5::Core" references the file
|      "/../x86_64-oesdk-linux/usr/bin/qt5/qmake"
|   but this file does not exist.  Possible reasons include:
|   * The file was deleted, renamed, or moved to another location.
|   * An install or uninstall procedure did not complete successfully.
|   * The installation package was faulty and contained
|
 "/home/mslomiany/linux-dev/poky/build/tmp/sysroots/x86_64-linux/usr/lib/cmake/Qt5Core/Qt5CoreConfigExtras.cmake"
|   but not all the files it references.
|
| Call Stack (most recent call first):
|
/home/mslomiany/linux-dev/poky/build/tmp/sysroots/x86_64-linux/usr/lib/cmake/Qt5Core/Qt5CoreConfigExtras.cmake:6
(_qt5_Core_check_file_exists)
|
/home/mslomiany/linux-dev/poky/build/tmp/sysroots/x86_64-linux/usr/lib/cmake/Qt5Core/Qt5CoreConfig.cmake:177
(include)
|
/home/mslomiany/linux-dev/poky/build/tmp/sysroots/x86_64-linux/usr/lib/cmake/Qt5/Qt5Config.cmake:33
(find_package)
|   deps/CMake/Qt.cmake:23 (find_package)
|   deps/GuiCore/src/CMakeLists.txt:3 (include)
|
| -- Configuring incomplete, errors occurred!
| See also
"/home/mslomiany/linux-dev/poky/build/tmp/work/armv7ahf-neon-etos-linux-gnueabi/Gui/0.1-r0/build/CMakeFiles/CMakeOutput.log".
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/mslomiany/linux-dev/poky/build/tmp/work/armv7ahf-neon-etos-linux-gnueabi/Gui/0.1-r0/temp/log.do_configure.11780)

It seems like my aproach is not making any difference. I might be trying to
copy wrong directories in ./build/tmp subdirectories.
Can you tell me if all those problems are caused by my mistake or is it
something wrong in yocto/openembedded scripts?

Kind Regards,
Marek

--f403045e2fba13f9dd05609b6b3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, I&#39;m having problem while building Qt applicat=
ion inside of yocto and using generated SDK.=C2=A0</div><div>I have bypasse=
d it when using generated SDK, which I describe here.</div><div><br></div><=
div>My setup in short:</div><div>I&#39;m using for Qt this layer git://<a h=
ref=3D"http://github.com/meta-qt5/meta-qt5.git">github.com/meta-qt5/meta-qt=
5.git</a> in rocko branch</div><div>beside Qt, other layers that might be i=
mportant:</div><div>meta-poky (rocko)</div><div>meta-oe (morty)</div><div>m=
eta-python (morty)</div><div>meta-networking (morty)</div><div>meta-ti (mor=
ty)</div><div><br></div><div>The platform is am335x</div><div>distro name i=
s &quot;etos&quot;</div><div><br></div><div>I had some problems with sdk (a=
t first I added Qt to my build but applications were developped and build b=
y my coleagues using external toolchains).=C2=A0</div><div>Recently I&#39;v=
e added recipes for those apps to my layer.</div><div>To test if code I got=
 from my team is building fine, I have generated SDK using &quot;bitbake &l=
t;image-name&gt; -c populate_sdk&quot; and deployed it in default path whic=
h is /opt/etos/1.0/. When I have sourced it and tried to configure I got:</=
div><div><br></div><div>=C2=A0 CMake Error at /opt/etos/1.0/sysroots/armv7a=
hf-neon-etos-linux-gnueabi/usr/lib/cmake/Qt5Core/Qt5CoreConfig.cmake:32 (me=
ssage):</div><div>=C2=A0 The imported target &quot;Qt5::Core&quot; referenc=
es the file</div><div>=C2=A0 =C2=A0 =C2=A0&quot;/opt/etos/1.0/sysroots/armv=
7ahf-neon-etos-linux-gnueabi/../x86_64-oesdk-linux/usr/bin/qt5/qmake&quot;<=
/div><div>=C2=A0 but this file does not exist.=C2=A0 Possible reasons inclu=
de:</div><div>=C2=A0 * The file was deleted, renamed, or moved to another l=
ocation.</div><div>=C2=A0 * An install or uninstall procedure did not compl=
ete successfully.</div><div>=C2=A0 * The installation package was faulty an=
d contained</div><div>=C2=A0 =C2=A0 =C2=A0&quot;/opt/etos/1.0/sysroots/armv=
7ahf-neon-etos-linux-gnueabi/usr/lib/cmake/Qt5Core/Qt5CoreConfigExtras.cmak=
e&quot;</div><div>=C2=A0 but not all the files it references.</div><div><br=
></div><div>To solve that problem I coppied the /opt/etos/1.0/sysroots/x86_=
64-etossdk-linux/ to /opt/etos/1.0/sysroots/x86_64-oesdk-linux/ with all it=
s content.</div><div>Even if that&#39;s not the right solution, it worked.<=
/div><div>But now I wat to add the recipe to my image. I get something simi=
lar:</div><div><br></div><div>Log data follows:</div><div>| DEBUG: Executin=
g python function sysroot_cleansstate</div><div>| DEBUG: Python function sy=
sroot_cleansstate finished</div><div>| DEBUG: Executing shell function do_c=
onfigure</div><div>| CMake Error at /home/mslomiany/linux-dev/poky/build/tm=
p/sysroots/x86_64-linux/usr/lib/cmake/Qt5Core/Qt5CoreConfig.cmake:20 (messa=
ge):</div><div>| =C2=A0 The imported target &quot;Qt5::Core&quot; reference=
s the file</div><div>| =C2=A0 =C2=A0 =C2=A0&quot;/../x86_64-oesdk-linux/usr=
/bin/qt5/qmake&quot;</div><div>| =C2=A0 but this file does not exist.=C2=A0=
 Possible reasons include:</div><div>| =C2=A0 * The file was deleted, renam=
ed, or moved to another location.</div><div>| =C2=A0 * An install or uninst=
all procedure did not complete successfully.</div><div>| =C2=A0 * The insta=
llation package was faulty and contained</div><div>| =C2=A0 =C2=A0 =C2=A0&q=
uot;/home/mslomiany/linux-dev/poky/build/tmp/sysroots/x86_64-linux/usr/lib/=
cmake/Qt5Core/Qt5CoreConfigExtras.cmake&quot;</div><div>| =C2=A0 but not al=
l the files it references.</div><div>|=C2=A0</div><div>| Call Stack (most r=
ecent call first):</div><div>| =C2=A0 /home/mslomiany/linux-dev/poky/build/=
tmp/sysroots/x86_64-linux/usr/lib/cmake/Qt5Core/Qt5CoreConfigExtras.cmake:6=
 (_qt5_Core_check_file_exists)</div><div>| =C2=A0 /home/mslomiany/linux-dev=
/poky/build/tmp/sysroots/x86_64-linux/usr/lib/cmake/Qt5Core/Qt5CoreConfig.c=
make:177 (include)</div><div>| =C2=A0 /home/mslomiany/linux-dev/poky/build/=
tmp/sysroots/x86_64-linux/usr/lib/cmake/Qt5/Qt5Config.cmake:33 (find_packag=
e)</div><div>| =C2=A0 deps/CMake/Qt.cmake:23 (find_package)</div><div>| =C2=
=A0 deps/GuiCore/src/CMakeLists.txt:3 (include)</div><div>|=C2=A0</div><div=
>| -- Configuring incomplete, errors occurred!</div><div>| See also &quot;/=
home/mslomiany/linux-dev/poky/build/tmp/work/armv7ahf-neon-etos-linux-gnuea=
bi/Gui/0.1-r0/build/CMakeFiles/CMakeOutput.log&quot;.</div><div>| WARNING: =
exit code 1 from a shell command.</div><div>| ERROR: Function failed: do_co=
nfigure (log file is located at /home/mslomiany/linux-dev/poky/build/tmp/wo=
rk/armv7ahf-neon-etos-linux-gnueabi/Gui/0.1-r0/temp/log.do_configure.11780)=
</div><div><br></div><div>It seems like my aproach is not making any differ=
ence. I might be trying to copy wrong directories in ./build/tmp subdirecto=
ries.</div><div>Can you tell me if all those problems are caused by my mist=
ake or is it something wrong in yocto/openembedded scripts?</div><div><br><=
/div><div>Kind Regards,</div><div>Marek</div><div><br></div></div>

--f403045e2fba13f9dd05609b6b3c--
