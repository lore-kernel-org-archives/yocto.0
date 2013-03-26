Return-Path: <Simon.Vanveerdeghem@barco.com>
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBE49E013AC
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 06:37:40 -0700 (PDT)
Received: from [216.82.249.147:45151] by server-5.bemta-12.messagelabs.com id
	17/0D-15423-4A4A1515; Tue, 26 Mar 2013 13:37:40 +0000
X-Env-Sender: Simon.Vanveerdeghem@barco.com
X-Msg-Ref: server-10.tower-29.messagelabs.com!1364305057!23328596!1
X-Originating-IP: [91.183.172.68]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12432 invoked from network); 26 Mar 2013 13:37:37 -0000
Received: from 68.172-183-91.adsl-static.isp.belgacom.be (HELO
	KUUFEX01.barco.com) (91.183.172.68)
	by server-10.tower-29.messagelabs.com with SMTP;
	26 Mar 2013 13:37:37 -0000
Received: from KNDMEX01.barco.com ([150.158.212.51]) by KUUFEX01.barco.com
	with Microsoft SMTPSVC(6.0.3790.4675);
	Tue, 26 Mar 2013 14:37:37 +0100
Importance: normal
Priority: normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.3790.4913
MIME-Version: 1.0
Date: Tue, 26 Mar 2013 14:37:36 +0100
Message-ID: <8D433CD511BE4646B47F8B31C900818E0CB1C53C@kndmex01.barco.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Shared DL_DIR with other users
thread-index: Ac4qJbIkIXPi5dDTSMGb8urwTN5qxQ==
From: "Vanveerdeghem, Simon" <Simon.Vanveerdeghem@barco.com>
To: <yocto@yoctoproject.org>
X-OriginalArrivalTime: 26 Mar 2013 13:37:37.0112 (UTC)
	FILETIME=[14303D80:01CE2A27]
Subject: Shared DL_DIR with other users
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
X-List-Received-Date: Tue, 26 Mar 2013 13:37:41 -0000
Content-Transfer-Encoding: 7bit
Content-Class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CE2A27.13AC06C9"

------_=_NextPart_001_01CE2A27.13AC06C9
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

=20

We are using Yocto with a couple of users, to prevent that our build
server has duplicates of downloads, we share the DL_DIR.

But we have problems with permissions. When a user run yocto, it will
checkout sources, or download tar files with permissions 644 with the
username of the user who is running yocto.=20

When another user will do a cleanall of a bitbake recipe, yocto will
remove the tarball and the svn workingcopy, but because the permissions
aren't 777 It cannot remove all the files (yocto doesn't throw an error
here).

When that other user will do a fetch of thqt recipe, yocto will checkout
the svn directory, it will leave as good as clean because it says
internally "Skipped ." (yocto doesn't throw an error here) then it wil
take a tarball of it, again the tarball has only a directory named of
the checked out module, but have no sources. (yocto doesn't throw an
error here)

When yocto will building the sources it will fail because the tar was
clean, and there is nothing to build.

=20

The rootcause of this problem is that the shared download directory only
use 644. (We can workaround this with the .profile (we can set in the
.profile a standard permission mask, but then you always use that mask,
something we don't want)

=20

=20

Someone already problems with this?

=20

=20



DISCLAIMER:
Unless indicated otherwise, the information contained in this message is =
privileged and confidential, and is intended only for the use of the =
addressee(s) named above and others who have been specifically =
authorized to receive it. If you are not the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this =
message and/or attachments is strictly prohibited. The company accepts =
no liability for any damage caused by any virus transmitted by this =
email. Furthermore, the company does not warrant a proper and complete =
transmission of this information, nor does it accept liability for any =
delays. If you have received this message in error, please contact the =
sender and delete the message. Thank you.

------_=_NextPart_001_01CE2A27.13AC06C9
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p =
class=3DMsoNormal>Hi,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>We are using =
Yocto with a couple of users, to prevent that our build server has =
duplicates of downloads, we share the DL_DIR.<o:p></o:p></p><p =
class=3DMsoNormal>But we have problems with permissions. When a user run =
yocto, it will checkout sources, or download tar files with permissions =
644 with the username of the user who is running yocto. =
<o:p></o:p></p><p class=3DMsoNormal>When another user will do a cleanall =
of a bitbake recipe, yocto will remove the tarball and the svn =
workingcopy, but because the permissions aren&#8217;t 777 It cannot =
remove all the files (yocto doesn&#8217;t throw an error =
here).<o:p></o:p></p><p class=3DMsoNormal>When that other user will do a =
fetch of thqt recipe, yocto will checkout the svn directory, it will =
leave as good as clean because it says internally &#8220;Skipped =
.&#8221; (yocto doesn&#8217;t throw an error here) then it wil take a =
tarball of it, again the tarball has only a directory named of the =
checked out module, but have no sources. (yocto doesn&#8217;t throw an =
error here)<o:p></o:p></p><p class=3DMsoNormal>When yocto will building =
the sources it will fail because the tar was clean, and there is nothing =
to build.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>The rootcause of this problem is that the shared =
download directory only use 644. (We can workaround this with the =
.profile (we can set in the .profile a standard permission mask, but =
then you always use that mask, something we don&#8217;t =
want)<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Someone =
already problems with this?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><p></p><p>DISCLAIMER:<br>Unl=
ess indicated otherwise, the information contained in this message is =
privileged and confidential, and is intended only for the use of the =
addressee(s) named above and others who have been specifically =
authorized to receive it. If you are not the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this =
message and/or attachments is strictly prohibited. The company accepts =
no liability for any damage caused by any virus transmitted by this =
email. Furthermore, the company does not warrant a proper and complete =
transmission of this information, nor does it accept liability for any =
delays. If you have received this message in error, please contact the =
sender and delete the message. Thank you.</body></html>

------_=_NextPart_001_01CE2A27.13AC06C9--
