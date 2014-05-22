Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93492E00B68; Thu, 22 May 2014 12:06:14 -0700 (PDT)
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
	*      [98.138.90.65 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from nm2.bullet.mail.ne1.yahoo.com (unknown [98.138.90.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6E47E00975
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 12:06:10 -0700 (PDT)
Received: from [98.138.226.178] by nm2.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 19:06:10 -0000
Received: from [98.138.87.11] by tm13.bullet.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 19:06:10 -0000
Received: from [127.0.0.1] by omp1011.mail.ne1.yahoo.com with NNFMP;
	22 May 2014 19:06:10 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 496379.52964.bm@omp1011.mail.ne1.yahoo.com
Received: (qmail 32949 invoked by uid 60001); 22 May 2014 19:06:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1400785570; bh=6oTKK/SmmiH2Sf5f4F00AgX4tCOiNhYI7q0UYSZnUHg=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type;
	b=MnH+ig+TpZ9bBE8evicKaqh0r9aCToAiTw5c2OLneXlRIjMG/YP2IJwRa8mOZVg8VgKnYFyvkr/FqPKSsGO5wyHMDEur2HUEF08LJrYuZXvvYtf3P43pils7Sg7tGjHWAAd2eQRo+u8n9DSU7K8EP+VIZzP8KEhYJth0/lJjF/4=
X-YMail-OSG: Oilr6tUVM1n6M_WxmDBbACZFnB0qXLbwmq5zD_h8TZQD2pl
	meCPBpTTvyWDZdu5oVZrY2sfmKGtTTMizH6wljpCHdG_9tP1YcjaVYFWGaeI
	BDemd8.iXH5TcxBbBCXdcbkLDIcDhH0AA0yv3Uf_UlDtASSIUCOdLQ4stbii
	Qx6WNbqyhmlXrUrmFnDi_WAmuvFVIQejqhcna3fBteGrGwsScgEQMetM8cc0
	OK6TvwKuvuPED2NdLUP9Lby0_JWIQnsvHeqlhqA3f.QiGXh7kmEppYyDd3JG
	Ma54RBX.4NTGi_khfY6PGTF.295AegJBlRXMgyr276Frv0zslw0JIVAzQgNQ
	bESYN2VnnK6O_3fxplFJ.smWdyWfaeggiQuapmcB..CCv7OuxJE2j_rKb2Sp
	d3tIxhEOCzJ7szWV2bZAv1iTjhSywzXDWHMjtWOmNYNVgfWuXLVJst.QgMni
	26mVHYY3gpOJLquGODVm2FjKcQiWx0PVv0o7ZyE12vVG7dL9b1RL1fM8.k41
	Uy1IJLaLce7nRMBlF_4qk2BJER81.5Ir93w9OjxQor75XSi5p64Hn8umZKWe
	wzc3RXQkCQbIjT7sv_p.FfOxk31LmTgzL8CiJuzRkyI5iShXdzaCHtN3Yf_L
	oLN0oJO0-
Received: from [141.85.0.106] by web122503.mail.ne1.yahoo.com via HTTP;
	Thu, 22 May 2014 12:06:10 PDT
X-Rocket-MIMEInfo: 002.001,
	VGhhbmtzIFJvc3MsIG9idmlvdXNseSBJIGhhZCB0aGUgcHJvYmxlbSByaWdodCBpbiBmcm9udCBvZiBtZSBidXQgSSBkaWQgbm90IHVuZGVyc3Rvb2QgaXQuCkNvdWxkIHlvdSBwbGVhc2UgZXhwbGFpbiBpdCB0byBtZS4gSSBkbyBub3QgcXVpdGUgZ2V0IHRoZSBwZXJsLW1vZHVsZXMgbm90aW9uLgoKVGhhbmtzIG9uY2UgYWdhaW4sCkFsZXgKCgpUaGFua3MgSGVsbG8gCk9uIFRodXJzZGF5LCBNYXkgMjIsIDIwMTQgNTozMCBQTSwgIkJ1cnRvbiwgUm9zcyIgPHJvc3MuYnVydG9uQGludGVsLmNvbT4gd3JvdGUBMAEBAQE-
X-Mailer: YahooMailWebService/0.8.188.663
References: <1400754665.64074.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<9159150.KsUY2KZbMf@peggleto-mobl5.ger.corp.intel.com>
	<1400763602.12423.YahooMailNeo@web122506.mail.ne1.yahoo.com>
	<1965694.z39UhZdkqB@peggleto-mobl5.ger.corp.intel.com>
	<1400765098.42556.YahooMailNeo@web122502.mail.ne1.yahoo.com>
	<CAJTo0LZE+y95EY+TJZs177+xHFxjBsvx18vVvdTN8wa4p7z9Ag@mail.gmail.com>
	<CAJTo0LYrz1Ass=832DVbALYfGx0Wz7u0rGMRxxd20VYFk9cPBQ@mail.gmail.com>
Message-ID: <1400785570.7332.YahooMailNeo@web122503.mail.ne1.yahoo.com>
Date: Thu, 22 May 2014 12:06:10 -0700 (PDT)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LYrz1Ass=832DVbALYfGx0Wz7u0rGMRxxd20VYFk9cPBQ@mail.gmail.com>
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: help needed
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
X-List-Received-Date: Thu, 22 May 2014 19:06:14 -0000
Content-Type: multipart/alternative;
	boundary="592913864-786663547-1400785570=:7332"

--592913864-786663547-1400785570=:7332
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Ross, obviously I had the problem right in front of me but I did not=
 understood it.=0ACould you please explain it to me. I do not quite get the=
 perl-modules notion.=0A=0AThanks once again,=0AAlex=0A=0A=0AThanks Hello =
=0AOn Thursday, May 22, 2014 5:30 PM, "Burton, Ross" <ross.burton@intel.com=
> wrote:=0A =0A=0A=0AFYI, I've just sent my fix to the oe-core mailing list=
.=0A=0ARoss=0A=0A=0AOn 22 May 2014 15:05, Burton, Ross <ross.burton@intel.c=
om> wrote:=0A> On 22 May 2014 14:24, Alexandru Vaduva <vaduvajanalexandru@y=
ahoo.com> wrote:=0A>> I attached the depends .dot file and also a small per=
l-ptest.info file with=0A>> only the perl-ptest occurences.=0A>=0A> Right, =
so the dependency comes from perl-modules.=A0 This is a meta=0A> package th=
at depends on all the modules, and clearly perl-ptest=0A> shouldn't be in t=
hat list.=0A>=0A> (I've almost got a fix sorted)=0A>=0A> Ross

--592913864-786663547-1400785570=:7332
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div><span>Thanks Ross, obviously I had the problem right in =
front of me but I did not understood it.</span></div><div style=3D"color: r=
gb(0, 0, 0); font-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Hel=
vetica,Arial,Lucida Grande,sans-serif; background-color: transparent; font-=
style: normal;"><span>Could you please explain it to me. I do not quite get=
 the perl-modules notion.</span></div><div style=3D"color: rgb(0, 0, 0); fo=
nt-size: 16px; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lu=
cida Grande,sans-serif; background-color: transparent; font-style: normal;"=
><br><span></span></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px;=
 font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,sa=
ns-serif; background-color: transparent; font-style: normal;"><span>Thanks
 once again,</span></div><div style=3D"color: rgb(0, 0, 0); font-size: 16px=
; font-family: HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,s=
ans-serif; background-color: transparent; font-style: normal;"><span>Alex<b=
r><br></span></div><div style=3D"display: block;" class=3D"yahoo_quoted">Th=
anks Hello <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvet=
ica, Arial, Lucida Grande, sans-serif; font-size: 12pt;"> <div style=3D"fon=
t-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, s=
ans-serif; font-size: 12pt;"> <div dir=3D"ltr"> <font face=3D"Arial" size=
=3D"2"> On Thursday, May 22, 2014 5:30 PM, "Burton, Ross" &lt;ross.burton@i=
ntel.com&gt; wrote:<br> </font> </div>  <br><br> <div class=3D"y_msg_contai=
ner">FYI, I've just sent my fix to the oe-core mailing list.<br clear=3D"no=
ne"><br clear=3D"none">Ross<br clear=3D"none"><div class=3D"yqt2797577193" =
id=3D"yqtfd30858"><br clear=3D"none">On 22 May 2014 15:05, Burton, Ross &lt=
;<a shape=3D"rect"
 ymailto=3D"mailto:ross.burton@intel.com" href=3D"mailto:ross.burton@intel.=
com">ross.burton@intel.com</a>&gt; wrote:<br clear=3D"none">&gt; On 22 May =
2014 14:24, Alexandru Vaduva &lt;<a shape=3D"rect" ymailto=3D"mailto:vaduva=
janalexandru@yahoo.com" href=3D"mailto:vaduvajanalexandru@yahoo.com">vaduva=
janalexandru@yahoo.com</a>&gt; wrote:<br clear=3D"none">&gt;&gt; I attached=
 the depends .dot file and also a small perl-ptest.info file with<br clear=
=3D"none">&gt;&gt; only the perl-ptest occurences.<br clear=3D"none">&gt;<b=
r clear=3D"none">&gt; Right, so the dependency comes from perl-modules.&nbs=
p; This is a meta<br clear=3D"none">&gt; package that depends on all the mo=
dules, and clearly perl-ptest<br clear=3D"none">&gt; shouldn't be in that l=
ist.<br clear=3D"none">&gt;<br clear=3D"none">&gt; (I've almost got a fix s=
orted)<br clear=3D"none">&gt;<br clear=3D"none">&gt; Ross<br clear=3D"none"=
></div><br><br></div>  </div> </div>  </div> </div></body></html>

--592913864-786663547-1400785570=:7332--
