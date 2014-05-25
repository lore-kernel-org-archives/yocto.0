Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F19CE00B7C; Sun, 25 May 2014 13:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.72 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from nm10-vm0.bullet.mail.ne1.yahoo.com (unknown [98.138.91.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EFADE009D1
	for <yocto@yoctoproject.org>; Sun, 25 May 2014 13:51:18 -0700 (PDT)
Received: from [98.138.101.132] by nm10.bullet.mail.ne1.yahoo.com with NNFMP;
	25 May 2014 20:51:18 -0000
Received: from [98.138.101.165] by tm20.bullet.mail.ne1.yahoo.com with NNFMP;
	25 May 2014 20:51:18 -0000
Received: from [127.0.0.1] by omp1076.mail.ne1.yahoo.com with NNFMP;
	25 May 2014 20:51:18 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 19376.73232.bm@omp1076.mail.ne1.yahoo.com
Received: (qmail 66866 invoked by uid 60001); 25 May 2014 20:51:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1401051077; bh=YOltyRk8LZcKhjaJupgtA15IJAj8t84coc8WAPQ+Xcg=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=NJ30b+oWSO9h383h5fifPYNh4W061f2MB0cKMJYOklG37yIIyHklpJmWwTG26Lt8Gr0wrnYCbcMl11yUNaZKdNAt2slUHWYIRAW5QNQ1GFcUKwjDJRS5jHWFtH9xfppXLwYSHXahADysTSIZO1T0EMdpeVC3vH9QntAd6z1fbiQ=
X-YMail-OSG: xS83Ir4VM1lpqlNZ8YaU4oF8.sbHIYzFa268MshyzvkIUXX
	X7_M1frDK.4iNNUEruf99IE34fm2N4i2yhqJUs9TqrbC.iH1tTkiqceSldaS
	yGMM0QK7SnXW6tf4IAcQzagXbigjt_54.2KzBCyNttoIqkf0GRDKxAY7s5Uy
	5YrwP17yBja4DGM0KH.SsfawWIPQC7LOtqXVGHQ6cdIJ5__1plXZkO2gGF_D
	8xQF4Fj6etCiUPK0WsHvJS8XtzimVBbHj7HU8MpBaWEOSyYFspw9KI6sp30I
	DrmS7D5dPd76Y8p384miXWyLHhVRb9owZ74FEvcdnb35hiBuEAMP3iEqb8CF
	KqBn98dWhrp2s5D9zvOWyltdYW4dGgTi8X6rT05.o1W.pZW4p.sGJF.OEFM6
	o_UKNgp6Efzp_.GQy_mGO5_ViC7mTHuU4P1xQviQvdVprW9MEstWTKxF9q33
	ZZO5VguqWPsMGOXw4nP0trdvwP7NKX8EzKawKdd849FeQYWszFZqfiqLwvbi
	XOlJApv2C92RWt2FeOb3qz6UVQZO8jLgJMbjJ5ebF8wM0J58A9YeTOHqnt2a
	497fkkSnIzUkHezwL.SL0ygBuaMZEpiAKPvlvvQViiwgRsXFa24Z2MVvPSzF
	lwHKCXQqdZHU3nx2r65NVVg31XQMjn4.W.kkq7TUJI6dZge0b.EPHkLcGYWK
	Sgy.wdS1R_OKkkaD_9YTDfK.EQaDTwgXvCvtFLvNyBinf5slwzGwzfxP2L0r
	PiRo0x4_INbb.tzKbNTLFk0ybJ6iHxxM-
Received: from [141.85.0.106] by web122504.mail.ne1.yahoo.com via HTTP;
	Sun, 25 May 2014 13:51:17 PDT
X-Rocket-MIMEInfo: 002.001,
	SGVsbG8sCgpTb3JyeSBmb3IgbXkgbGF0ZSByZXNwb25zZSwgSSBwdXQgb24gcGF1c2UgdGhlIGludmVzdGlnYXRpb24gd2l0aCB0aGlzIGJ1Zy4KSG9wZSB0byByZXR1cm4gdG8gaXQgbmV4dCBtb250aCAob3IgYXQgbGVhc3QgYWZ0ZXIgMTMgSnVuZSkuClJpZ2h0IG5vdyBpbiBteSBoZWFkIHRoZXJlIGFyZSBtb3JlIHF1ZXN0aW9ucyB0aGVuIGFuc3dlcnMgcmVnYXJkaW5nCnRoaXMgYnVnLCBzbyBJIGNhbm5vdCByZWFsbHkgaGVscC5BIHF1aWNrIHN1Z2dlc3Rpb24gd291bGQgYmUgdG8gaW5zcGVjdCB0aGUBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>	<528B9049.7010704@mlbassoc.com>	<CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>	<CABwVrCrvXJvMspai9GVf0eJCXhEXZpyk2ibDwKiMPKxRFJzt7g@mail.gmail.com>
	<5381D5B3.1070509@dynamicdevices.co.uk>
Message-ID: <1401051077.12067.YahooMailNeo@web122504.mail.ne1.yahoo.com>
Date: Sun, 25 May 2014 13:51:17 -0700 (PDT)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>,
	jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
In-Reply-To: <5381D5B3.1070509@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi] Using the camera
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 25 May 2014 20:51:24 -0000
Content-Type: multipart/alternative;
	boundary="981719177-2031820785-1401051077=:12067"

--981719177-2031820785-1401051077=:12067
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,=0A=0ASorry for my late response, I put on pause the investigation wi=
th this bug.=0AHope to return to it next month (or at least after 13 June).=
=0ARight now in my head there are more questions then answers regarding=0At=
his bug, so I cannot really help.A quick suggestion would be to inspect the=
 config.txt for raspbian for example =0Aand investigate the differences. =
=0AAlso try GPU_MEM =3D "256" just to make a confirmation of my assumption =
that =0Asomething is missing.=0A=0A=0AThanks,=0AAlex=0A=0A=0A=0AOn Sunday, =
May 25, 2014 2:37 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk> wrote:=
=0A =0A=0A=0A=0AOn 03/12/2013 22:13, jan alexandru vaduva wrote:=0A> Hello =
guys, I am trying to enable the functionality for the camera.=0A> I am tryi=
ng to solve the following problem:=0A>=A0 =A0  mmal: mmal_vc_component_crea=
te: failed to create component=0A> 'vc.ril.camera'=0A>=A0 =A0  mmal: mmal_c=
omponent_create_core: could not create component=0A> 'vc.ril.camera'=0A>=A0=
 =A0  mmal: Failed to create camera component=0A> Updated to the latest fir=
mware, enabled the functionality into=0A> config.txt but the problem contin=
ues.=0A>=0A> The problem seems to be the rootfs constructions. The right li=
braries=0A> are there but the name of the component that the function needs=
 is not=0A> there. I assume it will take me some time to solve it, but when=
 the=0A> time permits I will try to wrap this thing up.=0A>=0A=0AHi Alex,=
=0A=0ADid manage to get to the bottom of this? I'm seeing the same thing wi=
th=0Araspivid / raspistill (although mjpg-streamer works fine).=0A=0Ammal: =
mmal_vc_component_create: failed to create component 'vc.ril.camera'=0A=0A-=
 My checkout of meta-raspberrypi is current on f3a8693f (Andrei=0AGherzan, =
May 8th) so I don't believe this is an out of date firmware=0Aissue (?)=0A=
=0A- I tried disabling the preview screen in case there was some kind of=0A=
video overlay issue=0A=0Ae.g. raspivid -n -w 640 -h 480 -fps 5=0A=0A- I'm n=
ot seeing ENOMEM as the error and my GPU_MEM =3D "128" which I've=0Achecked=
 translates into the correct setting in config.txt in the boot=0Apartition=
=0A=0A- I read that it could possibly be related to current consumption and=
=0Athe polyfuse, so I'm now powering from a bench PSU direct into the P1=0A=
header, and current limiting isn't the issue.=0A=0A- I've just put a downlo=
aded and put copy of Raspbian on there.=A0 Running=0Araspivid seems to work=
 fine (preview screen etc. etc.)=0A=0Ae.g. raspivid -w 640 -h 480 -fps 5=0A=
=0A- Looking at the raspivid source it seems a fairly straightforward setup=
=0Acall is failing early on, leading me to think something is missing as=0A=
you suggest?=0A=0Ahttps://github.com/raspberrypi/userland/blob/677f3cc646c8=
847822998c6409a748c900897076/host_applications/linux/apps/raspicam/RaspiVid=
.c=0A=0AThanks,=0A=0AAlex=0A=0A=0A-- =0A___________________________________=
____________=0Ayocto mailing list=0Ayocto@yoctoproject.org=0Ahttps://lists.=
yoctoproject.org/listinfo/yocto

--981719177-2031820785-1401051077=:12067
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div style=3D"" class=3D""><span style=3D"" class=3D"">Hello,=
</span></div><div class=3D"" style=3D"color: rgb(0, 0, 0); font-size: 16px;=
 font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sa=
ns-serif; background-color: transparent; font-style: normal;"><br style=3D"=
" class=3D""><span style=3D"" class=3D""></span></div><div class=3D"" style=
=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvet=
ica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transp=
arent; font-style: normal;"><span style=3D"" class=3D"">Sorry for my late r=
esponse, I put on pause the investigation with this bug.</span></div><div c=
lass=3D"" style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: Helve=
ticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; backgroun=
d-color: transparent;
 font-style: normal;"><span style=3D"" class=3D"">Hope to return to it next=
 month (or at least after 13 June).</span></div><div class=3D"" style=3D"co=
lor: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Ne=
ue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transparent;=
 font-style: normal;"><span style=3D"" class=3D"">Right now in my head ther=
e are more questions then answers regarding<br style=3D"" class=3D"">this b=
ug, so I cannot really help.</span></div>A quick suggestion would be to ins=
pect the config.txt for raspbian for example <br>and investigate the differ=
ences. <br style=3D"" class=3D"">Also try GPU_MEM =3D "256" just to make a =
confirmation of my assumption that <br>something is missing.<br><br><br>Tha=
nks,<br>Alex<br><div class=3D"qtdSeparateBR"><br><br></div><div style=3D"di=
splay: block;" class=3D"yahoo_quoted"> <div class=3D"" style=3D"font-family=
: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-seri=
f; font-size: 12pt;">
 <div class=3D"" style=3D"font-family: HelveticaNeue, Helvetica Neue, Helve=
tica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style=3D"" =
class=3D"" dir=3D"ltr"> <font style=3D"" class=3D"" face=3D"Arial" size=3D"=
2"> On Sunday, May 25, 2014 2:37 PM, Alex J Lennon &lt;ajlennon@dynamicdevi=
ces.co.uk&gt; wrote:<br style=3D"" class=3D""> </font> </div>  <br style=3D=
"" class=3D""><br style=3D"" class=3D""> <div style=3D"" class=3D""><br sty=
le=3D"" class=3D"">On 03/12/2013 22:13, jan alexandru vaduva wrote:<br styl=
e=3D"" class=3D"">&gt; Hello guys, I am trying to enable the functionality =
for the camera.<br style=3D"" class=3D"">&gt; I am trying to solve the foll=
owing problem:<br style=3D"" class=3D"">&gt;&nbsp; &nbsp;  mmal: mmal_vc_co=
mponent_create: failed to create component<br style=3D"" class=3D"">&gt; 'v=
c.ril.camera'<br style=3D"" class=3D"">&gt;&nbsp; &nbsp;  mmal: mmal_compon=
ent_create_core: could not create component<br style=3D"" class=3D"">&gt; '=
vc.ril.camera'<br style=3D"" class=3D"">&gt;&nbsp; &nbsp;=20
 mmal: Failed to create camera component<br style=3D"" class=3D"">&gt; Upda=
ted to the latest firmware, enabled the functionality into<br style=3D"" cl=
ass=3D"">&gt; config.txt but the problem continues.<br style=3D"" class=3D"=
">&gt;<br style=3D"" class=3D"">&gt; The problem seems to be the rootfs con=
structions. The right libraries<br style=3D"" class=3D"">&gt; are there but=
 the name of the component that the function needs is not<br style=3D"" cla=
ss=3D"">&gt; there. I assume it will take me some time to solve it, but whe=
n the<br style=3D"" class=3D"">&gt; time permits I will try to wrap this th=
ing up.<br style=3D"" class=3D"">&gt;<br style=3D"" class=3D""><br style=3D=
"" class=3D"">Hi Alex,<br style=3D"" class=3D""><br style=3D"" class=3D"">D=
id manage to get to the bottom of this? I'm seeing the same thing with<br s=
tyle=3D"" class=3D"">raspivid / raspistill (although mjpg-streamer works fi=
ne).<br style=3D"" class=3D""><br style=3D"" class=3D"">mmal: mmal_vc_compo=
nent_create: failed to create component
 'vc.ril.camera'<br style=3D"" class=3D""><br style=3D"" class=3D"">- My ch=
eckout of meta-raspberrypi is current on f3a8693f (Andrei<br style=3D"" cla=
ss=3D"">Gherzan, May 8th) so I don't believe this is an out of date firmwar=
e<br style=3D"" class=3D"">issue (?)<br style=3D"" class=3D""><br style=3D"=
" class=3D"">- I tried disabling the preview screen in case there was some =
kind of<br style=3D"" class=3D"">video overlay issue<br style=3D"" class=3D=
""><br style=3D"" class=3D"">e.g. raspivid -n -w 640 -h 480 -fps 5<br style=
=3D"" class=3D""><br style=3D"" class=3D"">- I'm not seeing ENOMEM as the e=
rror and my GPU_MEM =3D "128" which I've<br style=3D"" class=3D"">checked t=
ranslates into the correct setting in config.txt in the boot<br style=3D"" =
class=3D"">partition<br style=3D"" class=3D""><br style=3D"" class=3D"">- I=
 read that it could possibly be related to current consumption and<br style=
=3D"" class=3D"">the polyfuse, so I'm now powering from a bench PSU direct =
into the P1<br style=3D"" class=3D"">header, and current
 limiting isn't the issue.<br style=3D"" class=3D""><br style=3D"" class=3D=
"">- I've just put a downloaded and put copy of Raspbian on there.&nbsp; Ru=
nning<br style=3D"" class=3D"">raspivid seems to work fine (preview screen =
etc. etc.)<br style=3D"" class=3D""><br style=3D"" class=3D"">e.g. raspivid=
 -w 640 -h 480 -fps 5<br style=3D"" class=3D""><br style=3D"" class=3D"">- =
Looking at the raspivid source it seems a fairly straightforward setup<br s=
tyle=3D"" class=3D"">call is failing early on, leading me to think somethin=
g is missing as<br style=3D"" class=3D"">you suggest?<br style=3D"" class=
=3D""><br style=3D"" class=3D""><a style=3D"" class=3D"" href=3D"https://gi=
thub.com/raspberrypi/userland/blob/677f3cc646c8847822998c6409a748c900897076=
/host_applications/linux/apps/raspicam/RaspiVid.c" target=3D"_blank">https:=
//github.com/raspberrypi/userland/blob/677f3cc646c8847822998c6409a748c90089=
7076/host_applications/linux/apps/raspicam/RaspiVid.c</a><br style=3D"" cla=
ss=3D""><br style=3D"" class=3D"">Thanks,<br style=3D""
 class=3D""><br style=3D"" class=3D"">Alex<br style=3D"" class=3D""><br sty=
le=3D"" class=3D""><br style=3D"" class=3D"">-- <br style=3D"" class=3D"">_=
______________________________________________<br style=3D"" class=3D"">yoc=
to mailing list<br style=3D"" class=3D""><a style=3D"" class=3D"" ymailto=
=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org">y=
octo@yoctoproject.org</a><br style=3D"" class=3D""><a style=3D"" class=3D""=
 href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">h=
ttps://lists.yoctoproject.org/listinfo/yocto</a><br style=3D"" class=3D""><=
br style=3D"" class=3D""><br style=3D"" class=3D""></div>  </div> </div>  <=
/div> </div></body></html>

--981719177-2031820785-1401051077=:12067--
