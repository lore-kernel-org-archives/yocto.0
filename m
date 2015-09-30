Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BCE8E00EE7; Wed, 30 Sep 2015 02:05:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF217E0071C
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 02:05:39 -0700 (PDT)
Received: by vkat63 with SMTP id t63so21301013vka.1
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 02:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jfHahURWuYjsiGraoGplwlQ0k8tj0PX/CgkincVmA2Q=;
	b=mR2DZo1AqQnjdFN4Fn+cjQBvi7tq9N61XBwsGA2Q4XeOayGsNyZEsHSsB9cq4mu3lE
	5tHqslgyrNCa1ZMI83hDaHFT+cdOtydhhXOXddWAnnc99U3pSgDrllHcSyR9nfjd6KSR
	dmKFzvFjKZauZjOCIfAKgJPi/+0M2k6CPVOwVCV6rKaSSoIy4p7zfJ0zbon8Ae9fE1Az
	ff6ojiRg4IqVVssBHcieP28xtfYFr6puABm9FpIUxRGQ6wBwyFa8pPi5lwHIAzFgSHsI
	ElHAzZJMOEihsjNqo9k9HNNJUrjESYaGfr5XZLD/N+Mt9+qLKPlAPnu6uRsW2/tJ4zyM
	IyaA==
MIME-Version: 1.0
X-Received: by 10.31.15.212 with SMTP id 203mr496302vkp.30.1443603938472; Wed,
	30 Sep 2015 02:05:38 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Wed, 30 Sep 2015 02:05:38 -0700 (PDT)
Date: Wed, 30 Sep 2015 14:35:38 +0530
Message-ID: <CALLyC8TWtMz2dnMUF47PjhgGHrjuH8zmv61GGBn4GR26V2uTxg@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: How can i invoke a "particular recipe(.bb)" while building "image recipe(.bb)" without modifying the "image recipe(.bb)" . i only wanted to change "particular recipe(.bb)"
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
X-List-Received-Date: Wed, 30 Sep 2015 09:05:40 -0000
Content-Type: multipart/alternative; boundary=001a1143b1acf2f9420520f33b7d

--001a1143b1acf2f9420520f33b7d
Content-Type: text/plain; charset=UTF-8

hi,
   i want to create a "x" recipe that should automatically get invoke when
"image" recipe( that produces image) is built. How can i modify the "x"
recipe that should be invoked while building image recipe.

I don't want to do any modifications to the image recipe, i only wanted to
do changes in "x" recipe.
Can any one help on this . thanks in advance

Thanks and regards
vivek

--001a1143b1acf2f9420520f33b7d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<div>=C2=A0 =C2=A0i want to create a &quot;x&quot; reci=
pe that should automatically get invoke when &quot;image&quot; recipe( that=
 produces image) is built. How can i modify the &quot;x&quot; recipe that s=
hould be invoked while building image recipe.=C2=A0</div><div><br></div><di=
v>I don&#39;t want to do any modifications to the image recipe, i only want=
ed to do changes in &quot;x&quot; recipe.=C2=A0</div><div>Can any one help =
on this . thanks in advance</div><div><br></div><div>Thanks and regards</di=
v><div>vivek</div></div>

--001a1143b1acf2f9420520f33b7d--
