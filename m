Return-Path: <madhukanthk@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9A97E00D53; Fri, 10 May 2019 16:53:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madhukanthk[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [74.6.135.125 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic310-15.consmr.mail.bf2.yahoo.com
	(sonic310-15.consmr.mail.bf2.yahoo.com [74.6.135.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AA45E00A7D
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 16:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1557532427; bh=6vqhMaBMeIJnXP2VIaexi2fKbvZ1w2MUE9ZRD1HhQWU=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=QofwEwJykRaOVoi+B9HXnzQ0+hddRhqOPrmqMaR0o4p1WcE5gSXbXpNgFbWZiaooe0fJNkl8G1XU2nLwpsookIKo3fPbcG0f4Uecj/AEfiG45bvWl53pjPgAchlaqFSh8nMmfLd82E2dVCFGuLpl6nMFdGbaO/j9VOVYPf8J1na1Sy4Rjam19iycYsQiG2ZNPGr0mbwDAxQ/IGBA98dftcepWisQMMkg1ZeA+fpCYepQJ65wJ8dsjClW7V2enjKcvDEXu+hy0odCVWbIhEcAE5ZRLZX02P2nDVrl4pDx0uib+S3eqk91HgZUoTePGPmwQAYkA1NQGx5Zv1irPmFW8Q==
X-YMail-OSG: elVcuNQVM1maF7k61nhKNFBENRovYzTZ8ERROpv3mASPIznfiHffCd9d8k_Vuch
	sqnK4i2ojslQ6z07BYsyo5Ji_FrvWBv7L_ypaVWkCzN4zIWmabzdSKeR5Jb4HnIZIgm219SS5NLz
	XexiTr343nnuHcZ7SoTkOLAwXER_YHEssOlo7MXoO2gx8VOJL8SOhfM4aX7WrAVEGoyQ39FEWRgG
	DEYWVCD3b2pOu_r2Ek0nHiMpeeGV.w3Qx1AXWR4CpXQDfjenqyMM6EhClzxlaIGEvrim8DjyRjD9
	0iB.bDA6x2NNfHzq5B1pexfcAd4DnDEOlhvvNBJIWUHxdWoCMXUL2hP3Qp5MV1BcguQhq5sHfIGP
	qpqFjJ4mQXXBI8.6ONNU.ZXppnP_WvsX5C19.N3G7WrOwXpPyma_opBSqal70Qs0hMcf3RL7VAbK
	NuWShCN0DeR96Me3tsDlzkdWJHBBO9LGX0htw_Rf0tSlKPxc3ZSZg.BEinuWu5KrFoxRGsUEGFGc
	IEGsC9mHW.D1rZUPZQ_rZyB.UHymPHNk6fsMeGyz9_gvPq8atrgfY_h_tDk9j8kP8M.Xb6hmmXr9
	JKvi1DNx9b7xsi1IR8dIa935z_1GZgMRWjhu9Slkv7QX9Ku4JLe1UqIIhatQk10bIuEKtfPxJUq7
	zsDnwL5PeWfne1V.7k0jso_zmGr9qJvUs85tV6JMYi7sgBE3YeXVJ1_pLTa41e6hHKWLS2WHf_LT
	8JiaLaFKMNhbyQmMIJLmQQFXhersbW_OSV5EPdqMXu8aElpgNJW_rfe5tO1AZjbrFgZ8TdULyaPm
	.06SpF0t7yz7H42xQpEHL0Sw0_CQXxqcLmiHQc4hpEN5aDTKyyODwg3igNCWuY0hbliXHYc5bUzG
	9kslTfGC2yaRdjfFdlwObJnZ7eUB.m.uT8fBoxUTvqcAMFsBlgXbxDc0XSlU9AKZIo2ZUiHrL3S5
	2FVv.77X_2F77JQfS5DEoHJvsf7evAyuXE3V.s5ap52f.1VIWWOt16vatc88Jnm8AN2EDfoIE5HV
	EZQSswPj3vX1To9._Kx.cdPCp9y.mGlddJo2iloYQpQjdUtAssJ1Z_j9eEbMZZkcULQ8gmTaKv0G
	aEna3IHzGAJAXZ_h8YnulaApaZNEmfOHZEPZHIgUnZY0mUm7EnSo.FL3454buu36fEGbTD5iV9gs
	EBlK7QlAmecSHfSa1JA--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic310.consmr.mail.bf2.yahoo.com with HTTP;
	Fri, 10 May 2019 23:53:47 +0000
Date: Fri, 10 May 2019 23:53:46 +0000 (UTC)
From: Madhu Krishnamurthy <madhukanthk@yahoo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <230317904.2732545.1557532426303@mail.yahoo.com>
MIME-Version: 1.0
References: <230317904.2732545.1557532426303.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.13583 YahooMailNeo Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131
	Safari/537.36
Subject: How do I include all packages under a layer ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Madhu Krishnamurthy <madhukanthk@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 May 2019 23:53:49 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2732544_194884010.1557532426302"

------=_Part_2732544_194884010.1557532426302
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

HelloI want to add packages to my image using the local.conf file.=C2=A0For=
 exampleIMAGE_INSTALLED_append +=3D " dmidecode i2c-tools"
Do I have to specify every package or is there a way I can add all packages=
 inside a layer?For example, how do I add all packages from inside poky/met=
a to my image?=C2=A0Or at least how do I add all packages under poky/meta/r=
ecipes-devtools ?
thanksMadhu=C2=A0

------=_Part_2732544_194884010.1557532426302
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:16px"><div id=3D"yui_3_16_0_ym19_1_1557526187761_10101">Hello</div><d=
iv id=3D"yui_3_16_0_ym19_1_1557526187761_10101">I want to add packages to m=
y image using the local.conf file.&nbsp;</div><div id=3D"yui_3_16_0_ym19_1_=
1557526187761_10101">For example</div><div id=3D"yui_3_16_0_ym19_1_15575261=
87761_10101" dir=3D"ltr">IMAGE_INSTALLED_append +=3D " dmidecode i2c-tools"=
</div><div id=3D"yui_3_16_0_ym19_1_1557526187761_10101" dir=3D"ltr"><br></d=
iv><div id=3D"yui_3_16_0_ym19_1_1557526187761_10101" dir=3D"ltr">Do I have =
to specify every package or is there a way I can add all packages inside a =
layer?</div><div id=3D"yui_3_16_0_ym19_1_1557526187761_10101">For example, =
how do I add all packages from inside poky/meta to my image?&nbsp;</div><di=
v id=3D"yui_3_16_0_ym19_1_1557526187761_10101">Or at least how do I add all=
 packages under poky/meta/recipes-devtools ?</div><div id=3D"yui_3_16_0_ym1=
9_1_1557526187761_10101"><br></div><div id=3D"yui_3_16_0_ym19_1_15575261877=
61_10101">thanks</div><div id=3D"yui_3_16_0_ym19_1_1557526187761_10101">Mad=
hu</div><div id=3D"yui_3_16_0_ym19_1_1557526187761_10101">&nbsp;</div></div=
></body></html>

------=_Part_2732544_194884010.1557532426302--
