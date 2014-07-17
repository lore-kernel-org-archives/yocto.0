Return-Path: <natural_groove@hotmail.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D74BE00777; Thu, 17 Jul 2014 06:11:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (natural_groove[at]hotmail.fr)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.2.32 listed in list.dnswl.org]
Received: from DUB004-OMC3S23.hotmail.com (dub004-omc3s23.hotmail.com
	[157.55.2.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1F40E006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 06:11:13 -0700 (PDT)
Received: from DUB128-W61 ([157.55.2.7]) by DUB004-OMC3S23.hotmail.com with
	Microsoft SMTPSVC(7.5.7601.22701); Thu, 17 Jul 2014 06:11:12 -0700
X-TMN: [hN6nCpRJlzclouIvboVLoOfyRVEa3kg7]
X-Originating-Email: [natural_groove@hotmail.fr]
Message-ID: <DUB128-W61984D1885C48F388A748692F40@phx.gbl>
From: Natural Groove <natural_groove@hotmail.fr>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 17 Jul 2014 15:11:12 +0200
Importance: Normal
In-Reply-To: <CAP71WjyPw1aArDo75U18k=1td+zDnUE_Vxek_9yBZFhy_C8C_g@mail.gmail.com>
References: <DUB128-W12498E2678002801067F3092F40@phx.gbl>
	<CAP71WjwYGsUt7ye2JFsotAis2TPEfk7wFH0jS_1+u72Svc2iBA@mail.gmail.com>,
	<DUB128-W323C87A7D073BC1437172E92F40@phx.gbl>,
	<CAP71WjyPw1aArDo75U18k=1td+zDnUE_Vxek_9yBZFhy_C8C_g@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 17 Jul 2014 13:11:12.0839 (UTC)
	FILETIME=[9557DD70:01CFA1C0]
Subject: Re: How to include native bitstream dependency in recipe?
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
X-List-Received-Date: Thu, 17 Jul 2014 13:11:17 -0000
Content-Type: multipart/alternative;
	boundary="_2bf0cbc5-d380-4b5a-8236-7b3e35138054_"

--_2bf0cbc5-d380-4b5a-8236-7b3e35138054_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I tried to make a recipe that just installs the file (not sure if this is e=
xactly what you meant) it does generate the ipk with all files at the right=
 place

the recipe:

do_install() {
install -d ${D}${includedir} ${D}${includedir}/atsc ${D}${includedir}/dvb $=
{D}${includedir}/dvb/si ${D}${includedir}/mpeg ${D}${includedir}/mpeg/psi  =
${D}${includedir}/ietf
install -m 0755 common.h ${D}${includedir}
install -m 0755 atsc/a52.h ${D}${includedir}/atsc
install -m 0755 dvb/ci.h dvb/si.h dvb/sim.h dvb/si_print.h dvb/sub.h ${D}${=
includedir}/dvb
install -m 0755 mpeg/aac.h mpeg/h264.h mpeg/mp2v.h mpeg/mpga.h mpeg/pes.h m=
peg/psi.h mpeg/psi_print.h mpeg/ts.h ${D}${includedir}/mpeg
install -m 0755 ietf/rtp3551.h ietf/rtp.h ${D}${includedir}/ietf
cp -r mpeg/psi/ ${D}${includedir}/mpeg/
cp -r dvb/si/ ${D}${includedir}/dvb/

}

but after launching the compilation for the framework config.log says : con=
figure:17806: checking bitstream/common.h usability
configure:17806: arm-angstrom-linux-gnueabi-gcc  -mfpu=3Dvfpv3-d16 -march=
=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dhard --sysroot=3D/home/rick/oe-c=
ore/build/out-eglibc/sysroots/colibri-t20 -std=3Dgnu99 -c -O2 -pipe -g -fel=
iminate-unused-debug-types -D_REENTRANT  conftest.c >&5
conftest.c:71:30: fatal error: bitstream/common.h: No such file or director=
y
compilation terminated.

> From: nicolas.dechesne@linaro.org
> Date: Thu=2C 17 Jul 2014 11:16:23 +0200
> Subject: Re: [yocto] How to include native bitstream dependency in recipe=
?
> To: natural_groove@hotmail.fr=3B yocto@yoctoproject.org
>=20
> cc list. please let's have the discussion on the list
>=20
> On Thu=2C Jul 17=2C 2014 at 11:10 AM=2C Natural Groove
> <natural_groove@hotmail.fr> wrote:
> > "biTStream is a set of C headers allowing a simpler access to binary
> > structures such as specified by MPEG=2C DVB=2C IETF=2C etc. "
> > (http://www.videolan.org/developers/bitstream.html)
> >
> > It does not have to be built (just make install)
>=20
> ok. you still need a recipe for it=2C it will be a simple one that only
> install the .h files in the '-dev' package. then your other recipe
> will just need to DEPENDS on bitstream or bistream-native.
>=20
> the .h files will be installed in the sysroot like any other package/reci=
pes.


 		 	   		  =

--_2bf0cbc5-d380-4b5a-8236-7b3e35138054_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>I tried to make a recipe that ju=
st installs the file (not sure if this is exactly what you meant) it does g=
enerate the ipk with all files at the right place<br><br>the recipe:<br><br=
>do_install() {<br>install -d ${D}${includedir} ${D}${includedir}/atsc ${D}=
${includedir}/dvb ${D}${includedir}/dvb/si ${D}${includedir}/mpeg ${D}${inc=
ludedir}/mpeg/psi&nbsp=3B ${D}${includedir}/ietf<br>install -m 0755 common.=
h ${D}${includedir}<br>install -m 0755 atsc/a52.h ${D}${includedir}/atsc<br=
>install -m 0755 dvb/ci.h dvb/si.h dvb/sim.h dvb/si_print.h dvb/sub.h ${D}$=
{includedir}/dvb<br>install -m 0755 mpeg/aac.h mpeg/h264.h mpeg/mp2v.h mpeg=
/mpga.h mpeg/pes.h mpeg/psi.h mpeg/psi_print.h mpeg/ts.h ${D}${includedir}/=
mpeg<br>install -m 0755 ietf/rtp3551.h ietf/rtp.h ${D}${includedir}/ietf<br=
>cp -r mpeg/psi/ ${D}${includedir}/mpeg/<br>cp -r dvb/si/ ${D}${includedir}=
/dvb/<br><br>}<br><br>but after launching the compilation for the framework=
 config.log says : configure:17806: checking bitstream/common.h usability<b=
r>configure:17806: arm-angstrom-linux-gnueabi-gcc&nbsp=3B -mfpu=3Dvfpv3-d16=
 -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dhard --sysroot=3D/home/ri=
ck/oe-core/build/out-eglibc/sysroots/colibri-t20 -std=3Dgnu99 -c -O2 -pipe =
-g -feliminate-unused-debug-types -D_REENTRANT&nbsp=3B conftest.c &gt=3B&am=
p=3B5<br>conftest.c:71:30: fatal error: bitstream/common.h: No such file or=
 directory<br>compilation terminated.<br><br><div>&gt=3B From: nicolas.dech=
esne@linaro.org<br>&gt=3B Date: Thu=2C 17 Jul 2014 11:16:23 +0200<br>&gt=3B=
 Subject: Re: [yocto] How to include native bitstream dependency in recipe?=
<br>&gt=3B To: natural_groove@hotmail.fr=3B yocto@yoctoproject.org<br>&gt=
=3B <br>&gt=3B cc list. please let's have the discussion on the list<br>&gt=
=3B <br>&gt=3B On Thu=2C Jul 17=2C 2014 at 11:10 AM=2C Natural Groove<br>&g=
t=3B &lt=3Bnatural_groove@hotmail.fr&gt=3B wrote:<br>&gt=3B &gt=3B "biTStre=
am is a set of C headers allowing a simpler access to binary<br>&gt=3B &gt=
=3B structures such as specified by MPEG=2C DVB=2C IETF=2C etc. "<br>&gt=3B=
 &gt=3B (http://www.videolan.org/developers/bitstream.html)<br>&gt=3B &gt=
=3B<br>&gt=3B &gt=3B It does not have to be built (just make install)<br>&g=
t=3B <br>&gt=3B ok. you still need a recipe for it=2C it will be a simple o=
ne that only<br>&gt=3B install the .h files in the '-dev' package. then you=
r other recipe<br>&gt=3B will just need to DEPENDS on bitstream or bistream=
-native.<br>&gt=3B <br>&gt=3B the .h files will be installed in the sysroot=
 like any other package/recipes.<br><br><br></div> 		 	   		  </div></body>
</html>=

--_2bf0cbc5-d380-4b5a-8236-7b3e35138054_--
