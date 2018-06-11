Return-Path: <o_o@ieee.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49979E0198E; Sun, 10 Jun 2018 17:07:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBB07E0197F
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2018 17:07:19 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id u4-v6so8429784itg.0
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2018 17:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ieee-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=IDLdCnbJa3DbWno0EgiYhHTRDvi0oY09N5cftstPJRM=;
	b=nC0ePKGy9UqG1xgkIGzS/4jBsTEwFkDvDyws2nz0QdB4fLMdI7ryFleZPKHuTDPe2w
	vVEZ7yFT+W3HL74CzYnc4EFzj4PnZJ0mari3GEooyoV1RSd8GwDC8/cWaf68+tNmS2+X
	4PwOY0Ihr9tUD+4061aewOhS+0gVj1AfDzxJn9P15dhQFbS6LNsC927tDnf8nYTtP22v
	bFWYJr4dP9x6wJhZndKzTP8570aZtLkFejvNRYydsVuAz6Pfjn7WQWflw9n48M/wmpBF
	yTicDAzeUFqURfcu6Xhx/nR2NPHL6mp0AJUlZ6l8Hx0UuHXOa4FG4d4HJ/fil6SZ+sa9
	R4eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IDLdCnbJa3DbWno0EgiYhHTRDvi0oY09N5cftstPJRM=;
	b=uP/8b5pTqzzJig12yHr+P/A3ym7BHOaC6VFDzSxg9l2eR4Hsg4WL0Gq/QNDdGypJZm
	svkAMHak4HfeO2AT5SmUQtAAd5dE2C98D4eIbZeQzhxHcfy5BCS1rddZngRondHBOyfo
	+XlOWAZrGbLXSQ3voPIk/WgZpXR8i8eSuG7ThfsmFhI+afqADrxpHIjCOTvBeJ4EmhXE
	4JfW/KsmOcRWitEDvkXsN4R76JJTMql1122nzNtgcD0BeKJzswmH7Igwcw+gnEBDO9+L
	AjbTW6lptSQQWulc3Zkin94Z+B7qMHnRsGiETqaY/nhgiUEsrvIbdSQZKHG1cupceyO3
	ZDsg==
X-Gm-Message-State: APt69E3lfFl/B/oKwGSoJTJ1iHcVJ36jsxmBHNCJ8vrRDpz9oQCGw+5Z
	L5FYCKLxEj9/TjE52WVoKRaZqQxvZi5U3+78Okw5MA==
X-Google-Smtp-Source: ADUXVKICVBnYlBMD7Nh4n8r8+TtAahu1LaUmVhkXGvrT0pKx8vcsI4vKOXPg3DnUWB4Z3XtXEMiZsMCh9aLFaRjcXtE=
X-Received: by 2002:a24:e105:: with SMTP id n5-v6mr8733914ith.68.1528675638873;
	Sun, 10 Jun 2018 17:07:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:850b:0:0:0:0:0 with HTTP; Sun, 10 Jun 2018 17:07:18
	-0700 (PDT)
From: Ricardo Ramirez <o_o@ieee.org>
Date: Sun, 10 Jun 2018 19:07:18 -0500
Message-ID: <CAMXie8EtM6FOs4Qf3XHW-5EGTy_+xc7Cen-U_UB3ZpO8b4PcjA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Target CPU architectures that Yocto Project Support
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
X-List-Received-Date: Mon, 11 Jun 2018 00:07:20 -0000
Content-Type: multipart/alternative; boundary="0000000000006eaa18056e528898"

--0000000000006eaa18056e528898
Content-Type: text/plain; charset="UTF-8"

Hi,

Naive question from a newbie. How can this be achieved? I'd appreciate if
you could please shed some light on what steps need to be followed?

Thanks in advance,

-R

--0000000000006eaa18056e528898
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Naive question from a newbie. How c=
an this be achieved? I&#39;d appreciate if you could please shed some light=
 on what steps need to be followed?<br></div><div><br></div><div>Thanks in =
advance,</div><div><br></div><div>-R</div></div>

--0000000000006eaa18056e528898--
