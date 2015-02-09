Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1571AE00945; Sun,  8 Feb 2015 22:45:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
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
	*      [98.138.91.182 listed in list.dnswl.org]
Received: from nm22-vm4.bullet.mail.ne1.yahoo.com
	(nm22-vm4.bullet.mail.ne1.yahoo.com [98.138.91.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90D10E00596
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 22:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1423464303; bh=pUATXVJLgxXwTa5mherry8DNUms3dhXkBZ0t9zs/Ies=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=BGAuqG9TrOuTFbRNhk48SEmsigDmZ+ln85TgFSdiLhbI4qa5WKxjxii4uYB8SA0dLnV8AOsl+gLi5TlytrjEVbq7AQ5EB2pA2G9uSKJhAYDAFlSo63Y2jjX3YQ3uA0Pfao+Fke9/lWjeCeQMl3Va2ULpO+oUu3clfH0fPKPxfRO9TfK4HZqkGyNIaLLUJn4nGWS/hk96georCkgvXIZGWIV/XkFNUORLFcYl2OqjX3J9sgLjKuXc00xKUcg5fFmQOObOgU6MKMXqESVDZqwSH0InWw3pQm+1p3f2foXDeYe+1AKYJYWDgi2XxEWCWxZyvQNmn00coeEf3O32OvRkaw==
Received: from [98.138.100.116] by nm22.bullet.mail.ne1.yahoo.com with NNFMP;
	09 Feb 2015 06:45:03 -0000
Received: from [98.138.87.9] by tm107.bullet.mail.ne1.yahoo.com with NNFMP;
	09 Feb 2015 06:45:03 -0000
Received: from [127.0.0.1] by omp1009.mail.ne1.yahoo.com with NNFMP;
	09 Feb 2015 06:45:03 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 235838.3277.bm@omp1009.mail.ne1.yahoo.com
X-YMail-OSG: sYbFFqsVM1lKLd1nn7NRQBKEWjBtRd0E1gwxCh5zJLoB8cd4VXBo_YOolPpCnGf
	_4jUegnyo5aRVrEH5vjRvohS6yyEl1huUOs5SpPKGleknqOpdcwR7l1hjzvvvWN7NmraQy95YoQC
	wuOaSLGwv.l1yKqV_ti8l8bRUrh1wboUw_QUuevle4Lb0ukOvGLR1kPLTpdBdCdlWOgb2h8RBBgR
	9vHOpdAusg5qfGkR0pex0jb2cJDLU.MSZHaDcbERmhyhTLea0RUSmyCNUQHlJB3GE3t2rsZt9bCp
	I_ctuUw36XCnREAdHCTXmuwLFiPbsOPLz2qquasMB0QobwSg5fVtMkBLXYRuOqne3ibsSskQJaJz
	fG.0smOX4oQ8eIImKFmlDR5dH5blbmRhRvfurlTOFOso5yuYZn4V_YvwuEA9z0aVED_AA4c4S1n9
	.uGodgpaSJTTx3QwqJwahPZANn86xwqiEy4S.Pr4r5GD2GSrdYvEFZ.V7YaajmXKyJWDCpmU7FWE
	vPqo2PH.HxGOS3DO1DfnXl2IHyLftVFu4d0pD8mU14mRuz.ANgrdTI3AZm4wqfx1GSpflITl.L4Z
	idAqlalbevJ8ywxFUcrpIpgbpGhS8Pnif94IlA_ZQebTlM_.D5_834O3R9ESwdiwC66y7UHFvbvN
	OZAQmyybuRYt4vYg-
Received: by 98.138.101.163; Mon, 09 Feb 2015 06:45:02 +0000 
Date: Mon, 9 Feb 2015 06:45:02 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Victor Rodriguez <vm.rod25@gmail.com>
Message-ID: <2134770160.1079054.1423464302468.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAK5mtezKvzhbZ-Hf9WNqFLyzaQTsnq3siR-p2BFBcmijQ-4F6Q@mail.gmail.com>
References: <CAK5mtezKvzhbZ-Hf9WNqFLyzaQTsnq3siR-p2BFBcmijQ-4F6Q@mail.gmail.com>
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
X-List-Received-Date: Mon, 09 Feb 2015 06:45:18 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1079053_865680454.1423464302464"

------=_Part_1079053_865680454.1423464302464
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

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


   

------=_Part_1079053_865680454.1423464302464
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12px">I will try to take a look at it ;)<br><div><span></span></div=
> <div class=3D"qtdSeparateBR"><br><br></div><div style=3D"display: block;"=
 class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue, Helvetic=
a Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12px;"> <di=
v style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lu=
cida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> <font size=3D=
"2" face=3D"Arial"> On Monday, February 9, 2015 7:13 AM, Victor Rodriguez &=
lt;vm.rod25@gmail.com&gt; wrote:<br> </font> </div>  <br><br> <div class=3D=
"y_msg_container">On Tue, Feb 3, 2015 at 4:57 PM, Alexandru Vaduva<br clear=
=3D"none">&lt;<a shape=3D"rect" ymailto=3D"mailto:vaduvajanalexandru@yahoo.=
com" href=3D"mailto:vaduvajanalexandru@yahoo.com">vaduvajanalexandru@yahoo.=
com</a>&gt; wrote:<br clear=3D"none">&gt; I would suggest a layer under met=
a-openembeded:<br clear=3D"none">&gt; meta-openembedded/meta-oe/recipes-dev=
tools/ caould be a start.<br clear=3D"none"><br clear=3D"none">Hi Alex<br c=
lear=3D"none"><br clear=3D"none">This is the first version that I have:<br =
clear=3D"none"><br clear=3D"none">diff --git a/meta-oe/recipes-devtools/mpi=
ch/mpich_3.1.1.bb<br clear=3D"none">b/meta-oe/recipes-devtools/mpich/mpich_=
3.1.1.bb<br clear=3D"none">new file mode 100644<br clear=3D"none">index 000=
0000..bf94714<br clear=3D"none">--- /dev/null<br clear=3D"none">+++ b/meta-=
oe/recipes-devtools/mpich/mpich_3.1.1.bb<br clear=3D"none">@@ -0,0 +1,18 @@=
<br clear=3D"none">+SUMMARY =3D "Message Passing Interface(MPI) implementat=
ion"<br clear=3D"none">+HOMEPAGE =3D "<a shape=3D"rect" href=3D"http://git.=
mpich.org/mpich.git/" target=3D"_blank">http://git.mpich.org/mpich.git/</a>=
"<br clear=3D"none">+SECTION =3D "devel"<br clear=3D"none">+LICENSE =3D "BS=
D-2-Clause"<br clear=3D"none">+LIC_FILES_CHKSUM =3D "file://COPYRIGHT;md5=
=3D673935943"<br clear=3D"none">+SRC_URI =3D "<a shape=3D"rect" href=3D"htt=
p://www.mpich.org/static/downloads/$" target=3D"_blank">http://www.mpich.or=
g/static/downloads/$</a>{PV}/mpich-${PV}.tar.gz"<br clear=3D"none">+SRC_URI=
[md5sum] =3D "40dc408b1e03cc36d80209baaa2d32b7"<br clear=3D"none">+<br clea=
r=3D"none">+<br clear=3D"none">+EXTRA_OECONF =3D "--enable-debuginfo \<br c=
lear=3D"none">+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --en=
able-fast \<br clear=3D"none">+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; --enable-shared&nbsp; \<br clear=3D"none">+&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-f77 \<br clear=3D"none">+&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disable-fc \<br clear=
=3D"none">+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; --disabl=
e-fortran \<br clear=3D"none">+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; --disable-cxx"<br clear=3D"none">+<br clear=3D"none">+inherit a=
utotools gettext<br clear=3D"none"><br clear=3D"none">However is failing in=
 do_configure<br clear=3D"none"><br clear=3D"none">autoreconf: configure.ac=
: tracing<br clear=3D"none">autoreconf: configure.ac: adding subdirectory t=
est/mpi to autoreconf<br clear=3D"none">autoreconf: Entering directory `tes=
t/mpi'<br clear=3D"none">aclocal: error:<br clear=3D"none">/home/vrodri3/po=
ky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/mpich-3.1.1/subsys_include=
.m4:5:<br clear=3D"none">file 'src/mpid/pamid/subconfigure.m4' does not exi=
st<br clear=3D"none">autoreconf: aclocal failed with exit status: 1<br clea=
r=3D"none">ERROR: autoreconf execution failed.<br clear=3D"none"><br clear=
=3D"none">Any idea ?<br clear=3D"none"><br clear=3D"none">BTW. I am adding =
those extra configures from upstream spec files<br clear=3D"none"><br clear=
=3D"none">All the help is more than welcome<br clear=3D"none"><br clear=3D"=
none">Regards<br clear=3D"none"><br clear=3D"none">Victor Rodriguez<div cla=
ss=3D"yqt4966916041" id=3D"yqtfd32442"><br clear=3D"none"><br clear=3D"none=
"><br clear=3D"none"><br clear=3D"none">&gt;<br clear=3D"none">&gt; Alex Va=
duva<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt; O=
n Wednesday, February 4, 2015 12:21 AM, Victor Rodriguez<br clear=3D"none">=
&gt; &lt;<a shape=3D"rect" ymailto=3D"mailto:vm.rod25@gmail.com" href=3D"ma=
ilto:vm.rod25@gmail.com">vm.rod25@gmail.com</a>&gt; wrote:<br clear=3D"none=
">&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt; On Tue, Feb 3, 2015 at=
 12:14 PM, Alexandru Vaduva<br clear=3D"none">&gt; &lt;<a shape=3D"rect" ym=
ailto=3D"mailto:vaduvajanalexandru@yahoo.com" href=3D"mailto:vaduvajanalexa=
ndru@yahoo.com">vaduvajanalexandru@yahoo.com</a>&gt; wrote:<br clear=3D"non=
e">&gt;&gt; I will be more then happy to help you with this.<br clear=3D"no=
ne">&gt;&gt;<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Alex Vad=
uva<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt;<br clear=3D"none"=
>&gt;&gt; On Tuesday, February 3, 2015 5:41 PM, Victor Rodriguez<br clear=
=3D"none">&gt;&gt; &lt;<a shape=3D"rect" ymailto=3D"mailto:vm.rod25@gmail.c=
om" href=3D"mailto:vm.rod25@gmail.com">vm.rod25@gmail.com</a>&gt;<br clear=
=3D"none">&gt;&gt; wrote:<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;=
&gt;<br clear=3D"none">&gt;&gt; HI team<br clear=3D"none">&gt;&gt;<br clear=
=3D"none">&gt;&gt; I wonder if there is any project or efforts to implement=
 Message<br clear=3D"none">&gt;&gt; Passing Interface (MPICH ) support on Y=
octo ?<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; If no I am mor=
e than happy to work on it , I just will need a little<br clear=3D"none">&g=
t;&gt; bit of guidance<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt=
; Thanks a lot<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Regard=
s<br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt; Victor Rodriguez<br=
 clear=3D"none">&gt;&gt; --<br clear=3D"none">&gt;&gt; ____________________=
___________________________<br clear=3D"none">&gt;&gt; yocto mailing list<b=
r clear=3D"none">&gt;&gt; <a shape=3D"rect" ymailto=3D"mailto:yocto@yoctopr=
oject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
><br clear=3D"none">&gt;&gt; <a shape=3D"rect" href=3D"https://lists.yoctop=
roject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org=
/listinfo/yocto</a><br clear=3D"none">&gt;&gt;<br clear=3D"none">&gt;&gt;<b=
r clear=3D"none">&gt;<br clear=3D"none">&gt; Thanks Alex<br clear=3D"none">=
&gt;<br clear=3D"none">&gt; Does anybody knows under which meta - list shou=
ld we send the patch to<br clear=3D"none">&gt; review?<br clear=3D"none">&g=
t;<br clear=3D"none">&gt;<br clear=3D"none">&gt; Regards<br clear=3D"none">=
&gt;<br clear=3D"none">&gt; Victor Rodriguez<br clear=3D"none">&gt;<br clea=
r=3D"none">&gt;<br clear=3D"none"></div><br><br></div>  </div> </div>  </di=
v> </div></body></html>

------=_Part_1079053_865680454.1423464302464--
