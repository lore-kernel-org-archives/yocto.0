Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 474B4E00816; Wed, 19 Aug 2015 08:50:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.90.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm2.bullet.mail.ne1.yahoo.com (nm2.bullet.mail.ne1.yahoo.com
	[98.138.90.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27737E00767
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 08:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1439999450; bh=59bTX25A4Gaj84aWTtu8kOHhFhbj5In4noFepF6wzds=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=CoUuW+mQrjSAJyvLWcQcZ1Q15iNVAwtMZDtvuJNuJzRRz7dxQQPUnVQ3XThlT8b1sXTSBhlhbh2M5r0KphqWRy/AnYTHDBE+TzHycgy58OGYMzQgxTZRmE5F7zXbYtZ1JhMiluV/IvWxA8eavoIY4tyBxrHEKUE3xwfyv8X7ugXVHTrjIjG9BpwNBfZYk8GsMulHBNveS07MLk2AhO77YFK4j5Fp+7y+RlLpYdEczCYDa+20bS4T6CthbBWHTUHQEsw1nKLfUkPXXAg9/jvHRo1wd5fAIJUVxOIoEwARpoeLTnJzHSfuH+Y1kbbQBpxegbAnn7JUM0jRLs704tLb7Q==
Received: from [98.138.101.130] by nm2.bullet.mail.ne1.yahoo.com with NNFMP;
	19 Aug 2015 15:50:50 -0000
Received: from [98.138.226.166] by tm18.bullet.mail.ne1.yahoo.com with NNFMP;
	19 Aug 2015 15:50:50 -0000
Received: from [127.0.0.1] by omp1067.mail.ne1.yahoo.com with NNFMP;
	19 Aug 2015 15:50:50 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 486006.1606.bm@omp1067.mail.ne1.yahoo.com
X-YMail-OSG: tawDy.sVM1nKySUoKmHLm9fAQ3m_UHMOAF2JrsD8mjANSkM01Tmgl6t3ctHFOe9
	AyKsCdVEkDmI8y97Vwo_di.zXultNf3_gok.hgYgMFjLIpoTLu1UrVEt8aT7lHkz7h.Wqt0auesZ
	EySxbLhBf5PO9qTbKJ7T8HZhX4uGl9.xFlMPksKfX55aMclSsAKoFVIZwy1Q0OFIP9kBfU3Ib.lm
	ywChS_Ae6wv8wBaijbL5RrBfDC1T3ZTvXeTKIhPd7gfcrF453IUTP2Bu4sZMw0riOUzdyW9WEWq8
	H6Gnk4OfIh5Kc.yJC.xOrB_KJDirj1uH3BH7P0JfxFuk0ku9A3hqI5evV_fLm0FnHo_YxSo9C5eO
	nMm8B9QFaeV85TSddZcWzlpXhVV2vmkaMgxAuywDXJw5tJmV4JkevoQD13vb7kCV7MU3R0px_ZiE
	B9nv5l.UpjrgdNTdDg4YU_6F0Emdt2xTL1ylXlfiFPgqPmRUak8Ln8t0IciAqThM1zwx15DLXG12
	9.mVNRzoumf.FTOp4JcVLhRIknyMCD5NFYx02Xeo1yQ2McBK_PWUAsfVVUP7kybE-
Received: by 98.138.105.222; Wed, 19 Aug 2015 15:50:49 +0000 
Date: Wed, 19 Aug 2015 15:50:49 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <143795602.3440105.1439999449477.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1643188288.7336734.1439999247879.JavaMail.yahoo@mail.yahoo.com>
References: <1643188288.7336734.1439999247879.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: Fw: problem with ADT
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Aug 2015 15:50:56 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3440104_217866809.1439999449467"

------=_Part_3440104_217866809.1439999449467
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I might of sent to wrong mailing list sorry!=C2=A0Edward Vidal Jr. e-mail d=
evelone@sbcglobal.net 915-595-1613

      On Wednesday, August 19, 2015 9:47 AM, Edward Vidal <develone@sbcglob=
al.net> wrote:
  =20

 Hello all,I need to cross compile several packages which I do not have bit=
bake recipes.
I have added several items to core-image-sato.=C2=A0 After creating the ima=
ge I do the following to create a tool chain:1. "bitbake core-image-sato -c=
 populate_sdk"(Then I setup the tool chain)
2. "sudo poky-glibc-x86_64-core-image-sato-cortexa7hf-vfp-vfpv4-neon-toolch=
ain-1.8+snapshot.sh" which was created with the step 13. "source /opt/poky/=
1.8+snapshot/environment-setup-cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi=
"4. "./configure --disable-lua --enable-opencv=3Dno --disable-libgcrypt --e=
nable-run-as-root ${CONFIGURE_FLAG}Most of the packages I have tried I get =
this warning.
configure: WARNING: unrecognized options: --with-libtool-sysroot
From the ADT manual section 5.1.2 I tried the following.I am have trouble w=
ith the lines understanding the lines aclocal -I ${OECORE_NATIVE_SYSROOT}/u=
sr/share/aclocal \
[-I dir_containing_your_project-specific_m4_macros]

5.)
libtoolize --automake
aclocal -I ${OECORE_NATIVE_SYSROOT}/usr/share/aclocal \
[-I /home/vidal/wkg/adt_tests/vlc-2.1.4/m4]
autoconf
autoheader
automake -a
6.)=C2=A0 (Running the command step 4 the configure warning is gone)
libvlc configuration
--------------------
version=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 : 2.1.4
system=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 : linux
architecture=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : arm
optimizations=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : yes
vlc aliases=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 : c=
vlc rvlc qvlc svlc nvlc

To build vlc and its plugins, type `make', or `./compile' if you like nice =
colors.When I try to do the make I get the following error.
vidal@ws009:~/wkg/adt_tests/vlc-2.1.4$ make=20
CDPATH=3D"${ZSH_VERSION+.}:" && cd . && /bin/bash /home/vidal/wkg/adt_tests=
/vlc-2.1.4/autotools/missing aclocal-1.14 -I m4
/home/vidal/wkg/adt_tests/vlc-2.1.4/autotools/missing: line 81: aclocal-1.1=
4: command not found
WARNING: 'aclocal-1.14' is missing on your system.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 You should only need it if=
 you modified 'acinclude.m4' or
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 'configure.ac' or m4 files=
 included by 'configure.ac'.
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The 'aclocal' program is p=
art of the GNU Automake package:
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <http://www.gnu.org/softwa=
re/automake>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 It also requires GNU Autoc=
onf, GNU m4 and Perl in order to run:
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <http://www.gnu.org/softwa=
re/autoconf>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <http://www.gnu.org/softwa=
re/m4/>
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <http://www.perl.org/>
make: *** [aclocal.m4] Error 127

Thanks in advance.
=C2=A0Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

   

------=_Part_3440104_217866809.1439999449467
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1439996679247_17929"><span>I might of=
 sent to wrong mailing list sorry!</span></div><div>&nbsp;</div><div class=
=3D"signature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613<=
/div><div class=3D"qtdSeparateBR"><br><br></div>  <div style=3D"display: bl=
ock;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue, Hel=
vetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;"=
> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Aria=
l, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> <font si=
ze=3D"2" face=3D"Arial"> On Wednesday, August 19, 2015 9:47 AM, Edward Vida=
l &lt;develone@sbcglobal.net&gt; wrote:<br> </font> </div>  <br><br> <div c=
lass=3D"y_msg_container"><div id=3D"yiv2061963978"><div><div style=3D"color=
:#000;background-color:#fff;font-family:HelveticaNeue, Helvetica Neue, Helv=
etica, Arial, Lucida Grande, sans-serif;font-size:16px;"><div id=3D"yiv2061=
963978yui_3_16_0_1_1439996679247_3684"><span>Hello all,</span></div><div id=
=3D"yiv2061963978yui_3_16_0_1_1439996679247_3717"><span id=3D"yiv2061963978=
yui_3_16_0_1_1439996679247_3716">I need to cross compile several packages w=
hich I do not have bitbake recipes.</span></div><div><br><span id=3D"yiv206=
1963978yui_3_16_0_1_1439996679247_3716"></span></div><div dir=3D"ltr"><span=
 id=3D"yiv2061963978yui_3_16_0_1_1439996679247_3716">I have added several i=
tems to core-image-sato.&nbsp; After creating the image I do the following =
to create a tool chain:</span></div><div id=3D"yiv2061963978yui_3_16_0_1_14=
39996679247_3797" dir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0_1_1439996=
679247_3716">1. "bitbake core-image-sato -c populate_sdk"</span></div><div =
dir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0_1_1439996679247_3716">(Then=
 I setup the tool chain)<br></span></div><div id=3D"yiv2061963978yui_3_16_0=
_1_1439996679247_3812" dir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0_1_14=
39996679247_3716">2. "sudo poky-glibc-x86_64-core-image-sato-cortexa7hf-vfp=
-vfpv4-neon-toolchain-1.8+snapshot.sh" which was created with the step 1</s=
pan></div><div dir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0_1_1439996679=
247_3716">3. "source /opt/poky/1.8+snapshot/environment-setup-cortexa7hf-vf=
p-vfpv4-neon-poky-linux-gnueabi"</span></div><div id=3D"yiv2061963978yui_3_=
16_0_1_1439996679247_8778" dir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0_=
1_1439996679247_3716">4. "./configure --disable-lua --enable-opencv=3Dno --=
disable-libgcrypt --enable-run-as-root ${CONFIGURE_FLAG}</span></div><div i=
d=3D"yiv2061963978yui_3_16_0_1_1439996679247_8826" dir=3D"ltr">Most of the =
packages I have tried I get this warning.</div><div id=3D"yiv2061963978yui_=
3_16_0_1_1439996679247_13947" dir=3D"ltr"><br><span id=3D"yiv2061963978yui_=
3_16_0_1_1439996679247_3716"></span></div><div id=3D"yiv2061963978yui_3_16_=
0_1_1439996679247_8841" dir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0_1_1=
439996679247_3716">configure: WARNING: unrecognized options: --with-libtool=
-sysroot</span></div><div id=3D"yiv2061963978yui_3_16_0_1_1439996679247_139=
68" dir=3D"ltr"><br><span id=3D"yiv2061963978yui_3_16_0_1_1439996679247_371=
6"></span></div><div id=3D"yiv2061963978yui_3_16_0_1_1439996679247_13969" d=
ir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0_1_1439996679247_3716">From t=
he ADT manual section 5.1.2 I tried the following.</span></div><div id=3D"y=
iv2061963978yui_3_16_0_1_1439996679247_13984" dir=3D"ltr"><span id=3D"yiv20=
61963978yui_3_16_0_1_1439996679247_3716">I am have trouble with the lines u=
nderstanding the lines</span></div><div id=3D"yiv2061963978yui_3_16_0_1_143=
9996679247_14021" dir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0_1_1439996=
679247_3716"> aclocal -I ${OECORE_NATIVE_SYSROOT}/usr/share/aclocal \<br cl=
ass=3D"yiv2061963978">[-I dir_containing_your_project-specific_m4_macros]<b=
r class=3D"yiv2061963978"><br></span></div><div id=3D"yiv2061963978yui_3_16=
_0_1_1439996679247_13666" dir=3D"ltr">5.)<br><span id=3D"yiv2061963978yui_3=
_16_0_1_1439996679247_3716"></span></div><div id=3D"yiv2061963978yui_3_16_0=
_1_1439996679247_13731" dir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0_1_1=
439996679247_3716">libtoolize --automake<br class=3D"yiv2061963978">aclocal=
 -I ${OECORE_NATIVE_SYSROOT}/usr/share/aclocal \<br class=3D"yiv2061963978"=
>[-I /home/vidal/wkg/adt_tests/vlc-2.1.4/m4]<br class=3D"yiv2061963978">aut=
oconf<br class=3D"yiv2061963978">autoheader<br class=3D"yiv2061963978">auto=
make -a<br class=3D"yiv2061963978">6.)&nbsp; (Running the command step 4 th=
e configure warning is gone)<br></span></div><div id=3D"yiv2061963978yui_3_=
16_0_1_1439996679247_13774" dir=3D"ltr"><span id=3D"yiv2061963978yui_3_16_0=
_1_1439996679247_3716">libvlc configuration<br class=3D"yiv2061963978">----=
----------------<br class=3D"yiv2061963978">version&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 2.1.4<br cla=
ss=3D"yiv2061963978">system&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : linux<br class=3D"yiv206196397=
8">architecture&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : arm=
<br class=3D"yiv2061963978">optimizations&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; : yes<br class=3D"yiv2061963978">vlc aliases&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : cvlc rvlc qvlc svlc nvlc<br =
class=3D"yiv2061963978"><br class=3D"yiv2061963978">To build vlc and its pl=
ugins, type `make', or `./compile' if you like nice colors.</span></div><di=
v id=3D"yiv2061963978yui_3_16_0_1_1439996679247_13776" dir=3D"ltr"><span id=
=3D"yiv2061963978yui_3_16_0_1_1439996679247_3716">When I try to do the make=
 I get the following error.</span></div><div dir=3D"ltr"><span id=3D"yiv206=
1963978yui_3_16_0_1_1439996679247_3716"><br></span></div><div id=3D"yiv2061=
963978yui_3_16_0_1_1439996679247_13833" dir=3D"ltr"><span id=3D"yiv20619639=
78yui_3_16_0_1_1439996679247_3716">vidal@ws009:~/wkg/adt_tests/vlc-2.1.4$ m=
ake <br class=3D"yiv2061963978">CDPATH=3D"${ZSH_VERSION+.}:" &amp;&amp; cd =
. &amp;&amp; /bin/bash /home/vidal/wkg/adt_tests/vlc-2.1.4/autotools/missin=
g aclocal-1.14 -I m4<br class=3D"yiv2061963978">/home/vidal/wkg/adt_tests/v=
lc-2.1.4/autotools/missing: line 81: aclocal-1.14: command not found<br cla=
ss=3D"yiv2061963978">WARNING: 'aclocal-1.14' is missing on your system.<br =
class=3D"yiv2061963978">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yo=
u should only need it if you modified 'acinclude.m4' or<br class=3D"yiv2061=
963978">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 'configure.ac' or =
m4 files included by 'configure.ac'.<br class=3D"yiv2061963978">&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The 'aclocal' program is part of the =
GNU Automake package:<br class=3D"yiv2061963978">&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; &lt;http://www.gnu.org/software/automake&gt;<br clas=
s=3D"yiv2061963978">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It als=
o requires GNU Autoconf, GNU m4 and Perl in order to run:<br class=3D"yiv20=
61963978">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;http://www.g=
nu.org/software/autoconf&gt;<br class=3D"yiv2061963978">&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;http://www.gnu.org/software/m4/&gt;<br cl=
ass=3D"yiv2061963978">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;=
http://www.perl.org/&gt;<br class=3D"yiv2061963978">make: *** [aclocal.m4] =
Error 127<br class=3D"yiv2061963978"></span></div><div dir=3D"ltr"><br><spa=
n id=3D"yiv2061963978yui_3_16_0_1_1439996679247_3716"></span></div><div id=
=3D"yiv2061963978yui_3_16_0_1_1439996679247_13849" dir=3D"ltr">Thanks in ad=
vance.</div><div dir=3D"ltr"><span class=3D"yiv2061963978" id=3D"yiv2061963=
978yui_3_16_0_1_1439996679247_3716"><br></span></div><div>&nbsp;</div><div =
class=3D"yiv2061963978signature">Edward Vidal Jr. e-mail develone@sbcglobal=
.net 915-595-1613</div></div></div></div><br><br></div>  </div> </div>  </d=
iv> </div></body></html>

------=_Part_3440104_217866809.1439999449467--
