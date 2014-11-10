Return-Path: <harikumar523@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FF62E0085F; Mon, 10 Nov 2014 02:28:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (harikumar523[at]yahoo.co.in)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.148.217 listed in list.dnswl.org]
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
Received: from nm9-vm10.bullet.mail.sg3.yahoo.com
	(nm9-vm10.bullet.mail.sg3.yahoo.com [106.10.148.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A3B6E007C2
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 02:28:31 -0800 (PST)
Received: from [106.10.166.62] by nm9.bullet.mail.sg3.yahoo.com with NNFMP;
	10 Nov 2014 10:28:29 -0000
Received: from [106.10.151.202] by tm19.bullet.mail.sg3.yahoo.com with NNFMP;
	10 Nov 2014 10:28:29 -0000
Received: from [127.0.0.1] by omp1014.mail.sg3.yahoo.com with NNFMP;
	10 Nov 2014 10:28:29 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 7344.26977.bm@omp1014.mail.sg3.yahoo.com
Received: (qmail 45253 invoked by uid 60001); 10 Nov 2014 10:28:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s1024;
	t=1415615308; bh=xO8QhfrnhcBkvzlHXGgAH0djI7DLW+2ny6WLhEC7nTM=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=J/NLbl5RoEpzpYM4iwS5Ng99XUVFBG5FKQf78Pk/cjOXHrMVNmJBs67zrFRcKCMd6ufg+F5ceN+UoItzcrBY2usxmtC6BUFjEVhc1ZcEM4gptq/S3/sbr86FInHIHtJ3pDbnMadoN4C6g6kWBURc6uBpReU/PxB1lvbQI+AIysg=
X-YMail-OSG: HU2IqooVM1kDVqhnkMHJ4vDxmufA5GqsN_g0R4yqJrZ3vlr
	F6X2TIFCsso1hSfJyUTFKg.KggG6b4A73TEwvJco0SHdmzXGhh7_rinejhMo
	NkOaigo5RMssOPjrh9YaWIBNj8bOUPU7ti20YDuOWsf1SLuiPYyw302Ip3R4
	RFh_crmq5bJSLqtMdRDAMLckVuMjluMdOO2V4s0AxNkvhPIxcKlCX02VFWTJ
	xcgkzdN_u2qyNb_9pQDDZTnnegSzF7gJnj7vo0WhBZawD191JuVIZpVEwG2J
	KpHt_gfdrecQ37ROHZzRn9bAEK5Df4Pgmqjtcvr4yn1WnS2un1MnX8Lc1zPC
	TPFk07IqeooLi0BY3OFbJpHbdbff_ltttn2mcGohHmzVOEr8JoCl2EMSzOFZ
	0R5wcvzknlzgA7yKyyyfO3aBrAmhp11vlLr3.YVRufXR_wOrmuIPZwoHS7mo
	uatGqcTBVcLkTnrDt1ug2FXSWfvogHns47jdLF4XYrrYGjv1Ji7TFOsoje31
	Y7YePYGXkpJavcG32IJsqGxfyH1F12.avSAX.RXY52DvjEObk5wvTMo8ec25
	UTumYW7VoMMw-
Received: from [182.65.170.101] by web193601.mail.sg3.yahoo.com via HTTP;
	Mon, 10 Nov 2014 18:28:28 SGT
X-Rocket-MIMEInfo: 002.001,
	VGhhbmtzIENocmlzdGlhbi4gSXQgd29ya2VkLiBJIGdhdmUgYml0YmFrZSAtYyBpbnN0YWxsIHRvIGluc3RhbGwgaXQuCgpSZWdhcmRzCkhhcmkKCgpPbiBTYXR1cmRheSwgOCBOb3ZlbWJlciAyMDE0IDY6MDAgUE0sIENocmlzdGlhbiBFZ2UgPGs0MjMwcjZAZ21haWwuY29tPiB3cm90ZToKIAoKCgpBbSAwOC4xMS4yMDE0IDEzOjEwIHNjaHJpZWIgImhhcmkga3VtYXIiIDxoYXJpa3VtYXI1MjNAeWFob28uY28uaW4.Ogo.Cj4gSGkgQWxsLAo.Cj4gSSBhbSBjcmVhdGluZyBhIG5ldyByZWNpcGUgaW4gYnNwIGwBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.203.733
References: <1415448444.25200.YahooMailNeo@web193601.mail.sg3.yahoo.com>
	<CAALGJZbqS+UKJvs8O2i9sF0eB1DcAhgtxG6P=qjEp6O9rKs0wQ@mail.gmail.com>
Message-ID: <1415615308.68960.YahooMailNeo@web193601.mail.sg3.yahoo.com>
Date: Mon, 10 Nov 2014 18:28:28 +0800
From: hari kumar <harikumar523@yahoo.co.in>
To: Christian Ege <k4230r6@gmail.com>
In-Reply-To: <CAALGJZbqS+UKJvs8O2i9sF0eB1DcAhgtxG6P=qjEp6O9rKs0wQ@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: do_install() is not getting called
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
X-List-Received-Date: Mon, 10 Nov 2014 10:28:38 -0000
Content-Type: multipart/alternative;
	boundary="2063643590-1116459799-1415615308=:68960"

--2063643590-1116459799-1415615308=:68960
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Christian. It worked. I gave bitbake -c install to install it.=0A=0A=
Regards=0AHari=0A=0A=0AOn Saturday, 8 November 2014 6:00 PM, Christian Ege =
<k4230r6@gmail.com> wrote:=0A =0A=0A=0A=0AAm 08.11.2014 13:10 schrieb "hari=
 kumar" <harikumar523@yahoo.co.in>:=0A>=0A> Hi All,=0A>=0A> I am creating a=
 new recipe in bsp layer. So I created a bb file inside the recipe.=0A> The=
n from the build directory, I am able to successfully compile the source fi=
les and was able to create the library ( bitbake -c compile -f <package_nam=
e> ). This is a makefile based package and I don't have an install target i=
n my Makefile. So I am writing a do_install in my bb file and I am doing in=
stall there. I can see that do_compile task is getting called. But do_insta=
ll ( which was overridden in my bb file ) task is not called and the images=
 and libraries are not installed in the sysroots directory.=0A>=0ABy runnin=
g bitbake -f -c compile the do_install is not called. Either you call bitba=
cke package_name or to force install butbake -c install.=0ASometime a clean=
 or cleanall before a compile also helps. This is needed if you already had=
 a successfull run.=0ARegards=0AChristian=0A=0A> Bitbake Snippet :=0A>=0A> =
SRC_URI =3D "file://src/"=0A>=0A> PV =3D "1.0"=0A>=0A> S =3D "${WORKDIR}/sr=
c/"=0A>=0A> EXTRA_OEMAKE =3D "CFLAGS=3D--sysroot=3D${PKG_CONFIG_SYSROOT_DIR=
} 'LDFLAGS=3D-lpthread -lrt ${LDFLAGS}'"=0A>=0A> do_install () {=0A> oe_run=
make install DESTDIR=3D${D} SBINDIR=3D${sbindir} MANDIR=3D${mandir}     INC=
LUDEDIR=3D${includedir}=0A>        install -d ${D}${includedir}/=0A>=0A> =
=09       for f in ${S}/*.h; do=0A> =09     =09      install -m 0644 $f ${D=
}${includedir}/=0A> =09       done=0A>=0A> }=0A> PARALLEL_MAKE =3D ""=0A> #=
BBCLASSEXTEND =3D "native"=0A>=0A> Could you please suggest why do_install =
is not getting called for this Makefile based system ? =0A>=0A> --=0A> ____=
___________________________________________=0A> yocto mailing list=0A> yoct=
o@yoctoproject.org=0A> https://lists.yoctoproject.org/listinfo/yocto=0A>=0A=
=0A=0A-- =0A_______________________________________________=0Ayocto mailing=
 list=0Ayocto@yoctoproject.org=0Ahttps://lists.yoctoproject.org/listinfo/yo=
cto

--2063643590-1116459799-1415615308=:68960
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:16px"><div><span>Thanks Chr=
istian. It worked. I gave bitbake -c install to install it.</span></div><di=
v style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: 'times new ro=
man', 'new york', times, serif; font-style: normal; background-color: trans=
parent;"><span><br></span></div><div style=3D"color: rgb(0, 0, 0); font-siz=
e: 16px; font-family: 'times new roman', 'new york', times, serif; font-sty=
le: normal; background-color: transparent;">Regards</div><div style=3D"colo=
r: rgb(0, 0, 0); font-size: 16px; font-family: 'times new roman', 'new york=
', times, serif; font-style: normal; background-color: transparent;">Hari</=
div> <div class=3D"qtdSeparateBR"><br><br></div><div class=3D"yahoo_quoted"=
 style=3D"display: block;"> <div style=3D"font-family: 'times new roman', '=
new york', times, serif; font-size: 16px;"> <div style=3D"font-family: Helv=
eticaNeue,
 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif; font-size=
: 12px;"> <div dir=3D"ltr"> <font size=3D"2" face=3D"Arial"> On Saturday, 8=
 November 2014 6:00 PM, Christian Ege &lt;k4230r6@gmail.com&gt; wrote:<br> =
</font> </div>  <br><br> <div class=3D"y_msg_container"><div id=3D"yiv67085=
48498"><div><div dir=3D"ltr"><br clear=3D"none">=0AAm 08.11.2014 13:10 schr=
ieb "hari kumar" &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:h=
arikumar523@yahoo.co.in" target=3D"_blank" href=3D"mailto:harikumar523@yaho=
o.co.in">harikumar523@yahoo.co.in</a>&gt;:<br clear=3D"none">=0A&gt;<br cle=
ar=3D"none">=0A&gt; Hi All,<br clear=3D"none">=0A&gt;<br clear=3D"none">=0A=
&gt; I am creating a new recipe in bsp layer. So I created a bb file inside=
 the recipe.<br clear=3D"none">=0A&gt; Then from the build directory, I am =
able to successfully compile the source files and was able to create the li=
brary ( bitbake -c compile -f &lt;package_name&gt; ). This is a makefile ba=
sed package and I don't have an install target in my Makefile. So I am writ=
ing a do_install in my bb file and I am doing install there. I can see that=
 do_compile task is getting called. But do_install ( which was overridden i=
n my bb file ) task is not called and the images and libraries are not inst=
alled in the sysroots directory.<br clear=3D"none">=0A&gt;<br clear=3D"none=
">=0ABy running bitbake -f -c compile the do_install is not called. Either =
you call bitbacke package_name or to force install butbake -c install.</div=
>=0A<div dir=3D"ltr">Sometime a clean or cleanall before a compile also hel=
ps. This is needed if you already had a successfull run.</div>=0A<div dir=
=3D"ltr">Regards<br clear=3D"none">=0AChristian</div><div class=3D"yiv67085=
48498yqt6126230102" id=3D"yiv6708548498yqtfd74244"><br clear=3D"none">=0A&g=
t; Bitbake Snippet :<br clear=3D"none">=0A&gt;<br clear=3D"none">=0A&gt; SR=
C_URI =3D "file://src/"<br clear=3D"none">=0A&gt;<br clear=3D"none">=0A&gt;=
 PV =3D "1.0"<br clear=3D"none">=0A&gt;<br clear=3D"none">=0A&gt; S =3D "${=
WORKDIR}/src/"<br clear=3D"none">=0A&gt;<br clear=3D"none">=0A&gt; EXTRA_OE=
MAKE =3D "CFLAGS=3D--sysroot=3D${PKG_CONFIG_SYSROOT_DIR} 'LDFLAGS=3D-lpthre=
ad -lrt ${LDFLAGS}'"<br clear=3D"none">=0A&gt;<br clear=3D"none">=0A&gt; do=
_install () {<br clear=3D"none">=0A&gt; oe_runmake install DESTDIR=3D${D} S=
BINDIR=3D${sbindir} MANDIR=3D${mandir} &nbsp; &nbsp; INCLUDEDIR=3D${include=
dir}<br clear=3D"none">=0A&gt; &nbsp; &nbsp; &nbsp; &nbsp;install -d ${D}${=
includedir}/<br clear=3D"none">=0A&gt;<br clear=3D"none">=0A&gt; =09&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for f in ${S}/*.h; do<br clear=3D"none">=0A&g=
t; =09&nbsp;&nbsp;&nbsp;&nbsp; =09&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m=
 0644 $f ${D}${includedir}/<br clear=3D"none">=0A&gt; =09&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; done<br clear=3D"none">=0A&gt;<br clear=3D"none">=0A&gt;=
 }<br clear=3D"none">=0A&gt; PARALLEL_MAKE =3D ""<br clear=3D"none">=0A&gt;=
 #BBCLASSEXTEND =3D "native"<br clear=3D"none">=0A&gt;<br clear=3D"none">=
=0A&gt; Could you please suggest why do_install is not getting called for t=
his Makefile based system ?&nbsp;<br clear=3D"none">=0A&gt;<br clear=3D"non=
e">=0A&gt; --<br clear=3D"none">=0A&gt; ___________________________________=
____________<br clear=3D"none">=0A&gt; yocto mailing list<br clear=3D"none"=
>=0A&gt; <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yocto@yoctopr=
oject.org" target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org">yocto@y=
octoproject.org</a><br clear=3D"none">=0A&gt; <a rel=3D"nofollow" shape=3D"=
rect" target=3D"_blank" href=3D"https://lists.yoctoproject.org/listinfo/yoc=
to">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none">=0A=
&gt;<br clear=3D"none">=0A</div></div></div><br><div class=3D"yqt6126230102=
" id=3D"yqtfd95463">-- <br clear=3D"none">_________________________________=
______________<br clear=3D"none">yocto mailing list<br clear=3D"none"><a sh=
ape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto=
@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none"><a shape=3D=
"rect" href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"></=
div><br><br></div>  </div> </div>  </div> </div></body></html>

--2063643590-1116459799-1415615308=:68960--
