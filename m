Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B12CE00B20; Mon,  2 Jun 2014 12:50:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
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
	*      [98.138.91.23 listed in list.dnswl.org]
Received: from nm8-vm0.bullet.mail.ne1.yahoo.com
	(nm8-vm0.bullet.mail.ne1.yahoo.com [98.138.91.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8CFEE00985
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 12:50:27 -0700 (PDT)
Received: from [98.138.100.103] by nm8.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Jun 2014 19:50:26 -0000
Received: from [98.138.89.167] by tm102.bullet.mail.ne1.yahoo.com with NNFMP;
	02 Jun 2014 19:50:26 -0000
Received: from [127.0.0.1] by omp1023.mail.ne1.yahoo.com with NNFMP;
	02 Jun 2014 19:50:26 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 116501.63388.bm@omp1023.mail.ne1.yahoo.com
Received: (qmail 19688 invoked by uid 60001); 2 Jun 2014 19:50:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1401738625; bh=o3HX0DZ+QXUfyo9cb8cPPbXkFt1wbK057EysLyWzgqc=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=UqEY4uUPMmrcedVz4Z/oB+VstJgmP9PDUVEFEdv8jU78J34dcEeb11DNSZg0whg1Mig/YMV1KASex7cJj2hfgv0GPg4vSVsT4rmfVhmNkoXVAwU554iozWY4XZYRA85bG6D2P4dssZEFCurcI+ctQ4AZuRT8qSstq6WJ+ZTEWQ0=
X-YMail-OSG: nvleSjEVM1mRpXEVvseZJIBzGcBBdkZoXg80rcNAMIqREWV
	UwS_8OLaR72CCahllw1.Wwab7Fj59wctCCvSmRNAI2ILMLXGFxJE1KnxLfUK
	3B8YzSug.20HF8ybVPBurShmTbyHAv6ht9s1oQk4j1mZvg0rWZXTNEQo0xET
	YappwnmEhuvuK976zTlLSfTKy_ycbMSruy9lGYCFzlavvWxW3ANelbrdtH92
	_6LnsWecVC7GXsztQIYouPRxF1ZdU16FsKP_uV_qmK_1DXnhUBwj6cr.XuIK
	9o087VJFxmhmNNpM8CVlTiO118uM1fXKRSeyVkCqcVV1SyhtqoLmikanAl2G
	SkD2IQaA8p9Yu8vgPoRD7uolpOZdClO2NeYM.fB58fc3ZnCf080yIjJrqJNI
	GRq.wwGRoxXPuki7Skt4l0KkZr8mIJDClE0NZ9ZOyACMDXn1P0TwWaIjqs1J
	N9YgcSCUU9bfypyf.knwhq9kZ4pBlmVkFWAc_lQF8NTFZomHdWQPNg7g7K6A
	v7aUl1T6vRmiSnj4JtPjz0L.xcio2sOMD1g3dJxNRYBkcIC5TzlwqXdf90Jv W5g--
Received: from [141.85.0.106] by web122502.mail.ne1.yahoo.com via HTTP;
	Mon, 02 Jun 2014 12:50:25 PDT
X-Rocket-MIMEInfo: 002.001,
	CkFkcmlhbiBkaWQgeW91IHJ1biBhIC1jIGNvbXBpbGUgYmVmb3JlIC1jIGRldnNoZWxsPwpJIGRvIG5vdCBiZWxpZXZlIHlvdSBzaG91bGQgaGF2ZSBhIGNyb3Nzc2RrIHdpdGggb25seSBjYWxsaW5nIC1jIGRldnNoZWxsIG9uIGEgcGFjaGFnZS9yZWNpcGUuCgpBbGV4CgoKCk9uIE1vbmRheSwgSnVuZSAyLCAyMDE0IDg6MjEgUE0sIEFkcmlhbiBEdWRhdSA8QWRyaWFuLkR1ZGF1QGVuZWEuY29tPiB3cm90ZToKIAoKCkhpLAoKU3RhcnRpbmcgZnJvbSBhIGZyZXNoIGJ1aWxkIGZvbGRlciwgSSBydW4gImJpdGIBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <1401720252.7631.19.camel@sestows129.enea.se>
Message-ID: <1401738625.64137.YahooMailNeo@web122502.mail.ne1.yahoo.com>
Date: Mon, 2 Jun 2014 12:50:25 -0700 (PDT)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Adrian Dudau <Adrian.Dudau@enea.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <1401720252.7631.19.camel@sestows129.enea.se>
MIME-Version: 1.0
Subject: Re: bitbake virtual/kernel -c devshell doesn't build the sdk
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
X-List-Received-Date: Mon, 02 Jun 2014 19:50:32 -0000
Content-Type: multipart/alternative;
	boundary="-1396834546-957002235-1401738625=:64137"

---1396834546-957002235-1401738625=:64137
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

=0AAdrian did you run a -c compile before -c devshell?=0AI do not believe y=
ou should have a crosssdk with only calling -c devshell on a pachage/recipe=
.=0A=0AAlex=0A=0A=0A=0AOn Monday, June 2, 2014 8:21 PM, Adrian Dudau <Adria=
n.Dudau@enea.com> wrote:=0A =0A=0A=0AHi,=0A=0AStarting from a fresh build f=
older, I run "bitbake -c devshell=0Avirtual/kernel" and expect to have the =
cross SDK sourced and be able to=0Abuild the kernel in the devshell. The is=
sue is that even though PATH is=0Apreppended correctly with the expected lo=
cation of the SDK (in my case=0Atmp/sysroots/x86_64-linux/usr/bin/ppce500v2=
-enea-linux-gnuspe), the=0Across SDK is not built.=A0 Am I wrong assuming t=
hat=A0 -c devshell=0Avirtual/kernel should depend on the crosssdk?=0A=0Abes=
t regards,=0A--Adrian=0A-- =0A_____________________________________________=
__=0Ayocto mailing list=0Ayocto@yoctoproject.org=0Ahttps://lists.yoctoproje=
ct.org/listinfo/yocto

---1396834546-957002235-1401738625=:64137
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div><span><br>Adrian did you run a -c compile before -c devs=
hell?</span></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-=
family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-ser=
if; background-color: transparent; font-style: normal;"><span>I do not beli=
eve you should have a crosssdk with only calling -c devshell on a pachage/r=
ecipe.</span></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font=
-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-se=
rif; background-color: transparent; font-style: normal;"><br><span></span><=
/div><div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: Helve=
ticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; backgroun=
d-color: transparent; font-style: normal;"><span>Alex<br></span></div> <div
 class=3D"qtdSeparateBR"><br><br></div><div style=3D"display: block;" class=
=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue=
, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div styl=
e=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida G=
rande, sans-serif; font-size: 12pt;"> <div dir=3D"ltr"> <font face=3D"Arial=
" size=3D"2"> On Monday, June 2, 2014 8:21 PM, Adrian Dudau &lt;Adrian.Duda=
u@enea.com&gt; wrote:<br> </font> </div>  <br><br> <div class=3D"y_msg_cont=
ainer">Hi,<br><br>Starting from a fresh build folder, I run "bitbake -c dev=
shell<br>virtual/kernel" and expect to have the cross SDK sourced and be ab=
le to<br>build the kernel in the devshell. The issue is that even though PA=
TH is<br>preppended correctly with the expected location of the SDK (in my =
case<br>tmp/sysroots/x86_64-linux/usr/bin/ppce500v2-enea-linux-gnuspe), the=
<br>cross SDK is not built.&nbsp; Am I wrong assuming that&nbsp; -c
 devshell<br>virtual/kernel should depend on the crosssdk?<br><br>best rega=
rds,<br>--Adrian<br>-- <br>_______________________________________________<=
br>yocto mailing list<br><a ymailto=3D"mailto:yocto@yoctoproject.org" href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br><a href=3D=
"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://l=
ists.yoctoproject.org/listinfo/yocto</a><br><br><br></div>  </div> </div>  =
</div> </div></body></html>

---1396834546-957002235-1401738625=:64137--
