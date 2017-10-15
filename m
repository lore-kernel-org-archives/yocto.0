Return-Path: <am.gondaliya007@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72881E00D17; Sun, 15 Oct 2017 07:48:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_MUA_MOZILLA,FREEMAIL_FROM,
	FREEMAIL_REPLYTO_END_DIGIT, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (am.gondaliya007[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.130.123 listed in list.dnswl.org]
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
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.6.130.123 listed in dnsbl.sorbs.net]
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic316-13.consmr.mail.bf2.yahoo.com
	(sonic316-13.consmr.mail.bf2.yahoo.com [74.6.130.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D47AE00CBE
	for <yocto@yoctoproject.org>; Sun, 15 Oct 2017 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1508078916; bh=fx836aBjGbsW3R42rpn+t7i8Kjuo9grzRSSqvpfcS4A=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=lcEdkol3CpPNj3cHpz//g4uhlglzeU10QCxUH1bwQYCg4/KRQm90MtUC6oAjKWqJkmzut84D7RU98cHSaSCFldabCGVd8lXEO5p1TNJi2juPdR20jYYRYBTC+WRJzsB4UCL5kMXyzrz12oIZi493VO+WAqq2JksM0AUG2/HRvgOH+VZV0a42Xloq3/EVB4osz5BPOsluXYtsgy7oJMKH5IoWBvPiX3ladk8zv/PNRSmpleVs0UwQ+Idf4jXea+twH+PeUIznQDo//LZzL5wWU2TXd+KkZR/lPBOv4bzLUKyGx0JIXxB/tPElz+YX+Y16jGqOO7Tjnp6g/2owSsZu9Q==
X-YMail-OSG: s6mlSqwVM1nmRu693SmDGNpnLPQG9RXl3btXfvF77TTgvyVrUJxcx2qX38Y6nLa
	DRX9oy9MTAnu_I4vwLIkqFM7Hx9gZTjMaif13CbTxwHCcxda3KfndZYHLmzyjYHs2BqrkBOONLP4
	3On7kwmTVBIl2alJYzrcK5S4maaXyhCsbm8KgIrnM6s11DAgzM0nOd3jKDI5yu5XSAhFZ9iAVLBe
	X_kPqSXFwJGbs23IdJQyv4ubZVeIuHTIWRk_6a2HDpL.J6RVOV_4yQUsy6Np0_Z6U6WDK7YptGTE
	0VZMT1_A380YyGXLR1M7Z_XO0qZcr7T229OhRG6ct2U2ZFrnDXdimg4fd2GNls4erxcu5A7Y9.2Q
	JpjmE8h0sWXoxksokuo60Y5sQpYolGzgTCHUnvWo.gu9hVtsgsHB_jKf2CaY4Kg6MNvgDKaZ3mrc
	YYR0s6Z_4MGx9c8PYU3.0J9jsVUs7gUrzWYg9qYl3eMhRvqm74MJgphY6fqkhrmM-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic316.consmr.mail.bf2.yahoo.com with HTTP;
	Sun, 15 Oct 2017 14:48:36 +0000
Date: Sun, 15 Oct 2017 14:48:33 +0000 (UTC)
From: Amit Gondaliya <am.gondaliya007@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <467689991.208547.1508078913957@mail.yahoo.com>
MIME-Version: 1.0
References: <467689991.208547.1508078913957.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10726 YahooMailNeo Mozilla/5.0 (Windows NT 10.0;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100
	Safari/537.36
X-Mailman-Approved-At: Mon, 16 Oct 2017 14:04:40 -0700
Subject: .config moved as .config.old
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
X-List-Received-Date: Sun, 15 Oct 2017 14:48:39 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_208546_1751417670.1508078913956"

------=_Part_208546_1751417670.1508078913956
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
I am adding my own machine layer (meta-layer) into the yocto.
I did the entire work able to compile to kernel and u-boot. when I tried to=
 give my own defconfig file, yocto is not taking that defconfig ( I used it=
 in daisy now upgrading the yocto to pyro). My defconfig file is shown in .=
config.old instead of .config
would you help me what did i do wrong.
defconfig File is under files folder where recipe is resided and using SRC_=
URI variable to defconfig.
also included do_configure_prepend(){=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 cp <defconfig> to {WORKDIR}/defconfig
}
Help will be appreciated=C2=A0
thanksAmit Gondaliya

------=_Part_208546_1751417670.1508078913956
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Courier New, courier, monaco, monospace, sans-serif;font-size:16=
px"><div id=3D"yui_3_16_0_ym19_1_1508078168978_2458">Hello,</div><div id=3D=
"yui_3_16_0_ym19_1_1508078168978_2458"><br></div><div id=3D"yui_3_16_0_ym19=
_1_1508078168978_2458">I am adding my own machine layer (meta-layer) into t=
he yocto.</div><div id=3D"yui_3_16_0_ym19_1_1508078168978_2458"><br></div><=
div id=3D"yui_3_16_0_ym19_1_1508078168978_2458" dir=3D"ltr">I did the entir=
e work able to compile to kernel and u-boot. when I tried to give my own de=
fconfig file, yocto is not taking that defconfig ( I used it in daisy now u=
pgrading the yocto to pyro). My defconfig file is shown in .config.old inst=
ead of .config</div><div id=3D"yui_3_16_0_ym19_1_1508078168978_2458" dir=3D=
"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_1508078168978_2458" dir=3D"ltr=
">would you help me what did i do wrong.</div><div id=3D"yui_3_16_0_ym19_1_=
1508078168978_2458" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_1508=
078168978_2458" dir=3D"ltr">defconfig File is under files folder where reci=
pe is resided and using SRC_URI variable to defconfig.</div><div id=3D"yui_=
3_16_0_ym19_1_1508078168978_2458" dir=3D"ltr"><br></div><div id=3D"yui_3_16=
_0_ym19_1_1508078168978_2458" dir=3D"ltr">also included do_configure_prepen=
d(){</div><div id=3D"yui_3_16_0_ym19_1_1508078168978_2458" dir=3D"ltr">&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; cp &lt;defconfig&gt; to=
 {WORKDIR}/defconfig<br></div><div id=3D"yui_3_16_0_ym19_1_1508078168978_24=
58" dir=3D"ltr">}</div><div id=3D"yui_3_16_0_ym19_1_1508078168978_2458" dir=
=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_1508078168978_2458" dir=3D"=
ltr">Help will be appreciated&nbsp;</div><div id=3D"yui_3_16_0_ym19_1_15080=
78168978_2458" dir=3D"ltr"><br></div><div id=3D"yui_3_16_0_ym19_1_150807816=
8978_2458" dir=3D"ltr">thanks</div><div id=3D"yui_3_16_0_ym19_1_15080781689=
78_2458" dir=3D"ltr">Amit Gondaliya</div></div></body></html>

------=_Part_208546_1751417670.1508078913956--
