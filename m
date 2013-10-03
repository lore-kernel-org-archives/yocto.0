Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A52D3E0161B
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 06:35:16 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 3 Oct 2013 09:35:15 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Amit Tomer <amittomer25@gmail.com>
Date: Thu, 3 Oct 2013 09:35:14 -0400
Thread-Topic: [yocto] Fwd: OpenSSH pre login banner
Thread-Index: Ac7AM16GJvx53TwiRQife1rlI0y0MAABsvmg
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B898C3AF@pluto.melinkcorp.local>
References: <CABHD4K8q9q3Gb4B1E35G8qk+Bp=RLVW7ZhngNYvW=0ZV_v=RKA@mail.gmail.com>
	<CABHD4K8ggfe+MVzUDuK0dNs82=9dYT-iCyxGTOKNrLm8En2wGQ@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C345@pluto.melinkcorp.local>
	<CABHD4K-_9E3qN9exOPkdOoGzEjgskHE6EMNvTkNndbAGC5dcAA@mail.gmail.com>
In-Reply-To: <CABHD4K-_9E3qN9exOPkdOoGzEjgskHE6EMNvTkNndbAGC5dcAA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 03 Oct 2013 13:35:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_91586D499ADFD74FBCFB8425266A5DE40153B898C3AFplutomelink_"

--_000_91586D499ADFD74FBCFB8425266A5DE40153B898C3AFplutomelink_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Amit,

First, I suggest you change
PRINC =3D "4"
to
PRINC :=3D "${@int(PRINC) + 1}"

This way your bbappend will always increment the PR to one more than the PR=
 called out by the main recipe.  So if the openssh recipe would get updated=
 and increment the PR, you do not have to change your bbappend.

Change
SRC_URI =3D "file://banner"
To
SRC_URI +=3D "file://banner"

The +=3D appends your banner file to the SRC_URI for the openssh recipe.  W=
ith your line, you are overriding all the SRC_URI for the entire openssh re=
cipe and the openssh recipe will only include the banner file.  I've taken =
to the habit of writing the SRC_URI as follows:

SRC_URI +=3D " \
file://banner \
"
just to ensure that words aren't joined together when my SRC_URI is appende=
d to the existing one.  I don't know if this is strictly necessary, but it'=
s not a bad habit.

Change
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:"
to
FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"

so Bitbake can find your banner file and sshd_config that you have in the s=
ame directory as the bbappend.

I can't remember if you get a warning if Bitbake can't find the license fil=
e at all or if it fails on each attempt through the filepath.  Since your n=
ew path is first, it won't find LICENCE in your layer since you didn't copy=
 it.  Once way to quiet this warning would be to copy the license file to y=
our directory.

-Bryan

From: Amit Tomer [mailto:amittomer25@gmail.com]
Sent: Thursday, October 03, 2013 8:23 AM
To: Bryan Evenson
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Fwd: OpenSSH pre login banner

Hi Brayan

Thanks for your help

The way I modify .bbapend file is below

PRINC =3D "4"
SRC_URI =3D "file://banner<file:///\\banner>"
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:"
do_install_append() {

Install -m 755 ${WORKDIR}/banner ${D}${sysconfdir}/ssh
}



But it gives me

Below problem

WARNING: /tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/openssh/6.1p1-r3=
/openssh-6.1p1/LICENCE could not be copied for some reason. It may not exis=
t. WARN for now.

And my build process is really got slow and sometimes I am getting the erro=
r also

What could be the reason for above??






On Thu, Oct 3, 2013 at 5:49 PM, Bryan Evenson <bevenson@melinkcorp.com<mail=
to:bevenson@melinkcorp.com>> wrote:
Amit,

From your message, I'm assuming you have a bbappend file for openssh.  Foll=
owing the example in section of 5.1.4 of the Mega Manual (located at http:/=
/www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#using-bbapp=
end-files) and from personal experience, put the following in your bbappend=
 file:

FILESEXTRAPATHS_prepend :=3D " ${THISDIR}: "
SRC_URI +=3D " file://banner<file:///\\banner> "
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

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Amit Tomer
Sent: Thursday, October 03, 2013 7:05 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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






--_000_91586D499ADFD74FBCFB8425266A5DE40153B898C3AFplutomelink_
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
span.EmailStyle17
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
sans-serif";color:#1F497D'>First, I suggest you change<o:p></o:p></span></p=
><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>PRINC =3D &#8220;4&#8221;<o:p></o:p></span></p=
><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>to<o:p></o:p></span></p><p class=3DMsoNormal><=
span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F=
497D'>PRINC :=3D &quot;${@int(PRINC) + 1}&quot;<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-=
serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><spa=
n style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497=
D'>This way your bbappend will always increment the PR to one more than the=
 PR called out by the main recipe.&nbsp; So if the openssh recipe would get=
 updated and increment the PR, you do not have to change your bbappend.<o:p=
></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font=
-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><=
p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>Change<o:p></o:p></span></p><p class=3DMsoNormal=
><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#=
1F497D'>SRC_URI =3D &#8220;file://banner&#8221;<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-=
serif";color:#1F497D'>To<o:p></o:p></span></p><p class=3DMsoNormal><span st=
yle=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>S=
RC_URI +=3D &#8220;file://banner&#8220;<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>The =
+=3D appends your banner file to the SRC_URI for the openssh recipe.&nbsp; =
With your line, you are overriding all the SRC_URI for the entire openssh r=
ecipe and the openssh recipe will only include the banner file.&nbsp; I&#82=
17;ve taken to the habit of writing the SRC_URI as follows:<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Cal=
ibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMs=
oNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";=
color:#1F497D'>SRC_URI +=3D &#8220; \<o:p></o:p></span></p><p class=3DMsoNo=
rmal style=3D'text-indent:.5in'><span style=3D'font-size:11.0pt;font-family=
:"Calibri","sans-serif";color:#1F497D'>file://banner \<o:p></o:p></span></p=
><p class=3DMsoNormal style=3D'text-indent:.5in'><span style=3D'font-size:1=
1.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&#8220;<o:p></o:p><=
/span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:=
"Calibri","sans-serif";color:#1F497D'>just to ensure that words aren&#8217;=
t joined together when my SRC_URI is appended to the existing one.&nbsp; I =
don&#8217;t know if this is strictly necessary, but it&#8217;s not a bad ha=
bit.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.=
0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></sp=
an></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Ca=
libri","sans-serif";color:#1F497D'>Change<o:p></o:p></span></p><p class=3DM=
soNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"=
;color:#1F497D'>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/openssh-6.1p1=
:&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>to<o:p></o:p></spa=
n></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Cal=
ibri","sans-serif";color:#1F497D'>FILESEXTRAPATHS_prepend :=3D &quot;${THIS=
DIR}:&quot;<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-s=
ize:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o=
:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-fam=
ily:"Calibri","sans-serif";color:#1F497D'>so Bitbake can find your banner f=
ile and sshd_config that you have in the same directory as the bbappend.<o:=
p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;fon=
t-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p>=
<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";color:#1F497D'>I can&#8217;t remember if you get a warning if =
Bitbake can&#8217;t find the license file at all or if it fails on each att=
empt through the filepath.&nbsp; Since your new path is first, it won&#8217=
;t find LICENCE in your layer since you didn&#8217;t copy it.&nbsp; Once wa=
y to quiet this warning would be to copy the license file to your directory=
.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt=
;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span>=
</p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calib=
ri","sans-serif";color:#1F497D'>-Bryan<o:p></o:p></span></p><p class=3DMsoN=
ormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";co=
lor:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;border-l=
eft:solid blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:n=
one;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMs=
oNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif=
"'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sa=
ns-serif"'> Amit Tomer [mailto:amittomer25@gmail.com] <br><b>Sent:</b> Thur=
sday, October 03, 2013 8:23 AM<br><b>To:</b> Bryan Evenson<br><b>Cc:</b> yo=
cto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] Fwd: OpenSSH pre login =
banner<o:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&nbsp;</o=
:p></p><div><p class=3DMsoNormal>Hi Brayan<o:p></o:p></p><div><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Thanks for you=
r help<o:p></o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><=
/div><div><p class=3DMsoNormal>The way I modify .bbapend file is below<o:p>=
</o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><=
div><p class=3DMsoNormal>PRINC =3D &quot;4&quot;<o:p></o:p></p></div><div><=
p class=3DMsoNormal>SRC_URI =3D &quot;<a href=3D"file:///\\banner">file://b=
anner</a>&quot;<o:p></o:p></p></div><div><p class=3DMsoNormal>FILESEXTRAPAT=
HS_prepend :=3D &quot;${THISDIR}/openssh-6.1p1:&quot;<o:p></o:p></p></div><=
div><p class=3DMsoNormal>do_install_append() {<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Inst=
all -m 755 ${WORKDIR}/banner ${D}${sysconfdir}/ssh<o:p></o:p></p></div><div=
><p class=3DMsoNormal>}<o:p></o:p></p></div><div><p class=3DMsoNormal><o:p>=
&nbsp;</o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div>=
<div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNor=
mal>But it gives me&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal><o:=
p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>Below problem<o:p></o:p><=
/p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><div><p =
class=3DMsoNormal>WARNING: /tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueab=
i/openssh/6.1p1-r3/openssh-6.1p1/LICENCE could not be copied for some reaso=
n. It may not exist. WARN for now.<o:p></o:p></p></div><div><p class=3DMsoN=
ormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>And my build pro=
cess is really got slow and sometimes I am getting the error also<o:p></o:p=
></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p cla=
ss=3DMsoNormal>What could be the reason for above??<o:p></o:p></p></div><di=
v><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal=
><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p>=
</div></div><div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p cl=
ass=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></div><div><p class=3DMsoN=
ormal style=3D'margin-bottom:12.0pt'><o:p>&nbsp;</o:p></p><div><p class=3DM=
soNormal>On Thu, Oct 3, 2013 at 5:49 PM, Bryan Evenson &lt;<a href=3D"mailt=
o:bevenson@melinkcorp.com" target=3D"_blank">bevenson@melinkcorp.com</a>&gt=
; wrote:<o:p></o:p></p><div><div><p class=3DMsoNormal style=3D'mso-margin-t=
op-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;fon=
t-family:"Calibri","sans-serif";color:#1F497D'>Amit,</span><o:p></o:p></p><=
p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:=
auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";co=
lor:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11=
.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>From your message, I=
&#8217;m assuming you have a bbappend file for openssh.&nbsp; Following the=
 example in section of 5.1.4 of the Mega Manual (located at <a href=3D"http=
://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#using-bba=
ppend-files" target=3D"_blank">http://www.yoctoproject.org/docs/current/meg=
a-manual/mega-manual.html#using-bbappend-files</a>) and from personal exper=
ience, put the following in your bbappend file:</span><o:p></o:p></p><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'=
><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#=
1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margi=
n-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:.5in'><span style=3D'=
font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>FILESEXT=
RAPATHS_prepend :=3D &quot; ${THISDIR}: &quot;</span><o:p></o:p></p><p clas=
s=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;t=
ext-indent:.5in'><span style=3D'font-size:11.0pt;font-family:"Calibri","san=
s-serif";color:#1F497D'>SRC_URI +=3D &#8220; <a href=3D"file:///\\banner">f=
ile://banner</a> &#8221;</span><o:p></o:p></p><p class=3DMsoNormal style=3D=
'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:.5in'><span=
 style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D=
'>FILES_${PN} +=3D &#8220; /etc/ssh/banner &#8221;</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to;text-indent:.5in'><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNorma=
l style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:.=
5in'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";col=
or:#1F497D'>do_install_append() {</span><o:p></o:p></p><p class=3DMsoNormal=
 style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:.5=
in'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";colo=
r:#1F497D'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; install &#8211;d ${D}${sysconfdir}/ssh</span><o:=
p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto;text-indent:.5in'><span style=3D'font-size:11.0pt;font-fa=
mily:"Calibri","sans-serif";color:#1F497D'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install &#8211;m=
 0644 ${WORKDIR}/banner ${D}${sysconfdir/ssh/banner</span><o:p></o:p></p><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto;text-indent:.5in'><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>}</span><o:p></o:p></p><p class=3DMsoNormal st=
yle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:.5in'=
><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#=
1F497D'>PRINC :=3D &quot;${@int(PRINC) + 1}&quot;</span><o:p></o:p></p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color=
:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-mar=
gin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0p=
t;font-family:"Calibri","sans-serif";color:#1F497D'>then place your banner =
file and sshd_config in the same directory as your bbappend.&nbsp; When ope=
nssh gets built, Bitbake will find your sshd_config first and use and insta=
ll that file instead of the one from the main layer.&nbsp; The recipe also =
tells it how to handle the new banner file that is not part of the original=
 recipe; you do not need to put these rules in place for sshd_config becaus=
e that is already part of the original recipe.&nbsp; Then in the future eve=
ry time you make a change to the openssh package in your layer, increment t=
he PRINC so your package management tools will see it as an upgrade.&nbsp; =
For example, if you change the contents of the banner file, then change the=
 &#8220;+ 1&#8221; to &#8220;+ 2&#8221;.</span><o:p></o:p></p><p class=3DMs=
oNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-a=
lt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-fa=
mily:"Calibri","sans-serif";color:#1F497D'>-Bryan</span><o:p></o:p></p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color=
:#1F497D'>&nbsp;</span><o:p></o:p></p><div style=3D'border:none;border-left=
:solid blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:none=
;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNo=
rmal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></=
b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> <a hr=
ef=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounce=
s@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject=
.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] <b>On Behalf Of=
 </b>Amit Tomer<br><b>Sent:</b> Thursday, October 03, 2013 7:05 AM<br><b>To=
:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoc=
toproject.org</a><br><b>Subject:</b> [yocto] Fwd: OpenSSH pre login banner<=
/span><o:p></o:p></p></div></div><div><div><p class=3DMsoNormal style=3D'ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p><div=
><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;margin-bottom:12.0pt=
'>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal style=3D'mso-margin-top-al=
t:auto;margin-bottom:12.0pt'>---------- Forwarded message ----------<br>Fro=
m: <b>Amit Tomer</b> &lt;<a href=3D"mailto:amittomer25@gmail.com" target=3D=
"_blank">amittomer25@gmail.com</a>&gt;<br>Date: Thu, Oct 3, 2013 at 1:50 PM=
<br>Subject: OpenSSH pre login banner<br>To: &quot;<a href=3D"mailto:yocto-=
request@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto-request@yoctoproject.org" target=3D"_=
blank">yocto-request@yoctoproject.org</a>&gt;<o:p></o:p></p><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I=
 am new to OpenEmbedded Yocto and have a requirement where&nbsp;OpenSSH pre=
 login banner<o:p></o:p></p><div><p class=3DMsoNormal style=3D'mso-margin-t=
op-alt:auto;mso-margin-bottom-alt:auto'>should come when do ssh from target=
 board<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o'>Now I know I have to create a simple .txt file(banner) and put my banner=
 in to it and add the following to&nbsp;sshd_config<o:p></o:p></p></div><di=
v><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto'>Banner /etc/ssh/banner&nbsp=
;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt=
:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>B=
ut now &nbsp;wanted to know where should I keep my banner file in yocto so =
that Yocto build infrastructure will pack banner file &nbsp;to /etc/ssh/ban=
ner into final image.<o:p></o:p></p></div><div><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></=
p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'>I do have receipes for openssh in meta-xyz/recipes-conn=
ectivity/openssh &nbsp;folder<o:p></o:p></p></div><div><p class=3DMsoNormal=
 style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></=
o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto'>Thanks&nbsp;<o:p></o:p></p></div><div><p class=3D=
MsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><spa=
n style=3D'color:#888888'>Amit&nbsp;</span><o:p></o:p></p></div><div><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'=
><span style=3D'color:#888888'>&nbsp;</span><o:p></o:p></p></div><div><p cl=
ass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto=
'><span style=3D'color:#888888'>&nbsp;</span><o:p></o:p></p></div><div><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o'><span style=3D'color:#888888'>&nbsp;</span><o:p></o:p></p></div></div></=
div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto'>&nbsp;<o:p></o:p></p></div></div></div></div></div></div></div><=
p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></div></body></html>=

--_000_91586D499ADFD74FBCFB8425266A5DE40153B898C3AFplutomelink_--
