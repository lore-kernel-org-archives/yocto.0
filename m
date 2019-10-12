Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE8C8E00DAE; Sat, 12 Oct 2019 12:12:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd01-g.aruba.it (smtpcmd01-g.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CBF1E00AD5
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 12:12:13 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id CjCB2100N2wfazh01jCBZZ; Sat, 12 Oct 2019 21:12:12 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <6781b844-ab8b-03a8-e0ad-ebfdc8105374@faresoftware.it>
Date: Sat, 12 Oct 2019 21:12:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1570907532; bh=Y459wzXHi1+ycHzzkgpXBDXoUY02RIBZtpRdb7wAo/4=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=SZZQSSe/Vzq+bAq0BfRcGYRvqlmp9gxY4IBJZgADrrJChix/TTlc2zcsHr6Ous8U+
	WshSM7+4Fg0s2YtATcywFwbKHQzIrbp+wQUNiQgGydr4S69q6njhv+U0Q55kN3PdWT
	WmyCezTZeHudxOCaMpU0R+Zoq9vFEn/lrzzBRKI1gBCJFoIbgeNaGKHQyYuEzrU8XZ
	2LSmmK5/tbcHJ11FAbKabeltUoROwiP385DRX2Vo/4UrlbkPC91dfsT2nf/1ai7UMd
	64p/jHMDl6H1/ggOI7xh2Ac+PRWoRk9575EQ8pNQBInWQ9E51NMtN0W2wEl+J/LtRC
	qmB7iw+XKm/JQ==
Subject: Pyro, imx-gpu-viv and libGL.so
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
X-List-Received-Date: Sat, 12 Oct 2019 19:12:17 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I'm working with and kivy and SDL2.

My problem is that the recipe imx-gpu-viv installs libGL.so.1.2. in 
/usr/lib, while SDL2 is compiled against libGLESv2.

So when I starts the SDL application from a strange behaviour the libGL 
is loaded, which needs libXdamage.

But the bsp is without X and sdl2 fails.


If I remove libGL.so.1.2 and I symlink libGLESv2.so to libGL.so.1.2, 
this can solve my problem?

There is some recipe which solve di problem?


Mauro


