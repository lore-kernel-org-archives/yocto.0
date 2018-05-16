Return-Path: <kumar.ugesh003@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F22ADE00A38; Wed, 16 May 2018 09:27:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kumar.ugesh003[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.242.210 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic304-20.consmr.mail.sg3.yahoo.com
	(sonic304-20.consmr.mail.sg3.yahoo.com [106.10.242.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96B65E005A9
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 09:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1526488030; bh=WIOTy3KIj7oe/o/tkhJUPWRvmVLtfiSI120TjgWfx74=;
	h=Date:From:To:Subject:References:From:Subject;
	b=fqvHWvpEYucx2yAlfIBpIX7j2VCEbbfg6QAmrOWRuLVxztifRmO2fEUlACDtpzjpvWjYpcONjTXOkwBORyU+a8X6ntB91HVnRzzbum8l3rP9LP3Ia0S/gYk8d3l/qRaI0cESMmEr+kGK72QIm8XaZLSWzifya98gearMoXvGiON2oHHdu1HwG5E0NkVQP60umiNhc470NHRDS8yj4z6Y6n7UWi7hFcjycC+zgt3/+epII0jnKg+NZyacyaE5byKbBGJCySXySjro+31tRN4VHWZbEx7AvLVDnW/KpKSEEEdN6btn/mITW91z/8PsQLkHJPnoYIJWK9dLFmFu/oVFTg==
X-YMail-OSG: Ckc.MDUVM1mgIqf7JY3B4u.qGW0taCi7r2S5pnwFCvDYym4kHg4vGm1KPEpIgNX
	IehNzsMdLxZIgOWzgaTKMiQinqaiYimbXM83hoFjBtmVf1Pfp5gdtL_UWHcRgYIkoJO6ZEVuP2Js
	ZsX.0ttwEHqn6dGt8n7QirT6Y3YPGfAU8CcV3mPAIgoQvadeNM94vZCmCbvsxazS6Qdk8pv2d5Fi
	CLBNVJV6bMoIeNMYagILP2qke3Jo8fCd4djYQRSIizx8z9WFz8k.uGrfWoHJglZAJ_0WljSF20Y5
	hUAKj52gpCnq2WY2P3Rh1lv12LYLbAOkEtZAlnpqmRTtecqx.iIAJV8bDTHcy8SGXfronVrI8wgY
	kl83HTlvxAHJjZ4aXMbK1n8UCYTv2DQkeVYD4dfFZw9gjtYAhlIsKZOtMnI1PNPY4NVWWlIvAreI
	Q1_MwdrfXWilt.DhVVSQTfNL.El_5WO_ptfiy3oHNZV2ziCchNNzp.IqR6E2sGPGBsCt5o9.sjBW
	9SbhMKlNt2n3z4V.52qggRfXX.z2R_py7oXB_kDpafE.GY7deUyit05vXxjUhSmi7V1y.5RQbFgf
	ODGs7QUQmfC9vD2f9XnQOyCglkItIYCmJpQ8BpWD2A3HMWNPiP.8qHPDN3A--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic304.consmr.mail.sg3.yahoo.com with HTTP;
	Wed, 16 May 2018 16:27:10 +0000
Date: Wed, 16 May 2018 16:27:05 +0000 (UTC)
From: Ugesh Reddy <kumar.ugesh003@yahoo.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Message-ID: <1621704137.2131896.1526488025606@mail.yahoo.com>
MIME-Version: 1.0
References: <1621704137.2131896.1526488025606.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11871 YMailNorrin Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu
	Chromium/64.0.3282.167 Chrome/64.0.3282.167 Safari/537.36
Subject: Enabling the recipe from menuconfig
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 May 2018 16:27:13 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2131895_58090505.1526488025605"

------=_Part_2131895_58090505.1526488025605
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Team,
=C2=A0I have a list of recipes in my custom layer. The recipes in this=C2=
=A0layer shall be enabled/selected through the menuconfig, once it is enabl=
ed then it shall be the part of image. is it possible to achieve=C2=A0it ? =
do we have any references?=C2=A0
Regards,Ugesh

------=_Part_2131895_58090505.1526488025605
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div><font size="2">Hello Team,</font></div><div><font size="2"><br></font></div><div><font size="2">&nbsp;I have a list of recipes in my custom layer. The recipes in this&nbsp;layer shall be enabled/selected through the menuconfig, once it is enabled then it shall be the part of image. is it possible to achieve&nbsp;it ? do we have any references?&nbsp;</font></div><div><font size="2"><br></font></div><div><font size="2">Regards,</font></div><div><font size="2">Ugesh</font></div></div></body></html>

------=_Part_2131895_58090505.1526488025605--
