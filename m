Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7F0CE00CE8; Wed,  8 Nov 2017 07:41:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.176 listed in dnsbl.sorbs.net]
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
	*      [74.125.82.176 listed in list.dnswl.org]
Received: from mail-ot0-f176.google.com (mail-ot0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42A90E00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 07:41:04 -0800 (PST)
Received: by mail-ot0-f176.google.com with SMTP id n19so2263009ote.10
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 07:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=O/RW+S0vTk6r/VHDn2JYefcC8A6WvJIjxCCSWLObXCQ=;
	b=lFuZKM9blI5mpEwH4DvKV8w3330kdgo1AWPRUOvkW5M9Xe1nE11b6mRETVTiFq8JwG
	gRcdsdn77t1905t3TmfuMLfDY+7ZIkNhcaJ0qHhaeVScUo9igPCIH+Ztz/naXAuiCx9Y
	UVrliuQrIDSjZIlY2bcCmDj+488aWvLcKekLQ8v1inHdvZErj7fJorlq3yvyrQ0XyacW
	hZt0BvNPatz/W94l1cRZOtq2uHdRaLGIEnaGYdZFOpH5yShyDrXOUKdHKADNPaZCu8yW
	mFIHn2QtKRtupJCUYvPuRME4SnEqjNVwYNsM4h1Ht2wslIdXxBhW/+ioxoCHNK/t7ttY
	GcrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=O/RW+S0vTk6r/VHDn2JYefcC8A6WvJIjxCCSWLObXCQ=;
	b=DmTK32TpL2ESdPXIYJUrSzcnRGIe4vYIpK3peldreu9nJkJewAH/S+y1arg9y7Yw5r
	TEzPvfB+ztpqeaNSU17wmbzCV24wHfDkIw/IJEx5EDsN8X27YaAg4xk5sCNKDoC8C8XK
	3T+98xqkWEaoI42PN70QDWxlpdWbQp2OC2OS2Y1QttOU+Xxm3Hyx1ZKsrFArisOlUb+r
	0VXHgeyVVRZIG+1Ie8Sx7heDhjyO/VrZ+25RCGvJIu4EX4LptsTUc3BKvO6fsuU6g3cY
	luMxUM7mzoV6+j6X87ofGDSkE81UAt9eSSU+xm4TElXiqSV5vSXm65vsAeiNRoKVBvJi
	dSxA==
X-Gm-Message-State: AJaThX7YVsD2mWvg09HKi9lR4PePQ6AyAEnHqvLtisDNm6uxtLwnpayZ
	nQhk2L2oaz+7qodomHnspa2t2QpmjOQrLtXr9143Zg==
X-Google-Smtp-Source: ABhQp+RHFmm26tr/yx9fml1PstjcwpMgSysn5CQ1Rn5S8YEOgt0tjZnKfPAySj4NsBwgclr6uAVhTXfUsa0F7OSeOmo=
X-Received: by 10.157.1.238 with SMTP id e101mr549965ote.99.1510155663906;
	Wed, 08 Nov 2017 07:41:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 07:41:03 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 10:41:03 -0500
Message-ID: <CAE0QtjNoY6hheGcKzzg86N+8AxOL4k8n-kTxyq1KGa660_Ut_w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: yocto documentation: no content, no PDF?
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
X-List-Received-Date: Wed, 08 Nov 2017 15:41:05 -0000
Content-Type: multipart/alternative; boundary="94eb2c03cf94e71db1055d7a836e"

--94eb2c03cf94e71db1055d7a836e
Content-Type: text/plain; charset="UTF-8"

Just wondering:
* As an active project, why yocto documentation does not provide a content
(better be clickable)?
* Or PDF format for easy printing.

Isn't good documentation the basic requirement for a good project?
 (By the way, the yocto homepage is also ugly!)

Thanks,

--94eb2c03cf94e71db1055d7a836e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Just wondering: <br>* As an active project, why =
yocto documentation does not provide a content (better be clickable)?<br></=
div>* Or PDF format for easy printing.<br></div><br>Isn&#39;t good document=
ation the basic requirement for a good project?<br><div><div>=C2=A0(By the =
way, the yocto homepage is also ugly!)<br><br></div><div>Thanks,<br></div><=
div><br></div></div></div>

--94eb2c03cf94e71db1055d7a836e--
