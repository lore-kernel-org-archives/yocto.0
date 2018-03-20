Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 684A9E00C4B; Tue, 20 Mar 2018 06:24:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C964AE00823
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 06:24:13 -0700 (PDT)
Received: by mail-ua0-f177.google.com with SMTP id x17so979549uaj.12
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2018 06:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=EP8m6nlrZ7E00wxG10chzOOeVhmA9XkLfuM12Ksl7uc=;
	b=odUIo2p/JpTu5NLNGhG0/JyIiMTVF7ZkEgkhKpsHyw5FFjxcP+QprD9Db+D7pNR/Ym
	j8T4emoGzJkt8xCgGroOTKymi8Y0F3IyqHGjUpxNMc4JShWG3T2CXSUDx26TjocFWP4X
	SPo2+HPHiJhkSZ9io+0PqwMtIyC2I1sgP10rtQLh8DUaNxg6RK0klnWzxvbLZsZIWjK1
	cmYV4t09b3upR/G1aiya8AI8FUJihGS1GbgAKVQpumlyJC7YUVSL6KoYkeXDcCVbPaxC
	7GKuwTPLi1/D3Hx+Rr6cZnIVVPJfmA6ZP4IR+DtR9Eb3cG9TGyX8YwHRQn1eeaI/MhUd
	EtIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EP8m6nlrZ7E00wxG10chzOOeVhmA9XkLfuM12Ksl7uc=;
	b=oJsf4RJ2VWX8jMRl8+IcJjso4uZijeklxSUTxB8MHrE4+up9FqRg1JcveLQAhopQKo
	Px+xTQAguXkV/56f0TWA5rqULiG5B4H4Mg9n7f01YSTYnjtcnXQc6h+fHdR4U+8lHOLd
	HyF2crya9/6iiiEMXomq5t4o2xE+MqXk2KW6Jfpfmy74W/DMaj8xJwNyDtuYfEOpZRG/
	V4vAvhCQqzMXmuEUCLvEHDO8F3rUzOiCVkMeK3WS7MIKViOKekLdraa80DCLTIoTV3TA
	V+GLLoL/3g4NnjhKE1Vs3QBk14P5JEwmJVoAMw+mxTGLKJchU46WU9GPoa5ECE/SKOkW
	yRMA==
X-Gm-Message-State: AElRT7FtmREsDnrJo6WsxOnRWuFx6/Vp5ck5DP2eujHmgSa6MyZfk2XA
	wlBI5+ZtixRbPnnoJJbMcFdCLQhtGjoBCFbdrNc=
X-Google-Smtp-Source: AG47ELup5A6XsGFa/JWzFJUCSOPpfTfX5ed8Q6nz1agbkKX4LsvX2+jdIi/yfxIgKhwC0E0uB1pem8aiGCMba3F3bgs=
X-Received: by 10.176.20.162 with SMTP id d31mr10938952uae.66.1521552252733;
	Tue, 20 Mar 2018 06:24:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.50.3 with HTTP; Tue, 20 Mar 2018 06:24:12 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
Date: Tue, 20 Mar 2018 14:24:12 +0100
Message-ID: <CAC+thW32K_i4ueR_YpsN3mZ-eMRZ5hSCxj5ZDpqq_gYLL4XFyg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: use of variables in wic files
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
X-List-Received-Date: Tue, 20 Mar 2018 13:24:15 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Is there any way to reference bitbake variable within the wic file
syntax? Got to this question after a wic file of mine recently broke
due to a u-boot artifact changing its name after an upstream update of
the u-boot recipe. The wic had the artifact's name hardcoded as a
parameter to the rawcopy plugin. Could I have been referencing the
u-boot artifact via UBOOT_BINARY variable instead?

