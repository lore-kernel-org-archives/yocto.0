Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9087BE00DB5; Tue, 30 Aug 2016 13:18:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,PLING_QUERY,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 253BDE00D9D
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 13:18:46 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id i32so53082814uai.2
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 13:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=oA0bDWmeqWUqVavXiusCt+xgQl80W7ZJjA+2LTt67AU=;
	b=ALZ7gzB9cRH7LTYV4EsrpPp8Wc9M3Hp5L7I5/7on/MrO+VCZgRU7d48axiIsGhzfXH
	AJE7LB9CABn3oEwddFbceR1qV55p7noeDeVgdbgQYcAR7l7bjJdahRCzOdU/kY3G/0pg
	w7UbRMQrS34NOxqnZLHKzrOMU3QamykdrznBE2RSMx+sV0v2VcosWwKpcYv9cdlSVY26
	cZ+ouOhCuAtKlLA0lYiMXw65scdCaYhero2E7x3anQMdUrv9ZQw305YAMVyi4KTNOHeG
	Ce0V6P6quAkwsO4rlTX8Fx6tg09MQnqgQSriahy8hYGBa8i3DC7i/7oQlOAmPRhEXJY5
	4G6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=oA0bDWmeqWUqVavXiusCt+xgQl80W7ZJjA+2LTt67AU=;
	b=NUf8Yj8NupEiuEgvGOiKzqxYs6/C1lW2F9Lsfs7y58xsE9u1yal/ZHSMWhry1E4nMN
	K/QJLBu5tVWzAhHp4HlkGO30JD4R+J6TSTGWx9wjgXnNbPbkixClg/MzScnHvpkaZjtw
	6Rj3uGeuaT3+Z+1xYU4+1TcfOcFZHwakAPWR+zm/Oec0I9n75NZlWF2R6quL3kvV7eMo
	DvF5bhdsUEURpMNV2N+yvEYzI1JpC8xY/ML2ddyn25U9uZGilfaB2p8rRBIluP5okEqj
	deoCUosI3ThaJMGFkbY70zgRf5WCId6Z48mB3HE4bL2HkNieGjmOa/6En6YEH32fx2Se
	I2tw==
X-Gm-Message-State: AE9vXwMUJcbPcQt/pA5K6x2D3FihYHmpGVmGbjEkOxR2vciBJwWTxibHmUmtmClfDN7lwJlKM3Wa2K0S5Ny6Iw==
X-Received: by 10.159.40.35 with SMTP id c32mr2907758uac.150.1472588325360;
	Tue, 30 Aug 2016 13:18:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.41 with HTTP; Tue, 30 Aug 2016 13:18:44 -0700 (PDT)
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 30 Aug 2016 17:18:44 -0300
Message-ID: <CAF3SDA445Eh-L501nQvd+VBuVGpER0kX4DZd3GZ16RvvQ_qZOQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Automating imaging building and testing, what aproach to use!?
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
X-List-Received-Date: Tue, 30 Aug 2016 20:18:47 -0000
Content-Type: text/plain; charset=UTF-8

Hey everybody!

While writing software we're used to delivery packages, libraries and
stacks. There are out there a lot of continuos integration solutions
to automaticaly build and test these kinds of software. But when
dealing to images the thing is more tricky.

I can't run the tests at the same machine that build the image because
crosscompilation take place on 99% of the cases. What is aproach that
you guys are using to automate and increase the quality of your
images?

Automating the build is the easy part my concert is about automating
the runtime tests that need the target board to run. In my case I
depend on hardware to fully test the image features. Is there any
reliable way to automate image installation and boot!?

Best regards to everybody!
-- 
"Do or do not. There is no try"
  Yoda Master

