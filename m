Return-Path: <harikumar523@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00F8CE00830; Sat,  8 Nov 2014 04:07:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (harikumar523[at]yahoo.co.in)
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (hari kumar <harikumar523[at]yahoo.co.in> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.149.6 listed in list.dnswl.org]
Received: from nm12-vm6.bullet.mail.sg3.yahoo.com
	(nm12-vm6.bullet.mail.sg3.yahoo.com [106.10.149.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 525EDE007BA
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 04:07:26 -0800 (PST)
Received: from [106.10.166.125] by nm12.bullet.mail.sg3.yahoo.com with NNFMP;
	08 Nov 2014 12:07:24 -0000
Received: from [106.10.150.29] by tm14.bullet.mail.sg3.yahoo.com with NNFMP;
	08 Nov 2014 12:07:24 -0000
Received: from [127.0.0.1] by omp1030.mail.sg3.yahoo.com with NNFMP;
	08 Nov 2014 12:07:24 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 938211.28809.bm@omp1030.mail.sg3.yahoo.com
Received: (qmail 27909 invoked by uid 60001); 8 Nov 2014 12:07:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s1024;
	t=1415448444; bh=eWjL4dCFIMFCpCoVvUQTzIG7ekYUXnAL9vVHLPqt/4M=;
	h=Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=GRdZq7gPFXpBGTSFJIa5t/ycuiA/SGNDEu9VdRGcG5pjjbjdSHYztX++aopZN+eg7if9ZZJ6KNirPazS3ujsmR+SqgoG2gK+nQGlKFIPHCIXWWhJ/jBGDLHDQisUXz9dFQJzmilObRP1yLyf/ooImzQ0GQD+F8BrIcWlVInRUKA=
X-YMail-OSG: edosjlkVM1n1qThjeO_.A3tDMfZRF_Xl6_juIYGuZ2_hkq4
	f2KdVsJ.3A..A_Oou6OvUluwldFGWYReMjQgLtZdX3DlLnZ1yjAM7fq1miNz
	sMD4LFJEXIG1hwpvnq71huY8rkcRPg2abf.9WO0heTWxouuj4wlQYcSCUe5R
	VQCZujjdM2G05W_Y1JeeFfRrxZilGE5PHJsiWeprQSf5ArVhGBzSl9NZoVJ.
	8lJaWmkf8cdOVL58iw7XQw7575ivF3Dr.nLiSw7bMX2EcSP0YCsLlyBw9XTI
	YCgmB.muIR1qqr4gu_T6op2qZbxU3B9U1Eu_ilc1yr3YPacpjAHZztbdJvge
	w62FcTWzjCgJgXyHTsqONbxJH4AAgQ5E4IN4zPe_QFbXUh5IsIrhlsoujRpf
	e1mev_lZZ3FggqTA7MnA71IR0WKsukzSBYTW8TqZjCS_doA3OlYOqkTLXWXj
	SAfUlO5gGTzS25bSuyap0F5pA_uDfXylDP6sNjyY5cjSqwj3oezKi9IYTdhG
	AARU5EqCPjA9lzxFiiNBYIejgc2Q_ujNDYznLPunssB5lMZXYQ62aGjFQGPU 8mA--
Received: from [122.164.185.61] by web193601.mail.sg3.yahoo.com via HTTP;
	Sat, 08 Nov 2014 20:07:24 SGT
X-Rocket-MIMEInfo: 002.001,
	SGkgQWxsLAoKSSBhbSBjcmVhdGluZyBhIG5ldyByZWNpcGUgaW4gYnNwIGxheWVyLiBTbyBJIGNyZWF0ZWQgYSBiYiBmaWxlIGluc2lkZSB0aGUgcmVjaXBlLgpUaGVuIGZyb20gdGhlIGJ1aWxkIGRpcmVjdG9yeSwgSSBhbSBhYmxlIHRvIHN1Y2Nlc3NmdWxseSBjb21waWxlIHRoZSBzb3VyY2UgZmlsZXMgYW5kIHdhcyBhYmxlIHRvIGNyZWF0ZSB0aGUgbGlicmFyeSAoIGJpdGJha2UgLWMgY29tcGlsZSAtZiA8cGFja2FnZV9uYW1lPiApLiBUaGlzIGlzIGEgbWFrZWZpbGUgYmFzZWQgcGFja2FnZSBhbmQgSSABMAEBAQE-
X-Mailer: YahooMailWebService/0.8.203.733
Message-ID: <1415448444.25200.YahooMailNeo@web193601.mail.sg3.yahoo.com>
Date: Sat, 8 Nov 2014 20:07:24 +0800
From: hari kumar <harikumar523@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: do_install() is not getting called
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: hari kumar <harikumar523@yahoo.co.in>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 08 Nov 2014 12:07:36 -0000
Content-Type: multipart/alternative;
	boundary="2063643590-1604368744-1415448444=:25200"

--2063643590-1604368744-1415448444=:25200
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi All,=0A=0AI am creating a new recipe in bsp layer. So I created a bb fil=
e inside the recipe.=0AThen from the build directory, I am able to successf=
ully compile the source files and was able to create the library ( bitbake =
-c compile -f <package_name> ). This is a makefile based package and I don'=
t have an install target in my Makefile. So I am writing a do_install in my=
 bb file and I am doing install there. I can see that do_compile task is ge=
tting called. But do_install ( which was overridden in my bb file ) task is=
 not called and the images and libraries are not installed in the sysroots =
directory.=0A=0ABitbake Snippet :=0A=0ASRC_URI =3D "file://src/"=0A=0APV =
=3D "1.0"=0A=0AS =3D "${WORKDIR}/src/"=0A=0AEXTRA_OEMAKE =3D "CFLAGS=3D--sy=
sroot=3D${PKG_CONFIG_SYSROOT_DIR} 'LDFLAGS=3D-lpthread -lrt ${LDFLAGS}'"=0A=
=0Ado_install () {=0Aoe_runmake install DESTDIR=3D${D} SBINDIR=3D${sbindir}=
 MANDIR=3D${mandir}     INCLUDEDIR=3D${includedir}=0A       install -d ${D}=
${includedir}/=0Afor f in ${S}/*.h; do install -m 0644 $f ${D}${includedir}=
/ done=0A}=0APARALLEL_MAKE =3D ""=0A#BBCLASSEXTEND =3D "native"=0A=0ACould =
you please suggest why do_install is not getting called for this Makefile b=
ased system ? 

--2063643590-1604368744-1415448444=:25200
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:Co=
urier New, courier, monaco, monospace, sans-serif;font-size:16px"><div clas=
s=3D"" style=3D""><span style=3D"font-family: 'times new roman', 'new york'=
, times, serif; font-size: 16px;">Hi All,</span></div><div class=3D"" style=
=3D""><span style=3D"font-family: 'times new roman', 'new york', times, ser=
if; font-size: 16px;"><br class=3D"" style=3D""></span></div><div style=3D"=
color: rgb(0, 0, 0); font-style: normal; background-color: transparent;" cl=
ass=3D""><span style=3D"font-family: 'times new roman', 'new york', times, =
serif; font-size: 16px;">I am creating a new recipe in bsp layer. So I crea=
ted a bb file inside the recipe.</span></div><div style=3D"color: rgb(0, 0,=
 0); font-style: normal; background-color: transparent;" class=3D""><span s=
tyle=3D"font-family: 'times new roman', 'new york', times, serif; font-size=
: 16px;">Then from the build directory, I am able to successfully compile t=
he source files and was
 able to create the library ( bitbake -c compile -f &lt;package_name&gt; ).=
 This is a makefile based package and I don't have an install target in my =
Makefile. So I am writing a do_install in my bb file and I am doing install=
 there. I can see that do_compile task is getting called. But do_install ( =
which was overridden in my bb file ) task is not called and the images and =
libraries are not installed in the sysroots directory.</span></div><div sty=
le=3D"color: rgb(0, 0, 0); font-style: normal; background-color: transparen=
t;" class=3D""><span style=3D"font-family: 'times new roman', 'new york', t=
imes, serif; font-size: 16px;"><br class=3D"" style=3D""></span></div><div =
style=3D"color: rgb(0, 0, 0); font-style: normal; background-color: transpa=
rent;" class=3D""><span style=3D"font-family: 'times new roman', 'new york'=
, times, serif; font-size: 16px;">Bitbake Snippet :</span></div><div style=
=3D"color: rgb(0, 0, 0); font-style: normal; background-color: transparent;=
"
 class=3D""><span style=3D"font-family: 'times new roman', 'new york', time=
s, serif; font-size: 16px;"><br class=3D"" style=3D""></span></div><div sty=
le=3D"background-color: transparent;" class=3D""><span style=3D"font-family=
: 'times new roman', 'new york', times, serif; font-size: 16px;">SRC_URI =
=3D "file://src/"</span></div><div style=3D"background-color: transparent;"=
 class=3D""><span style=3D"font-family: 'times new roman', 'new york', time=
s, serif; font-size: 16px;"><br class=3D"" style=3D""></span></div><div sty=
le=3D"background-color: transparent;" class=3D""><span style=3D"font-family=
: 'times new roman', 'new york', times, serif; font-size: 16px;">PV =3D "1.=
0"</span></div><div style=3D"background-color: transparent;" class=3D""><sp=
an style=3D"font-family: 'times new roman', 'new york', times, serif; font-=
size: 16px;"><br class=3D"" style=3D""></span></div><div style=3D"backgroun=
d-color: transparent;" class=3D""><span style=3D"font-family: 'times new ro=
man', 'new york', times, serif; font-size:
 16px;">S =3D "${WORKDIR}/src/"</span></div><div style=3D"color: rgb(0, 0, =
0); font-size: 16px; font-family: 'times new roman', 'new york', times, ser=
if; font-style: normal; background-color: transparent;" class=3D""><span st=
yle=3D"font-family: 'times new roman', 'new york', times, serif; font-size:=
 16px;"><br></span></div><div style=3D"background-color: transparent;" clas=
s=3D""><span style=3D"font-family: 'times new roman', 'new york', times, se=
rif; font-size: 16px;">EXTRA_OEMAKE =3D "CFLAGS=3D--sysroot=3D${PKG_CONFIG_=
SYSROOT_DIR} 'LDFLAGS=3D-lpthread -lrt ${LDFLAGS}'"</span></div><div style=
=3D"background-color: transparent;" class=3D""><span style=3D"font-family: =
'times new roman', 'new york', times, serif; font-size: 16px;"><br class=3D=
"" style=3D""></span></div><div style=3D"background-color: transparent;" cl=
ass=3D""><span style=3D"font-family: 'times new roman', 'new york', times, =
serif; font-size: 16px;">do_install () {</span></div><div style=3D"backgrou=
nd-color: transparent;"
 class=3D""><span style=3D"font-family: 'times new roman', 'new york', time=
s, serif; font-size: 16px;"><span class=3D"" style=3D"white-space:pre">    =
   =09</span>oe_runmake install DESTDIR=3D${D} SBINDIR=3D${sbindir} MANDIR=
=3D${mandir} &nbsp; &nbsp; INCLUDEDIR=3D${includedir}</span></div><div styl=
e=3D"color: rgb(0, 0, 0); font-style: normal; background-color: transparent=
;" class=3D""><span style=3D"font-family: 'times new roman', 'new york', ti=
mes, serif; font-size: 16px;">&nbsp; &nbsp; &nbsp; &nbsp;<span style=3D"col=
or: rgb(51, 51, 51); white-space: pre-wrap;" class=3D"">install -d ${D}${in=
cludedir}/</span></span></div><pre class=3D"" style=3D"overflow: auto; colo=
r: rgb(51, 51, 51);"><span style=3D"font-family: 'times new roman', 'new yo=
rk', times, serif; font-size: 16px;">=09       for f in ${S}/*.h; do=0A=09 =
    =09      install -m 0644 $f ${D}${includedir}/=0A=09       done</span><=
/pre><div style=3D"background-color: transparent;" class=3D""><span style=
=3D"font-family: 'times new roman', 'new york', times, serif; font-size: 16=
px;">}</span></div><div style=3D"background-color: transparent;" class=3D""=
><span style=3D"font-family: 'times new roman', 'new york', times, serif; f=
ont-size: 16px;">PARALLEL_MAKE =3D ""</span></div><div style=3D"background-=
color: transparent;" class=3D""><span style=3D"font-family: 'times new roma=
n', 'new york', times, serif; font-size: 16px;">#BBCLASSEXTEND =3D "native"=
</span></div><div style=3D"color: rgb(0, 0, 0); font-style: normal; backgro=
und-color: transparent;" class=3D""><br></div><div style=3D"color: rgb(0, 0=
, 0); font-style: normal; background-color: transparent;" class=3D""><span =
style=3D"font-family: 'times new roman', 'new york', times, serif; font-siz=
e: 16px;">Could you please suggest why do_install is not getting called for=
 this Makefile based system ?&nbsp;</span></div></div></body></html>

--2063643590-1604368744-1415448444=:25200--
