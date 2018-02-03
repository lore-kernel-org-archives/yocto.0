Return-Path: <dmitry.rojkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE427E00E1F; Sat,  3 Feb 2018 06:07:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dmitry.rojkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 670B9E007B3
	for <yocto@yoctoproject.org>; Sat,  3 Feb 2018 06:07:53 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id p188so25856218ioe.12
	for <yocto@yoctoproject.org>; Sat, 03 Feb 2018 06:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=oSmCKXBE9xob4WZGV3QrRW9EldxCH02pK5GCBOGsybA=;
	b=vbRLEtkq0EyQFoOLvF/87BZIUFEoD/YrFk15hSD/kng/oEpLVuVWVpH/+llVWOb6vo
	4ZKtwbr9r3jxx48dQBWozs4mvKyq0sz2N80Y8hpd54ujZzZFUGYy2viyupr4XrZuvT5G
	YOkNC6nZ0Qie6Akpm9uMxh2k/yfBtTj7PNH9lRvr9eX9HbW3/1dwc1grLGHlxGKqZl+f
	3AeFIYjD1mJ7W6xonJnAM8PGetSP7V3Qhp5u9pUulWf/b0pkBvEctouRNrYMdZdlUC5A
	paL+8gKdtp0s4iyBo5wvjge/8H74XTnTPlcFdJvA0T7vi4yeWdzYjyWs+mtB0phBRAV1
	dmhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oSmCKXBE9xob4WZGV3QrRW9EldxCH02pK5GCBOGsybA=;
	b=LOIhOsEnMsflK3+mtTA2uNcs6kW4I8IeiT5rOhIa/FJIchUK/EeU8UPJj24GY82qcX
	zEy8hgJTgR0SDnXpTeeLH6y2JFrQw8mTb3oLDFeGC64OMxWv8qWoTsLD4JV6zEWbuUAE
	J/xe9Pp2dDiv8R9TFm20Wmp6BQ3Jev4YJVanbartL5eN/3RW83L+STzNyXbpQvqCGisY
	N0sdSxqt3zkQmi/lw98aZy9V78JENlYxAyaObpb/HbLqzEd3Xjj7o34Z8sjKaIKJoDyC
	Wyt93JDirqedYc+ezUaMjYc1pw11Y7eftV/lafu83pCewOCV+tINDVMphLXNaFf9K8mx
	wsCQ==
X-Gm-Message-State: AKwxytdkASNs+xqxzpuuRcjknUGT7XXD2Sqajm37IiA2x63lsFZIOhik
	6VsyYWsyiMyKqn2JY20ipwvELFaSpOdCzpUeZNsK
X-Google-Smtp-Source: AH8x227WEPpTZhscDRmpy3S9dw0Y+ZPCiSYm+z0sR4NHiyLL5/KSGrYJmSOhzdNL3jHm6sWSVmA9hlhtFzCDXykihwY=
X-Received: by 10.107.170.81 with SMTP id t78mr28005942ioe.98.1517666872423;
	Sat, 03 Feb 2018 06:07:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.102.6 with HTTP; Sat, 3 Feb 2018 06:07:31 -0800 (PST)
From: Dmitry Rozhkov <dmitry.rojkov@gmail.com>
Date: Sat, 3 Feb 2018 16:07:31 +0200
Message-ID: <CADn_Tpjmnxk99v=7MAV05k9AWr0+6hjCkT3JF5prUAd=LxhyUA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Cloud CI for Yocto-based projects
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
X-List-Received-Date: Sat, 03 Feb 2018 14:07:53 -0000
Content-Type: multipart/alternative; boundary="001a1141586ad17bf005644f5a9a"

--001a1141586ad17bf005644f5a9a
Content-Type: text/plain; charset="UTF-8"

Hi,

I have built a simple CI system [1] based on Azure cloud for development of
meta-ros [2]. It's similar to TravisCI, but doesn't have limits on neither
build time nor build size.

It has many shortcomings, but works for meta-ros. The system is meant to be
configured as a Github app either private or public installable into a
Github repository.

Feel free to fork and modify for your needs.

[1] https://github.com/rojkov/yottaci
[2] https://github.com/bmwcarit/meta-ros

BR,
Dmitry

--001a1141586ad17bf005644f5a9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I have built a simple CI s=
ystem [1] based on Azure cloud for development of meta-ros [2]. It&#39;s si=
milar to TravisCI, but doesn&#39;t have limits on neither build time nor bu=
ild size.<br><br></div>It has many shortcomings, but works for meta-ros. Th=
e system is meant to be configured as a Github app either private or public=
 installable into a Github repository.<br><br></div>Feel free to fork and m=
odify for your needs.<br><div><div><br>[1] <a href=3D"https://github.com/ro=
jkov/yottaci">https://github.com/rojkov/yottaci</a><br>[2] <a href=3D"https=
://github.com/bmwcarit/meta-ros">https://github.com/bmwcarit/meta-ros</a><b=
r><br></div><div>BR,<br></div><div>Dmitry<br></div></div></div>

--001a1141586ad17bf005644f5a9a--
