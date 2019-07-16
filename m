Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7BD5E00D53; Tue, 16 Jul 2019 05:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.40.44.145 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
X-Greylist: delayed 431 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Jul 2019 05:51:53 PDT
Received: from smtprelay.hostedemail.com (smtprelay0145.hostedemail.com
	[216.40.44.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF9D4E00D46
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 05:51:53 -0700 (PDT)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave01.hostedemail.com (Postfix) with ESMTP id EA335180D589E
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 12:44:42 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id AB721100E86F0
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 12:44:41 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: pie11_bcd88ed51909
X-Filterd-Recvd-Size: 3857
Received: from [192.168.10.100] (unknown [5.133.40.160])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf19.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 12:44:40 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: yocto@yoctoproject.org
Date: Tue, 16 Jul 2019 12:44:39 +0000
Message-Id: <em1f413de5-81b2-4304-ba58-358a033d5bf7@andys-imac.local>
User-Agent: eM_Client/7.2.35700.0
Mime-Version: 1.0
Subject: wpewebkit, cog and libgles2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Andy Pont <andy.pont@sdcsystems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Jul 2019 12:51:54 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB32733008-9FE2-4DD3-8F2E-FD5FB77C6EAE"

--------=_MB32733008-9FE2-4DD3-8F2E-FD5FB77C6EAE
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0AI am trying to add wpewebkit and the cog browser on top of a=
 =0Acore-image-minimal build using Warrior.  When I try to build bitbake =0Agi=
ves me the following output:=0A=0AERROR: Nothing PROVIDES 'virtual/egl' (bu=
t =0A/home/me/yocto/sources/meta-webkit/recipes-browser/wpewebkit/wpewebkit=
_2.24.2.bb, =0A/home/me/yocto/sources/meta-webkit/recipes-browser/libwpe/li=
bwpe_1.2.0.bb =0ADEPENDS on or otherwise requires it). Close matches:=0A  =
 virtual/kernel=0A   virtual/perf=0A   virtual/mesa=0A=0AI am building for a =
Microchip (Atmel) SAMA5D2 using meta-atmel.  We =0Adon=E2=80=99t need Open=
GL or 3D support - hence one of the reasons for picking =0Athe SAMA5D2 whic=
h doesn=E2=80=99t have a hardware GPU.=0A=0AThe options appear to be to eit=
her add software OpenGL support to the =0Aconfiguration to resolve the depe=
ndency or tell wpewebkit not to want =0AOpenGL support.=0A=0AAny advice on=
 the easiest way to resolve this would be much appreciated.=0A=0A-Andy.=0A=
=0A=0A

--------=_MB32733008-9FE2-4DD3-8F2E-FD5FB77C6EAE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><style id=3D"css_styles">blockquote.cite { margin-left: 5px; ma=
rgin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px so=
lid #cccccc }=0Ablockquote.cite2 {margin-left: 5px; margin-right: 0px; padd=
ing-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-t=
op: 3px; padding-top: 0px; }=0Aa img { border: 0px; }=0Ali[style=3D'text-al=
ign: center;'], li[style=3D'text-align: right;'] {  list-style-position: in=
side;}=0Abody { font-family: Verdana; font-size: 12px;   }</style></head><b=
ody class=3D"plain"><div>Hello,</div><div><br /></div><div>I am trying to a=
dd wpewebkit and the cog browser on top of a core-image-minimal build using =
Warrior. =C2=A0When I try to build bitbake gives me the following output:<=
/div><div><br /></div><div>ERROR: Nothing PROVIDES 'virtual/egl' (but /home=
/me/yocto/sources/meta-webkit/recipes-browser/wpewebkit/wpewebkit_2.24.2.bb=
, /home/me/yocto/sources/meta-webkit/recipes-browser/libwpe/libwpe_1.2.0.bb =
DEPENDS on or otherwise requires it). Close matches:</div><div>=C2=A0 virt=
ual/kernel<br />=C2=A0 virtual/perf<br />=C2=A0 virtual/mesa</div><div><br=
 /></div><div>I am building for a Microchip (Atmel) SAMA5D2 using meta-atmel=
. =C2=A0We don=E2=80=99t need OpenGL or 3D support - hence one of the reaso=
ns for picking the SAMA5D2 which doesn=E2=80=99t have a hardware GPU.</div>=
<div><br /></div><div>The options appear to be to either add software OpenG=
L support to the configuration to resolve the dependency or tell wpewebkit=
 not to want OpenGL support.</div><div><br /></div><div>Any advice on the ea=
siest way to resolve this would be much appreciated.</div><div><br /></div>=
<div>-Andy.</div><div id=3D"signature_old"><div>=C2=A0</div><div>=C2=A0</di=
v></div><div><br /></div>=0A</body></html>

--------=_MB32733008-9FE2-4DD3-8F2E-FD5FB77C6EAE--
