Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EFF0E00828; Fri,  9 Jan 2015 12:43:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 582CDE0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 12:43:26 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id t09KhIe6023267;
	Sat, 10 Jan 2015 07:13:18 +1030
Message-Id: <f457d3929c8491c344b5920d88c8e7c0b0e99fb7@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Mihail StanciuX" <stanciux.mihail@intel.com>, yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <802B8E31E3519842A6CEE1B497E861B10488C70F@IRSMSX108.ger.corp.intel.com>
Date: Sat, 10 Jan 2015 07:13:18 +1030
MIME-Version: 1.0
Subject: Re: runqemu-extract-sdk does not provide all required librariesin rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Jan 2015 20:43:37 -0000
Content-Type: multipart/alternative;
	boundary="=_76f2a1a6f3a49baca2f91a8445881289"

--=_76f2a1a6f3a49baca2f91a8445881289
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0Hi Mihail,=0AI originally installed poky 1.6.1 but when it generat=
es the toolchain=0Afiles it calls it them 1.6.2.=C2=A0=0AThe base image=
 I am using is not core-image-sato-sdk as I was wanting=0Ato develop aga=
inst my actual image and also test things directly on my=0Atarget.=C2=A0=
My core image is supplied by the vendor=0A(atmel-qt5-demo-image).In my c=
onfig file i have added dbg-pkgs,=0Adev-pkgs, eglibc-static. Adding egli=
b-static adds the libc's=0Arequired. but I am still missing crtbegin.o,=
 crtend.o, libgcc.a, and=0Alibgcc_s.so.=0AAre there any images features=
 that I can add to add these extra=0Alibraries? I can always test my app=
lications on the qemuarm=0Aenvironment created by ADT as that has all th=
e libraries/files=0Arequired, but it is much faster to test on the targe=
t hardware and I=0Aneed these packages in my sdk setup for the linker to=
 create the=0Aobject file for deployment on the target. Also that target=
 has the=0Ahardware I need to test.=0AThe process I use at present it to=
:=C2=A0$ bitbake image (with above=0Amentioned =C2=A0image extra feature=
s)$ bitbake image -c populate_sdk$ run=0Athe created shell script from t=
he populate sdk to create toolchain in=0Aa directory X$ runqemu-extract-=
sdk on image-rootfs.tar.gz to create=0Arootfs in directory Y$ copy from=
 directory X to directory Y the files=0Acrtbegin.o, crtend.o, libgcc.a,=
 and libgcc_s.so=0AIf there is something I am missing, please let me kno=
w. I would like=0Athe 4 files to be part of the rootfs when i create it.=
=0Athanks for your helpLachlan=0A=0A----- Original Message -----=0AFrom:=
 "Mihail StanciuX" =0ATo:"peterengcomau001@adam.com.au" , "yocto@yoctopr=
oject.org" =0ACc:=0ASent:Tue, 6 Jan 2015 09:23:15 +0000=0ASubject:RE: [y=
octo] runqemu-extract-sdk does not provide all required=0Alibraries in r=
ootfs=0A=0A=09Hi Lachlan,=0A=0A=09=C2=A0=0A=0A=09I just tried this on th=
e =E2=80=9Cdaisy=E2=80=9D branch and I can find all the=0Alibraries you=
 mention as being missing.=0A=0A=09Are you using core-image-sato-sdk as=
 the =E2=80=9Cbase=E2=80=9D image?=0A=0A=09As far as I know 1.6.2 hasn=
=E2=80=99t been released yet, so what commit=0Aare you using?=0A=0A Rega=
rds,=0A=0A=09Mihail=0A=0A=09=C2=A0=0A=0A=09FROM: yocto-bounces@yoctoproj=
ect.org=0A[mailto:yocto-bounces@yoctoproject.org] ON BEHALF OF=0Apeteren=
gcomau001@adam.com.au=0ASENT: Sunday, December 21, 2014 4:54 PM=0ATO: yo=
cto@yoctoproject.org=0ASUBJECT: [yocto] runqemu-extract-sdk does not pro=
vide all required=0Alibraries in rootfs=0A=0A=09=C2=A0=0A=0A=09I am usin=
g poky 1.6.2. I am using the build chain created using=0A$bitbake meta-i=
de-support.=0A=0A=09=C2=A0=0A=0A=09If I create a rootfs using ADT I can=
 use Eclipse to test against=0Aqemu all OK but this is not the target ro=
otfs so its use is limited=0A=0A=09If I create a rootfs using $ bitbake=
 image -c populate_sdk then run=0Athe shell script, the rootfs created h=
as all the required libraries,=0Abut it does not create a directory call=
ed pseudo_state, and qemu=0Afails to work because of this.=0A=0A=09If I=
 create a rootfs with runqemu-extract-sdk on the image I created=0Ausing=
 $ bitabke image, the resulting rootfs has the required=0Apseudo_state d=
irectory but is missing crucial libraries.=0A=0A=09=C2=A0=0A=0A=09The mi=
ssing libraries are=0A=0A=09crt1.o, crti.o, ctrn.o, crtbegin.o, crtend.o=
, crtn.o, libc.so,=0Alibc_nonshared.a, libgcc.a, libgcc_s.so, libgcc_s.s=
o.1.=C2=A0=0A=0A=09=C2=A0=0A=0A=09I can import these libraries from the=
 rootfs created by running the=0Apopulate_sdk script, but I get many err=
ors. The first errors indicate=0Ait cannot find stdio.h.=0A=0A I have at=
tached the config.log file. There are so many errors but=0Asome one may=
 be able to infer something from it.=0A=0A It seems to me that I am miss=
ing a setting when I execute=0A'runqemu-extract-sdk' otherwise all the r=
equired libraries would be=0Athere and I wouldnt get a compatibility iss=
ue with libraries created=0Afrom a separate process (but same source).=
=0A=0A Can anyonee indicate where I should look to understand why=0Arunq=
emu-extract-sdk is not building all of the required libraries ,=0Aor how=
 I can overcome the problem ?=0A=0A Thank You=0A Lachlan=0A=0A=09---- Me=
ssage sent via Adam Internet WebMail -=0Ahttp://www.adam.com.au/ [1]=0A=
=0A=09  ---- Message sent via Adam Internet WebMail -=0Ahttp://www.adam.=
com.au/=0A=0ALinks:=0A------=0A[1] http://www.adam.com.au/=0A

--=_76f2a1a6f3a49baca2f91a8445881289
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>=C2=A0Hi Mihail,<div><br /></div><div>I originally installed=
 poky 1.6.1 but when it generates the toolchain files it calls it them 1=
6.2.=C2=A0</div><div><br /></div><div>The base image I am using is not=
 core-image-sato-sdk as I was wanting to develop against my actual image=
 and also test things directly on my target.=C2=A0</div><div>My core ima=
ge is supplied by the vendor (atmel-qt5-demo-image).</div><div>In my con=
fig file i have added dbg-pkgs, dev-pkgs, eglibc-static. Adding eglib-st=
atic adds the libc's required. but I am still missing crtbegin.o, crtend=
o, libgcc.a, and libgcc_s.so.</div><div><br /></div><div>Are there any=
 images features that I can add to add these extra libraries? I can alwa=
ys test my applications on the qemuarm environment created by ADT as tha=
t has all the libraries/files required, but it is much faster to test on=
 the target hardware and I need these packages in my sdk setup for the l=
inker to create the object file for deployment on the target. Also that=
 target has the hardware I need to test.</div><div><br /></div><div>The=
 process I use at present it to:=C2=A0</div><div>$ bitbake image (with a=
bove mentioned =C2=A0image extra features)</div><div>$ bitbake image -c=
 populate_sdk</div><div>$ run the created shell script from the populate=
 sdk to create toolchain in a directory X</div><div>$ runqemu-extract-sd=
k on image-rootfs.tar.gz to create rootfs in directory Y</div><div>$ cop=
y from directory X to directory Y the files crtbegin.o, crtend.o, libgcc=
a, and libgcc_s.so</div><div><br /></div><div>If there is something I a=
m missing, please let me know. I would like the 4 files to be part of th=
e rootfs when i create it.</div><div><br /></div><div>thanks for your he=
lp</div><div>Lachlan</div><div><br /><br /><blockquote><br />----- Origi=
nal Message -----<br /><div style=3D"width:100%;background:rgb(228,228,2=
28);"><div style=3D"font-weight:bold;">From:</div> "Mihail StanciuX" &lt=
;stanciux.mihail@intel.com&gt;</div><br /><div style=3D"font-weight:bold=
;">To:</div>"peterengcomau001@adam.com.au" &lt;peterengcomau001@adam.com=
au&gt;, "yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;<br /><d=
iv style=3D"font-weight:bold;">Cc:</div><br /><div style=3D"font-weight:=
bold;">Sent:</div>Tue, 6 Jan 2015 09:23:15 +0000<br /><div style=3D"font=
-weight:bold;">Subject:</div>RE: [yocto] runqemu-extract-sdk does not pr=
ovide all required libraries=09in rootfs<br /><br /><br /><div class=3D"=
WordSection1">=0A<p class=3D"MsoNormal"><span style=3D"font-size:11pt;fo=
nt-family:Calibri, 'sans-serif';color:#1F497D;">Hi Lachlan,</span></p><p=
></p><p></p>=0A<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font=
-family:Calibri, 'sans-serif';color:#1F497D;"></span></p><p>=C2=A0</p><p=
></p>=0A<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family=
:Calibri, 'sans-serif';color:#1F497D;">I just tried this on the =E2=80=
=9Cdaisy=E2=80=9D branch and I can find all the libraries you mention as=
 being missing.</span></p><p></p><p></p>=0A<p class=3D"MsoNormal"><span=
 style=3D"font-size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D=
;">Are you using core-image-sato-sdk as the =E2=80=9Cbase=E2=80=9D image=
?</span></p><p></p><p></p>=0A<p class=3D"MsoNormal"><span style=3D"font-=
size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D;">As far as I=
 know 1.6.2 hasn=E2=80=99t been released yet, so what commit are you usi=
ng?</span></p><p></p><p></p>=0A<p class=3D"MsoNormal"><span style=3D"fon=
t-size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D;"><br />=0AR=
egards,</span></p><p></p><p></p>=0A<p class=3D"MsoNormal"><span style=3D=
"font-size:11pt;font-family:Calibri, 'sans-serif';color:#1F497D;">Mihail=
</span></p><p></p><p></p>=0A<p class=3D"MsoNormal"><span style=3D"font-s=
ize:11pt;font-family:Calibri, 'sans-serif';color:#1F497D;"></span></p><p=
>=C2=A0</p><p></p>=0A<div>=0A<div style=3D"border:none;border-top:solid=
 #B5C4DF 1pt;padding:3pt 0in 0in 0in;">=0A<p class=3D"MsoNormal"><b><spa=
n style=3D"font-size:10pt;font-family:Tahoma, 'sans-serif';">From:</span=
></b><span style=3D"font-size:10pt;font-family:Tahoma, 'sans-serif';"> y=
octo-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=0A=
<b>On Behalf Of </b>peterengcomau001@adam.com.au<br /><b>Sent:</b> Sunda=
y, December 21, 2014 4:54 PM<br /><b>To:</b> yocto@yoctoproject.org<br /=
><b>Subject:</b> [yocto] runqemu-extract-sdk does not provide all requir=
ed libraries in rootfs</span></p><p></p><p></p>=0A</div>=0A</div>=0A<p c=
lass=3D"MsoNormal"></p><p>=C2=A0</p><p></p>=0A<p>I am using poky 1.6.2.=
 I am using the build chain created using $bitbake meta-ide-support.</p>=
<p></p><p></p>=0A<p class=3D"MsoNormal"></p><p>=C2=A0</p><p></p>=0A<div>=
=0A<div>=0A<p class=3D"MsoNormal">If I create a rootfs using ADT I can u=
se Eclipse to test against qemu all OK but this is not the target rootfs=
 so its use is limited</p><p></p><p></p>=0A</div>=0A<div>=0A<p class=3D"=
MsoNormal">If I create a rootfs using $ bitbake image -c populate_sdk th=
en run the shell script, the rootfs created has all the required librari=
es, but it does not create a directory called pseudo_state, and qemu fai=
ls to work because of this.</p><p></p><p></p>=0A</div>=0A<div>=0A<p clas=
s=3D"MsoNormal">If I create a rootfs with runqemu-extract-sdk on the ima=
ge I created using $ bitabke image, the resulting rootfs has the require=
d pseudo_state directory but is missing crucial libraries.</p><p></p><p>=
</p>=0A</div>=0A<div>=0A<p class=3D"MsoNormal"></p><p>=C2=A0</p><p></p>=
=0A</div>=0A<div>=0A<p class=3D"MsoNormal">The missing libraries are</p>=
<p></p><p></p>=0A</div>=0A<div>=0A<p class=3D"MsoNormal">crt1.o, crti.o,=
 ctrn.o, crtbegin.o, crtend.o, crtn.o, libc.so, libc_nonshared.a, libgcc=
a, libgcc_s.so, libgcc_s.so.1.=C2=A0</p><p></p><p></p>=0A</div>=0A<div>=
=0A<p class=3D"MsoNormal"></p><p>=C2=A0</p><p></p>=0A</div>=0A<div>=0A<p=
 class=3D"MsoNormal" style=3D"margin-bottom:12pt;">I can import these li=
braries from the rootfs created by running the populate_sdk script, but=
 I get many errors. The first errors indicate it cannot find stdio.h.<br=
 /><br />=0AI have attached the config.log file. There are so many error=
s but some one may be able to infer something from it.<br /><br />=0AIt=
 seems to me that I am missing a setting when I execute 'runqemu-extract=
-sdk' otherwise all the required libraries would be there and I wouldnt=
 get a compatibility issue with libraries created from a separate proces=
s (but same source).<br /><br />=0ACan anyonee indicate where I should l=
ook to understand why runqemu-extract-sdk is not building all of the req=
uired libraries , or how I can overcome the problem ?<br /><br />=0AThan=
k You<br />=0ALachlan<br /><br /><br /><br /></p><p></p><p></p>=0A</div>=
=0A</div>=0A<p class=3D"MsoNormal">---- Message sent via Adam Internet W=
ebMail - <a href=3D"http://www.adam.com.au/">=0Ahttp://www.adam.com.au/<=
/a></p><p></p><p></p>=0A</div>=0A=0A=0A=0A</blockquote></div>---- Messag=
e sent via Adam Internet WebMail  - http://www.adam.com.au/</body></html=
>

--=_76f2a1a6f3a49baca2f91a8445881289--
