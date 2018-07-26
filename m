Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4215FE00CCE; Thu, 26 Jul 2018 05:56:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83482E00C76
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 05:56:58 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id p22-v6so990733uao.7
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 05:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9s8X1upcXOTxAFmRlyBGisGlvTLOGPsSMGM8DGgIwTk=;
	b=c9b/sxxNMVa4dENEhPPpKmlARHReNPHRrCYFGEJE9KuJuGaivBtx9htGFsgsQudtYC
	ZFVEpUUV61ktjjegq8u9W5vBlK8TLgl4ayLp27psCemesGbMHGooJSUp8qqivsl4C8u8
	MDIPB0phHtwBR7o1w/dHDV8AWCqZKitnG+3CrktdKZN606uGvBtcWrLkH0NgWYGZwcHm
	O6oZnIjoEMpxnRDRstZJkUDTkuXWa5C5clWcjdatHhxlY6sErCe350LbLGU3mmL/Gkjn
	Mlqo2SjskVLueAuq3C04J+khnQ6URFK/kb+wihFGsrSvtpRH4H4wLi/2Qlkh1zKWkqoU
	v4IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9s8X1upcXOTxAFmRlyBGisGlvTLOGPsSMGM8DGgIwTk=;
	b=bAnZXWJDBuFvXIGYtrj3eWxoHioRJeCW0t3RKswy4hH+vmHalBcb/YintoSHfbDpgJ
	rJ0FGNOO7YfE4lIAxa91qU528eM4E26sfQ2iiN/UDo+xAI98lCLcKmcVYRRAKO0vJYX4
	G5kn3EZQvigWVpgmpH9WKlDxowXij0+q+mRzFMLdTcb+bjLxFnTCwwAxeKj9CBpg2UeU
	B1Q1wVjjUmfZlVTO00U9vGwAW5u9bmXxJ4SKKgn2qqDqdA8QfMEtVWwsnanZlBAEixE/
	Hqg1/3wi4DVIQyCFsxiTTHfzLEQ0kzOi+9zhrzTYmGM3NFABAAb/vUn9wV8F17oviREC
	la2g==
X-Gm-Message-State: AOUpUlGMy4ILTSOcSBLYnpHuqMevgsMIlKrznficECPdC4HkxUpLE5RW
	dtRO6ydyRDqR9sqn7+mixMvcVqyG+sEzpv6UI/xdvLu8
X-Google-Smtp-Source: AAOMgpcCQvO0F8C3eYq9a+clxsOLLr0B1upwoS7J7epGOKlL/XPKnKYCxL4tE4kuEpmk8iKv/eKoQGAnzsODDuBV8Jo=
X-Received: by 2002:a9f:36c9:: with SMTP id
	p67-v6mr1240328uap.120.1532609817544; 
	Thu, 26 Jul 2018 05:56:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:34dd:0:0:0:0:0 with HTTP; Thu, 26 Jul 2018 05:56:57
	-0700 (PDT)
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Thu, 26 Jul 2018 14:56:57 +0200
Message-ID: <CA+-BmJY3L5ur9MWSG4G-+T_5zd3H+8Wo0-cPD7qONimtoXfjUg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Intel machine with 64 Bit kernel and 32 Bit user space
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
X-List-Received-Date: Thu, 26 Jul 2018 12:56:59 -0000
Content-Type: multipart/alternative; boundary="000000000000c10ac20571e687c0"

--000000000000c10ac20571e687c0
Content-Type: text/plain; charset="UTF-8"

Hi list,

Is it possible to define a MACHINE configuration with a 64 Bit kernel and
32 Bit user space ?

The user space should not be using a  x32 ABI.


Thank you!

best regards

--000000000000c10ac20571e687c0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi list,<div><br></div><div>Is it possible to define a MAC=
HINE configuration with a 64 Bit kernel and 32 Bit user space ?</div><div><=
br></div><div>The user space should not be using a=C2=A0 x32 ABI.</div><div=
><br></div><div><br></div><div>Thank you!</div><div><br></div><div>best reg=
ards</div><div><br></div><div><h1 class=3D"gmail-grid--cell gmail-fs-headli=
ne1 gmail-fl1" style=3D"margin:0px 0px 0.5em;padding:0px;border:0px;font-va=
riant-numeric:inherit;font-variant-east-asian:inherit;font-weight:inherit;f=
ont-stretch:inherit;line-height:1.3;font-family:Arial,&quot;Helvetica Neue&=
quot;,Helvetica,sans-serif;vertical-align:baseline;box-sizing:inherit;color=
:rgb(36,39,41);text-align:left;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;font-size:2.07692rem"><br=
></h1>

<br></div></div>

--000000000000c10ac20571e687c0--
