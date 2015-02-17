Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D37A8E00777; Tue, 17 Feb 2015 14:49:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BEDAE00744
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 14:49:47 -0800 (PST)
Received: by labpv20 with SMTP id pv20so38540803lab.8
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 14:49:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=gNrgdlAu9jmGxMZnY26MpiYS0w8Kxvcqk9p3/+GSrs4=;
	b=YEWsapz5zTC49UFydTOjn991SZS1lZKNpPt+/eECCNI3TxJ7VADF1SATTRaJbpn6rJ
	GuNkwn5isT4cdw50QpupsuFUX5pDDg7u7pBqAINP+AQTdx2uYgiFId2qXndZe3dnciJm
	KIfynP8LpVI02rD143AcNTI2dQ6IWiB5/OdN3GCrF8eB1smPHxfl3aAuXM7/IY7kaSoj
	FMcY43hpEIDIKXQNT5g/ZjFqxkXanJhcGhah0ZUsbXfJo2sylTcBYOtCRSyyH72caDY1
	+hfF4+68Q2ezomH5jpkiyNgLs5B7831jBlAO/xpKAn5cx8TSyLTscWtFKR9oTh/8tBR2
	xuYQ==
MIME-Version: 1.0
X-Received: by 10.112.215.35 with SMTP id of3mr20940269lbc.101.1424213385530; 
	Tue, 17 Feb 2015 14:49:45 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.25.20.12 with HTTP; Tue, 17 Feb 2015 14:49:45 -0800 (PST)
Date: Tue, 17 Feb 2015 20:49:45 -0200
X-Google-Sender-Auth: 4J3L2uNTBGjY9DU04H4agqykIwc
Message-ID: <CABKVDBDgbU_pk8QiEOAkaR6F3uvyZBvEEDYFwSLMCMAE+F_j+w@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Device Tree Overlay to BeableBone Black Kernel 3.14
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
X-List-Received-Date: Tue, 17 Feb 2015 22:49:52 -0000
Content-Type: multipart/alternative; boundary=001a11347644edd325050f50846e

--001a11347644edd325050f50846e
Content-Type: text/plain; charset=UTF-8

I'm having trouble enable UART4 Beaglebone Black with Kernel 3.14, in
kernel 3.8 I'm use capemgr use and /sys/devices/bone_capemgr.*/slots, my
problem is kernel 3.14

With it a bbappend or something .dtsi for this?

-- 

*Att,Cleiton Bueno*

--001a11347644edd325050f50846e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m having trouble enable UART4 Beaglebone Black with =
Kernel 3.14, in kernel 3.8 I&#39;m use capemgr use and /sys/devices/bone_ca=
pemgr.*/slots, my problem is kernel 3.14<div><div><br></div><div>With it a =
bbappend or something .dtsi for this?</div><div><br></div>-- <br><div class=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><i><b>Att,<br>Cleiton =
Bueno</b></i><br><div><br></div></div></div></div></div></div></div></div><=
/div></div></div>
</div></div>

--001a11347644edd325050f50846e--
