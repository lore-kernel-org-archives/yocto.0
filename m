Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE7BDE01654
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 12:57:53 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 3 Oct 2013 15:57:52 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Amit Tomer <amittomer25@gmail.com>
Date: Thu, 3 Oct 2013 15:55:43 -0400
Thread-Topic: [yocto] Fwd: OpenSSH pre login banner
Thread-Index: Ac7AaZpyi1vFmsUVQK2/Y/aS6CRDiAACI5vw
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B8C80587@pluto.melinkcorp.local>
References: <CABHD4K8q9q3Gb4B1E35G8qk+Bp=RLVW7ZhngNYvW=0ZV_v=RKA@mail.gmail.com>
	<CABHD4K8ggfe+MVzUDuK0dNs82=9dYT-iCyxGTOKNrLm8En2wGQ@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C345@pluto.melinkcorp.local>
	<CABHD4K-_9E3qN9exOPkdOoGzEjgskHE6EMNvTkNndbAGC5dcAA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C3AF@pluto.melinkcorp.local>
	<CABHD4K-KW7wMrm+ceLyzGMyyuL0nN=KXmexNmq4yt5RD+yW9og@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B898C3F9@pluto.melinkcorp.local>
	<CABHD4K8Ha3J3QOK+JLQuwzmCJdDMDH_WVMUuEn99F2TYpmk82Q@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B8C80483@pluto.melinkcorp.local>
	<CABHD4K_6tmPAnXrEta07qqe53USqKCVZ616nAzGta6RvV3TxPA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153B8C8050F@pluto.melinkcorp.local>
	<CABHD4K_9kErcu90U-ziVBoqQ2yDg6hJtmNKtqrZZfm3ugL8V-Q@mail.gmail.com>
In-Reply-To: <CABHD4K_9kErcu90U-ziVBoqQ2yDg6hJtmNKtqrZZfm3ugL8V-Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 03 Oct 2013 19:57:54 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_91586D499ADFD74FBCFB8425266A5DE40153B8C80587plutomelink_"

--_000_91586D499ADFD74FBCFB8425266A5DE40153B8C80587plutomelink_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Amit,

If your banner file and sshd_config are populated where they are supposed t=
o be on your target board based upon your bbappend and have the contents yo=
u specified, then your bbappend is doing its job.  If your banner isn't wor=
king, then there is some other configuration issue you're having with OpenS=
SH.  In that case I'd suggest checking with the OpenSSH community to see wh=
at you may be doing wrong.

-Bryan

From: Amit Tomer [mailto:amittomer25@gmail.com]
Sent: Thursday, October 03, 2013 2:52 PM
To: Bryan Evenson
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Fwd: OpenSSH pre login banner

Sorry for the typo mistake ,its sshd_config only
In fact I didn't create this file ,its already existing file which I just m=
odified.

On Thu, Oct 3, 2013 at 11:40 AM, Bryan Evenson <bevenson@melinkcorp.com<mai=
lto:bevenson@melinkcorp.com>> wrote:
Amit,

Did you name the file sshd-config or sshd_config?  Because it should be ssh=
d_config.

-Bryan

From: Amit Tomer [mailto:amittomer25@gmail.com<mailto:amittomer25@gmail.com=
>]
Sent: Thursday, October 03, 2013 2:36 PM

To: Bryan Evenson
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Fwd: OpenSSH pre login banner

Yes Brayan

I did the whole process again and  looked into Target filesystem /etc/ssh. =
I can see the banner file with my content is there
/etc/ssh/banner

Then I see the /etc/ssh/sshd-config with Banner variable to set to /etc/ssh=
/sshd-config

But still, when I do ssh IP_address, I did not see any Banner message .

I restarted the sshd service without any luck

I have connected to board using putty on serial line /dev/ttyUSB1 .

What could be the problem here??

On Thu, Oct 3, 2013 at 10:17 AM, Bryan Evenson <bevenson@melinkcorp.com<mai=
lto:bevenson@melinkcorp.com>> wrote:
Amit,

To me it looks like it did not take your sshd_config file.  Maybe try addin=
g it to the SRC_URI in your bbappend?

Instead of running the updated package on your target board, you can open u=
p the newly created package and verify the file you want is where it should=
 be.  Ipks are basically a tar.gz file, so you can open their contents with=
 any unpacking tool that can read tar.gz (file-roller is what I use).  In t=
he .ipk, open up the etc/ssh/sshd_config file and verify it matches the one=
 with your modifications.  If not, then Bitbake isn't grabbing your modifie=
d sshd_config.  If you're using RPM or DEB packages, I believe something si=
milar can be done.

-Bryan

From: Amit Tomer [mailto:amittomer25@gmail.com<mailto:amittomer25@gmail.com=
>]
Sent: Thursday, October 03, 2013 10:41 AM
To: Bryan Evenson; yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

Subject: Re: [yocto] Fwd: OpenSSH pre login banner

Fine Bryan,Thanks for your Suggestion

Not sure should I Share it with you or not but I have seen very weird behav=
iour on my Targer board regarding Openssh Banner.

When I login to my Hardware Board(after freash boot) and do ssh some_ip_add=
ress ,I am able to see Banner message
But in /etc/ssh/sshd_config file

#Banner is set to nothing

Then when I do ssh some_ip_address again ,I could not see any banner as it =
is expected behaviour.

Hope you would provide any pointer on the same .

Thanks
Amit




On Thu, Oct 3, 2013 at 7:40 PM, Bryan Evenson <bevenson@melinkcorp.com<mail=
to:bevenson@melinkcorp.com>> wrote:
Amit,

Good to hear you got your recipe in order.  Best way to learn more about th=
e Yocto Project and the Poky distribution is through watching this mailing =
list and the Poky mailing list (poky@yoctoproject.org<mailto:poky@yoctoproj=
ect.org>) to see how other people solve their problems they come across.  A=
nd, by reading the documentation over at http://www.yoctoproject.org/docume=
ntation/current/.

-Bryan

From: Amit Tomer [mailto:amittomer25@gmail.com<mailto:amittomer25@gmail.com=
>]
Sent: Thursday, October 03, 2013 10:03 AM

To: Bryan Evenson
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Fwd: OpenSSH pre login banner

Thanks again Bryan for your kind response

The reason for having the PRINC =3D"4" is becaue when I started modifying t=
his already existing file
value of PRINC is set 3 ,so for my changes I Incremented it to One.

Change
SRC_URI =3D "file://banner<file:///\\banner>"
To
SRC_URI +=3D "file://banner"

I am really feeling bit stupid here ,I just in hurry forgot to put + sign
Though I learned a new point

"With your line, you are overriding all the SRC_URI for the entire openssh =
recipe and the openssh recipe will only include the banner file ".

Change
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:"
to
FILESEXTRAPATHS_prepend :=3D "${THISDIR}:"

We already had openssh-6.1p1 folder where our sshd_config file is placed ,S=
o I guess it won't harm
much if I put FILESEXTRAPATHS_prepend :=3D "${THISDIR}/openssh-6.1p1:" with=
 banner file in openssh-6.1p1 folder

One more point wanted from your end,what is best way to learn Yocto
How can improve my knowledge in Yocto?

Thanks
Amit.




On Thu, Oct 3, 2013 at 7:05 PM, Bryan Evenson <bevenson@melinkcorp.com<mail=
to:bevenson@melinkcorp.com>> wrote:
Amit,

First, I suggest you change
PRINC =3D "4"
to
PRINC :=3D "${@int(PRINC) + 1}"

This way your bbappend will always increment the PR to one more than the PR=
 called out by the main recipe.  So if the openssh recipe would get updated=
 and increment the PR, you do not have to change your bbappend.

Change
SRC_URI =3D "file://banner<file:///\\banner>"
To
SRC_URI +=3D "file://banner"

The +=3D appends your banner file to the SRC_URI for the openssh recipe.  W=
ith your line, you are overriding all the SRC_URI for the entire openssh re=
cipe and the openssh recipe will only include the banner file.  I've taken =
to the habit of writing the SRC_URI as follows:

SRC_URI +=3D " \
file://banner<file:///\\banner> \
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

From: Amit Tomer [mailto:amittomer25@gmail.com<mailto:amittomer25@gmail.com=
>]
Sent: Thursday, October 03, 2013 8:23 AM
To: Bryan Evenson
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
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










--_000_91586D499ADFD74FBCFB8425266A5DE40153B8C80587plutomelink_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><META HTTP-EQUIV=3D"Content-Type" CONTENT=
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
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
sans-serif";color:#1F497D'>If your banner file and sshd_config are populate=
d where they are supposed to be on your target board based upon your bbappe=
nd and have the contents you specified, then your bbappend is doing its job=
.&nbsp; If your banner isn&#8217;t working, then there is some other config=
uration issue you&#8217;re having with OpenSSH.&nbsp; In that case I&#8217;=
d suggest checking with the OpenSSH community to see what you may be doing =
wrong.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:1=
1.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"=
Calibri","sans-serif";color:#1F497D'>-Bryan<o:p></o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;b=
order-left:solid blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'b=
order:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p cla=
ss=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","san=
s-serif"'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"Taho=
ma","sans-serif"'> Amit Tomer [mailto:amittomer25@gmail.com] <br><b>Sent:</=
b> Thursday, October 03, 2013 2:52 PM<br><b>To:</b> Bryan Evenson<br><b>Cc:=
</b> yocto@yoctoproject.org<br><b>Subject:</b> Re: [yocto] Fwd: OpenSSH pre=
 login banner<o:p></o:p></span></p></div></div><p class=3DMsoNormal><o:p>&n=
bsp;</o:p></p><div><p class=3DMsoNormal>Sorry for the typo mistake ,its ssh=
d_config only<o:p></o:p></p><div><p class=3DMsoNormal>In fact I didn't crea=
te this file ,its already existing file which I just modified.<o:p></o:p></=
p></div></div><div><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><o:p=
>&nbsp;</o:p></p><div><p class=3DMsoNormal>On Thu, Oct 3, 2013 at 11:40 AM,=
 Bryan Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_bl=
ank">bevenson@melinkcorp.com</a>&gt; wrote:<o:p></o:p></p><div><div><p clas=
s=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>=
<span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1=
F497D'>Amit,</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;fo=
nt-family:"Calibri","sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p=
><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";=
color:#1F497D'>Did you name the file sshd-config or sshd_config?&nbsp; Beca=
use it should be sshd_config.</span><o:p></o:p></p><p class=3DMsoNormal sty=
le=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'fo=
nt-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&nbsp;</sp=
an><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso=
-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calib=
ri","sans-serif";color:#1F497D'>-Bryan</span><o:p></o:p></p><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span st=
yle=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&=
nbsp;</span><o:p></o:p></p><div style=3D'border:none;border-left:solid blue=
 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:none;border-top=
:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span style=3D'f=
ont-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></b><span st=
yle=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Amit Tomer [mai=
lto:<a href=3D"mailto:amittomer25@gmail.com" target=3D"_blank">amittomer25@=
gmail.com</a>] <br><b>Sent:</b> Thursday, October 03, 2013 2:36 PM</span><o=
:p></o:p></p><div><div><p class=3DMsoNormal><br><b>To:</b> Bryan Evenson<br=
><b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoc=
to@yoctoproject.org</a><br><b>Subject:</b> Re: [yocto] Fwd: OpenSSH pre log=
in banner<o:p></o:p></p></div></div></div></div><div><div><p class=3DMsoNor=
mal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p=
></o:p></p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-m=
argin-bottom-alt:auto'>Yes Brayan<o:p></o:p></p><div><p class=3DMsoNormal s=
tyle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:=
p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-=
margin-bottom-alt:auto'>I did the whole process again and &nbsp;looked into=
 Target filesystem /etc/ssh. I can see the banner file with my content is t=
here<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-=
alt:auto;mso-margin-bottom-alt:auto'>/etc/ssh/banner<o:p></o:p></p></div><d=
iv><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso=
-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Then I see the /etc/ssh/ss=
hd-config with Banner variable to set to /etc/ssh/sshd-config<o:p></o:p></p=
></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal sty=
le=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>But still, when I=
 do ssh IP_address, I did not see any Banner message .<o:p></o:p></p></div>=
<div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'm=
so-margin-top-alt:auto;mso-margin-bottom-alt:auto'>I restarted the sshd ser=
vice without any luck<o:p></o:p></p></div><div><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></=
p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'>I have connected to board using putty on serial line /d=
ev/ttyUSB1 .<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-mar=
gin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><di=
v><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto'>What could be the problem here??&nbsp;<o:p></o:p></p></div></div><=
div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;margin-bottom:12.=
0pt'>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto'>On Thu, Oct 3, 2013 at 10:17 AM, Brya=
n Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">=
bevenson@melinkcorp.com</a>&gt; wrote:<o:p></o:p></p><div><div><p class=3DM=
soNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span=
 style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D=
'>Amit,</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-a=
lt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-fa=
mily:"Calibri","sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:aut=
o'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color=
:#1F497D'>To me it looks like it did not take your sshd_config file.&nbsp; =
Maybe try adding it to the SRC_URI in your bbappend?</span><o:p></o:p></p><=
p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:=
auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";co=
lor:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11=
.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Instead of running t=
he updated package on your target board, you can open up the newly created =
package and verify the file you want is where it should be.&nbsp; Ipks are =
basically a tar.gz file, so you can open their contents with any unpacking =
tool that can read tar.gz (file-roller is what I use).&nbsp; In the .ipk, o=
pen up the etc/ssh/sshd_config file and verify it matches the one with your=
 modifications.&nbsp; If not, then Bitbake isn&#8217;t grabbing your modifi=
ed sshd_config.&nbsp; If you&#8217;re using RPM or DEB packages, I believe =
something similar can be done.</span><o:p></o:p></p><p class=3DMsoNormal st=
yle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'f=
ont-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&nbsp;</s=
pan><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Cali=
bri","sans-serif";color:#1F497D'>-Bryan</span><o:p></o:p></p><p class=3DMso=
Normal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span s=
tyle=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>=
&nbsp;</span><o:p></o:p></p><div style=3D'border:none;border-left:solid blu=
e 1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:none;border-to=
p:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span style=3D'f=
ont-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></b><span st=
yle=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Amit Tomer [mai=
lto:<a href=3D"mailto:amittomer25@gmail.com" target=3D"_blank">amittomer25@=
gmail.com</a>] <br><b>Sent:</b> Thursday, October 03, 2013 10:41 AM<br><b>T=
o:</b> Bryan Evenson; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_=
blank">yocto@yoctoproject.org</a></span><o:p></o:p></p><div><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><=
br><b>Subject:</b> Re: [yocto] Fwd: OpenSSH pre login banner<o:p></o:p></p>=
</div></div></div></div><div><div><p class=3DMsoNormal style=3D'mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>F=
ine Bryan,Thanks for your Suggestion<o:p></o:p></p><div><p class=3DMsoNorma=
l style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p><=
/o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto'>Not sure should I Share it with you or not but I=
 have seen very weird behaviour on my Targer board regarding Openssh Banner=
.<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt=
:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>W=
hen I login to my Hardware Board(after freash boot) and do ssh some_ip_addr=
ess ,I am able to see Banner message<o:p></o:p></p></div><div><p class=3DMs=
oNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>But in=
 /etc/ssh/sshd_config file&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNor=
mal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p=
></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto=
;mso-margin-bottom-alt:auto'>#Banner is set to nothing<o:p></o:p></p></div>=
<div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'm=
so-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Then when I do ssh&nbsp;=
some_ip_address again ,I could not see any banner as it is expected behavio=
ur.<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-a=
lt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p clas=
s=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>=
Hope you would provide any pointer on the same .<o:p></o:p></p></div><div><=
p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:=
auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-mar=
gin-top-alt:auto;mso-margin-bottom-alt:auto'>Thanks&nbsp;<o:p></o:p></p></d=
iv><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto'>Amit&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal sty=
le=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p>=
</p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o=
:p></p></div></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:au=
to;margin-bottom:12.0pt'>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal sty=
le=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>On Thu, Oct 3, 20=
13 at 7:40 PM, Bryan Evenson &lt;<a href=3D"mailto:bevenson@melinkcorp.com"=
 target=3D"_blank">bevenson@melinkcorp.com</a>&gt; wrote:<o:p></o:p></p><di=
v><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-s=
erif";color:#1F497D'>Amit,</span><o:p></o:p></p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font=
-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&nbsp;</span=
><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-m=
argin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri=
","sans-serif";color:#1F497D'>Good to hear you got your recipe in order.&nb=
sp; Best way to learn more about the Yocto Project and the Poky distributio=
n is through watching this mailing list and the Poky mailing list (<a href=
=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoproject.org</=
a>) to see how other people solve their problems they come across.&nbsp; An=
d, by reading the documentation over at <a href=3D"http://www.yoctoproject.=
org/documentation/current/" target=3D"_blank">http://www.yoctoproject.org/d=
ocumentation/current/</a>.</span><o:p></o:p></p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font=
-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&nbsp;</span=
><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-m=
argin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri=
","sans-serif";color:#1F497D'>-Bryan </span><o:p></o:p></p><p class=3DMsoNo=
rmal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span sty=
le=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&n=
bsp;</span><o:p></o:p></p><div style=3D'border:none;border-left:solid blue =
1.5pt;padding:0in 0in 0in 4.0pt'><div><div style=3D'border:none;border-top:=
solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span style=3D'f=
ont-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span></b><span st=
yle=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> Amit Tomer [mai=
lto:<a href=3D"mailto:amittomer25@gmail.com" target=3D"_blank">amittomer25@=
gmail.com</a>] <br><b>Sent:</b> Thursday, October 03, 2013 10:03 AM</span><=
o:p></o:p></p><div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:au=
to;mso-margin-bottom-alt:auto'><br><b>To:</b> Bryan Evenson<br><b>Cc:</b> <=
a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproje=
ct.org</a><br><b>Subject:</b> Re: [yocto] Fwd: OpenSSH pre login banner<o:p=
></o:p></p></div></div></div></div><div><div><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p><d=
iv><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto'>Thanks again Bryan for your kind response&nbsp;<o:p></o:p></p><di=
v><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto'>The reason for having the P=
RINC =3D&quot;4&quot; is becaue when I started modifying this already exist=
ing file<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto'>value of PRINC is set 3 ,so for my=
 changes I Incremented it to One.<o:p></o:p></p></div><div><p class=3DMsoNo=
rmal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:=
p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:aut=
o;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"=
Calibri","sans-serif";color:#1F497D'>Change</span><o:p></o:p></p><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><=
span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F=
497D'>SRC_URI =3D &#8220;<a href=3D"file:///\\banner">file://banner</a>&#82=
21;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:a=
uto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family=
:"Calibri","sans-serif";color:#1F497D'>To</span><o:p></o:p></p><p class=3DM=
soNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span=
 style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D=
'>SRC_URI +=3D &#8220;file://banner&#8220;</span><o:p></o:p></p><p class=3D=
MsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbs=
p;<o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-=
margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibr=
i","sans-serif"'>I am really<span style=3D'color:#1F497D'> </span>feeling b=
it stupid here ,I just in hurry forgot to put + sign</span><o:p></o:p></p><=
p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:=
auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif"'>T=
hough I learned a new point&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal=
 style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></=
o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto'><span style=3D'font-size:11.5pt;font-family:"Calibri","sans-=
serif";color:#1F497D'>&quot;With your line, you are overriding all the SRC_=
URI for the entire openssh recipe and the openssh recipe will only include =
the banner file</span>&nbsp;&quot;.<o:p></o:p></p><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p><=
/p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif=
";color:#1F497D'>Change</span><o:p></o:p></p><div><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'fon=
t-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>FILESEXTRAP=
ATHS_prepend :=3D &quot;${THISDIR}/openssh-6.1p1:&quot;</span><o:p></o:p></=
p></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-=
serif";color:#1F497D'>to</span><o:p></o:p></p><p class=3DMsoNormal style=3D=
'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-si=
ze:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>FILESEXTRAPATHS=
_prepend :=3D &quot;${THISDIR}:&quot;</span><o:p></o:p></p><p class=3DMsoNo=
rmal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span sty=
le=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&n=
bsp;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:=
auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.5pt;font-famil=
y:"Calibri","sans-serif"'>We already had&nbsp;openssh-6.1p1 folder where ou=
r sshd_config file is placed ,So I guess it won't harm</span><o:p></o:p></p=
><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto'><span style=3D'font-size:11.5pt;font-family:"Calibri","sans-serif"'=
>much if I put&nbsp;FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/openssh-6=
.1p1:&quot; with banner file in&nbsp;openssh-6.1p1 folder</span><o:p></o:p>=
</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto'>&nbsp;<o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.5pt;font=
-family:"Calibri","sans-serif"'>One more point wanted from your end,what is=
 best way to learn Yocto</span><o:p></o:p></p><p class=3DMsoNormal style=3D=
'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-si=
ze:11.5pt;font-family:"Calibri","sans-serif"'>How can improve my knowledge =
in Yocto?</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p><p class=3DMsoNo=
rmal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span sty=
le=3D'font-size:11.5pt;font-family:"Calibri","sans-serif"'>Thanks&nbsp;</sp=
an><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso=
-margin-bottom-alt:auto'><span style=3D'font-size:11.5pt;font-family:"Calib=
ri","sans-serif"'>Amit.</span><o:p></o:p></p><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto'>&nbsp;<o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:=
auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div></div><div><p c=
lass=3DMsoNormal style=3D'mso-margin-top-alt:auto;margin-bottom:12.0pt'>&nb=
sp;<o:p></o:p></p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:aut=
o;mso-margin-bottom-alt:auto'>On Thu, Oct 3, 2013 at 7:05 PM, Bryan Evenson=
 &lt;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@=
melinkcorp.com</a>&gt; wrote:<o:p></o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D=
'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Amit,</=
span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Cal=
ibri","sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMs=
oNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'=
>First, I suggest you change</span><o:p></o:p></p><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'fon=
t-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>PRINC =3D &=
#8220;4&#8221;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margi=
n-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;=
font-family:"Calibri","sans-serif";color:#1F497D'>to</span><o:p></o:p></p><=
div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-seri=
f";color:#1F497D'>PRINC :=3D &quot;${@int(PRINC) + 1}&quot;</span><o:p></o:=
p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>&nbsp;</span><o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D=
'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>This wa=
y your bbappend will always increment the PR to one more than the PR called=
 out by the main recipe.&nbsp; So if the openssh recipe would get updated a=
nd increment the PR, you do not have to change your bbappend.</span><o:p></=
o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-=
serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'fon=
t-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Change</spa=
n><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-=
margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibr=
i","sans-serif";color:#1F497D'>SRC_URI =3D &#8220;<a href=3D"file:///\\bann=
er">file://banner</a>&#8221;</span><o:p></o:p></p><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'fon=
t-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>To</span><o=
:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>SRC_URI +=3D &#8220;file://banner&#8220;</span><=
o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-mar=
gin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNorma=
l style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>The =
+=3D appends your banner file to the SRC_URI for the openssh recipe.&nbsp; =
With your line, you are overriding all the SRC_URI for the entire openssh r=
ecipe and the openssh recipe will only include the banner file.&nbsp; I&#82=
17;ve taken to the habit of writing the SRC_URI as follows:</span><o:p></o:=
p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font=
-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>SRC_URI +=3D=
 &#8220; \</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-to=
p-alt:auto;mso-margin-bottom-alt:auto;text-indent:.5in'><span style=3D'font=
-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'><a href=3D"f=
ile:///\\banner">file://banner</a> \</span><o:p></o:p></p><p class=3DMsoNor=
mal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent=
:.5in'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";c=
olor:#1F497D'>&#8220;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:=
11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>just to ensure tha=
t words aren&#8217;t joined together when my SRC_URI is appended to the exi=
sting one.&nbsp; I don&#8217;t know if this is strictly necessary, but it&#=
8217;s not a bad habit.</span><o:p></o:p></p><p class=3DMsoNormal style=3D'=
mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-siz=
e:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&nbsp;</span><o:=
p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","s=
ans-serif";color:#1F497D'>Change</span><o:p></o:p></p><div><p class=3DMsoNo=
rmal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span sty=
le=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>FI=
LESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/openssh-6.1p1:&quot;</span><o:p=
></o:p></p></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-=
margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibr=
i","sans-serif";color:#1F497D'>to</span><o:p></o:p></p><p class=3DMsoNormal=
 style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>FILE=
SEXTRAPATHS_prepend :=3D &quot;${THISDIR}:&quot;</span><o:p></o:p></p><p cl=
ass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto=
'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:=
#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-marg=
in-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt=
;font-family:"Calibri","sans-serif";color:#1F497D'>so Bitbake can find your=
 banner file and sshd_config that you have in the same directory as the bba=
ppend.</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-al=
t:auto;mso-margin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-fam=
ily:"Calibri","sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p cl=
ass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto=
'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:=
#1F497D'>I can&#8217;t remember if you get a warning if Bitbake can&#8217;t=
 find the license file at all or if it fails on each attempt through the fi=
lepath.&nbsp; Since your new path is first, it won&#8217;t find LICENCE in =
your layer since you didn&#8217;t copy it.&nbsp; Once way to quiet this war=
ning would be to copy the license file to your directory.</span><o:p></o:p>=
</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-seri=
f";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal style=3D=
'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font-si=
ze:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>-Bryan</span><o=
:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><div style=3D'border=
:none;border-left:solid blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div sty=
le=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in'=
><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto'><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif=
"'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sa=
ns-serif"'> Amit Tomer [mailto:<a href=3D"mailto:amittomer25@gmail.com" tar=
get=3D"_blank">amittomer25@gmail.com</a>] <br><b>Sent:</b> Thursday, Octobe=
r 03, 2013 8:23 AM<br><b>To:</b> Bryan Evenson<br><b>Cc:</b> <a href=3D"mai=
lto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br=
><b>Subject:</b> Re: [yocto] Fwd: OpenSSH pre login banner</span><o:p></o:p=
></p></div></div><div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt=
:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p><div><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Hi Braya=
n<o:p></o:p></p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;=
mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Thanks f=
or your help<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-mar=
gin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><di=
v><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto'>The way I modify .bbapend file is below<o:p></o:p></p></div><div><=
p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:=
auto'>&nbsp;<o:p></o:p></p></div><div><div><p class=3DMsoNormal style=3D'ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto'>PRINC =3D &quot;4&quot;<o=
:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:au=
to;mso-margin-bottom-alt:auto'>SRC_URI =3D &quot;<a href=3D"file:///\\banne=
r">file://banner</a>&quot;<o:p></o:p></p></div><div><p class=3DMsoNormal st=
yle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>FILESEXTRAPATHS_=
prepend :=3D &quot;${THISDIR}/openssh-6.1p1:&quot;<o:p></o:p></p></div><div=
><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-al=
t:auto'>do_install_append() {<o:p></o:p></p></div><div><p class=3DMsoNormal=
 style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></=
o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto'>Install -m 755 ${WORKDIR}/banner ${D}${sysconfdir=
}/ssh<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto'>}<o:p></o:p></p></div><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&=
nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p cl=
ass=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto=
'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-=
top-alt:auto;mso-margin-bottom-alt:auto'>But it gives me&nbsp;<o:p></o:p></=
p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal st=
yle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Below problem<o:=
p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:aut=
o;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>W=
ARNING: /tmp/work/cortexa15hf-vfp-neon-poky-linux-gnueabi/openssh/6.1p1-r3/=
openssh-6.1p1/LICENCE could not be copied for some reason. It may not exist=
. WARN for now.<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div>=
<div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto'>And my build process is really got slow and sometimes I am gett=
ing the error also<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'm=
so-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></d=
iv><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bo=
ttom-alt:auto'>What could be the reason for above??<o:p></o:p></p></div><di=
v><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-=
margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div>=
<div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-botto=
m-alt:auto'>&nbsp;<o:p></o:p></p></div></div><div><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p><=
/p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-mar=
gin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div></div></div><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;margin-bottom:12.0pt'>&nbsp;<=
o:p></o:p></p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto'>On Thu, Oct 3, 2013 at 5:49 PM, Bryan Evenson &lt=
;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenson@meli=
nkcorp.com</a>&gt; wrote:<o:p></o:p></p><div><div><p class=3DMsoNormal styl=
e=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'fon=
t-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Amit,</span=
><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-m=
argin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri=
","sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNor=
mal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span styl=
e=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>Fro=
m your message, I&#8217;m assuming you have a bbappend file for openssh.&nb=
sp; Following the example in section of 5.1.4 of the Mega Manual (located a=
t <a href=3D"http://www.yoctoproject.org/docs/current/mega-manual/mega-manu=
al.html#using-bbappend-files" target=3D"_blank">http://www.yoctoproject.org=
/docs/current/mega-manual/mega-manual.html#using-bbappend-files</a>) and fr=
om personal experience, put the following in your bbappend file:</span><o:p=
></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sa=
ns-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal s=
tyle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:.5in=
'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:=
#1F497D'>FILESEXTRAPATHS_prepend :=3D &quot; ${THISDIR}: &quot;</span><o:p>=
</o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-=
bottom-alt:auto;text-indent:.5in'><span style=3D'font-size:11.0pt;font-fami=
ly:"Calibri","sans-serif";color:#1F497D'>SRC_URI +=3D &#8220; <a href=3D"fi=
le:///\\banner">file://banner</a> &#8221;</span><o:p></o:p></p><p class=3DM=
soNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-i=
ndent:.5in'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-ser=
if";color:#1F497D'>FILES_${PN} +=3D &#8220; /etc/ssh/banner &#8221;</span><=
o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-mar=
gin-bottom-alt:auto;text-indent:.5in'><span style=3D'font-size:11.0pt;font-=
family:"Calibri","sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto;text-indent:.5in'><span style=3D'font-size:11.0pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'>do_install_append() {</span><o:p></o:p></p><p =
class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:au=
to;text-indent:.5in'><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";color:#1F497D'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install &#8211;d ${D}${sysconfd=
ir}/ssh</span><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-a=
lt:auto;mso-margin-bottom-alt:auto;text-indent:.5in'><span style=3D'font-si=
ze:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 install &#8211;m 0644 ${WORKDIR}/banner ${D}${sysconfdir/ssh/banner</span>=
<o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto;text-indent:.5in'><span style=3D'font-size:11.0pt;font=
-family:"Calibri","sans-serif";color:#1F497D'>}</span><o:p></o:p></p><p cla=
ss=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;=
text-indent:.5in'><span style=3D'font-size:11.0pt;font-family:"Calibri","sa=
ns-serif";color:#1F497D'>PRINC :=3D &quot;${@int(PRINC) + 1}&quot;</span><o=
:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal=
 style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=
=3D'font-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>then=
 place your banner file and sshd_config in the same directory as your bbapp=
end.&nbsp; When openssh gets built, Bitbake will find your sshd_config firs=
t and use and install that file instead of the one from the main layer.&nbs=
p; The recipe also tells it how to handle the new banner file that is not p=
art of the original recipe; you do not need to put these rules in place for=
 sshd_config because that is already part of the original recipe.&nbsp; The=
n in the future every time you make a change to the openssh package in your=
 layer, increment the PRINC so your package management tools will see it as=
 an upgrade.&nbsp; For example, if you change the contents of the banner fi=
le, then change the &#8220;+ 1&#8221; to &#8220;+ 2&#8221;.</span><o:p></o:=
p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bott=
om-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span style=3D'font=
-size:11.0pt;font-family:"Calibri","sans-serif";color:#1F497D'>-Bryan</span=
><o:p></o:p></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-m=
argin-bottom-alt:auto'><span style=3D'font-size:11.0pt;font-family:"Calibri=
","sans-serif";color:#1F497D'>&nbsp;</span><o:p></o:p></p><div style=3D'bor=
der:none;border-left:solid blue 1.5pt;padding:0in 0in 0in 4.0pt'><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0=
in'><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom=
-alt:auto'><b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-se=
rif"'>From:</span></b><span style=3D'font-size:10.0pt;font-family:"Tahoma",=
"sans-serif"'> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"=
_blank">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-=
bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org<=
/a>] <b>On Behalf Of </b>Amit Tomer<br><b>Sent:</b> Thursday, October 03, 2=
013 7:05 AM<br><b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a><br><b>Subject:</b> [yocto] Fwd: Open=
SSH pre login banner</span><o:p></o:p></p></div></div><div><div><p class=3D=
MsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbs=
p;<o:p></o:p></p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto=
;margin-bottom:12.0pt'>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;margin-bottom:12.0pt'>---------- Forwarded mess=
age ----------<br>From: <b>Amit Tomer</b> &lt;<a href=3D"mailto:amittomer25=
@gmail.com" target=3D"_blank">amittomer25@gmail.com</a>&gt;<br>Date: Thu, O=
ct 3, 2013 at 1:50 PM<br>Subject: OpenSSH pre login banner<br>To: &quot;<a =
href=3D"mailto:yocto-request@yoctoproject.org" target=3D"_blank">yocto-requ=
est@yoctoproject.org</a>&quot; &lt;<a href=3D"mailto:yocto-request@yoctopro=
ject.org" target=3D"_blank">yocto-request@yoctoproject.org</a>&gt;<o:p></o:=
p></p><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin=
-bottom-alt:auto'>I am new to OpenEmbedded Yocto and have a requirement whe=
re&nbsp;OpenSSH pre login banner<o:p></o:p></p><div><p class=3DMsoNormal st=
yle=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>should come when=
 do ssh from target board<o:p></o:p></p></div><div><p class=3DMsoNormal sty=
le=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p>=
</p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-ma=
rgin-bottom-alt:auto'>Now I know I have to create a simple .txt file(banner=
) and put my banner in to it and add the following to&nbsp;sshd_config<o:p>=
</o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;=
mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoN=
ormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>Banner /=
etc/ssh/banner&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D=
'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p><=
/div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-=
bottom-alt:auto'>But now &nbsp;wanted to know where should I keep my banner=
 file in yocto so that Yocto build infrastructure will pack banner file &nb=
sp;to /etc/ssh/banner into final image.<o:p></o:p></p></div><div><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>&=
nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-margin-top=
-alt:auto;mso-margin-bottom-alt:auto'>I do have receipes for openssh in met=
a-xyz/recipes-connectivity/openssh &nbsp;folder<o:p></o:p></p></div><div><p=
 class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:a=
uto'>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal style=3D'mso-marg=
in-top-alt:auto;mso-margin-bottom-alt:auto'>Thanks&nbsp;<o:p></o:p></p></di=
v><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto'><span style=3D'color:#888888'>Amit&nbsp;</span><o:p></o:p></p=
></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto'><span style=3D'color:#888888'>&nbsp;</span><o:p></o:p></=
p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-marg=
in-bottom-alt:auto'><span style=3D'color:#888888'>&nbsp;</span><o:p></o:p><=
/p></div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-mar=
gin-bottom-alt:auto'><span style=3D'color:#888888'>&nbsp;</span><o:p></o:p>=
</p></div></div></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto=
;mso-margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div></div></div></div><=
/div></div></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-=
margin-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div></div></div></div></div>=
</div></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto'>&nbsp;<o:p></o:p></p></div></div></div></div></div></div=
></div><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bot=
tom-alt:auto'>&nbsp;<o:p></o:p></p></div></div></div></div></div></div></di=
v><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto'>&nbsp;<o:p></o:p></p></div></div></div></div></div></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></div></body></html>=

--_000_91586D499ADFD74FBCFB8425266A5DE40153B8C80587plutomelink_--
