Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A30CE007F1; Mon, 18 Aug 2014 01:26:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.91.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm8-vm0.bullet.mail.ne1.yahoo.com
	(nm8-vm0.bullet.mail.ne1.yahoo.com [98.138.91.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30EC8E007EE
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 01:26:10 -0700 (PDT)
Received: from [98.138.100.102] by nm8.bullet.mail.ne1.yahoo.com with NNFMP;
	18 Aug 2014 08:26:09 -0000
Received: from [98.138.89.253] by tm101.bullet.mail.ne1.yahoo.com with NNFMP;
	18 Aug 2014 08:26:09 -0000
Received: from [127.0.0.1] by omp1045.mail.ne1.yahoo.com with NNFMP;
	18 Aug 2014 08:26:09 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 209054.54576.bm@omp1045.mail.ne1.yahoo.com
Received: (qmail 25165 invoked by uid 60001); 18 Aug 2014 08:26:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1408350369; bh=JkSKFI57x0FqVUAxAUwfNyf7sVJ1SNWkNLbzzeh8aKI=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type;
	b=qhoq9AigRinGmkiN3iBtwbeai2vL+zqPgvElK1bt6NRG+l3WF+l0fWAl0BE6fHfglwQNtkkTvS/2i1DD33syG7Vtk1AWYY7ZnQQVh+Cp2Z1BC6on8j6VUyowhvdCyTRM/QJnPWolyMjQHJn17ndch7mzelZ43cLAoksNbvmuYMc=
X-YMail-OSG: cLUTB44VM1lFc28XHXn8lZR6Dq2o_CYUG99pQamrHGYV_jC
	eZcnc8.0XQPFLqXIT8Il_hDDoT4u7i4TzblQLM7lWk1LcYvP3VjNP2gu7sUg
	4qThJVgr6VJV4Chu3nFNMgKFa4nlKqOGFZ1rhHot2smT8K8rM1lg7SkZ5NpD
	dxTiaca_ylb06AHxf0JnFPUZ_GBLJD9hWFJkXaZTk1bTCpzBFOagQXPz4f0N
	CqZzVFSOgNbOArJJVROf0R1XfuKbcTF_gpsjdJZpgfOMawhpaxq1i3kW.iGK
	ub4KuUUL4qr1lMkvoIiLttjvEHXfq2E0z4EIv1kEoT0kVNipdp5oiq88ZXa3
	foSvXnidYsNB40nWqiR2BaZtJnnQIiuZvdMJyj7n_Lquw1hk3GKnvx7jBAYO
	ISOrA0ZCXD2C0wRJukJcx_twkk.mbLoKI7gZ56rYWmSkZ5.mJF4JalsSAlkk
	YrNxCqSACPqzNVkqvKBI_msP42Dex5uO5QmSILtElB.YoXiyBDQk3okzNyqS
	t46eOTPIXrCKgAv_75XV.OaiGnmdbeyiioRYi4jdBoYmgKevVeDh0ZrjvzG1
	M0SWVMsV3e70DByB_azWiKowjWQXtYtWGLqX49rMRAquJpFE9DQvRFX5UFWK
	jlkCfHF5NpfgY_o5K
Received: from [193.202.22.66] by web122505.mail.ne1.yahoo.com via HTTP;
	Mon, 18 Aug 2014 01:26:09 PDT
X-Rocket-MIMEInfo: 002.001,
	VGhhbmtzIEFybWluLAoKVGhpcyBwYWNrYWdlIHdpbGwgYmUgYSBuaWNlIGFkZGl0aW9uIHRvIG1ldGEtY2dsIGxheWVyLgoKCkFsZXgKCgoKT24gTW9uZGF5LCBBdWd1c3QgMTgsIDIwMTQgNTo0MyBBTSwgQXJtaW4gS3VzdGVyIDxha3VzdGVyODA4QGdtYWlsLmNvbT4gd3JvdGU6CiAKCgpJIGhhdmUgYmVlbiBzaXR0aW5nIG9uIHRoaXMgZmFyIHRvIGxvbmcuIFdhbnRlZCB0byBnZXQgaXQKb3V0IGJlZm9yZSBJIGNvbXBsZXRlbHkgc3BhY2Ugb24gaXQuIAoKQXJtaW4gS3VzdGVyICgzKToKwqAgc2FtaGFpbjoBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.201.700
References: <1408329739-14758-1-git-send-email-akuster808@gmail.com>
Message-ID: <1408350369.2042.YahooMailNeo@web122505.mail.ne1.yahoo.com>
Date: Mon, 18 Aug 2014 01:26:09 -0700
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Armin Kuster <akuster808@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <1408329739-14758-1-git-send-email-akuster808@gmail.com>
MIME-Version: 1.0
Subject: Re: [meta-security][PATCH 0/3] Samhain package
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
X-List-Received-Date: Mon, 18 Aug 2014 08:26:15 -0000
Content-Type: multipart/alternative;
	boundary="1438449284-1606509699-1408350369=:2042"

--1438449284-1606509699-1408350369=:2042
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Armin,=0A=0AThis package will be a nice addition to meta-cgl layer.=
=0A=0A=0AAlex=0A=0A=0A=0AOn Monday, August 18, 2014 5:43 AM, Armin Kuster <=
akuster808@gmail.com> wrote:=0A =0A=0A=0AI have been sitting on this far to=
 long. Wanted to get it=0Aout before I completely space on it. =0A=0AArmin =
Kuster (3):=0A=A0 samhain: New ISD package=0A=A0 samhain: client package=0A=
=A0 samhain: server package=0A=0A.../samhain/files/samhain-client.default=
=A0 =A0 =A0 =A0 =A0  |=A0  3 +=0Arecipes-security/samhain/files/samhain-cli=
ent.init | 122 +++++++++++++++++++++=0A.../samhain/files/samhain-server-vol=
atiles=A0 =A0 =A0 =A0  |=A0  1 +=0A.../samhain/files/samhain-server.default=
=A0 =A0 =A0 =A0 =A0  |=A0  3 +=0Arecipes-security/samhain/files/samhain-ser=
ver.init | 116 ++++++++++++++++++++=0Arecipes-security/samhain/samhain-clie=
nt_3.1.1.bb=A0  |=A0 21 ++++=0Arecipes-security/samhain/samhain-server_3.1.=
1.bb=A0  |=A0 50 +++++++++=0Arecipes-security/samhain/samhain.inc=A0 =A0 =
=A0 =A0 =A0 =A0 =A0  |=A0 82 ++++++++++++++=0A8 files changed, 398 insertio=
ns(+)=0Acreate mode 100644 recipes-security/samhain/files/samhain-client.de=
fault=0Acreate mode 100644 recipes-security/samhain/files/samhain-client.in=
it=0Acreate mode 100644 recipes-security/samhain/files/samhain-server-volat=
iles=0Acreate mode 100644 recipes-security/samhain/files/samhain-server.def=
ault=0Acreate mode 100644 recipes-security/samhain/files/samhain-server.ini=
t=0Acreate mode 100644 recipes-security/samhain/samhain-client_3.1.1.bb=0Ac=
reate mode 100644 recipes-security/samhain/samhain-server_3.1.1.bb=0Acreate=
 mode 100644 recipes-security/samhain/samhain.inc=0A=0A-- =0A1.9.1=0A=0A-- =
=0A_______________________________________________=0Ayocto mailing list=0Ay=
octo@yoctoproject.org=0Ahttps://lists.yoctoproject.org/listinfo/yocto

--1438449284-1606509699-1408350369=:2042
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div><span>Thanks Armin,</span></div><div style=3D"color: rgb=
(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helve=
tica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-st=
yle: normal;"><br><span></span></div><div style=3D"color: rgb(0, 0, 0); fon=
t-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Luc=
ida Grande,sans-serif; background-color: transparent; font-style: normal;">=
<span>This package will be a nice addition to meta-cgl layer.</span></div><=
div style=3D"color: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNe=
ue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-colo=
r: transparent; font-style: normal;"><br><span></span></div><div style=3D"c=
olor: rgb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica
 Neue,Helvetica,Arial,Lucida Grande,sans-serif; background-color: transpare=
nt; font-style: normal;"><br><span></span></div><div style=3D"color: rgb(0,=
 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetic=
a,Arial,Lucida Grande,sans-serif; background-color: transparent; font-style=
: normal;"><span>Alex<br></span></div> <div class=3D"qtdSeparateBR"><br><br=
></div><div style=3D"display: block;" class=3D"yahoo_quoted"> <div style=3D=
"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grand=
e, sans-serif; font-size: 12pt;"> <div style=3D"font-family: HelveticaNeue,=
 Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12=
pt;"> <div dir=3D"ltr"> <font face=3D"Arial" size=3D"2"> On Monday, August =
18, 2014 5:43 AM, Armin Kuster &lt;akuster808@gmail.com&gt; wrote:<br> </fo=
nt> </div>  <br><br> <div class=3D"y_msg_container">I have been sitting on =
this far to long. Wanted to get it<br>out before I completely space on it. =
<br><br>Armin
 Kuster (3):<br>&nbsp; samhain: New ISD package<br>&nbsp; samhain: client p=
ackage<br>&nbsp; samhain: server package<br><br> .../samhain/files/samhain-=
client.default&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  |&nbsp;  3 +<br> recipes-=
security/samhain/files/samhain-client.init | 122 +++++++++++++++++++++<br> =
.../samhain/files/samhain-server-volatiles&nbsp; &nbsp; &nbsp; &nbsp;  |&nb=
sp;  1 +<br> .../samhain/files/samhain-server.default&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;  |&nbsp;  3 +<br> recipes-security/samhain/files/samhain-serve=
r.init | 116 ++++++++++++++++++++<br> recipes-security/samhain/samhain-clie=
nt_3.1.1.bb&nbsp;  |&nbsp; 21 ++++<br> recipes-security/samhain/samhain-ser=
ver_3.1.1.bb&nbsp;  |&nbsp; 50 +++++++++<br> recipes-security/samhain/samha=
in.inc&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  |&nbsp; 82 ++++++++=
++++++<br> 8 files changed, 398 insertions(+)<br> create mode 100644 recipe=
s-security/samhain/files/samhain-client.default<br> create mode
 100644 recipes-security/samhain/files/samhain-client.init<br> create mode =
100644 recipes-security/samhain/files/samhain-server-volatiles<br> create m=
ode 100644 recipes-security/samhain/files/samhain-server.default<br> create=
 mode 100644 recipes-security/samhain/files/samhain-server.init<br> create =
mode 100644 recipes-security/samhain/samhain-client_3.1.1.bb<br> create mod=
e 100644 recipes-security/samhain/samhain-server_3.1.1.bb<br> create mode 1=
00644 recipes-security/samhain/samhain.inc<br><br>-- <br>1.9.1<br><br>-- <b=
r>_______________________________________________<br>yocto mailing list<br>=
<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproj=
ect.org">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctoprojec=
t.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br><br><br></div>  </div> </div>  </div> </div></body></html=
>

--1438449284-1606509699-1408350369=:2042--
