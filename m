Return-Path: <michael.calve@vectare.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4323DE00B3D; Wed,  7 Jun 2017 10:59:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F40EE00B01
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 10:59:37 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id y77so10335018ioe.3
	for <yocto@yoctoproject.org>; Wed, 07 Jun 2017 10:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=vectare-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=YbrF2hdLpMGnr/V2hEJFsPYP5QE1gq3EXggykT12RnQ=;
	b=b40mAL0VCYipUS7FeO6RJrQ2GT1Wk3/TvxjYgcjN96ZRN8hJNaIqtyfdyX7brPAVtd
	AO3u2TGa0Wu0QPe4uAjhJs8f6K/oN5XQLRsNdS0sIUQSOr3FXz1NqH55cNWW8aXd2JkT
	azAsh3oV0Enxpjh5IMxuPYn4JciWn6lY3ESxTGShJXBoUuAob0lSOEbHtgyoVRl4qRMS
	isANdutb8gIzrIY/fR9tIKo3b5YMNaPPHLLxZnK3LH4XUUw8jr6Z6tce3dXv0Js8TNMf
	TRqQRUeQp8R5AC43UEdGPKcScO2QmcFe2NPHBbcL8/jiB9EoSH5RPZb0W/ZTl8n7KhSu
	UjVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YbrF2hdLpMGnr/V2hEJFsPYP5QE1gq3EXggykT12RnQ=;
	b=VfUr8AvOw70nS1FTvS1ZXqCKICQNvJ+wAWUT7kTYuIOl131bw4j06To6C/mm7cUuwV
	io/f+2WCTx8g/Fa9mHozswnClU+GUd2CfsIADe/xBFi8FTLMm0kW2LMkXOTn9P4dRdvo
	7yj2e4uj2WG9zYauQemREbRg0m3w7GqWHAOQwGbvj+dpoAR2P8+tanwquWtn0OLbAr9P
	RDeMsQIr5Yo+D5E32eJUdr0ADaIhuCIqg697BJIZ0tlcnUsksMytzyN4Wws4lTyjCcVz
	tgebTTG/3I4ElZJZ8lcNIs3Hm9OZRbXh6K5sBqvgQPZYeyQN6REUAvMZp7Rnp+U5o79S
	GLMw==
X-Gm-Message-State: AODbwcDCtqWdyU9Um09ZZc3h+juKxrUpMA35zSH4/lwcoKXZ4hwwOuI3
	xySjM4U7Ese4JC/PIeJx6EGpvfn/YthkCCI=
X-Received: by 10.107.147.134 with SMTP id v128mr31825830iod.70.1496858376419; 
	Wed, 07 Jun 2017 10:59:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.152.86 with HTTP; Wed, 7 Jun 2017 10:59:35 -0700 (PDT)
From: Michael Calve <michael.calve@vectare.com>
Date: Wed, 7 Jun 2017 13:59:35 -0400
Message-ID: <CAML1SccnQCtK0WQ8uauHLXhZO9Sc9e+sFYnmjoHoc_S0PbsczA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sat, 10 Jun 2017 06:58:52 -0700
Subject: Wireshark but no Tshark?
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
X-List-Received-Date: Wed, 07 Jun 2017 17:59:38 -0000
Content-Type: multipart/alternative; boundary="94eb2c055d18ce82120551627f49"

--94eb2c055d18ce82120551627f49
Content-Type: text/plain; charset="UTF-8"

Hi, I've seen that Wireshark is portable to Yocto, however Tshark is not?
Is there other/better software for reading pcaps and getting field data???

Sincerely,
Michael

--94eb2c055d18ce82120551627f49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I&#39;ve seen that Wireshark is portable to Yocto, how=
ever Tshark is not?=C2=A0 Is there other/better software for reading pcaps =
and getting field data???<div><br></div><div>Sincerely,</div><div>Michael</=
div></div>

--94eb2c055d18ce82120551627f49--
