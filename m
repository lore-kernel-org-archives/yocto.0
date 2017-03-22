Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C0B5E003E1; Wed, 22 Mar 2017 08:36:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.49 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A21DE0030B
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 08:36:30 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id g2so109267738pge.3
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 08:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jmz5LwTImpA1uc52c7OjrAOs5lv/njb5vq6F3LTDEMo=;
	b=S94C6YftWh16jRVP0pThhfyplARfBSYqFfC1eqwysAlX2GhsFCb+HKDdpp+Hq2ff3N
	t80GKk7L/cOkEzVdTNxpQ5QuesO9SWWiGLGznjui60tvYqpeuKVi8xApG/Ej6G+26qQa
	hovC1WF7Tm5iKyJQ0wU0ttzJhVfsH4q+OSxqEDKIzVQXts9wAmMH6Iin9fRBQZuYFRWo
	HGUpirxW7B/4zjkG2Pb8NoAiufexrw/ERcFGemBOHLfR0Z7rcBfk1FB2RgYRG2burKzc
	05Qa0WabktSa0dMBBlo2kp3WKwK2B1dSQXhvQVPKcndomGivkRk+RmnE6shesxkpSF7g
	Vy1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jmz5LwTImpA1uc52c7OjrAOs5lv/njb5vq6F3LTDEMo=;
	b=cjuFwnuVdM+/wpa/ykOgRrph8IYb8w7iiP2cnR0d3nPlicJB4fzIVkUIECgai1Y9hM
	B1gpC59y9HlED/vmS3PpY3HDUBntiUXw2FDf76HfG2h7tjAH2Q0Qarw4jWcOzRTLqM4q
	0S2oIDdSyK0dgJ5gbovOM81mkR4lwA0DsH4Kygb3wNNE/UtbkdKh8fAOYN2sm4KBbxrZ
	Ygt/6AJJLyLk7uQ/RdUGdKMx2nxbPPNOgvcBNRTg0ieaU05IFLbiUl74KMyADbkIZ20z
	5IPhaxOY4VNn8ANPbyDeogC3MxkE+gwzx6pGVV5nRbQEE3E7/R6xUB0xrZpVY9Fm0y9e
	oq6Q==
X-Gm-Message-State: AFeK/H3UAn89MoI2yeA8BX8Y6f6HPDZrvGRQC+KqZtAS/2HIC4t4sIieetU5XUTr6IYRN4LobSPNq8ach4dX+Q==
X-Received: by 10.84.169.36 with SMTP id g33mr55842147plb.36.1490196989975;
	Wed, 22 Mar 2017 08:36:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.161.45 with HTTP; Wed, 22 Mar 2017 08:36:29 -0700 (PDT)
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Wed, 22 Mar 2017 21:06:29 +0530
Message-ID: <CAF1M0z59wXTT=_79TQYZv0cso9-qnxy=Sgsrmn5qR_XtCppMcg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto with Embedded Android
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
X-List-Received-Date: Wed, 22 Mar 2017 15:36:34 -0000
Content-Type: multipart/alternative; boundary=94eb2c13e2623ba67e054b538607

--94eb2c13e2623ba67e054b538607
Content-Type: text/plain; charset=UTF-8

Dear All,

Is it possible in yocto project to bitbake the android files say android.mk
files?

If not any specific technical reasons?

If yes, any reference materials would be helpful.

Thanks,
satya

--94eb2c13e2623ba67e054b538607
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear All,<div><br></div><div>Is it possible in yocto proje=
ct to bitbake the android files say <a href=3D"http://android.mk">android.m=
k</a> files?</div><div><br></div><div>If not any specific technical reasons=
?</div><div><br></div><div>If yes, any reference materials would be helpful=
.</div><div><br></div><div>Thanks,</div><div>satya</div></div>

--94eb2c13e2623ba67e054b538607--
