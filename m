Return-Path: <urnen81@yahoo.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11D15E00CCC; Tue, 23 Feb 2016 05:05:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (urnen81[at]yahoo.es)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.82.97.38 listed in list.dnswl.org]
	* 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
	digit *      (oliver <urnen81[at]yahoo.es> )
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm25-vm5.bullet.mail.ir2.yahoo.com
	(nm25-vm5.bullet.mail.ir2.yahoo.com [212.82.97.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D165E00C79
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 05:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.es; s=s2048;
	t=1456232732; bh=Q5xbJ76EqmKAKbl+cjaSIs7E8WFDYpHmdHcjgd2zHnQ=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=ebFZLaArsSUuA0WBmk46rR4LWKhhUPT5TvQ7TzIMq0I47ec32nlUk83KOxYNI45Z8U11AZofqiI9LFuyBVn6wm65nUvpxEKcXEWqgRXdWO8fHFQ6GhOl1loMFH0ytgPQUSRKx8POm+NYSxKzS46qks09e2H61b7zUjcVb88TBVkNpWLku9/7wLO8/CqBdVfN8quuCuu/HQwd667171ENLfuqLavxwmZqmJ2cUKwaZtndSmZeUUjHRGJYKS/2KY5PhGVUuOYxKZmWPOLocBDoRCiFrDejrZusTx2P6QDph8+QXnslHWcksjQ7mN4aPlcuATO9+Mi6OsRJN5M0ieSYTw==
Received: from [212.82.98.126] by nm25.bullet.mail.ir2.yahoo.com with NNFMP;
	23 Feb 2016 13:05:32 -0000
Received: from [212.82.98.101] by tm19.bullet.mail.ir2.yahoo.com with NNFMP;
	23 Feb 2016 13:05:32 -0000
Received: from [127.0.0.1] by omp1038.mail.ir2.yahoo.com with NNFMP;
	23 Feb 2016 13:05:32 -0000
X-Yahoo-Newman-Property: ymail-5
X-Yahoo-Newman-Id: 861772.54334.bm@omp1038.mail.ir2.yahoo.com
X-YMail-OSG: pd1BUCEVM1lfYlnIUa.9B6S.W_Pi2jRHXIcvXiBUA65yxkgyd7GhqRYsAHYW3Bj
	fdSDAd_v_csp47MNWeMkCerbN7t9dKrKbfLUAKhZW6z1tkbb.EQTVG5oEIWc8YSDsWe2PwaahRUz
	ROPfHPg8cN3Wf86wgmAr956T.lPzs_p5jxtmZKp4W8lZDnvneTGJnqIL_FawjXmKLGmbWJkl_iA2
	NKnyNv8RLEqY53msIc2utWydoxPV3QAbbtyYx5439b3jcXXpZ.4J5SK1DfewEfU.fbm3oyKsXjk4
	Uj_R98b6.shl4DLyKZIm_S.CyElkyiY2p0LXpINIeAKTLWliotT8Yzxbbel1Qig2uacL6fVsaFo4
	.ze7mOljjMxuQbzoh1uFEQpc_boDHOhMm3R7QSBrvChPGupjHajejYbb8hwCB5VvgHhA9gzTzsB3
	JvvXv1yVG6PtcJS2ooDk8thayhBDbhBfv9ig7nN75FGTkRjKueOmGMNaxDMvznlcg1nAhQarHK6y
	ZyqadIKvPoARu_wEJgLPh7lde8.qwvM1UN5x6GZ.r6F_B5w.Wz69ni8VNFqulKg1MQKbNheuZPGk
	1M.2u.MR3W8GpO7zme.QGFexoEg--
Received: by 217.12.9.9; Tue, 23 Feb 2016 13:05:32 +0000 
Date: Tue, 23 Feb 2016 13:04:21 +0000 (UTC)
From: Oliver <urnen81@yahoo.es>
To: Valentin Le Bescond <valentin.lebescond@gmail.com>
Message-ID: <60808436.13517718.1456232661888.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <CAP2S6e7kN9+heZkSimHg2OtuqhqSfYS7pUjp4fD5oLwEwNz12A@mail.gmail.com>
References: <CAP2S6e7kN9+heZkSimHg2OtuqhqSfYS7pUjp4fD5oLwEwNz12A@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-chip][PATCH] added md5 for ntc's modified u-boot Licences/README file.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Oliver <urnen81@yahoo.es>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Feb 2016 13:05:37 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_13517717_1780874146.1456232661831"

------=_Part_13517717_1780874146.1456232661831
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Not yet @Valentin, This is in my TODO list. I did spend an afternoon checking for their scripts inside the SDK at least to retrieve a backup copy of the oficial firmware. I guess this is the starting point to work out something within yocto:
https://github.com/NextThingCo/CHIP-tools/blob/chip/stable/chip-update-firmware.sh


 

  

------=_Part_13517717_1780874146.1456232661831
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_145614717831=
9_53130"><span id=3D"yui_3_16_0_1_1456147178319_53414">Not yet @Valentin, T=
his is in my TODO list. I did spend an afternoon checking for their scripts=
 inside the SDK at least to retrieve a backup copy of the oficial firmware.=
 I guess this is the starting point to work out something within yocto:</sp=
an></div><div id=3D"yui_3_16_0_1_1456147178319_54208" dir=3D"ltr"><span id=
=3D"yui_3_16_0_1_1456147178319_53414"><br></span></div><div id=3D"yui_3_16_=
0_1_1456147178319_54185" dir=3D"ltr"><span id=3D"yui_3_16_0_1_1456147178319=
_53414"><a id=3D"yui_3_16_0_1_1456147178319_54207" href=3D"https://github.c=
om/NextThingCo/CHIP-tools/blob/chip/stable/chip-update-firmware.sh">https:/=
/github.com/NextThingCo/CHIP-tools/blob/chip/stable/chip-update-firmware.sh=
</a><br></span></div><div id=3D"yui_3_16_0_1_1456147178319_54230" dir=3D"lt=
r"><span id=3D"yui_3_16_0_1_1456147178319_53414"></span></div><br><div id=
=3D"yui_3_16_0_1_1456147178319_53766" style=3D"font-family: HelveticaNeue, =
Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 16p=
x;"><br>  </div><div class=3D"qtdSeparateBR"><br><br></div><div style=3D"di=
splay: block;" id=3D"yui_3_16_0_1_1456147178319_53768" class=3D"yahoo_quote=
d"><div id=3D"yui_3_16_0_1_1456147178319_53767" style=3D"font-family: Helve=
ticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font=
-size: 16px;"> </div>  </div></div></body></html>

------=_Part_13517717_1780874146.1456232661831--
