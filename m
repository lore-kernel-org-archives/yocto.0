Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FC2DE0169F
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 05:19:17 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 3 Oct 2013 08:19:16 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Amit Tomer <amittomer25@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 3 Oct 2013 08:19:14 -0400
Thread-Topic: [yocto] Fwd: OpenSSH pre login banner
Thread-Index: Ac7AKG7gtgy/O4ErQDWCdEeIfVXGiAABzn+w
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B898C345@pluto.melinkcorp.local>
References: <CABHD4K8q9q3Gb4B1E35G8qk+Bp=RLVW7ZhngNYvW=0ZV_v=RKA@mail.gmail.com>
	<CABHD4K8ggfe+MVzUDuK0dNs82=9dYT-iCyxGTOKNrLm8En2wGQ@mail.gmail.com>
In-Reply-To: <CABHD4K8ggfe+MVzUDuK0dNs82=9dYT-iCyxGTOKNrLm8En2wGQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: OpenSSH pre login banner
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
X-List-Received-Date: Thu, 03 Oct 2013 12:19:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_91586D499ADFD74FBCFB8425266A5DE40153B898C345plutomelink_"

--_000_91586D499ADFD74FBCFB8425266A5DE40153B898C345plutomelink_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Amit,

From your message, I'm assuming you have a bbappend file for openssh.  Foll=
owing the example in section of 5.1.4 of the Mega Manual (located at http:/=
/www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#using-bbapp=
end-files) and from personal experience, put the following in your bbappend=
 file:

FILESEXTRAPATHS_prepend :=3D " ${THISDIR}: "
SRC_URI +=3D " file://banner "
FILES_${PN} +=3D " /etc/ssh/banner "

do_install_append() {
                install -d ${D}${sysconfdir}/ssh
                install -m 0644 ${WORKDIR}/banner ${D}${sysconfdir/ssh/bann=
er
}
PRINC :=3D "${@int(PRINC) + 1}"

then place your banner file and sshd_config in the same directory as your b=
bappend.  When openssh gets built, Bitbake will find your sshd_config first=
 and use and install that file instead of the one from the main layer.  The=
 recipe also tells it how to handle the new banner file that is not part of=
 the original recipe; you do not need to put these rules in place for sshd_=
config because that is already part of the original recipe.  Then in the fu=
ture every time you make a change to the openssh package in your layer, inc=
rement the PRINC so your package management tools will see it as an upgrade=
.  For example, if you change the contents of the banner file, then change =
the "+ 1" to "+ 2".

-Bryan

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Amit Tomer
Sent: Thursday, October 03, 2013 7:05 AM
To: yocto@yoctoproject.org
Subject: [yocto] Fwd: OpenSSH pre login banner


---------- Forwarded message ----------
From: Amit Tomer <amittomer25@gmail.com<mailto:amittomer25@gmail.com>>
Date: Thu, Oct 3, 2013 at 1:50 PM
Subject: OpenSSH pre login banner
To: "yocto-request@yoctoproject.org<mailto:yocto-request@yoctoproject.org>"=
 <yocto-request@yoctoproject.org<mailto:yocto-request@yoctoproject.org>>

I am new to OpenEmbedded Yocto and have a requirement where OpenSSH pre log=
in banner
should come when do ssh from target board

Now I know I have to create a simple .txt file(banner) and put my banner in=
 to it and add the following to sshd_config

Banner /etc/ssh/banner

But now  wanted to know where should I keep my banner file in yocto so that=
 Yocto build infrastructure will pack banner file  to /etc/ssh/banner into =
final image.

I do have receipes for openssh in meta-xyz/recipes-connectivity/openssh  fo=
lder

Thanks
Amit





--_000_91586D499ADFD74FBCFB8425266A5DE40153B898C345plutomelink_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.hoenzb
	{mso-style-name:hoenzb;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Amit,<o:p=
></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font=
-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>From your message, I&#8217;m assuming you have a=
 bbappend file for openssh.&nbsp; Following the example in section of 5.1.4=
 of the Mega Manual (located at <a href=3D"http://www.yoctoproject.org/docs=
/current/mega-manual/mega-manual.html#using-bbappend-files">http://www.yoct=
oproject.org/docs/current/mega-manual/mega-manual.html#using-bbappend-files=
</a>) and from personal experience, put the following in your bbappend file=
:<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt=
;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span>=
</p><p class=3DMsoNormal style=3D'text-indent:.5in'><span style=3D'font-siz=
e:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>FILESEXTRAPATHS_=
prepend :=3D &quot; ${THISDIR}: &quot;<o:p></o:p></span></p><p class=3DMsoN=
ormal style=3D'text-indent:.5in'><span style=3D'font-size:11.0pt;font-famil=
y:"Calibri","sans-serif";color:#1F497D'>SRC_URI +=3D &#8220; file://banner =
&#8221;<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-indent:.5in=
'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:=
#1F497D'>FILES_${PN} +=3D &#8220; /etc/ssh/banner &#8221;<o:p></o:p></span>=
</p><p class=3DMsoNormal style=3D'text-indent:.5in'><span style=3D'font-siz=
e:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p=
></span></p><p class=3DMsoNormal style=3D'text-indent:.5in'><span style=3D'=
font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>do_insta=
ll_append() {<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-inden=
t:.5in'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";=
color:#1F497D'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install &#8211;d ${D}${sysconfdir}/ssh<o:p><=
/o:p></span></p><p class=3DMsoNormal style=3D'text-indent:.5in'><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; install &#8211;m 0644 ${WORKDIR}/banner ${D}${sysconfdir/ssh/ba=
nner<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-indent:.5in'><=
span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F=
497D'>}<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-indent:.5in=
'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:=
#1F497D'>PRINC :=3D &quot;${@int(PRINC) + 1}&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sa=
ns-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F=
497D'>then place your banner file and sshd_config in the same directory as =
your bbappend.&nbsp; When openssh gets built, Bitbake will find your sshd_c=
onfig first and use and install that file instead of the one from the main =
layer.&nbsp; The recipe also tells it how to handle the new banner file tha=
t is not part of the original recipe; you do not need to put these rules in=
 place for sshd_config because that is already part of the original recipe.=
&nbsp; Then in the future every time you make a change to the openssh packa=
ge in your layer, increment the PRINC so your package management tools will=
 see it as an upgrade.&nbsp; For example, if you change the contents of the=
 banner file, then change the &#8220;+ 1&#8221; to &#8220;+ 2&#8221;.<o:p><=
/o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-f=
amily:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sa=
ns-serif";color:#1F497D'>-Bryan<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F=
497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-left:sol=
id blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:none;bor=
der-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal=
><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From=
:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-seri=
f"'> yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=
 <b>On Behalf Of </b>Amit Tomer<br><b>Sent:</b> Thursday, October 03, 2013 =
7:05 AM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> [yocto] Fwd=
: OpenSSH pre login banner<o:p></o:p></span></p></div></div><p class=3DMsoN=
ormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal style=3D'margin-bottom=
:12.0pt'><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal style=3D'margin-bot=
tom:12.0pt'>---------- Forwarded message ----------<br>From: <b>Amit Tomer<=
/b> &lt;<a href=3D"mailto:amittomer25@gmail.com">amittomer25@gmail.com</a>&=
gt;<br>Date: Thu, Oct 3, 2013 at 1:50 PM<br>Subject: OpenSSH pre login bann=
er<br>To: &quot;<a href=3D"mailto:yocto-request@yoctoproject.org">yocto-req=
uest@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto-request@yoctopr=
oject.org">yocto-request@yoctoproject.org</a>&gt;<br><br><o:p></o:p></p><di=
v><p class=3DMsoNormal>I am new to OpenEmbedded Yocto and have a requiremen=
t where&nbsp;OpenSSH pre login banner<o:p></o:p></p><div><p class=3DMsoNorm=
al>should come when do ssh from target board<o:p></o:p></p></div><div><p cl=
ass=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Now I =
know I have to create a simple .txt file(banner) and put my banner in to it=
 and add the following to&nbsp;sshd_config<o:p></o:p></p></div><div><p clas=
s=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Banner /=
etc/ssh/banner&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal><o:p>&nb=
sp;</o:p></p></div><div><p class=3DMsoNormal>But now &nbsp;wanted to know w=
here should I keep my banner file in yocto so that Yocto build infrastructu=
re will pack banner file &nbsp;to /etc/ssh/banner into final image.<o:p></o=
:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p c=
lass=3DMsoNormal>I do have receipes for openssh in meta-xyz/recipes-connect=
ivity/openssh &nbsp;folder<o:p></o:p></p></div><div><p class=3DMsoNormal><o=
:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Thanks&nbsp;<o:p></o:p><=
/p></div><div><p class=3DMsoNormal><span style=3D'color:#888888'>Amit&nbsp;=
<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span style=3D'color:=
#888888'>&nbsp;<o:p></o:p></span></p></div><div><p class=3DMsoNormal><span =
style=3D'color:#888888'><o:p>&nbsp;</o:p></span></p></div><div><p class=3DM=
soNormal><span style=3D'color:#888888'><o:p>&nbsp;</o:p></span></p></div></=
div></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></div></bod=
y></html>=

--_000_91586D499ADFD74FBCFB8425266A5DE40153B898C345plutomelink_--
