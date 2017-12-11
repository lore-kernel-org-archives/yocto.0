Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53DC9E00D7B; Mon, 11 Dec 2017 06:18:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE7B9E00D55
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 06:18:49 -0800 (PST)
Received: by mail-pf0-f182.google.com with SMTP id c204so11628627pfc.13
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 06:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2mFuL3kE+QftBEqAAtGogaqV2KmtXYZXg3YO9LDXLhg=;
	b=Ytn4CU9KPKunnYP8xRenGRAUWUV6wkPzvfeQ9lLzrbRR4zLoRyOdOL7rNwwJyTYWEA
	lxX3uOryEIZFmiGh8uK0f0XO32wh42qka5dpA/Hz7TIbe2QxoRmbDHHWBD4AQg03jeDn
	IQVGZ8IBsIPdtMk1oqP0hR6+vdMPq/VemyE+/YAL8XDV4G4xvFlW3nVNYELRDQf2mlEc
	1AVVJ/prN1l4ZUawdKp2dIgas9aMtmaQfK0hgh1EGh0Xys5nPJzpmFMxn06uQOE6tuC/
	KAxGfe12VLl95DHe964hBV3jfqpb8LX0SVBAuzumV+r2IpqfiI6wwoxushtePs35WQ1I
	DwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2mFuL3kE+QftBEqAAtGogaqV2KmtXYZXg3YO9LDXLhg=;
	b=S3Ii5s4BiY7nNxnNbtYEu39WxMPIL81ocJKEsCfgJjR/3Gn3sq/vsLWZbAhOS11r+j
	CawjcUSwjrKrM/wICLp7sOsPq6qka7hLj5VYkIJss8UQBwpVHLtajrhx3X7NPmNJ0mhs
	pO5q9gRXg+ZNOpmPwEdtQzYvWHvoey/vCKv2SBL1zpeXdXO591nsveLXL3+BgqKmR9jG
	DeAvo8+sqcW4HDamv8V9J1F2EjETNgq+MCMHueAACaftOUfGeiCUOnDqLHNOd2o0BnFN
	6SKa+KrQ9jWQuJ5Y8mC2UZzGbpmSpUIrnJWB2hCg4B6Yay9ZaSXmZGs8joKh0g3OZ+db
	i1bA==
X-Gm-Message-State: AKGB3mKLYrPwDkf7n60UWzgzDr8h82WYp43sSymSp8q7AXQRtdHuGCCI
	UZhZV4PcELTrbq3Re+4v8MYgu7sh/V5XoQkPD4k=
X-Google-Smtp-Source: ACJfBotblvE7Ti1+TpBSO1owD+ITdANyQmfq0uW2MRmsPuW2MFO/LzWg97iilBzq7IpXeib3TjrcB/8AYkzpKUCKTBY=
X-Received: by 10.98.46.7 with SMTP id u7mr522313pfu.37.1513001928690; Mon, 11
	Dec 2017 06:18:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Mon, 11 Dec 2017 06:18:48 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Mon, 11 Dec 2017 15:18:48 +0100
Message-ID: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: recipe to clean up files from rootfs
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
X-List-Received-Date: Mon, 11 Dec 2017 14:18:50 -0000
Content-Type: multipart/alternative; boundary="94eb2c1185e0810f0805601136ca"

--94eb2c1185e0810f0805601136ca
Content-Type: text/plain; charset="UTF-8"

i want to create a recipe to clean some files from the rootfile system, but
i don't know how to let this recipe run the last one before building the
rootfile system.

any idea?

--94eb2c1185e0810f0805601136ca
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>i want to create a recipe to clean some files from the rootfile system, but i don&#39;t know how to let this recipe run the last one before building the rootfile system.<br><br></div>any idea?<br></div>

--94eb2c1185e0810f0805601136ca--
