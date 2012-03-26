Return-Path: <agikling@lasx.com>
Received: from mx.cbeyond.com (mx.cbeyond.com [66.180.96.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF43CE013A8
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 18:05:07 -0700 (PDT)
X-SBRS: 4.4
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: imx06dal.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: ApMCAL+/b09CtGAbkGdsb2JhbABEgka2AgEBAQESFBQnghAtXgE1AQFJJgEEEwiIAphXnzKNeAgBgkRjBKkQgTo
X-IronPort-AV: E=Sophos;i="4.73,648,1325480400"; 
	d="scan'208,217";a="469035603"
Received: from exchange.cbeyondonline.net (HELO hub401dal.mmeprod.cbeyond)
	([66.180.96.27])
	by mx.cbeyond.com with ESMTP; 25 Mar 2012 21:05:06 -0400
Received: from EXMBX05.mmeprod.cbeyond ([192.168.13.77]) by
	hub401dal.mmeprod.cbeyond ([192.168.13.99]) with mapi; Sun, 25 Mar 2012
	21:05:06 -0400
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sun, 25 Mar 2012 21:05:02 -0400
Thread-Topic: Explicitly Adding Common Packages (ie Java) and Creating Users
Thread-Index: Ac0K7HT3M9KYWH6aTWygfZoF7XFzBw==
Message-ID: <23FC35CD1508674EBB20455EB700B1B4BCE85A464B@EXMBX05.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Explicitly Adding Common Packages (ie Java) and Creating Users
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
X-List-Received-Date: Mon, 26 Mar 2012 01:05:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_23FC35CD1508674EBB20455EB700B1B4BCE85A464BEXMBX05mmepro_"

--_000_23FC35CD1508674EBB20455EB700B1B4BCE85A464BEXMBX05mmepro_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

First time submitter here.  Overall, I feel that the Yocto documentation ha=
s gotten me extremely far very quickly.  I'm working on a Sugarbay image th=
at successfully boots my Sandybridge Mini-ITX computer!  The first image I =
made even supported my Ethernet adaptor out of the box!

Very cool.  Thank you to all the contributors - this project is really swee=
t!

I'd like to ask two specific questions:

Question 1:
The ADT manual instructs you to install the Target Management (RSE) framewo=
rk into Eclipse.  Presumably, one would want to use these tools to do remot=
e debugging on their Yocto target.  Unfortunately, the primary vehicle to d=
oing streamlined remote debugging with Target Management is to run the rses=
erver and this requires java.  Many of Yocto's base images don't come with =
java support (for example core-image-minimal).  So I set out to figure out =
how to add this into my project.  Makes sense right?

I was never able build an image that contains the meta-oracle-master layer =
using the config files only.  (The documentation on how to do this is spars=
e.  Even the readme file in the layer's download is a one-liner on how to u=
se it... why?)  I was able to get an image to build using hob though.  When=
 I boot the image I have two new folders now; "/usr/java/" and "/usr/jdk1.7=
.0_02/" both of which contain a "/bin" folder with "java" in it.

The problem is I can't seem to execute any of them what-so-ever.  I just ne=
ed to be able to call "java -version" and I just can't get er' to go no mat=
ter what I do!

I've tried adding various locations to my $PATH and I've also tried navigat=
ing to the folder directly and calling "./java" to no avail.  What folder s=
hould I expect my java executable to be in?  Why can't I use it?  The jdk i=
s clearly there - I must be missing something very obvious.

There really should be some documentation on this because Java is so common=
 as it's a requirement for the tools suggested in the ADT manual.  Document=
ation on this topic would fit really well with other common first-timer que=
stion of "How do I explicitly add a package to my Yocto image, such as Open=
SSH, GDB, or Java?"

The brief sections about this topic in the official guides are not very cle=
ar to me.  It seems like explicitly adding a custom package might even fit =
in the quick start guide.

Question 2:
I was able to get the OpenSSH package added to my Yocto build using hob (wh=
en I can't get things to work by editing the .conf files I try hob and it f=
eels like cheating... but it seems to work much better for me.)  All I want=
 to do now is set it up but I can't make new users!

The default Yocto login account on my target is "root" but I can't call "us=
eradd andy" because useradd is not included in my core-image-minimal build.=
  This makes configuring sshd quite a bit harder.

Any ideas?  Is there a way to add user accounts at build time or do I have =
to add the "useradd" package?

Once I understand some of these issues better I'm going to make a sweet vid=
eo for beginners.  There are really a lot of pitfalls that I've hurdled and=
 I wish I could share them with everyone. But, I've got to get my feet unde=
r me first.

Thanks for your time!

~Andy Gikling
Electrical Engineer
LasX Industries Inc.
agikling@lasx.com

--_000_23FC35CD1508674EBB20455EB700B1B4BCE85A464BEXMBX05mmepro_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>All,<o:p></o:p><=
/p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>First tim=
e submitter here.&nbsp; Overall, I feel that the Yocto documentation has go=
tten me extremely far very quickly.&nbsp; I&#8217;m working on a Sugarbay i=
mage that successfully boots my Sandybridge Mini-ITX computer!&nbsp; The fi=
rst image I made even supported my Ethernet adaptor out of the box!<o:p></o=
:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Very =
cool.&nbsp; Thank you to all the contributors &#8211; this project is reall=
y sweet!<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=
=3DMsoNormal>I&#8217;d like to ask two specific questions:<o:p></o:p></p><p=
 class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Question 1:<o:=
p></o:p></p><p class=3DMsoNormal>The ADT manual instructs you to install th=
e Target Management (RSE) framework into Eclipse.&nbsp; Presumably, one wou=
ld want to use these tools to do remote debugging on their Yocto target.&nb=
sp; Unfortunately, the primary vehicle to doing streamlined remote debuggin=
g with Target Management is to run the rseserver and this requires java.&nb=
sp; Many of Yocto&#8217;s base images don&#8217;t come with java support (f=
or example core-image-minimal).&nbsp; So I set out to figure out how to add=
 this into my project.&nbsp; Makes sense right?<o:p></o:p></p><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I was never able build an=
 image that contains the meta-oracle-master layer using the config files on=
ly.&nbsp; (The documentation on how to do this is sparse.&nbsp; Even the re=
adme file in the layer&#8217;s download is a one-liner on how to use it&#82=
30; why?)&nbsp; I was able to get an image to build using hob though.&nbsp;=
 When I boot the image I have two new folders now; &#8220;/usr/java/&#8221;=
 and &#8220;/usr/jdk1.7.0_02/&#8221; both of which contain a &#8220;/bin&#8=
221; folder with &#8220;java&#8221; in it.<o:p></o:p></p><p class=3DMsoNorm=
al><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The problem is I can&#8217;t s=
eem to execute any of them what-so-ever. &nbsp;I just need to be able to ca=
ll &#8220;java &#8211;version&#8221; and I just can&#8217;t get er&#8217; t=
o go no matter what I do!<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o=
:p></p><p class=3DMsoNormal>I&#8217;ve tried adding various locations to my=
 $PATH and I&#8217;ve also tried navigating to the folder directly and call=
ing &#8220;./java&#8221; to no avail.&nbsp; What folder should I expect my =
java executable to be in?&nbsp; Why can&#8217;t I use it?&nbsp; The jdk is =
clearly there &#8211; I must be missing something very obvious.<o:p></o:p><=
/p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>There rea=
lly should be some documentation on this because Java is so common as it&#8=
217;s a requirement for the tools suggested in the ADT manual.&nbsp; Docume=
ntation on this topic would fit really well with other common first-timer q=
uestion of &#8220;How do I explicitly add a package to my Yocto image, such=
 as OpenSSH, GDB, or Java?&#8221;<o:p></o:p></p><p class=3DMsoNormal><o:p>&=
nbsp;</o:p></p><p class=3DMsoNormal>The brief sections about this topic in =
the official guides are not very clear to me.&nbsp; It seems like explicitl=
y adding a custom package might even fit in the quick start guide.<o:p></o:=
p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Questi=
on 2:<o:p></o:p></p><p class=3DMsoNormal>I was able to get the OpenSSH pack=
age added to my Yocto build using hob (when I can&#8217;t get things to wor=
k by editing the .conf files I try hob and it feels like cheating&#8230; bu=
t it seems to work much better for me.)&nbsp; All I want to do now is set i=
t up but I can&#8217;t make new users!<o:p></o:p></p><p class=3DMsoNormal><=
o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The default Yocto login account on=
 my target is &#8220;root&#8221; but I can&#8217;t call &#8220;useradd andy=
&#8221; because useradd is not included in my core-image-minimal build.&nbs=
p; This makes configuring sshd quite a bit harder.<o:p></o:p></p><p class=
=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Any ideas?&nbsp; Is =
there a way to add user accounts at build time or do I have to add the &#82=
20;useradd&#8221; package?<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</=
o:p></p><p class=3DMsoNormal>Once I understand some of these issues better =
I&#8217;m going to make a sweet video for beginners.&nbsp; There are really=
 a lot of pitfalls that I&#8217;ve hurdled and I wish I could share them wi=
th everyone. But, I&#8217;ve got to get my feet under me first.<o:p></o:p><=
/p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks fo=
r your time!<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal>~Andy Gikling<o:p></o:p></p><p class=3DMsoNormal>Electrical =
Engineer<o:p></o:p></p><p class=3DMsoNormal>LasX Industries Inc.<o:p></o:p>=
</p><p class=3DMsoNormal>agikling@lasx.com<o:p></o:p></p></div></body></htm=
l>=

--_000_23FC35CD1508674EBB20455EB700B1B4BCE85A464BEXMBX05mmepro_--
