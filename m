Return-Path: <mathewkunjumontharakan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2A57E00DA9; Fri, 12 Jan 2018 22:20:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mathewkunjumontharakan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f176.google.com (mail-yw0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FA6CE0085E
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 22:20:25 -0800 (PST)
Received: by mail-yw0-f176.google.com with SMTP id t201so3442741ywf.1
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 22:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ToSqAUyhzRiTHa1gFj4lRHpuxEydAAZ6+cedHZWk700=;
	b=SnQV2s1Qc8pkALVkmJo6MPYeTw3YoJ8k+oqfZEWOhUA8x8sRssjLuiRqHZg29iHPrg
	XomWhl/5TkcGZigm+Ar0QpZGHpVFNekrFgDdbuRslJPxfvz6lMtrW7+gH4j0pEXS6G0O
	lt6JbMvS0PqeayTGDxw6cB/AXZiaMcLKXeJMBAeOfh6YMEDHP9GszbqmZr7s/yRbfiUD
	15HaIhjmchI2wMr2nzUDCkUAGeFhCtTgiJoozv479c4jWp0+C94szzcu0XENHBKXBYPe
	WmS+X4wOR9/E650g+Imw+98Gtk3ghYRLGMma//bbANyTDNu4JQ7gjGjsYm29qFMwcqNr
	3tLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ToSqAUyhzRiTHa1gFj4lRHpuxEydAAZ6+cedHZWk700=;
	b=Sk3Hkkb7ydYiLefMRNHyLLteH9k6B8/v0RKqcPrSa/jzlPjadUlzq26xq5Qf+gVHpj
	rjdhkl/mc+JtrTRHWM9Bp6oHkWz6prQbTM6XRwYlEUnbWZ1X6K7vj5CLu/pMZIrKH8Dw
	BcLFQ0xH73sRcixEM5jmsazsFB6ZWP5mIAkKKMoRwBH4Zqb+3tqgnKfB0xv/JGMFG6Di
	1hsG7feGpEjXxweyETzrsOYXeVuV8LlJbMBmAhTkYdxdd36cmXnql6awRqaWcMwaHCQK
	fNgCFwJn2UVdB2/whDy1O/5sn5mCZ1kMIk+lAUM240gu16KjKxOTt+x9c30ZOJlW/g1O
	QaZQ==
X-Gm-Message-State: AKwxytc3X7int8x17uouvTqBEPrFHYyQD2tZztsosv2TGwtK/XC5BStU
	U6Moq/83W+QTVlY1H4rZaco2JxhMmFi/BWxHPAU=
X-Google-Smtp-Source: ACJfBotPtfh+dp6zgw7ZPVKPduEcKagEmNRn8dVnXcEA5XIfphK7DOtxvzhgHUKdEtSLxp2OWr0zfSE3PsqKJvsAiLM=
X-Received: by 10.13.215.131 with SMTP id z125mr2723688ywd.317.1515824425350; 
	Fri, 12 Jan 2018 22:20:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.231.197 with HTTP; Fri, 12 Jan 2018 22:20:25 -0800 (PST)
From: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Date: Sat, 13 Jan 2018 11:50:25 +0530
Message-ID: <CA+JFif0Zqz-jbq=Mq9Vs=D3Ft-_mkJtuZCFU32_XPpwF3BcWYA@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Reg: SPI enabling in imx6ull
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
X-List-Received-Date: Sat, 13 Jan 2018 06:20:26 -0000
Content-Type: multipart/alternative; boundary="94eb2c075b586a3a840562a260fc"

--94eb2c075b586a3a840562a260fc
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm unable found spidev in /dev, I have done necessary changes in .dts
file. I'm working with iMX6ULL evk

Thanks
Mathew

--94eb2c075b586a3a840562a260fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I&#39;m unable found spide=
v in /dev, I have done necessary changes in .dts file. I&#39;m working with=
 iMX6ULL evk<br><br></div>Thanks <br></div>Mathew<br><div><div>=C2=A0<br></=
div></div></div>

--94eb2c075b586a3a840562a260fc--
