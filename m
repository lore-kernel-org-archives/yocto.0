Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC97E00770; Tue, 13 May 2014 07:18:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.241 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 127 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 May 2014 07:18:47 PDT
Received: from nm19-vm5.bullet.mail.ne1.yahoo.com (unknown [98.138.91.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A2C7E003C7
	for <yocto@yoctoproject.org>; Tue, 13 May 2014 07:18:47 -0700 (PDT)
Received: from [98.138.100.102] by nm19.bullet.mail.ne1.yahoo.com with NNFMP;
	13 May 2014 14:16:39 -0000
Received: from [98.138.89.248] by tm101.bullet.mail.ne1.yahoo.com with NNFMP;
	13 May 2014 14:16:39 -0000
Received: from [127.0.0.1] by omp1040.mail.ne1.yahoo.com with NNFMP;
	13 May 2014 14:16:39 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 599167.76682.bm@omp1040.mail.ne1.yahoo.com
Received: (qmail 62719 invoked by uid 60001); 13 May 2014 14:16:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1399990599; bh=3p6qZkagN+pBvLYAQ4WFmDlG4KK3NTZYcOzIj76hkRQ=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=bceN9ah2Z+lN2YKIT2RshbgWT9jmritM7aqM+5KKzrAEYrC7c7+dJ4nONn5pocSql3jcD8l/6UZuObSYMq3yKVpYM1cfflL5BcZXtEkG/E8mk06HBDTNk61XSHRcookJ/Flrhp+jCRkNPU7qUOnikFSXTpO4u9cj76kJ3dwoSFA=
X-YMail-OSG: 8HoO4a4VM1mOj0aoOemgscYEP54M8he25OpYhPerCMNAeo6
	6sc12cb96CxFLhc3AcKBlaDU35ehjA8Rhm0attzoQlGs1Jw2JKJrPimMQuXO
	VtBFFahGJon9GJ9MSnfkoxiY0YhufAHQalxGJIZVY_TWKc23aYyhYao8CKms
	0246nRmDIfGiNk8k2EWFcH8O.xwyg_JEoXOATnxCjky1s_cIoCNS7kFqnxww
	KULOus.YADEz9un3wUsgIJVJ3v_IHut2qRNBq5_NR3SG8MnWnMijUarYIEIn
	SSouzA9BYs9B1xtnSrQVuxv9_19_TKs.zhPmEhDwdfUmYLU194vc2BOSDx0z
	Q17Gdac2bYXY__UEYQvEwDYQlKBUAer0WZDdVHCriJsH1LSrh3V1sjYfND_3
	FXElhS7ynREIGXem7nbaJ0XJ8kJHXOBmux_lCYTtXUUqqc71yDbip6pF3Rc3
	8TnKQvh18CYvgF3DBUo0.nsQS.RX.RNQtVttMmKFKzpibqABysfoKEA3T3gh
	Lzwd7z3KsGPo5ZxyGf.3PR.HhsNLYW72k9SjY7Yw2L4Z4MHU0R1utLkaMTg2
	cQxBmubZdVJSgcvdem.RrHhr2NJuNjezPbr61aPXVQZrXFgAKhIZFwt2zH1f
	JutDdzTbgkWf6tQQMlszWZYXRnBbT0yq8yssRYmPDXgwKTDuEpdsmZs_v5.w
	28zDoQiDumRwMCHn.dLdO58xcvXgHWc_3Ii92BZB45M41zEJkaWv_FghERRv
	6YVhD2Pwu.b7WSnvJ.WtHvI6mjVU0XfJrue8MkaVe9ULKNeT7C60nL0TXdYd
	MLqVWtbhUxaB.FnKcnJE031NPZj4KmPbYtnlTwOwYjIEtHSCEdXYgt4yGLbb
	XF4jyUeyjcbxOK_bGC_LVi6OpcnBMoobuvERCD8x37Tcf72fNxSrxF10xzDK
	OzkZOzKcFzQ5t8OtYPQF03tVVGc1wZFjP.NT8LJCRyGbOVUi9Lv3P6xZflDG
	8yTjVpZ.X6Jx_s8TnRLAcMWFOQIvit6F7epedtXFxmNUKXdknqyY4UxNu7mA
	5UpLFxPQP6NOJejks0UaE1W5QuCjN_yXV2TKJgLtNnNOdjfEMcYeIenb6HR_
	Ie8zN5dSzO_o_sbORcyqghnlzDI0g16kJb_ezZftpVVuQmuoZX_csdHKWQMN
	VzmV8PLA3oZbfjTGPGnLebbBgFTA.NPwtEm.UEu2xxKtypw--
Received: from [141.85.225.214] by web122501.mail.ne1.yahoo.com via HTTP;
	Tue, 13 May 2014 07:16:39 PDT
X-Rocket-MIMEInfo: 002.001,
	SXMgdGhpcyBpbmZvcm1hdGlvbiBoZWxwZnVsIGZvciB5b3U6Cmh0dHA6Ly93d3cubWFsaW5vdi5jb20vSG9tZS9zZXJnZXktcy1ibG9nL2ludGVsZ2FsaWxlby1idWlsZGluZ2xpbnV4aW1hZ2UKaHR0cDovL3d3dy5tb3VzZXIuY29tL3BkZmRvY3MvUXVhcmtfQlNQQnVpbGRHdWlkZV8zMjk2ODdfMDAxLlBERgoKCkFsZXgKCgpJcyB0aGlzIGluIApPbiBUdWVzZGF5LCBNYXkgMTMsIDIwMTQgNTowMSBQTSwgUm9iZXJ0IFAuIEouIERheSA8cnBqZGF5QGNyYXNoY291cnNlLmNhPiB3cm90ZToKIApPbiBUdWUsIDIBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <alpine.LFD.2.11.1404291231440.3997@localhost>	<535FD6BF.4040004@dynamicdevices.co.uk>
	<alpine.LFD.2.11.1405130954351.7299@localhost>
Message-ID: <1399990599.5166.YahooMailNeo@web122501.mail.ne1.yahoo.com>
Date: Tue, 13 May 2014 07:16:39 -0700 (PDT)
From: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <alpine.LFD.2.11.1405130954351.7299@localhost>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: can one lay hands on a galileo-based dev kit?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Vaduva alexandru <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 13 May 2014 14:18:49 -0000
Content-Type: multipart/alternative;
	boundary="-1149815241-807786411-1399990599=:5166"

---1149815241-807786411-1399990599=:5166
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Is this information helpful for you:=0Ahttp://www.malinov.com/Home/sergey-s=
-blog/intelgalileo-buildinglinuximage=0Ahttp://www.mouser.com/pdfdocs/Quark=
_BSPBuildGuide_329687_001.PDF=0A=0A=0AAlex=0A=0A=0AIs this in =0AOn Tuesday=
, May 13, 2014 5:01 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:=0A =
=0AOn Tue, 29 Apr 2014, Alex J Lennon wrote:=0A=0A>=0A> On 29/04/2014 17:34=
, Robert P. J. Day wrote:=0A> >=A0  i've just been asked to design a linux =
device drivers course based=0A> > on the arduino-compatible intel galileo p=
rocessor, so my first TODO=0A> > item is to lay hands on a galileo-based de=
v kit, for which this looks=0A> > like the obvious choice:=0A> >=0A> > http=
s://software.intel.com/en-us/iotdevkit=0A> >=0A> > but that page says "upco=
ming". does it exist? my normal go-to source=0A> > up here, digikey.ca, sho=
ws zero in stock. where can i lay hands on=0A> > one (if possible)? thanks.=
=0A>=0A> If it helps I had a Galileo Dev Kit delivered from RS (UK) a coupl=
e of=0A> days ago.=0A>=0A> http://uk.rs-online.com/web/p/processor-microcon=
troller-development-kits/7919611/=0A>=0A> (I'm actually a bit confused abou=
t how the Galileo IoT collection of=0A> meta-foo layers relates to the prim=
ary meta-foo=0A>=A0 sources, as I can't seem to find an independent meta-cl=
anton ;ayer=0A> which I guess I'd need. Early days yet, but am planning=0A>=
=A0 on working through this as soon as I get some time as I want to test a=
=0A> build with meta-moo support on Galileo)=0A=0A=A0 i finally have time t=
o play with this, and am interested in using=0Ayocto to build a bootable sy=
stem for the galileo. i see that there is=0Aa version "1.0.0" of the firmwa=
re for this board -- is there a=0Aconvenient yocto recipe that involves jus=
t downloading the layer info=0Aand not what looks like the current entire t=
arball that's stuffed with=0Aall the sources?=0A=0A=A0 i suspect that, with=
in a day or two, i'll figure that out once i=0Astart digging around. if it'=
s already documented somewhere, that would=0Abe even better. :-)=0A=0Arday=
=0A=0A-- =0A=0A=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=0ARobert P. J. Day=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0  Ottawa, Ontario, CANADA=0A=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 http://crashcourse.ca=0A=0ATwitter:=A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 http://twitter.com/rpjd=
ay=0ALinkedIn:=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 h=
ttp://ca.linkedin.com/in/rpjday=0A=0A=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=0A-- =0A____________________________________=
___________=0Ayocto mailing list=0Ayocto@yoctoproject.org=0Ahttps://lists.y=
octoproject.org/listinfo/yocto

---1149815241-807786411-1399990599=:5166
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div style=3D"" class=3D""><span style=3D"" class=3D"">Is thi=
s information helpful for you:</span></div><div class=3D"" style=3D"color: =
rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,He=
lvetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font=
-style: normal"><span style=3D"" class=3D""><a style=3D"" class=3D"" href=
=3D"http://www.malinov.com/Home/sergey-s-blog/intelgalileo-buildinglinuxima=
ge">http://www.malinov.com/Home/sergey-s-blog/intelgalileo-buildinglinuxima=
ge</a></span></div><div class=3D"" style=3D"color: rgb(0, 0, 0); font-size:=
 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Gra=
nde,sans-serif; background-color: transparent; font-style: normal"><span st=
yle=3D"" class=3D""><a style=3D"" class=3D""
 href=3D"http://www.mouser.com/pdfdocs/Quark_BSPBuildGuide_329687_001.PDF">=
http://www.mouser.com/pdfdocs/Quark_BSPBuildGuide_329687_001.PDF</a></span>=
</div><div class=3D"" style=3D"color: rgb(0, 0, 0); font-size: 16px; font-f=
amily: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-seri=
f; background-color: transparent; font-style: normal"><span style=3D"" clas=
s=3D""><br></span></div><div class=3D"" style=3D"color: rgb(0, 0, 0); font-=
size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucid=
a Grande,sans-serif; background-color: transparent; font-style: normal"><sp=
an style=3D"" class=3D""><br></span></div><div class=3D"" style=3D"color: r=
gb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Hel=
vetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-=
style: normal"><span style=3D"" class=3D"">Alex<br style=3D"" class=3D""><b=
r style=3D"" class=3D""></span></div><div style=3D"display: block;" class=
=3D"yahoo_quoted">Is this in <div
 class=3D"" style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica,=
 Arial, Lucida Grande, sans-serif; font-size: 12pt"> <div class=3D"" style=
=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Gr=
ande, sans-serif; font-size: 12pt"> <div style=3D"" class=3D"" dir=3D"ltr">=
 <font style=3D"" class=3D"" face=3D"Arial" size=3D"2"> On Tuesday, May 13,=
 2014 5:01 PM, Robert P. J. Day &lt;rpjday@crashcourse.ca&gt; wrote:<br sty=
le=3D"" class=3D""> </font> </div>  <div style=3D"" class=3D"">On Tue, 29 A=
pr 2014, Alex J Lennon wrote:<br style=3D"" class=3D"" clear=3D"none"><br s=
tyle=3D"" class=3D"" clear=3D"none">&gt;<br style=3D"" class=3D"" clear=3D"=
none">&gt; On 29/04/2014 17:34, Robert P. J. Day wrote:<br style=3D"" class=
=3D"" clear=3D"none">&gt; &gt;&nbsp;  i've just been asked to design a linu=
x device drivers course based<br style=3D"" class=3D"" clear=3D"none">&gt; =
&gt; on the arduino-compatible intel galileo processor, so my first TODO<br=
 style=3D"" class=3D"" clear=3D"none">&gt; &gt; item is to
 lay hands on a galileo-based dev kit, for which this looks<br style=3D"" c=
lass=3D"" clear=3D"none">&gt; &gt; like the obvious choice:<br style=3D"" c=
lass=3D"" clear=3D"none">&gt; &gt;<br style=3D"" class=3D"" clear=3D"none">=
&gt; &gt; <a style=3D"" class=3D"" shape=3D"rect" href=3D"https://software.=
intel.com/en-us/iotdevkit" target=3D"_blank">https://software.intel.com/en-=
us/iotdevkit</a><br style=3D"" class=3D"" clear=3D"none">&gt; &gt;<br style=
=3D"" class=3D"" clear=3D"none">&gt; &gt; but that page says "upcoming". do=
es it exist? my normal go-to source<br style=3D"" class=3D"" clear=3D"none"=
>&gt; &gt; up here, digikey.ca, shows zero in stock. where can i lay hands =
on<br style=3D"" class=3D"" clear=3D"none">&gt; &gt; one (if possible)? tha=
nks.<br style=3D"" class=3D"" clear=3D"none">&gt;<br style=3D"" class=3D"" =
clear=3D"none">&gt; If it helps I had a Galileo Dev Kit delivered from RS (=
UK) a couple of<br style=3D"" class=3D"" clear=3D"none">&gt; days ago.<br s=
tyle=3D"" class=3D"" clear=3D"none">&gt;<br style=3D"" class=3D""
 clear=3D"none">&gt; <a style=3D"" class=3D"" shape=3D"rect" href=3D"http:/=
/uk.rs-online.com/web/p/processor-microcontroller-development-kits/7919611/=
" target=3D"_blank">http://uk.rs-online.com/web/p/processor-microcontroller=
-development-kits/7919611/</a><br style=3D"" class=3D"" clear=3D"none">&gt;=
<br style=3D"" class=3D"" clear=3D"none">&gt; (I'm actually a bit confused =
about how the Galileo IoT collection of<br style=3D"" class=3D"" clear=3D"n=
one">&gt; meta-foo layers relates to the primary meta-foo<br style=3D"" cla=
ss=3D"" clear=3D"none">&gt;&nbsp; sources, as I can't seem to find an indep=
endent meta-clanton ;ayer<br style=3D"" class=3D"" clear=3D"none">&gt; whic=
h I guess I'd need. Early days yet, but am planning<br style=3D"" class=3D"=
" clear=3D"none">&gt;&nbsp; on working through this as soon as I get some t=
ime as I want to test a<br style=3D"" class=3D"" clear=3D"none">&gt; build =
with meta-moo support on Galileo)<br style=3D"" class=3D"" clear=3D"none"><=
br style=3D"" class=3D"" clear=3D"none">&nbsp; i finally
 have time to play with this, and am interested in using<br style=3D"" clas=
s=3D"" clear=3D"none">yocto to build a bootable system for the galileo. i s=
ee that there is<br style=3D"" class=3D"" clear=3D"none">a version "1.0.0" =
of the firmware for this board -- is there a<br style=3D"" class=3D"" clear=
=3D"none">convenient yocto recipe that involves just downloading the layer =
info<br style=3D"" class=3D"" clear=3D"none">and not what looks like the cu=
rrent entire tarball that's stuffed with<br style=3D"" class=3D"" clear=3D"=
none">all the sources?<br style=3D"" class=3D"" clear=3D"none"><br style=3D=
"" class=3D"" clear=3D"none">&nbsp; i suspect that, within a day or two, i'=
ll figure that out once i<br style=3D"" class=3D"" clear=3D"none">start dig=
ging around. if it's already documented somewhere, that would<br style=3D""=
 class=3D"" clear=3D"none">be even better. :-)<br style=3D"" class=3D"" cle=
ar=3D"none"><br style=3D"" class=3D"" clear=3D"none">rday<br style=3D"" cla=
ss=3D"" clear=3D"none"><br style=3D"" class=3D"" clear=3D"none">-- <br
 style=3D"" class=3D"" clear=3D"none"><br style=3D"" class=3D"" clear=3D"no=
ne">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
 style=3D"" class=3D"" clear=3D"none">Robert P. J. Day&nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;  Ottawa, Ontario, CANADA<br style=3D"" class=3D"" clear=3D"=
none">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; <a style=3D"" class=3D"" shape=3D"rect" href=3D"http://crash=
course.ca/" target=3D"_blank">http://crashcourse.ca</a><br style=3D"" class=
=3D"" clear=3D"none"><br style=3D"" class=3D"" clear=3D"none">Twitter:&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <a style=3D"" class=
=3D"" shape=3D"rect" href=3D"http://twitter.com/rpjday" target=3D"_blank">h=
ttp://twitter.com/rpjday</a><br style=3D"" class=3D"" clear=3D"none">Linked=
In:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <a style=3D"" cla=
ss=3D"" shape=3D"rect" href=3D"http://ca.linkedin.com/in/rpjday" target=3D"=
_blank">http://ca.linkedin.com/in/rpjday</a><div style=3D"" class=3D"" id=
=3D"yqtfd91089"><br style=3D"" class=3D"" clear=3D"none">=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br style=3D"" class=3D"" c=
lear=3D"none">-- <br style=3D"" class=3D"" clear=3D"none">_________________=
______________________________<br style=3D"" class=3D"" clear=3D"none">yoct=
o mailing list<br style=3D"" class=3D"" clear=3D"none"><a style=3D"" class=
=3D"" shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mail=
to:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br style=3D"" class=
=3D"" clear=3D"none"><a style=3D"" class=3D"" shape=3D"rect" href=3D"https:=
//lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yo=
ctoproject.org/listinfo/yocto</a><br style=3D"" class=3D"" clear=3D"none"><=
/div><br style=3D"" class=3D""><br style=3D"" class=3D""></div>  </div> </d=
iv>
  </div> </div></body></html>

---1149815241-807786411-1399990599=:5166--
