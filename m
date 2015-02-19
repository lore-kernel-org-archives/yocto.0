Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69F86E00831; Thu, 19 Feb 2015 11:21:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.90.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm26.bullet.mail.ne1.yahoo.com (nm26.bullet.mail.ne1.yahoo.com
	[98.138.90.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF936E00827
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 11:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1424373662; bh=2y2dtgMsvIIzfAIW7MnLO7JyDy8zpSmqDflGYdw1tQU=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=gdqdgcTncfE9TPKRxibuwYArt456dBqZLXfbUHG0tPe5FzqHMrx3UwvsuNbXE6PQbu+TE7ANnHpExmrWEd1w+JA7UgrWeyo2rCRh1Iu99LsnSOmzHuH1Qyj1hq9bhDwAsaURD6geshsTKqAcNz8dPnvF2cC6xQa92lM6WN70z26P1ds0mRTIxqO1Maxp5EfORSt84kp5Qiz5GRPndxgR9ZlFbfywi4HXk2CFiFpyrB0k05VFs1+T5Igg8XLOufv8zWcuK83DspbgqULvljKc+TWDM2KKgDUTVD4lIw1spLW1tVWrsidbBrcCiFCHZ1RXWc6ZK9UQ47zxzbKnuk2cFA==
Received: from [98.138.100.117] by nm26.bullet.mail.ne1.yahoo.com with NNFMP;
	19 Feb 2015 19:21:02 -0000
Received: from [98.138.89.245] by tm108.bullet.mail.ne1.yahoo.com with NNFMP;
	19 Feb 2015 19:21:02 -0000
Received: from [127.0.0.1] by omp1059.mail.ne1.yahoo.com with NNFMP;
	19 Feb 2015 19:21:02 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 885063.98193.bm@omp1059.mail.ne1.yahoo.com
X-YMail-OSG: ms2pU6EVM1nxU3k3H6HMONG9NxT3PFN4XP_T1E49llR6U2zzdyLgbNR8d_8EJSn
	uMQviKf9PzvxHoh6zeiiYWJL8c0ZR5vtE3Qk..rK8h9Oy97OV3OyL7w32Q37QWmQkU_etzf.S0m3
	pRjdtHSZcl6SDOeUThDDgUe0Xr_BXXtObWVyfAzsFTEhqwnKHlzmpxcbDvbhkQTVw_7XHqdMjF1.
	gFHTBfhVB9sZMMhH8I.GRz4kPo7UwWx7XFSd4HXOHloFQg_avDpqOi3Hrrq5Nb62YeIz5AF5Bkg0
	b.VUU75zzD_WeIm.ayIi09do6Obb.4OR7RKhGUwPsle0T0bo49GWExQcC1S_GSrJiOxjwhcTmxYI
	a6ce15zHE_3rOJ0a55RJMTBZLm729zLRr6qkvypvqEAO5Nfw_BiOqVilYVYi6bvQsCTcMNknB02j
	8oBVXALwwg2FcyH1tZSqUeA3xJSYFPY8vjxNFxgVpypq1WmcvB3hB8QZxSFeDdaSCTFZIGsHpQ7j
	mKgViIq3UekjRMoLFzBiR8r9KykhQwnw.hnnv0QY3xfbXbLqQWIdtvhbnkTaj.g9nHaf5.TcAuKC
	P_CHo9LC4wpJ6pO5Fv7V3KjOj79mNQqSHFTvXZx3hdEzV857ake8ArWaRAjWZqNkTIzAvBrVWt8V
	ElkGwU1hLEYAc5og-
Received: by 98.138.105.193; Thu, 19 Feb 2015 19:21:02 +0000 
Date: Thu, 19 Feb 2015 19:21:02 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Victor Rodriguez <vm.rod25@gmail.com>
Message-ID: <1068292349.1957305.1424373662027.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <2134770160.1079054.1423464302468.JavaMail.yahoo@mail.yahoo.com>
References: <CAK5mtezKvzhbZ-Hf9WNqFLyzaQTsnq3siR-p2BFBcmijQ-4F6Q@mail.gmail.com>
	<2134770160.1079054.1423464302468.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MPI support on Yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Feb 2015 19:21:07 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1957304_1545769046.1424373662019"

------=_Part_1957304_1545769046.1424373662019
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Victor,
Sorry for this late reply. I took a look at the mpich recipe error, but was=
 not able to find a solution.I admit that I only looked at it for a few mom=
ents(around 2 hours), my schedule did not permit more.
If I`ll have any progress on this I will try to keep you posted.

Alex Vaduva
=20

     On Monday, February 9, 2015 8:45 AM, Alexandru Vaduva <vaduvajanalexan=
dru@yahoo.com> wrote:
  =20

 I will try to take a look at it ;)
=20

     On Monday, February 9, 2015 7:13 AM, Victor Rodriguez <vm.rod25@gmail.=
com> wrote:
  =20

 On Tue, Feb 3, 2015 at 4:57 PM, Alexandru Vaduva
<vaduvajanalexandru@yahoo.com> wrote:
> I would suggest a layer under meta-openembeded:
> meta-openembedded/meta-oe/recipes-devtools/ caould be a start.

Hi Alex

This is the first version that I have:

diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
new file mode 100644
index 0000000..bf94714
--- /dev/null
+++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
@@ -0,0 +1,18 @@
+SUMMARY =3D "Message Passing Interface(MPI) implementation"
+HOMEPAGE =3D "http://git.mpich.org/mpich.git/"
+SECTION =3D "devel"
+LICENSE =3D "BSD-2-Clause"
+LIC_FILES_CHKSUM =3D "file://COPYRIGHT;md5=3D673935943"
+SRC_URI =3D "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.g=
z"
+SRC_URI[md5sum] =3D "40dc408b1e03cc36d80209baaa2d32b7"
+
+
+EXTRA_OECONF =3D "--enable-debuginfo \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-fast \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-shared=C2=
=A0 \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-f77 \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-fc \
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-fortran =
\
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-cxx"
+
+inherit autotools gettext

However is failing in do_configure

autoreconf: configure.ac: tracing
autoreconf: configure.ac: adding subdirectory test/mpi to autoreconf
autoreconf: Entering directory `test/mpi'
aclocal: error:
/home/vrodri3/poky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/mpich-3.1.=
1/subsys_include.m4:5:
file 'src/mpid/pamid/subconfigure.m4' does not exist
autoreconf: aclocal failed with exit status: 1
ERROR: autoreconf execution failed.

Any idea ?

BTW. I am adding those extra configures from upstream spec files

All the help is more than welcome

Regards

Victor Rodriguez



>
> Alex Vaduva
>
>
> On Wednesday, February 4, 2015 12:21 AM, Victor Rodriguez
> <vm.rod25@gmail.com> wrote:
>
>
> On Tue, Feb 3, 2015 at 12:14 PM, Alexandru Vaduva
> <vaduvajanalexandru@yahoo.com> wrote:
>> I will be more then happy to help you with this.
>>
>>
>> Alex Vaduva
>>
>>
>> On Tuesday, February 3, 2015 5:41 PM, Victor Rodriguez
>> <vm.rod25@gmail.com>
>> wrote:
>>
>>
>> HI team
>>
>> I wonder if there is any project or efforts to implement Message
>> Passing Interface (MPICH ) support on Yocto ?
>>
>> If no I am more than happy to work on it , I just will need a little
>> bit of guidance
>>
>> Thanks a lot
>>
>> Regards
>>
>> Victor Rodriguez
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
> Thanks Alex
>
> Does anybody knows under which meta - list should we send the patch to
> review?
>
>
> Regards
>
> Victor Rodriguez
>
>


   =20

   

------=_Part_1957304_1545769046.1424373662019
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px"><div id=3D"yui_3_16_0_1_1424370250672_19092">Hello Victor,</d=
iv><div id=3D"yui_3_16_0_1_1424370250672_19093"><br></div><div id=3D"yui_3_=
16_0_1_1424370250672_19094" dir=3D"ltr">Sorry for this late reply. I took a=
 look at the mpich recipe error, but was not able to find a solution.</div>=
<div id=3D"yui_3_16_0_1_1424370250672_19095" dir=3D"ltr">I admit that I onl=
y looked at it for a few moments(around 2 hours), my schedule did not permi=
t more.</div><div id=3D"yui_3_16_0_1_1424370250672_22743" dir=3D"ltr"><br><=
/div><div id=3D"yui_3_16_0_1_1424370250672_21271" dir=3D"ltr">If I`ll have =
any progress on this I will try to keep you posted.</div><div id=3D"yui_3_1=
6_0_1_1424370250672_22374" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_14=
24370250672_22375" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1424370250=
672_22741" dir=3D"ltr">Alex Vaduva<br></div><div id=3D"yui_3_16_0_1_1424370=
250672_17314"><span></span></div> <div class=3D"qtdSeparateBR"><br><br></di=
v><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D"font=
-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sa=
ns-serif; font-size: 12px;"> <div style=3D"font-family: HelveticaNeue, Helv=
etica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16px;">=
 <div dir=3D"ltr"> <font size=3D"2" face=3D"Arial"> On Monday, February 9, =
2015 8:45 AM, Alexandru Vaduva &lt;vaduvajanalexandru@yahoo.com&gt; wrote:<=
br> </font> </div>  <br><br> <div class=3D"y_msg_container"><div id=3D"yiv0=
142211729"><div><div style=3D"color:#000;background-color:#fff;font-family:=
HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;=
font-size:12px;">I will try to take a look at it ;)<br clear=3D"none"><div>=
<span></span></div> <div class=3D"yiv0142211729qtdSeparateBR"><br clear=3D"=
none"><br clear=3D"none"></div><div class=3D"yiv0142211729yqt4052927288" id=
=3D"yiv0142211729yqt06655"><div class=3D"yiv0142211729yahoo_quoted" style=
=3D"display:block;"> <div style=3D"font-family:HelveticaNeue, Helvetica Neu=
e, Helvetica, Arial, Lucida Grande, sans-serif;font-size:12px;"> <div style=
=3D"font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Gra=
nde, sans-serif;font-size:16px;"> <div dir=3D"ltr"> <font size=3D"2" face=
=3D"Arial"> On Monday, February 9, 2015 7:13 AM, Victor Rodriguez &lt;vm.ro=
d25@gmail.com&gt; wrote:<br clear=3D"none"> </font> </div>  <br clear=3D"no=
ne"><br clear=3D"none"> <div class=3D"yiv0142211729y_msg_container">On Tue,=
 Feb 3, 2015 at 4:57 PM, Alexandru Vaduva<br clear=3D"none">&lt;<a rel=3D"n=
ofollow" shape=3D"rect" ymailto=3D"mailto:vaduvajanalexandru@yahoo.com" tar=
get=3D"_blank" href=3D"mailto:vaduvajanalexandru@yahoo.com">vaduvajanalexan=
dru@yahoo.com</a>&gt; wrote:<br clear=3D"none">&gt; I would suggest a layer=
 under meta-openembeded:<br clear=3D"none">&gt; meta-openembedded/meta-oe/r=
ecipes-devtools/ caould be a start.<br clear=3D"none"><br clear=3D"none">Hi=
 Alex<br clear=3D"none"><br clear=3D"none">This is the first version that I=
 have:<br clear=3D"none"><br clear=3D"none">diff --git a/meta-oe/recipes-de=
vtools/mpich/mpich_3.1.1.bb<br clear=3D"none">b/meta-oe/recipes-devtools/mp=
ich/mpich_3.1.1.bb<br clear=3D"none">new file mode 100644<br clear=3D"none"=
>index 0000000..bf94714<br clear=3D"none">--- /dev/null<br clear=3D"none">+=
++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb<br clear=3D"none">@@ -0,=
0 +1,18 @@<br clear=3D"none">+SUMMARY =3D "Message Passing Interface(MPI) i=
mplementation"<br clear=3D"none">+HOMEPAGE =3D "<a rel=3D"nofollow" shape=
=3D"rect" target=3D"_blank" href=3D"http://git.mpich.org/mpich.git/">http:/=
/git.mpich.org/mpich.git/</a>"<br clear=3D"none">+SECTION =3D "devel"<br cl=
ear=3D"none">+LICENSE =3D "BSD-2-Clause"<br clear=3D"none">+LIC_FILES_CHKSU=
M =3D "file://COPYRIGHT;md5=3D673935943"<br clear=3D"none">+SRC_URI =3D "<a=
 rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://www.mpich=
.org/static/downloads/$">http://www.mpich.org/static/downloads/$</a>{PV}/mp=
ich-${PV}.tar.gz"<br clear=3D"none">+SRC_URI[md5sum] =3D "40dc408b1e03cc36d=
80209baaa2d32b7"<br clear=3D"none">+<br clear=3D"none">+<br clear=3D"none">=
+EXTRA_OECONF =3D "--enable-debuginfo \<br clear=3D"none">+&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --enable-fast \<br clear=3D"none">+=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --enable-shared&nbs=
p; \<br clear=3D"none">+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; --disable-f77 \<br clear=3D"none">+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; --disable-fc \<br clear=3D"none">+&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-fortran \<br clear=3D"none">+=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-cxx"<br c=
lear=3D"none">+<br clear=3D"none">+inherit autotools gettext<br clear=3D"no=
ne"><br clear=3D"none">However is failing in do_configure<br clear=3D"none"=
><br clear=3D"none">autoreconf: configure.ac: tracing<br clear=3D"none">aut=
oreconf: configure.ac: adding subdirectory test/mpi to autoreconf<br clear=
=3D"none">autoreconf: Entering directory `test/mpi'<br clear=3D"none">acloc=
al: error:<br clear=3D"none">/home/vrodri3/poky/build/tmp/work/i586-poky-li=
nux/mpich/3.1.1-r0/mpich-3.1.1/subsys_include.m4:5:<br clear=3D"none">file =
'src/mpid/pamid/subconfigure.m4' does not exist<br clear=3D"none">autorecon=
f: aclocal failed with exit status: 1<br clear=3D"none">ERROR: autoreconf e=
xecution failed.<br clear=3D"none"><br clear=3D"none">Any idea ?<br clear=
=3D"none"><br clear=3D"none">BTW. I am adding those extra configures from u=
pstream spec files<br clear=3D"none"><br clear=3D"none">All the help is mor=
e than welcome<br clear=3D"none"><br clear=3D"none">Regards<br clear=3D"non=
e"><br clear=3D"none">Victor Rodriguez<div class=3D"yiv0142211729yqt4966916=
041" id=3D"yiv0142211729yqtfd32442"><br clear=3D"none"><br clear=3D"none"><=
br clear=3D"none"><br clear=3D"none">&gt;<br clear=3D"none">&gt; Alex Vaduv=
a<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt; On W=
ednesday, February 4, 2015 12:21 AM, Victor Rodriguez<br clear=3D"none">&gt=
; &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:vm.rod25@gmail.c=
om" target=3D"_blank" href=3D"mailto:vm.rod25@gmail.com">vm.rod25@gmail.com=
</a>&gt; wrote:<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"n=
one">&gt; On Tue, Feb 3, 2015 at 12:14 PM, Alexandru Vaduva<br clear=3D"non=
e">&gt; &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:vaduvajana=
lexandru@yahoo.com" target=3D"_blank" href=3D"mailto:vaduvajanalexandru@yah=
oo.com">vaduvajanalexandru@yahoo.com</a>&gt; wrote:<br clear=3D"none">&gt;&=
gt; I will be more then happy to help you with this.<br clear=3D"none">&gt;=
&gt;<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Alex Vaduva<br c=
lear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt=
; On Tuesday, February 3, 2015 5:41 PM, Victor Rodriguez<br clear=3D"none">=
&gt;&gt; &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:vm.rod25@=
gmail.com" target=3D"_blank" href=3D"mailto:vm.rod25@gmail.com">vm.rod25@gm=
ail.com</a>&gt;<br clear=3D"none">&gt;&gt; wrote:<br clear=3D"none">&gt;&gt=
;<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; HI team<br clear=3D=
"none">&gt;&gt;<br clear=3D"none">&gt;&gt; I wonder if there is any project=
 or efforts to implement Message<br clear=3D"none">&gt;&gt; Passing Interfa=
ce (MPICH ) support on Yocto ?<br clear=3D"none">&gt;&gt;<br clear=3D"none"=
>&gt;&gt; If no I am more than happy to work on it , I just will need a lit=
tle<br clear=3D"none">&gt;&gt; bit of guidance<br clear=3D"none">&gt;&gt;<b=
r clear=3D"none">&gt;&gt; Thanks a lot<br clear=3D"none">&gt;&gt;<br clear=
=3D"none">&gt;&gt; Regards<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt=
;&gt; Victor Rodriguez<br clear=3D"none">&gt;&gt; --<br clear=3D"none">&gt;=
&gt; _______________________________________________<br clear=3D"none">&gt;=
&gt; yocto mailing list<br clear=3D"none">&gt;&gt; <a rel=3D"nofollow" shap=
e=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"n=
one">&gt;&gt; <a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"=
https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.o=
rg/listinfo/yocto</a><br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt;=
<br clear=3D"none">&gt;<br clear=3D"none">&gt; Thanks Alex<br clear=3D"none=
">&gt;<br clear=3D"none">&gt; Does anybody knows under which meta - list sh=
ould we send the patch to<br clear=3D"none">&gt; review?<br clear=3D"none">=
&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt; Regards<br clear=3D"none=
">&gt;<br clear=3D"none">&gt; Victor Rodriguez<br clear=3D"none">&gt;<br cl=
ear=3D"none">&gt;<br clear=3D"none"></div><br clear=3D"none"><br clear=3D"n=
one"></div>  </div> </div>  </div></div> </div></div></div><br><br></div>  =
</div> </div>  </div> </div></body></html>

------=_Part_1957304_1545769046.1424373662019--
