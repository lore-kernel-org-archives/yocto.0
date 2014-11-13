Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D784AE0087D; Thu, 13 Nov 2014 07:21:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A7D3E0087D
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 07:20:55 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id sADFKq9x023600
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 01:50:52 +1030
Message-Id: <93cd4bfbc3529dd7d48c2698e647b33f0400040b@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Fri, 14 Nov 2014 01:50:52 +1030
MIME-Version: 1.0
Subject: recipe fails to load local files
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
X-List-Received-Date: Thu, 13 Nov 2014 15:21:01 -0000
Content-Type: multipart/alternative;
	boundary="=_ba8bca316a73b517793e552d95713117"

--=_ba8bca316a73b517793e552d95713117
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I am using yocto 1.6.1 and I have a a number of recipes in =0A~/home/pok=
y/meta-atmel-lsp/recipes-lsp.=0A=0AI have a lightpd.bbappend that loads=
 local files, I have a=0Awpa-supplicant.bbappend that loads local files,=
 but I am also trying=0Ato load some firmware that should load local fil=
es but fails.=0A=0AIn ~/home/poky/meta-atmel-lsp/recipes-lsp/zd1211-firm=
ware/ I have the=0Arecipe zd1211-firmware_1.55.bb as follows:=0A=0A_____=
__________________________________=0ASUMMARY =3D "Belkin Wifi Firmware"=
=0ALICENSE =3D "GPL"=0A=0ASRC_URI =3D "=0A=C2=A0 file://zd1211_ub =0A=C2=
=A0 file://zd1211_uph =0A=C2=A0 file://zd1211_uphm =0A=C2=A0 file://zd12=
11_uphr =0A=C2=A0 file://zd1211_ur =0A"=0A=0Ado_install() {=0A=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 install -d ${D}/lib/firmware/zd1211=0A=C2=
=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/zd1211_*=C2=A0=C2=A0=C2=A0=0A=
${D}/lib/firmware/zd1211/=0A}=0A_____________________________________=0A=
I sourced these files but not the recipe from:=0Ahttp://sourceforge.net/=
projects/zd1211/=0A=0AThe files indicated in the recipe are in :=0A~/hom=
e/poky/meta-atmel-lsp/recipes-lsp/zd1211-firmware/zd1211-firmware/=0A=0A=
When I create the image, no directory is created as=0A/lib/firmware/zd12=
11=0Aand also no files are loaded into it.=0A=0AI have also tried {THISD=
IR}=C2=A0 instead of using {WORKDIR}=0AI also tried specifying a specifi=
c file rather than using the wild=0Acard=0AI have also tried using 'cp'=
 instead of 'install -m 0755'=0A=0ANone seem to work.=0AI am expecting t=
he firmware files to be located in:=0A~/poky/build-atmel/tmp/work/sama5d=
3xek-poky-linux-gnueabi/atmel-qt5-demo-image/1.0-r0/rootfs/etc/firmware=
=0Abut they are not.=0A=0AI originally started with a recipe to load the=
 files directly from=0Athe source, but that did not work. The original r=
ecipe used was=0Azd1211-firmware_1.4.bb from:=0Ahttps://gitorious.org/op=
encsbc/openembedded/source/583297ac295f1b381019ccecb4ae6abaa69cbc6c:reci=
pes/zd1211=0A=0AThat did not work and now I am extracting the files from=
 the .tar and=0Atrying to load them direct.=0AMaybe the same problem exi=
sts between the original recipe and loading=0Athe .tar files.=0A=0AThank=
s for any help=0ALachlan=0A=0A---- Message sent via Adam Internet WebMai=
l - http://www.adam.com.au/

--=_ba8bca316a73b517793e552d95713117
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>I am using yocto 1.6.1 and I have a a number of recipes in <=
br />~/home/poky/meta-atmel-lsp/recipes-lsp.<br /><br />I have a lightpd=
bbappend that loads local files, I have a wpa-supplicant.bbappend that=
 loads local files, but I am also trying to load some firmware that shou=
ld load local files but fails.<br /><br />In ~/home/poky/meta-atmel-lsp/=
recipes-lsp/zd1211-firmware/ I have the recipe zd1211-firmware_1.55.bb a=
s follows:<br /><br />_______________________________________<br />SUMMA=
RY =3D "Belkin Wifi Firmware"<br />LICENSE =3D "GPL"<br /><br />SRC_URI=
 =3D "\<br />=C2=A0 file://zd1211_ub \<br />=C2=A0 file://zd1211_uph \<b=
r />=C2=A0 file://zd1211_uphm \<br />=C2=A0 file://zd1211_uphr \<br />=
=C2=A0 file://zd1211_ur \<br />"<br /><br />do_install() {<br />=C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 install -d ${D}/lib/firmware/zd1211<br /=
>=C2=A0=C2=A0=C2=A0 install -m 0755 ${WORKDIR}/zd1211_*=C2=A0=C2=A0=C2=
=A0 ${D}/lib/firmware/zd1211/<br />}<br />______________________________=
_______<br />I sourced these files but not the recipe from:<br />http://=
sourceforge.net/projects/zd1211/<br /><br />The files indicated in the r=
ecipe are in :<br />~/home/poky/meta-atmel-lsp/recipes-lsp/zd1211-firmwa=
re/zd1211-firmware/<br /><br />When I create the image, no directory is=
 created as /lib/firmware/zd1211<br />and also no files are loaded into=
 it.<br /><br />I have also tried {THISDIR}=C2=A0 instead of using {WORK=
DIR}<br />I also tried specifying a specific file rather than using the=
 wild card<br />I have also tried using 'cp' instead of 'install -m 0755=
'<br /><br />None seem to work.<br />I am expecting the firmware files t=
o be located in:<br />~/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-=
gnueabi/atmel-qt5-demo-image/1.0-r0/rootfs/etc/firmware<br />but they ar=
e not.<br /><br />I originally started with a recipe to load the files d=
irectly from the source, but that did not work. The original recipe used=
 was zd1211-firmware_1.4.bb from:<br />https://gitorious.org/opencsbc/op=
enembedded/source/583297ac295f1b381019ccecb4ae6abaa69cbc6c:recipes/zd121=
1<br /><br />That did not work and now I am extracting the files from th=
e .tar and trying to load them direct.<br />Maybe the same problem exist=
s between the original recipe and loading the .tar files.<br /><br />Tha=
nks for any help<br />Lachlan<br /><br />---- Message sent via Adam Inte=
rnet WebMail  - http://www.adam.com.au/</body></html>

--=_ba8bca316a73b517793e552d95713117--
