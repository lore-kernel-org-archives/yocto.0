Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A541E00D2C; Mon, 21 Sep 2015 07:29:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 235F6E00AAB
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 07:29:08 -0700 (PDT)
Received: by iofb144 with SMTP id b144so121807563iof.1
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 07:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=Nnu+FjM+FnpK8LphIaV9m1WGnI4OnWKaiM+JZmFG6mo=;
	b=ONi7NZZyVlk3U73lijvxoeOwla7JuRulZjiA2G/vVkQZV0Wu6lyvuMjzB2cdArRxAG
	zxSWE28Tzk+GmHTfAqQw/NBE7gCfx3tzmiia6Cf8F8S6DkeQvIDibgKHMDSjCbT/dMSZ
	K+qR8CLsdcoj33xPal+DuDpKjxzpxxvw+7itNx+yWNKC6RcPAq5/7NoyCsynrjQ+92BJ
	EdHayMMn26wtUiH3Ysc5cZJQGVh7+VdiQxrB3SZ7FmLrBU8bgfFplrSjMo5VesSWzbFx
	AN+uejfRCq+Xk5AbI3NIF4dKYVRGU/HPTKf17dFBTfhCdi8U2GMci69gRAifqnYrp1WG
	N11g==
X-Received: by 10.107.27.8 with SMTP id b8mr25224472iob.114.1442845747981;
	Mon, 21 Sep 2015 07:29:07 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	gy4sm5614937igb.6.2015.09.21.07.29.07
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Sep 2015 07:29:07 -0700 (PDT)
To: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <56001431.6030001@gmail.com>
Date: Mon, 21 Sep 2015 10:29:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
Subject: packageconfig for non-autotooled project
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
X-List-Received-Date: Mon, 21 Sep 2015 14:29:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

libepoxy needs its EGL support to have a packageconfig (*.pc) file but
the EGL I want to use in my project
(meta-sunxi/recipes-graphics/libgles/sunxi-mali_git.bb, which points to
gitsm://github.com/linux-sunxi/sunxi-mali.git) isn't autotooled. There
are a couple ways around this problem, but if there is an example of
generating a .pc file for a non-autotooled project already, I'd be
grateful if someone could point me to it :-)

Best regards,
    Trevor

