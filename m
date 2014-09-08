Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A142E00848; Mon,  8 Sep 2014 02:44:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.30 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og115.obsmtp.com (exprod8og115.obsmtp.com [64.18.3.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59086E0049D
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 02:44:20 -0700 (PDT)
Received: from mail-la0-f46.google.com ([209.85.215.46]) (using TLSv1) by
	exprod8ob115.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVA16c03zCcT+9PAPlLBoBrWEsC+gwTkO@postini.com;
	Mon, 08 Sep 2014 02:44:24 PDT
Received: by mail-la0-f46.google.com with SMTP id pv20so17178778lab.33
	for <yocto@yoctoproject.org>; Mon, 08 Sep 2014 02:44:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=QNVLjE1mU2QiNQgWgYPlmHbP9542+Ft1PzsDzj5TK5Q=;
	b=YBK/saR3ACYykx0d9F6jVXLq0rQKfkyaoU1WjDLg+99HJnZqkO4n4bxlX7ejHQ2Vfq
	GyRMW50WuD0lNYOHbgpKHLF56ukX4P9okSnIHOm6no3r6wtjMR+T0Svhu2AFncNSJZoy
	rlxWjC1L2w/VOi0CPo5Vgycpj43laynCSlyq1U4IFVtZo/3U4xUG9Ro/Tuyf3I1A9CH/
	r5kaYNWwVHxMSrY6bM+kWZ3s5UtEex5xbBkj0bKxCBun8/NuukeLOnMx2MDsXRxxROSQ
	48i9vSeYSyO/Dvy99R6IEk4qAqP/E6qorICQqG2iOOELlcYEqYVlA511OAHktFpW+D+/
	OJxQ==
X-Gm-Message-State: ALoCoQlqWH88tf5WixQK1xhKksLEbLGihZkM20U89ehDmUl+FAVq36azR0Lg6wSrL35A5cXpQGbJ9jSo722SmO3DMRpMlnOjvI8xpnWFEJWdH5deowio2ts3lFW4vt4HbZ6Cut0fWBpg4TQ8K+akk4GKggqLeLnhmg==
X-Received: by 10.112.54.135 with SMTP id j7mr26030687lbp.51.1410169458558;
	Mon, 08 Sep 2014 02:44:18 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.112.54.135 with SMTP id j7mr26030673lbp.51.1410169458424;
	Mon, 08 Sep 2014 02:44:18 -0700 (PDT)
Received: by 10.152.10.97 with HTTP; Mon, 8 Sep 2014 02:44:18 -0700 (PDT)
Date: Mon, 8 Sep 2014 17:44:18 +0800
Message-ID: <CAJrRHk5xKDOGa2wGsiDCj6srs7uqd2KbG7C_u4E_uy6iyxxL+Q@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Add perl-native package in SDK
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
X-List-Received-Date: Mon, 08 Sep 2014 09:44:27 -0000
Content-Type: multipart/alternative; boundary=001a11c3b926a4a64205028aa9ce

--001a11c3b926a4a64205028aa9ce
Content-Type: text/plain; charset=UTF-8

Good day,

How do you add perl-native package in SDK? When I generated my SDK using my
own target, it was not found in $(PKG_CONFIG_SYSROOT_DIR)/usr/lib.

Really appreciate your help on this matter.

- J

--001a11c3b926a4a64205028aa9ce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day,<div><br></div><div>How do you add perl-native pa=
ckage in SDK? When I generated my SDK using my own target, it was not found=
 in $(PKG_CONFIG_SYSROOT_DIR)/usr/lib.</div><div><br></div><div>Really appr=
eciate your help on this matter.</div><div><br></div><div>- J</div></div>

--001a11c3b926a4a64205028aa9ce--
