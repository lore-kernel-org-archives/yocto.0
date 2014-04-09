Return-Path: <jmcclure@jmse.com>
Received: from box7.911domain.com (host3.netdorm.com [64.182.105.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6451EE00B88
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 05:08:54 -0700 (PDT)
Received: from domsvr.jmse.com (cpe-173-88-83-214.columbus.res.rr.com
	[173.88.83.214]) (authenticated bits=0)
	by box7.911domain.com (8.14.1/8.13.8) with ESMTP id s39C8RXY007168
	for <yocto@yoctoproject.org>; Wed, 9 Apr 2014 08:08:27 -0400
X-SPAM-Abuse: If this is Spam, please report it to the following link:
X-SPAM-Report: http://www.dnsExit.com/Direct.sv?cmd=reportSpam&msgid=s39C8RXY007168
X-Service-By: http://www.dnsExit.com/Direct.sv?cmd=mailRelay Relay account
	will be suspended instantly if Spam
MIME-Version: 1.0
Date: Wed, 9 Apr 2014 08:08:41 -0400
Message-ID: <D381655A8DD5804486FA48F6B14F6BB9274683@domsvr.jmse.com>
X-MimeOLE: Produced By Microsoft Exchange V6.5
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Adding RPMs and kernel images
Thread-Index: Ac9T7HJuQomYVQqeTcqZ7PylMLUK2g==
From: "Jim McClure" <jmcclure@jmse.com>
To: <yocto@yoctoproject.org>
Subject: Adding RPMs and kernel images
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
X-List-Received-Date: Wed, 09 Apr 2014 12:08:57 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CF53EC.789826D1"

------_=_NextPart_001_01CF53EC.789826D1
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We are working on a project where we will be receiving different types =
of artifacts from various development groups within the organization. =
Specifically, we will receive kernel images (qemux86, qemuarm, and ATOM) =
as well as RPMs. We'd like to incorporate those artifacts directly into =
our project and have bitbake treat them as if they are current, part of =
the project, and are incorporated in our image builds.
=20
Can you suggest best practices/approaches to integrate these external =
artifacts in to our build.
=20
Thanks!
=20
Jim McClure
=20
=20

------_=_NextPart_001_01CF53EC.789826D1
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<HTML dir=3Dltr><HEAD>=0A=
<META content=3D"text/html; charset=3Dunicode" http-equiv=3DContent-Type>=0A=
<META name=3DGENERATOR content=3D"MSHTML 11.00.9600.16521"></HEAD>=0A=
<BODY>=0A=
<DIV id=3DidOWAReplyText91000 dir=3Dltr>=0A=
<DIV dir=3Dltr><FONT color=3D#000000 size=3D2 face=3DArial>We are =
working on a project where we will be receiving different types of =
artifacts from various development groups within the organization. =
Specifically, we will receive kernel images (qemux86, qemuarm, and ATOM) =
as well as RPMs. We'd like to incorporate those artifacts directly into =
our project and have bitbake treat them as if they are current, part of =
the project, and are incorporated in our image builds.</FONT></DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>=0A=
<DIV dir=3Dltr><FONT size=3D2 face=3DArial>Can you suggest best =
practices/approaches to integrate these external artifacts in to our =
build.</FONT></DIV>=0A=
<DIV dir=3Dltr><FONT color=3D#000000 size=3D2 =
face=3DArial></FONT>&nbsp;</DIV></DIV>=0A=
<DIV id=3DidSignature17599 dir=3Dltr>=0A=
<DIV><FONT color=3D#000000 size=3D2 face=3DArial>Thanks!</FONT></DIV>=0A=
<DIV><FONT color=3D#000000 size=3D2 face=3DArial></FONT>&nbsp;</DIV>=0A=
<DIV><FONT color=3D#000000 size=3D2 face=3DArial>Jim McClure</FONT></DIV>=0A=
<DIV><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV>=0A=
<DIV><FONT size=3D2 face=3DArial></FONT>&nbsp;</DIV></DIV></BODY></HTML>

------_=_NextPart_001_01CF53EC.789826D1--
