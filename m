Return-Path: <just_abhi22@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4D93E009AE; Thu,  4 Jun 2015 13:11:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (just_abhi22[at]yahoo.co.in)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.136.218.210 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit
	*      (abhishek srivastava <just_abhi22[at]yahoo.co.in> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm7-vm3.bullet.mail.gq1.yahoo.com
	(nm7-vm3.bullet.mail.gq1.yahoo.com [98.136.218.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CA9FE00985
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 13:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1433448712; bh=UDlVrBpwH6k0rVhgTRfbTwh3UTxFG/Z5fAKlj+TXZNU=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=Py2hSguOKd1c32bhYBmXbcjPtjuCx8R0/8MWiNGsm0/l4HMyvkzGiB8kZsg8lY7nPdvpitTV2mJZSGASMaHIL2Z1htZl4YRs9rFdVvzbfQuFYln5OTAXfm2otLOuYzq5uMRloZBSU8yzPZmZJjUGe7E2JJ0nUpgyVtC4c6TdTRHlPknSD657ZlYfTHKZs26jCUajAy67uFeN53IaTVMKvAZuQzYXURou90IFB0FDNzQA/2Q+ScaQZIBC6xtioBLHClHabbrF9k2eCQnmgEWPM9n12QCGL5P6oK/d5378vcWyjV+gIuvnPm+xYzMaYnc5yTdFWT4ab8lXMtyM2Lxehw==
Received: from [98.137.12.56] by nm7.bullet.mail.gq1.yahoo.com with NNFMP;
	04 Jun 2015 20:11:52 -0000
Received: from [106.10.166.125] by tm1.bullet.mail.gq1.yahoo.com with NNFMP;
	04 Jun 2015 20:11:52 -0000
Received: from [106.10.151.123] by tm14.bullet.mail.sg3.yahoo.com with NNFMP;
	04 Jun 2015 20:11:52 -0000
Received: from [127.0.0.1] by omp1005.mail.sg3.yahoo.com with NNFMP;
	04 Jun 2015 20:11:52 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 248611.32171.bm@omp1005.mail.sg3.yahoo.com
X-YMail-OSG: CbEusAgVM1nd37dBl0jVijSJcUrUsxc.O1f0THTmD7R_n9tkTBbujl_VIaCvzum
	WZJlEM_5Vivsp2ENLsKoV6MVSc1_1VDs4ywIykTtlgukyN.gyQnUZVjfFRAlws21WG_o_mcV8Vd2
	uAqKIJuIcsDiFuNTk03Yc3mkWLBndkifAAtiFvuhyzKD.fkIOY4pf9OahK7OPR0OOYwscBhshM64
	RoZuC18eojvTAGlvt2EI5nbMIKa4tb2kj3cisAnjm9vK.FA4nf87sW8Vn3fmxukE5MQ5UV3fgta6
	hseO7eJOrcTekJzYuSLFIOMf9QyHORss2vbee00G8ufssA..nrRIHXl6j5SWoS8XMrj.hBpPH7XX
	9lR82TGuKN7d7Xl5XduIkSJebo8njUWhc1ai6wXa_X5xn5o_BHkUvxa9olx1_dIAiCqw5lTohoGX
	CVWyYgXcqdUD.VBpv4XFG_jI75i9A5b3qmgIAfAaQV1JLr1abmOrLZ7j3XUTF.1RvobhGgdhzUWz
	H2LmdZwccq5._bCR38B3Iore3fg--
Received: by 106.10.196.95; Thu, 04 Jun 2015 20:11:51 +0000 
Date: Thu, 4 Jun 2015 20:11:51 +0000 (UTC)
From: abhishek srivastava <just_abhi22@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1293303774.3078104.1433448711428.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: how to activate piTFT stagging driver?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: abhishek srivastava <just_abhi22@yahoo.co.in>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Jun 2015 20:11:56 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_3078103_715667083.1433448711426"

------=_Part_3078103_715667083.1433448711426
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

HiI need to interface raspberrypi with piTFT 2.8" resistive. I can find the=
 driver in stagging directory in linux.I have enabled the driver from $make=
 menuconfig option but could not get the display working. Is their some mor=
e settings needed to be done in other files in linux kernel ? please specif=
y the detailed procedure how to do so?=20
How to activate that driver from stagging directory?=C2=A0Abhishek=20

=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20

------=_Part_3078103_715667083.1433448711426
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, Sans-Serif;fo=
nt-size:14px"><div id=3D"yui_3_16_0_1_1433421142835_42841"><span id=3D"yui_=
3_16_0_1_1433421142835_42918">Hi</span></div><div id=3D"yui_3_16_0_1_143342=
1142835_42925" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1433421142835_42924">I =
need to interface raspberrypi with piTFT 2.8" resistive. I can find the dri=
ver in stagging directory in linux.I have enabled the driver from $make men=
uconfig option but could not get the display working. Is their some more se=
ttings needed to be done in other files in linux kernel ? please specify th=
e detailed procedure how to do so? <br></span></div><div id=3D"yui_3_16_0_1=
_1433421142835_42931" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1433421142835_42=
958">How to activate that driver from stagging directory?</span></div><div =
id=3D"yui_3_16_0_1_1433421142835_42842">&nbsp;</div><div id=3D"yui_3_16_0_1=
_1433421142835_42847" class=3D"signature"><div id=3D"yui_3_16_0_1_143342114=
2835_42846"><span id=3D"yui_3_16_0_1_1433421142835_42845" style=3D"font-siz=
e:16px;"><span id=3D"yui_3_16_0_1_1433421142835_42844" style=3D"font-family=
:garamond, new york, times, serif;"><span id=3D"yui_3_16_0_1_1433421142835_=
42843" style=3D"font-weight:bold;">Abhishek <br><br><span class=3D"tab">&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class=3D"tab"><b=
r></span></span></span></span></div></div></div></body></html>

------=_Part_3078103_715667083.1433448711426--
