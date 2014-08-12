Return-Path: <petertornel@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48A6BE007C2; Tue, 12 Aug 2014 15:12:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (petertornel[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.229.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0016]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm33.bullet.mail.ne1.yahoo.com (nm33.bullet.mail.ne1.yahoo.com
	[98.138.229.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3B08E00799
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 15:12:22 -0700 (PDT)
Received: from [127.0.0.1] by nm33.bullet.mail.ne1.yahoo.com with NNFMP;
	12 Aug 2014 22:12:21 -0000
Received: from [98.138.101.132] by nm33.bullet.mail.ne1.yahoo.com with NNFMP;
	12 Aug 2014 22:08:52 -0000
Received: from [98.139.212.150] by tm20.bullet.mail.ne1.yahoo.com with NNFMP;
	12 Aug 2014 22:08:51 -0000
Received: from [98.139.212.226] by tm7.bullet.mail.bf1.yahoo.com with NNFMP;
	12 Aug 2014 22:08:51 -0000
Received: from [127.0.0.1] by omp1035.mail.bf1.yahoo.com with NNFMP;
	12 Aug 2014 22:08:51 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 779673.16252.bm@omp1035.mail.bf1.yahoo.com
Received: (qmail 15668 invoked by uid 60001); 12 Aug 2014 22:08:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1407881331; bh=bKL91i8fwWJJNjoosb5/lHNVtHAZo7EN4EN43uc/U3k=;
	h=References:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=eDhJZ43N4VYI9ZQOSaQWIq/ywx3euTpagKP5c4obt9zIR0Lx/7SsgZzQ0ni0vl7wMnLT+Ey5yCUQ8Z32tUhrMzbrhbPwKwZNRiCw4IPx2I9dNCvF7hv0p8fN0jyIsj0r7VGl3tNFgYUmfSSF/l2Bdc3wMENuFFF4+HsQVPYAbpw=
X-YMail-OSG: D8uszGsVM1mI.Twpwp6B0lxv_CjvQ9g8McVJYsc3QBqY_OD
	GktBcA1IhlfOaaLOl2FeMkvAMZ_alSPn.jWdNEUXOHnWiy_DNVAjOnU436Hx
	lZT.7GwD6i8cTAlVrLrXcjRqCisaNiWUmcWlUitHlsRzm34hNBZPzgBC0tBa
	RnbWyRox1fAA9pBGi1mUjNS5ry740qWS.OhynY_09HCn4qRO4E.DfBWeytBN
	L9vFnTu9WjlgiVDi8nsUza4_fp608R5zYxxgFEG9CyPwPgTXfQAFVJg9f2uP
	UJxujd4ta7gNI0jU0IDIbsZ3T0zW1bRyNcqDOUk4GG7TbD66VFrflynGfnvQ
	vO.qzLSfYwxFfPeSSWZqD_6js_rfM0kbywKxN.kpTVH6XuNBOUD3BEYPm3bM
	7lSSr2H7WlrSTwyg5XWgeZOpiXRjAxMlOZySrr9wIpA8o5l3HhsB5IUAETJw
	hN68TELZGPmJZJjCrYQ1r_.gUcbhy6pfDNny1L6ynKjziWtH.XLWqeRY4Vvw
	U_0bc0w--
Received: from [68.38.40.177] by web140703.mail.bf1.yahoo.com via HTTP;
	Tue, 12 Aug 2014 15:08:51 PDT
X-Rocket-MIMEInfo: 002.001,
	SGksCgpXaGF0IGlzIHRoZSBjb3JyZWN0IG1ldGhvZCBmb3IgY29udHJvbGxpbmcgd2hpY2ggRklMRVNFWFRSQVBBVEhTX3ByZXBlbmQgCmFjdHVhbGx5IHNob3dzIHVwIGZpcnN0IGluIHRoZSBwYXRoIHdoZW4gdGhlcmUgYXJlIG11bHRpcGxlIGJiYXBwZW5kcyAKc2V0dGluZyB0aGUgc2FtZSB2YXJpYWJsZT_CoCAKCgpQZXRlATABAQEB
X-Mailer: YahooMailWebService/0.8.201.700
References: 
Message-ID: <1407881331.94733.YahooMailNeo@web140703.mail.bf1.yahoo.com>
Date: Tue, 12 Aug 2014 15:08:51 -0700
From: Peter Tornel <petertornel@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: ordering multiple bbappends and their FILESEXTRAPATHS_prepend setting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Peter Tornel <petertornel@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Aug 2014 22:12:30 -0000
Content-Type: multipart/alternative;
	boundary="-979624102-18866957-1407881331=:94733"

---979624102-18866957-1407881331=:94733
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,=0A=0AWhat is the correct method for controlling which FILESEXTRAPATHS_p=
repend =0Aactually shows up first in the path when there are multiple bbapp=
ends =0Asetting the same variable?=A0 =0A=0A=0APete

---979624102-18866957-1407881331=:94733
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:12pt"><div id=3D"yiv4108384763"><div><div style=3D"color:#000;backg=
round-color:#fff;font-family:HelveticaNeue, Helvetica Neue, Helvetica, Aria=
l, Lucida Grande, sans-serif;font-size:12pt;"><div class=3D"yiv4108384763" =
id=3D"yiv4108384763yui_3_16_0_1_1407873094534_25112" style=3D"">Hi,</div><d=
iv class=3D"yiv4108384763" id=3D"yiv4108384763yui_3_16_0_1_1407873094534_25=
115" style=3D""><br class=3D"yiv4108384763" style=3D"" clear=3D"none"></div=
><div class=3D"yiv4108384763" id=3D"yiv4108384763yui_3_16_0_1_1407873094534=
_25116" style=3D"color:rgb(0, 0, 0);font-size:16px;font-family:HelveticaNeu=
e, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;background-c=
olor:transparent;font-style:normal;">What=0A is the correct method for cont=
rolling which FILESEXTRAPATHS_prepend =0Aactually shows up first in the pat=
h when there are multiple bbappends =0Asetting the same variable?&nbsp; <br=
 class=3D"yiv4108384763" style=3D"" clear=3D"none"></div><div class=3D"yiv4=
108384763" id=3D"yiv4108384763yui_3_16_0_1_1407873094534_25117" style=3D"co=
lor:rgb(0, 0, 0);font-size:16px;font-family:HelveticaNeue, Helvetica Neue, =
Helvetica, Arial, Lucida Grande, sans-serif;background-color:transparent;fo=
nt-style:normal;"><br class=3D"yiv4108384763" style=3D"" clear=3D"none"></d=
iv><div class=3D"yiv4108384763" id=3D"yiv4108384763yui_3_16_0_1_14078730945=
34_25118" style=3D"color:rgb(0, 0, 0);font-size:16px;font-family:HelveticaN=
eue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;background=
-color:transparent;font-style:normal;">Pete</div><div style=3D"" class=3D"y=
iv4108384763" id=3D"yiv4108384763"><div style=3D"" class=3D"yiv4108384763">=
<div class=3D"yiv4108384763" style=3D"color:#000;background-color:#fff;font=
-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, san=
s-serif;font-size:12pt;"><div style=3D"" class=3D"yiv4108384763"
 id=3D"yiv4108384763yui_3_16_0_1_1407873094534_27367"></div></div></div></d=
iv></div></div></div></div></body></html>

---979624102-18866957-1407881331=:94733--
