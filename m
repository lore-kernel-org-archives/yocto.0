Return-Path: <just_abhi22@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 156C7E003AB; Thu, 18 Dec 2014 11:13:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (just_abhi22[at]yahoo.co.in)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.229.161 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit
	*      (abhishek srivastava <just_abhi22[at]yahoo.co.in> )
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4603]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm39-vm1.bullet.mail.ne1.yahoo.com
	(nm39-vm1.bullet.mail.ne1.yahoo.com [98.138.229.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B48E002F9
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 11:13:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1418930014; bh=y9KpD/Pf7snc6WnGzdH/GorbSqReN3/i5VKPPa4ByNo=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=oyssuJ8xSS5MOOVy5+/CN1+3JCZaVMf0ChTRf1CuNjbc2t68I2jz79J/ptLQhgsgEHfvNJ4pKm91JIA7Cwvn1cCyTNfgzQ8wcD31V856VWBNjUcXtE7nmt4lrdqjPkWOAkl/lwb/hTtCESyi0k/5qIRyllojyw5PQsia+zJpOVblL+r7dfdczRoZcXLwK5IVOiZSF0wwrJOkIM+0EbUSMUvdMB//n5KVT9+Fj01oJilUfdJ68hFxbQFO8/5hG3aGwphAtnFbMBF/2q16i80AaXF9hryqqTooDNh/OkzS36URPkdPERRARp5YliZhzmAa3fve1si3sPkvs4pUqrg8Mw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.co.in;
	b=CGXYczJ4BCC1UbKSMSR6p6Xsr4BGDPgGk+9fW0HwajQyB9Fuxz+FKzrcB//PyuPLXBbnE4uuGAxgeJ5AXXCrVGXRGXBCWqwGSbja7LJx5yRe+cOldhTWagWOJ3TtOsGhZtOl6mwUQD0LBd8wWG/BKWwKFbffi2Z9rmiLJganOPXUDGirt0aYqT4XyDA4w0tE0Lln07e0dsDtppLYLpy96FrUBx3v4r7eLDF6tSDksZ8r1JQgW2ZQvXZYlAB75NM+eiIyAMOV/78wkqg3a+biecQhUTZoATmPMgpbaSkOl9Tm+Mqpsgl2RqL/KfnqhLfoUiv+/q8UX5i3CqZFwj8Dbw==;
Received: from [127.0.0.1] by nm39.bullet.mail.ne1.yahoo.com with NNFMP;
	18 Dec 2014 19:13:34 -0000
Received: from [98.138.100.112] by nm39.bullet.mail.ne1.yahoo.com with NNFMP;
	18 Dec 2014 19:10:34 -0000
Received: from [106.10.166.61] by tm103.bullet.mail.ne1.yahoo.com with NNFMP;
	18 Dec 2014 19:10:34 -0000
Received: from [106.10.150.23] by tm18.bullet.mail.sg3.yahoo.com with NNFMP;
	18 Dec 2014 19:10:34 -0000
Received: from [127.0.0.1] by omp1024.mail.sg3.yahoo.com with NNFMP;
	18 Dec 2014 19:10:34 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 107671.93033.bm@omp1024.mail.sg3.yahoo.com
X-YMail-OSG: O02UdnkVM1nyvD.exwotC5GolHwBZB9pbVT8tqxUqr.7qkmBdJQc1r.l0SqT5ol
	6f2vd1F7MNxy6onxCkdakJ4VZNmfab5bXOFIZfGoSS3.w_EmFdPyif1ZKYC0LwHvFfCyHnl7KQQ5
	.ryJIF8Wy5iNstJgrKySkwXoEVE3ajcVAUHl.MxPTgcaIv_ZHZ88w4mW.nfL37WaYZgSqRUczgT.
	DIuxUh9fRP2U8WLsGl5hKIM4C3sA9__tErwJSWmOcAlxtlp5VfY7pYUIy48dLgVbsdMmZKkXA.97
	2tPxnApFvCk2fImbtCKtSoBaO8fm8xa.bH6g9xrQthYipZGuuVQTC4SLlonTTcPE1rAW9QtsLPRD
	4DfXTnEEy6CfFt8Uo2MJsc0._Z0f19lAZQ2xfz7Hjdq3LsfgRFPDvn67iRRHvfTvJymACehtse0x
	WEZ4t_6XX_fWXRoqmrA4Y7romVxlUkrQNJwwsyGsVVmrt1Oiw7dYXBM04KUBtw03tWNARzrP5Yye
	pr5UhaAWGIV4U
Received: by 106.10.196.90; Thu, 18 Dec 2014 19:10:33 +0000 
Date: Thu, 18 Dec 2014 19:10:33 +0000 (UTC)
From: abhishek srivastava <just_abhi22@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1078450525.611902.1418929833293.JavaMail.yahoo@jws10942.mail.sg3.yahoo.com>
MIME-Version: 1.0
Subject: basic questions on LINUX costomization for raspberrypi
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
X-List-Received-Date: Thu, 18 Dec 2014 19:13:38 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_611901_2101305080.1418929833289"

------=_Part_611901_2101305080.1418929833289
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi allPlease answer to these questions regarding LINUX kernel image build u=
sing yocto project:
1) What basic LINUX packages needed for raspberrypi ? any list for referenc=
e ?=20
2) What if I want to add any package after my image is build ? Do i need to=
 repeat the complete process again?=20
3) How can i add any driver (ex: TFT driver) to the build kernel image?=20
4) How to add any desired applications to packages?
Thank you for your help
regards
=C2=A0Abhishek
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20

------=_Part_611901_2101305080.1418929833289
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, Sans-Serif;fo=
nt-size:14px"><div id=3D"yui_3_16_0_1_1418883295260_32963">Hi allPlease ans=
wer to these questions regarding LINUX kernel image build using yocto proje=
ct:<br style=3D"" class=3D"">1) What basic LINUX packages needed for raspbe=
rrypi ? any list for reference ? <br style=3D"" class=3D"">2) What if I wan=
t to add any package after my image is build ? Do i need to repeat the comp=
lete process again? <br style=3D"" class=3D"">3) How can i add any driver (=
ex: TFT driver) to the build kernel image? <br style=3D"" class=3D"">4) How=
 to add any desired applications to packages?</div><div id=3D"yui_3_16_0_1_=
1418883295260_33227"><br></div><div id=3D"yui_3_16_0_1_1418883295260_33228"=
 dir=3D"ltr">Thank you for your help</div><div id=3D"yui_3_16_0_1_141888329=
5260_33229" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_1_1418883295260_332=
30" dir=3D"ltr">regards<br></div><div id=3D"yui_3_16_0_1_1418883295260_3314=
6">&nbsp;</div><div id=3D"yui_3_16_0_1_1418883295260_33148" class=3D"signat=
ure"><div id=3D"yui_3_16_0_1_1418883295260_33147"><span id=3D"yui_3_16_0_1_=
1418883295260_33151" style=3D"font-size:16px;"><span id=3D"yui_3_16_0_1_141=
8883295260_33150" style=3D"font-family:garamond, new york, times, serif;"><=
span id=3D"yui_3_16_0_1_1418883295260_33149" style=3D"font-weight:bold;">Ab=
hishek<br><span class=3D"tab">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; </span><span class=3D"tab"><br></span></span></span></span></div></div>=
</div></body></html>

------=_Part_611901_2101305080.1418929833289--
