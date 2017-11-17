Return-Path: <am.gondaliya007@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17D91E00CF1; Fri, 17 Nov 2017 07:21:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_MUA_MOZILLA,FREEMAIL_FROM,
	FREEMAIL_REPLYTO_END_DIGIT, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (am.gondaliya007[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.129.42 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (amit gondaliya <am.gondaliya007[at]yahoo.com>
	) * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic301-3.consmr.mail.bf2.yahoo.com
	(sonic301-3.consmr.mail.bf2.yahoo.com [74.6.129.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDBCEE00CEC
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 07:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1510932064; bh=tPqHYKCm2nNHdsUFa/2cq1YVrA5VHdhtROEEpzpUJcM=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=uenNjjM6oNC4h3RaI4GA35EKS//GLdXRnPXsj8WFm2CGAAXo1jL0JJikOv9+2MfxFe34CRmrIq71rRz69JU5ltCVwvxG7L/W83Xcy9rvPzVrfNJQEt6Pc3cFji2A3fasoGC5V5FXDBl14Zyy1Phog1/pVWsVE3kVVZdUS86l7pIMwRQkC5t2t/yNLBOH1YYj6PDJmu5F2pvXUR3QR4bJMm3fzrfIeQ0jodYldlXDE2DVstjBmUHeGb/iLkNsZBCcWBZwXYiV8LctEN6z+A80vcX3QyvYE5Kc2RZLMm85kn7ccph5q7EK+WlJFBL7vO9gP/sucXx6kcV8KmDaY/ekJQ==
X-YMail-OSG: 7JKjML0VM1k89UKqQadAK_3Y6WZ2.kRS..rS4KimN0bqADtwa0Q2trq8gSqYZNm
	GWO2UjlB9m5rxlHP0eaMSW59NY28zJhcVmA4wqI4vb3ZQPloxETiNYE6TL.MMecIjGFTrDp840uT
	N1AZefsBSwc0YmO7smyqoFfBBOr_m3D0h8PlINb52zYzjbGHd9KIAQQnF8tThx1dz2rwVCKUuS6s
	7PyICt1e1mfT0C1hMvPLvsKe5C49Dn7FskgGCjduo17oJmyl5tBpAGtrab4VyKJfNd94odO5c0fT
	9a2ZMC2AzsLnAbS6Pv8c1Csjraj829oPwdD8aWahtZPy0zEmFpUxMFhOahi24s7PpKhvlM1lGNkZ
	U.3j224VpIqV_5uKEExEIqBOGC0XjrBS7oVsU5Lv51XHswvG6xn2QgKzdbyVS4quSdnBUhDEBxbG
	eEz8LbcTS3Nqk6TIxv2_1deZRXqgGh7id3LOJxp074SCDREsRanHE6dBcWPYmUowLxMucVvUkqQB
	Zk99rmZ3iL58AL_gIl0MQ74QCD7X8
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic301.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 17 Nov 2017 15:21:04 +0000
Date: Fri, 17 Nov 2017 15:21:04 +0000 (UTC)
From: Amit Gondaliya <am.gondaliya007@yahoo.com>
To: Yocto List Discussion <yocto@yoctoproject.org>
Message-ID: <895691273.349839.1510932064131@mail.yahoo.com>
MIME-Version: 1.0
References: <895691273.349839.1510932064131.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10976 YahooMailNeo Mozilla/5.0 (Windows NT 10.0; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94
	Safari/537.36
Subject: Generate Native Package in Pyro2.3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Amit Gondaliya <am.gondaliya007@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Nov 2017 15:21:07 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_349838_1514439611.1510932064130"

------=_Part_349838_1514439611.1510932064130
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello All,
I am creating custom meta-layer for my project work, but some of my third package is not able to fine the dependent library and package previously in yocto daisy1.6 all the dependent package are found into below directory.
<workspace>/sysroot/${BUILD-SYS} directory but in pyro There is nothing line ${BUILD_SYS} directory.
Also my sysroot directory is empty what I found was all the package in daisy found in <workspace>/sysroot/${BUILD-SYS} directory are now moved into sysroot-components/<package-native> directory.
can anyone help me to how i can use that package..?
How to generate <name>-native package from third party package
Thanks,Amit G

------=_Part_349838_1514439611.1510932064130
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Courier New, courier, monaco, monospace, sans-serif;font-size:16=
px"><div id=3D"yui_3_16_0_ym19_1_1510931570100_2768">Hello All,</div><div i=
d=3D"yui_3_16_0_ym19_1_1510931570100_2768"><br></div><div id=3D"yui_3_16_0_=
ym19_1_1510931570100_2768" dir=3D"ltr">I am creating custom meta-layer for =
my project work, but some of my third package is not able to fine the depen=
dent library and package previously in yocto daisy1.6 all the dependent pac=
kage are found into below directory.</div><div id=3D"yui_3_16_0_ym19_1_1510=
931570100_2768" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_15109315=
70100_2768" dir=3D"ltr">&lt;workspace&gt;/sysroot/${BUILD-SYS} directory bu=
t in pyro There is nothing line ${BUILD_SYS} directory.</div><div id=3D"yui=
_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr"><br></div><div id=3D"yui_3_1=
6_0_ym19_1_1510931570100_2768" dir=3D"ltr">Also my sysroot directory is emp=
ty what I found was all the package in daisy found in &lt;workspace&gt;/sys=
root/${BUILD-SYS} directory are now moved into sysroot-components/&lt;packa=
ge-native&gt; directory.</div><div id=3D"yui_3_16_0_ym19_1_1510931570100_27=
68" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_1510931570100_2768" =
dir=3D"ltr">can anyone help me to how i can use that package..?</div><div i=
d=3D"yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr"><br></div><div id=3D=
"yui_3_16_0_ym19_1_1510931570100_2768" dir=3D"ltr">How to generate &lt;name=
&gt;-native package from third party package</div><div id=3D"yui_3_16_0_ym1=
9_1_1510931570100_2768" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_=
1510931570100_2768" dir=3D"ltr">Thanks,</div><div id=3D"yui_3_16_0_ym19_1_1=
510931570100_2768" dir=3D"ltr">Amit G</div></div></body></html>

------=_Part_349838_1514439611.1510932064130--
