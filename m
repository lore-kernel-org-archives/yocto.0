Return-Path: <agikling@lasx.com>
Received: from mx.cbeyond.com (mx.cbeyond.com [66.180.96.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88BCE0132F
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 22:10:29 -0700 (PDT)
X-SBRS: 5.3
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: imx05dal.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: ArEBAIjXe09CtGAbmWdsb2JhbABFgka1dAEBAQEBCAsLBxQnghAMIV4BGhwBAUgXDwEEEwiIAZoMoBKNIQEFgj9jBKkWgTo
X-IronPort-AV: E=Sophos;i="4.75,366,1330923600"; 
	d="scan'208,217";a="468343405"
Received: from exchange.cbeyondonline.net (HELO hub402dal.mmeprod.cbeyond)
	([66.180.96.27])
	by mx.cbeyond.com with ESMTP; 04 Apr 2012 01:10:27 -0400
Received: from EXMBX05.mmeprod.cbeyond ([192.168.13.77]) by
	hub402dal.mmeprod.cbeyond ([192.168.13.100]) with mapi; Wed, 4 Apr 2012
	01:10:27 -0400
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 4 Apr 2012 01:10:01 -0400
Thread-Topic: Yocto 1.2 Beta Testing Report
Thread-Index: Ac0SGrMTqv3IGlICTR2v65mgp//lqQ==
Message-ID: <23FC35CD1508674EBB20455EB700B1B4BCE870A508@EXMBX05.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Yocto 1.2 Beta Testing Report
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Apr 2012 05:10:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_23FC35CD1508674EBB20455EB700B1B4BCE870A508EXMBX05mmepro_"

--_000_23FC35CD1508674EBB20455EB700B1B4BCE870A508EXMBX05mmepro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Responses to Yocto 1.2 Beta Test:


Q: Which architecture did you choose to build?



A: sugarbay



Q: How easily were you able to build an image and boot an image?



A: I followed the QS step by step.  I've done it before so it was easier th=
is time around.

I had no problem building core-image-minimal.  And it ran out of the box.  =
No hang-ups.



Q: Is there any surprise to you in the process of doing this Beta testing? =
If so, would you please describe it and tell us how you expected it to work=
?



A: There were no surprises for me.  However, I didn't add anything outside =
of the meta-intel and meta-intel-sugarbay layers.



Q: How do you like our HOB interface? Please provide us with your thoughts =
and suggestions on HOB interface and functionality.



A: This was by far what I was MOST impressed with.  I've used hob in 1.1 ex=
tensively and I found the new version to be very well put together.  The li=
ttle "I" buttons were a cool touch.  Some of the information in the "I" but=
tons could easily be elaborated on though.  For example, the "I" next to th=
e Layers interface points you at the manual.  But why not point out the fac=
t that there are also many layers that are useful and already made out on t=
he net?  Then link to that too maybe.

Also, for another example, in the settings dialog, the "other" tab has an i=
nfo button that simply says this is where you specify more key/value pairs =
- but why not then list say a dozen common options that people might want t=
o use.  Or point at a list somewhere that has some examples with descriptio=
ns and help.



I was very surprised to see that once my image built in hob the bottom righ=
t corner has a deploy button.  It then lets you specify a usb drive to writ=
e the image to.  I was excited about this because it would be an amazingly =
useful feature if you don't know how to format usb drives in ZIP mode to ge=
t hardware to boot.  However, after trying this feature out it seems the sc=
ript simply writes the root folders to the usb drive.  (ie. /bin /lib /usr =
etc...) Unfortunately, this didn't boot my hardware - normally my working u=
sb sticks have the contents of the .hddimg on it (initrd, syslinux.cfg, vml=
inz etc...).  After checking again it seems you can't even select the .hddi=
mg file from this deploy gui either.  I needed to go back and setup my thum=
b drive for ZIP mode again and run syslinux on it again.  I might have miss=
ed something here though - I only tried the deploy feature once.



Overall I was very pleased with the new hob.  Because you can easily save c=
onfigurations I feel like I might find myself using this tool in the future=
 exclusively.  It's just so much faster and intuitive than scrolling throug=
h configuration files.  I'm sure it has bugs but I haven't encountered any =
yet.



Q: Was it easy to find the support you needed to build and boot an image?



A: The documentation is really quite good.  However, if you run into any so=
rt of errors during build - which is easy to do - the documentation isn't m=
uch help.  There's so many things that can go wrong it makes sense that the=
re wouldn't be documentation for many types of errors.  That said, it would=
 be nice to see a more robust "troubleshooting errors" section in the docs.



Q: Which Bugzilla reports did you submit?



A: None.  I find it hard to tell if what I'm looking at is actually a bug o=
r if I'm simply misunderstanding or missing something.

I will in the future though.



Q: Did you try anything else with Yocto 1.2?



A: I tried added shadow, tcf-agent, openssh and gdb to my hob build it work=
ed great - first try.  Interestingly though, when I went to boot this image=
 the username "root" didn't work anymore.  I know it has to do with adding =
shadow, but why would adding that package "break" my "root" login with no p=
assword.  I've added shadow before in 1.1 and this didn't happen - root sti=
ll worked as a login with no password.  Might this be a bug?  Or do I need =
to configure shadow before I bake?



Q: What would you like to have in Yocto Project for future releases?



A:  More options for the "deploy" feature in hob would be nice.  It would b=
e sweet it you could just drop your build right onto your boot media direct=
ly from hob gui - be it a usb drive, sata hard drive or otherwise.



I've also noticed hob used to put some of it generated config files in the =
/build/conf/ folder.  It seems that they are gone now.  It would be nice to=
 allow the hob user to go and see exactly what configuration file changes h=
ave been made by using the gui.  This functionality would be an invaluable =
tool to teach new users about how it all works.



Best,



~Andy Gikling

LasX Industries Inc.

agikling@lasx.com






--_000_23FC35CD1508674EBB20455EB700B1B4BCE870A508EXMBX05mmepro_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>Responses to Yoc=
to 1.2 Beta Test:<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><=
p class=3DMsoPlainText>Q: Which architecture did you choose to build?<o:p><=
/o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainTe=
xt>A: sugarbay<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><=
p class=3DMsoPlainText>Q: How easily were you able to build an image and bo=
ot an image?<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p =
class=3DMsoPlainText>A: I followed the QS step by step.&nbsp; I&#8217;ve do=
ne it before so it was easier this time around.<o:p></o:p></p><p class=3DMs=
oPlainText>I had no problem building core-image-minimal.&nbsp; And it ran o=
ut of the box.&nbsp; No hang-ups.<o:p></o:p></p><p class=3DMsoPlainText><o:=
p>&nbsp;</o:p></p><p class=3DMsoPlainText>Q: Is there any surprise to you i=
n the process of doing this Beta testing? If so, would you please describe =
it and tell us how you expected it to work?<o:p></o:p></p><p class=3DMsoPla=
inText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>A: There were no surpri=
ses for me.&nbsp; However, I didn&#8217;t add anything outside of the meta-=
intel and meta-intel-sugarbay layers.<o:p></o:p></p><p class=3DMsoPlainText=
><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Q: How do you like our HOB in=
terface? Please provide us with your thoughts and suggestions on HOB interf=
ace and functionality.<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o=
:p></p><p class=3DMsoPlainText>A: This was by far what I was MOST impressed=
 with.&nbsp; I&#8217;ve used hob in 1.1 extensively and I found the new ver=
sion to be very well put together.&nbsp; The little &#8220;I&#8221; buttons=
 were a cool touch.&nbsp; Some of the information in the &#8220;I&#8221; bu=
ttons could easily be elaborated on though.&nbsp; For example, the &#8220;I=
&#8221; next to the Layers interface points you at the manual.&nbsp; But wh=
y not point out the fact that there are also many layers that are useful an=
d already made out on the net?&nbsp; Then link to that too maybe.<o:p></o:p=
></p><p class=3DMsoPlainText> <o:p></o:p></p><p class=3DMsoPlainText>Also, =
for another example, in the settings dialog, the &#8220;other&#8221; tab ha=
s an info button that simply says this is where you specify more key/value =
pairs &#8211; but why not then list say a dozen common options that people =
might want to use.&nbsp; Or point at a list somewhere that has some example=
s with descriptions and help.<o:p></o:p></p><p class=3DMsoPlainText><o:p>&n=
bsp;</o:p></p><p class=3DMsoPlainText>I was very surprised to see that once=
 my image built in hob the bottom right corner has a deploy button.&nbsp; I=
t then lets you specify a usb drive to write the image to.&nbsp; I was exci=
ted about this because it would be an amazingly useful feature if you don&#=
8217;t know how to format usb drives in ZIP mode to get hardware to boot.&n=
bsp; However, after trying this feature out it seems the script simply writ=
es the root folders to the usb drive.&nbsp; (ie. /bin /lib /usr etc&#8230;)=
 Unfortunately, this didn&#8217;t boot my hardware &#8211; normally my work=
ing usb sticks have the contents of the .hddimg on it (initrd, syslinux.cfg=
, vmlinz etc&#8230;).&nbsp; After checking again it seems you can&#8217;t e=
ven select the .hddimg file from this deploy gui either.&nbsp; I needed to =
go back and setup my thumb drive for ZIP mode again and run syslinux on it =
again.&nbsp; I might have missed something here though &#8211; I only tried=
 the deploy feature once.<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;=
</o:p></p><p class=3DMsoPlainText>Overall I was very pleased with the new h=
ob.&nbsp; Because you can easily save configurations I feel like I might fi=
nd myself using this tool in the future exclusively.&nbsp; It&#8217;s just =
so much faster and intuitive than scrolling through configuration files.&nb=
sp; I&#8217;m sure it has bugs but I haven&#8217;t encountered any yet.<o:p=
></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlain=
Text>Q: Was it easy to find the support you needed to build and boot an ima=
ge?<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DM=
soPlainText>A: The documentation is really quite good.&nbsp; However, if yo=
u run into any sort of errors during build - which is easy to do &#8211; th=
e documentation isn&#8217;t much help.&nbsp; There&#8217;s so many things t=
hat can go wrong it makes sense that there wouldn&#8217;t be documentation =
for many types of errors.&nbsp; That said, it would be nice to see a more r=
obust &#8220;troubleshooting errors&#8221; section in the docs.&nbsp; <o:p>=
</o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainT=
ext>Q: Which Bugzilla reports did you submit?<o:p></o:p></p><p class=3DMsoP=
lainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>A: None.&nbsp; I find=
 it hard to tell if what I&#8217;m looking at is actually a bug or if I&#82=
17;m simply misunderstanding or missing something.<o:p></o:p></p><p class=
=3DMsoPlainText>I will in the future though.<o:p></o:p></p><p class=3DMsoPl=
ainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Q: Did you try anythin=
g else with Yocto 1.2?<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o=
:p></p><p class=3DMsoPlainText>A: I tried added shadow, tcf-agent, openssh =
and gdb to my hob build it worked great - first try.&nbsp; Interestingly th=
ough, when I went to boot this image the username &#8220;root&#8221; didn&#=
8217;t work anymore.&nbsp; I know it has to do with adding shadow, but why =
would adding that package &#8220;break&#8221; my &#8220;root&#8221; login w=
ith no password.&nbsp; I&#8217;ve added shadow before in 1.1 and this didn&=
#8217;t happen &#8211; root still worked as a login with no password.&nbsp;=
 Might this be a bug? &nbsp;Or do I need to configure shadow before I bake?=
&nbsp; <o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=
=3DMsoPlainText>Q: What would you like to have in Yocto Project for future =
releases?<o:p></o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoPlainText>A:&nbsp; More options for the &#8220;deploy&#8221; featur=
e in hob would be nice.&nbsp; It would be sweet it you could just drop your=
 build right onto your boot media directly from hob gui &#8211; be it a usb=
 drive, sata hard drive or otherwise.<o:p></o:p></p><p class=3DMsoPlainText=
><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>I&#8217;ve also noticed hob u=
sed to put some of it generated config files in the /build/conf/ folder.&nb=
sp; It seems that they are gone now.&nbsp; It would be nice to allow the ho=
b user to go and see exactly what configuration file changes have been made=
 by using the gui.&nbsp; This functionality would be an invaluable tool to =
teach new users about how it all works.<o:p></o:p></p><p class=3DMsoPlainTe=
xt><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>Best,<o:p></o:p></p><p clas=
s=3DMsoPlainText><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText>~Andy Gikling=
<o:p></o:p></p><p class=3DMsoPlainText>LasX Industries Inc.<o:p></o:p></p><=
p class=3DMsoPlainText>agikling@lasx.com<o:p></o:p></p><p class=3DMsoPlainT=
ext><o:p>&nbsp;</o:p></p><p class=3DMsoPlainText><o:p>&nbsp;</o:p></p><p cl=
ass=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>=

--_000_23FC35CD1508674EBB20455EB700B1B4BCE870A508EXMBX05mmepro_--
