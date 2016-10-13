Return-Path: <contrib.open.source@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 209EFE00E3B; Thu, 13 Oct 2016 01:49:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (contrib.open.source[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
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
	*      [209.85.223.195 listed in list.dnswl.org]
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7197E00E39
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 01:49:24 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id q192so4524958iod.0
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 01:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=HpLIbE/31bkPWr0pQ6Plkw96WPMxHG0yALjkT3VbvHQ=;
	b=ykGHDgnUj+IJoDdkMayRhcJvteCqefIPwU9P47ATBrJKnHqL0jjiqzSwd8GAwmiI1+
	cSy0CRtBPbD0ThJLDgemasOTub0DqFQjVTkiCV5XzN2W2cp3SeVJcEafEKCmeCJupnZN
	9m34lxo92+4z0DI6i+ld/MlwIFH1835edL5Vs1bQ9fkwYyrLWS6Veca0948ndQx8Qktt
	wAmeqQmiwpbKWmd0YFJRjevUGCG1aXpoL1gE/tl9JrXVkpRorFndILktn10DiJiRPuij
	54pg5LstdVqn318G06+YP7L/3KXyAvkpWfjr3lJbWiZHeXgIeNGM1ZpzsS6FggxB+xOt
	WH3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HpLIbE/31bkPWr0pQ6Plkw96WPMxHG0yALjkT3VbvHQ=;
	b=iyw7iVdRBhpXa/fExHnS/zGvKG2oVXftbD7EwWIwD65utPGEJ7K847eEbzSca26zXF
	4RhH7tiXB3LxPsz8MLAiraxSrBuESaOyjk9yfo9VXAFDeP23n8nyb9K6RPY3JNmDqgfe
	SDTCXrVEFFsgYSNpf7bqK5peiAz3szAhQ4uWXNSEs4ulYhwmeCneTcbvWn/s8XB6ic6D
	JTpF2n/RMgPKONFFk3kAyGNGPXbjYM9WfiPjbL7OHoxf+68wev7whmnJRrQHOYaeep+P
	Mg1Sn1oy+/nJ2fxh/4dUSso/Lzo+XHkbcN2jY6ljbA8m50Rgw4FUpqPU2NngvCqr8gSz
	PCMw==
X-Gm-Message-State: AA6/9RlBGg+gk5VrUkEHQzMzCnfHMbIgye9y74+6viJuLfjznFENb7LJJEIfaY61MdeEuVdK1cXe3PbaZTFTQw==
X-Received: by 10.107.20.138 with SMTP id 132mr5407322iou.47.1476348563455;
	Thu, 13 Oct 2016 01:49:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.126.232 with HTTP; Thu, 13 Oct 2016 01:49:22 -0700 (PDT)
From: Contrib Open Source <contrib.open.source@gmail.com>
Date: Thu, 13 Oct 2016 10:49:22 +0200
Message-ID: <CAEV+hqwr5pp_EaLd=7cU8=cfKPQcAgr0ghmgYPn-hH8zyCE-Qw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto recipe license
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
X-List-Received-Date: Thu, 13 Oct 2016 08:49:27 -0000
Content-Type: multipart/alternative; boundary=001a114fa990b08646053ebb2f26

--001a114fa990b08646053ebb2f26
Content-Type: text/plain; charset=UTF-8

Hello,

it seems that license.manifest file describes application/lib/etc.
source code license,
but what about Yocto recipe license itself ?
So what is the license of a Yocto recipe ?
How to know it ?
If a Yocto recipe is GPL2, and we extend (*.bbappend) this recipe,
does contamination effect applies to the extented recipe ?

Thanks for your help,
contrib

--001a114fa990b08646053ebb2f26
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>it seems that license.manifest file describe=
s application/lib/etc.<br>source code license,<br>but what about Yocto reci=
pe license itself ?<br>So what is the license of a Yocto recipe ?<br>How to=
 know it ?<br>If a Yocto recipe is GPL2, and we extend (*.bbappend) this re=
cipe,<br>does contamination effect applies to the extented recipe ?<br><br>=
Thanks for your help,<br>contrib<br></div>

--001a114fa990b08646053ebb2f26--
