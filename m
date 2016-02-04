Return-Path: <sridhar.pitchai@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4102FE00C64; Wed,  3 Feb 2016 17:26:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sridhar.pitchai[at]outlook.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.116.90 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Feb 2016 17:26:02 PST
Received: from BLU004-OMC3S15.hotmail.com (blu004-omc3s15.hotmail.com
	[65.55.116.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DC8DE00C5D
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 17:26:02 -0800 (PST)
Received: from BLU168-W104 ([65.55.116.73]) by BLU004-OMC3S15.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 3 Feb 2016 17:24:59 -0800
X-TMN: [DchUWBU2gP8rDulG22Uz4PKDbHrE7dnr]
X-Originating-Email: [sridhar.pitchai@outlook.com]
Message-ID: <BLU168-W10417EEA6212C31D453447BEBD10@phx.gbl>
From: Sridhar Pitchai <sridhar.pitchai@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 3 Feb 2016 17:24:59 -0800
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 04 Feb 2016 01:24:59.0568 (UTC)
	FILETIME=[DD201300:01D15EEA]
Subject: error: code model kernel does not support PIC mode
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
X-List-Received-Date: Thu, 04 Feb 2016 01:26:03 -0000
Content-Type: multipart/alternative;
	boundary="_701197d0-167a-456c-80a8-de4697128550_"

--_701197d0-167a-456c-80a8-de4697128550_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2CI trying to write a simple recipe which will be building some static l=
ibraries. the makefile has the "-fPIC" enabled. when i try to compile it us=
ing simple yocto recipe=2C i am getting this error.
"| /home/sridhar/workspace/exp/yoc/build/tmp/work/corei7-64-poky-linux/sdk/=
1.0-r0/sdk-all-6.4.8/systems/linux/kernel/modules/shared/uk-rtrans.c:1:0: e=
rror: code model kernel does not support PIC mode|  /**********************=
*************************************************|  ^
"
recipe:
"SUMMARY =3D "TEST"
LICENSE =3D "CLOSED"PR =3D "r0"PROVIDES =3D "pi-swos-bcm-sdk"
# BCM SDK inconsistant with parallel makePARALLEL_MAKE =3D ""
FILESEXTRAPATHS_prepend =3D "${THISDIR}:"SRC_URI =3D "file://6.4.8/sdk.tar.=
gz \    "
MAKEFLAGS_append =3D " -fPIC "do_compile() {    oe_runmake -C ${WORKDIR}/sd=
k-all-6.4.8/systems/linux/user/x86-generic_64-3_19}"
Can someone help me on this.
thanks=2CSridhar Pitchai 		 	   		  =

--_701197d0-167a-456c-80a8-de4697128550_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<div>I trying to write a si=
mple recipe which will be building some static libraries. the makefile has =
the "-fPIC" enabled. when i try to compile it using simple yocto recipe=2C =
i am getting this error.</div><div><br></div><div>"</div><div><div>| /home/=
sridhar/workspace/exp/yoc/build/tmp/work/corei7-64-poky-linux/sdk/1.0-r0/sd=
k-all-6.4.8/systems/linux/kernel/modules/shared/uk-rtrans.c:1:0: error: cod=
e model kernel does not support PIC mode</div><div>| &nbsp=3B/*************=
**********************************************************</div><div>| &nbs=
p=3B^</div></div><div><br></div><div><span style=3D"font-size: 12pt=3B">"</=
span></div><div><br></div><div>recipe:</div><div><br></div><div>"</div><div=
><div>SUMMARY =3D "TEST"</div><div><br></div><div>LICENSE =3D "CLOSED"</div=
><div>PR =3D "r0"</div><div>PROVIDES =3D "pi-swos-bcm-sdk"</div><div><br></=
div><div># BCM SDK inconsistant with parallel make</div><div>PARALLEL_MAKE =
=3D ""</div><div><br></div><div>FILESEXTRAPATHS_prepend =3D "${THISDIR}:"</=
div><div>SRC_URI =3D "file://6.4.8/sdk.tar.gz \</div><div>&nbsp=3B &nbsp=3B=
 "</div><div><br></div><div>MAKEFLAGS_append =3D " -fPIC "</div><div>do_com=
pile() {</div><div>&nbsp=3B &nbsp=3B oe_runmake -C ${WORKDIR}/sdk-all-6.4.8=
/systems/linux/user/x86-generic_64-3_19</div><div>}</div></div><div>"</div>=
<div><br></div><div>Can someone help me on this.</div><div><br></div><div>t=
hanks=2C</div><div>Sridhar Pitchai</div> 		 	   		  </div></body>
</html>=

--_701197d0-167a-456c-80a8-de4697128550_--
