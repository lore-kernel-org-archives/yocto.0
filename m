Return-Path: <just_abhi22@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F31CBE005B9; Wed, 20 May 2015 00:56:47 -0700 (PDT)
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
	*      [106.10.151.100 listed in list.dnswl.org]
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
Received: from nm25-vm5.bullet.mail.sg3.yahoo.com
	(nm25-vm5.bullet.mail.sg3.yahoo.com [106.10.151.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FF9AE0027F
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 00:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1432108592; bh=Hm7+cH51XQsu7xKDjAewevgxoaInKv9czMsCghBeDb4=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=mUO+30MtLneyovo7UVZz/uUZCgTBxxzAkuPmXx6c5Ou9ADSFPMNu0G6bl1aROdIe9+rzJSbyr8btmCMpZtjXA79+HLeYzcOMUZhfDPYu69Pb65s1vTCZoAuI1SSK25qJfSz20mpW8hIftIaR0OD+pDEjA1XJua4zsALvaC9zZV69eZvovKb9ZUOfJUba88V12uEtgUfP22iLseFmmIUDtRoitvb1L7faHge65komE6QlA2SdmLuP6oXpC3V1BBKScKayr54aqYtbJFBWOlNOA9fZ+J1W6iQf7xaIN3FHdQwp+VuntGEUJ7JUPRcTl4UaSTa0npdvXengkv/dNv35/w==
Received: from [106.10.166.118] by nm25.bullet.mail.sg3.yahoo.com with NNFMP;
	20 May 2015 07:56:32 -0000
Received: from [106.10.151.138] by tm7.bullet.mail.sg3.yahoo.com with NNFMP;
	20 May 2015 07:56:32 -0000
Received: from [127.0.0.1] by omp1006.mail.sg3.yahoo.com with NNFMP;
	20 May 2015 07:56:32 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 863757.25614.bm@omp1006.mail.sg3.yahoo.com
X-YMail-OSG: k2.akjAVM1n8P3saO2fDJImBKIl52gN6Hj8CDvxWt57Vedwfp87SdMepQqnhVda
	x68iDnpvaR7lL2UTGLZrMjCYaX12kQ62CLMc4tIo0JoqYBBsMyyoIW_K6nRfW0W3Y3NnZe762GG9
	xX_nsmkgFUFQnCoFOTjH5EO1ye7MTJL6pYz0ySZAwJIM5OCGYc3blOIW53xmAnj9Th8.DMb.R4zE
	l5WqwasUdRIzmUc_qrCopBr2cmh_wJb5.v1Dvt.N0n81IDRwQ49okSLIMwTglQX9wW3YdcfXwf1T
	MN.9RaBZQfxifsm24YXcf449HxXnUROzGQhKH9xp0O8kF0Zzbx65_hiimaog5_bp2PoJM53kYjC3
	5o8bfi1uT64SADMPn2xlRFZf0HvRXNnHwJihjHGSKAYEPMks95R9lnQHz810k9HRgcdtRFVGHqom
	OqKmfhpw4Gv2SabGXUsDQHN1DIC1GSaFj50pkLDZCi6RqJeH8kQc4cuBuRdxUgUDHGLVrpG6Tr.g
	yrmTdefLXx7Qe
Received: by 106.10.196.88; Wed, 20 May 2015 07:56:32 +0000 
Date: Wed, 20 May 2015 07:56:19 +0000 (UTC)
From: abhishek srivastava <just_abhi22@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1834240664.1563821.1432108579634.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: How to interface piTFT2.8" with Raspberrypi using fbtft driver?
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
X-List-Received-Date: Wed, 20 May 2015 07:56:48 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1563820_2089890977.1432108579631"

------=_Part_1563820_2089890977.1432108579631
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hii need to interface piTFT2.8" resistive display with raspberrypi using fb=
tft driver. i want to insert this driver in Yocto Image that I have built.B=
ut I really dont know how? I can find fbtft driver under stagging directory=
 (in linux3.18.11+) but when it would be officially available as feature/pa=
ckage ? Putting piTFT2.8" driver is extremely easy in Raspbian but when i t=
ry to do the same in Yocto built image, it gives error (I thing libc issue,=
 which is looking for gcc4.6 and in Yocto we have gcc4.9/5.1).Any help woul=
d be appreciated.=C2=A0
Abhishek


------=_Part_1563820_2089890977.1432108579631
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, Sans-Serif;fo=
nt-size:14px"><div id=3D"yui_3_16_0_1_1432107840254_5125"><span>Hi</span></=
div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1432107840254_5170"><span id=3D"yui=
_3_16_0_1_1432107840254_5211">i need to interface piTFT2.8" resistive displ=
ay with raspberrypi using fbtft driver. i want to insert this driver in Yoc=
to Image that I have built.</span></div><div id=3D"yui_3_16_0_1_14321078402=
54_5213" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1432107840254_5212">But I rea=
lly dont know how? I can find fbtft driver under stagging directory (in lin=
ux3.18.11+) but when it would be officially available as feature/package ? =
Putting piTFT2.8" driver is extremely easy in Raspbian but when i try to do=
 the same in Yocto built image, it gives error (I thing libc issue, which i=
s looking for gcc4.6 and in Yocto we have gcc4.9/5.1).</span></div><div id=
=3D"yui_3_16_0_1_1432107840254_5304" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1=
432107840254_5212">Any help would be appreciated.</span></div><div id=3D"yu=
i_3_16_0_1_1432107840254_5164"><div id=3D"yui_3_16_0_1_1432107840254_5355">=
&nbsp;</div><div id=3D"yui_3_16_0_1_1432107840254_5354"><br></div></div><di=
v id=3D"yui_3_16_0_1_1432107840254_5217" class=3D"signature"><div id=3D"yui=
_3_16_0_1_1432107840254_5216"><span id=3D"yui_3_16_0_1_1432107840254_5348" =
style=3D"font-size:16px;"><span id=3D"yui_3_16_0_1_1432107840254_5347" styl=
e=3D"font-family:garamond, new york, times, serif;"><span id=3D"yui_3_16_0_=
1_1432107840254_5346" style=3D"font-weight:bold;">Abhishek<br><span class=
=3D"tab"><br></span></span></span></span></div></div></div></body></html>

------=_Part_1563820_2089890977.1432108579631--
