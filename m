Return-Path: <pp.perez@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87DEFE006C6; Mon, 20 Feb 2017 22:35:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pp.perez[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.187.117 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1237]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic324-55.consmr.mail.ne1.yahoo.com
	(sonic324-55.consmr.mail.ne1.yahoo.com [66.163.187.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF2F0E0049D
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 22:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1487658915; bh=rTSfGT6auNZ8v6ZD615vba7Zz8EguU1707GsMIUFyNE=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=ASiltkzA1YozeOKauwjqJnKMPbAHKWdQQ+HJCpiC6e7c9aR1UcCGUi52Wi3iol6EDLmrGg8oQSFdN+L5CGCwTHCWSU+pG+3QjPRRxM9698s8N+2MD0l8XHWN7TFpwL+jun1TGfAKcMNa7GoUD5IOMxeKiqtcuYA52KdGFJNh1uvgpbXO0FrDRLWZl4hSX9MIAiM0KONHWhdQnKfu3TN2B4C0C2Hh+1PJHZ5SOlnUkJrYwcZTpZtEePIE993Jmzejw2dckIX3VFFiMazhXjKrUaQeqknF2gH9TPfiwLUD26X7xB7J1oyV+D/1/d8ypN6J2Bp8VofwN4VLagb/5otGAQ==
X-YMail-OSG: UHleTY4VM1mXoZekUI5I0YyxRb1MQH6fMUvUDfVFAs3s.gDPIQNfJonIppotz.D
	lGNTYHCypBLyfZmGFy0OE4wXMWKvLLw0ZD.pXOhPyKTWu3Rm7UuWyTmSHPiF0peJeF.amI5LZEWU
	n6eoFZeC6FD6gjbQ6fvu22Sdf3yfRUxeNV7Olx.df7xIM9FJ2FOFls1pilobrkB64L5Awmb1g_gb
	z2w2vHUFBYKbuRlNjASqOHR7gogqcc8eLRxIck1wWbikn8xz9R9k_Dy1wrr_dwU2c70eNl_V.1kN
	ps_2y2vQV2Wu4JNs63yBI6DB87CQ34XcRkU4AARJV8G5xPov.4d_UsG2nMQHM2XX59NLXAAKnCi3
	FkFTYBhH2uaCwEBqnXJqBz1aKiGt_ITExmJCTeU5.anVXenY4c.qtykSTVRbEs3sgP8ymyuKzGnq
	Iro5RoMhQpk4oYvjEmmlBjgT4XjQ7aRVd60GXjqazpydJCToOWFeR4LKDs.OeJ.mOQvl537ona11
	.wPRG6umUwQ3a54VA4DFxL58pQ3OX7DaVNMgaIhcbuw--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic324.consmr.mail.ne1.yahoo.com with HTTP;
	Tue, 21 Feb 2017 06:35:15 +0000
Date: Tue, 21 Feb 2017 06:30:50 +0000 (UTC)
From: Pepe Perez <pp.perez@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1595002721.1496048.1487658650023@mail.yahoo.com>
MIME-Version: 1.0
References: <1595002721.1496048.1487658650023.ref@mail.yahoo.com>
Subject: task is executed even when sstate-cache md5 matches
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Pepe Perez <pp.perez@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Feb 2017 06:35:18 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1496047_629900443.1487658650022"

------=_Part_1496047_629900443.1487658650022
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

I have following siginfo packages:
Generated in my build sstate-cache
build/sstate-cache/be/sstate:proc-fifo::1.0.3:r1::3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo
Previously existing in my build SSTATE_MIRRORS:
/central/sstate-cache/be/sstate:proc-fifo::1.0.3:r1::3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo

I had many other targets where setscene was successful and no task was executed. Why fetch is executed in the target above, if md5 is a match?

------=_Part_1496047_629900443.1487658650022
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div id=3D"yui_3_16_0_ym19_1_1487397639740_61943=
">I have following siginfo packages:</div><div id=3D"yui_3_16_0_ym19_1_1487=
397639740_61990"><br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1487397=
639740_61987">Generated in my build sstate-cache<br></div><div dir=3D"ltr" =
id=3D"yui_3_16_0_ym19_1_1487397639740_61996">build/sstate-cache/be/sstate:p=
roc-fifo::1.0.3:r1::3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo</d=
iv><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1487397639740_61999"><br></div>=
<div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1487397639740_62035">Previously ex=
isting in my build SSTATE_MIRRORS:<br></div><div dir=3D"ltr" id=3D"yui_3_16=
_0_ym19_1_1487397639740_62036">/central/sstate-cache/be/sstate:proc-fifo::1=
.0.3:r1::3:be9c419f0caa05042d43c03d576d2e15_fetch.tgz.siginfo<br></div><div=
 dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1487397639740_61980"><br></div><div di=
r=3D"ltr" id=3D"yui_3_16_0_ym19_1_1487397639740_62100">I had many other tar=
gets where setscene was successful and no task was executed. Why fetch is e=
xecuted in the target above, if md5 is a match?<br></div></div></body></htm=
l>

------=_Part_1496047_629900443.1487658650022--
