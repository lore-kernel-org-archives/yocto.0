Return-Path: <sambaran.mail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB4C3E00C40; Thu,  7 Jul 2016 02:43:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sambaran.mail[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FB12E00C1D
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 02:43:20 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id c34so5630355qte.0
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2016 02:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=kSOeXJgEfLgN8jqYnoPxspExY+pJ/UAJOmxW1i/qEgs=;
	b=Q63TGbhCUBF5hQWj6dkPtyESwD20JhVYd5ifqaGVSeoe1HeHaxWWJml+m/XP6WxFHe
	W+7D2fL3XBNlPHgq41xucUNv+WEDu2Rnln6Dw9+xHP30YYCXG5sfnjMVSVDsNgma9Pzf
	PY2pQxYSAhPi2f73fOHHVq9JzWriH4ekmsoXhRByajy8V2XMY/3LaBxePxxGWNQptt5T
	Vh5VSGfeg5rYr65jyEhrIg6n6Eb/gkBEj/iuKDBjJZ8k9zPuq5Gdn1dOHu/smklD+wT/
	++kbE3WgZQZGloi40WhsEpiFSwNaGAqhf0XdLm/ImBHhB9LICCDPlS5rK0+Ycax+Ayjx
	ULaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kSOeXJgEfLgN8jqYnoPxspExY+pJ/UAJOmxW1i/qEgs=;
	b=lyjIoEwsxtJCrIO7f73dY22SFbQRdxXz9b/x7VyvRPY65gjoPX/mE/Q3v/W6FS5VPL
	HefcOqbVFK2XTQI0XgGAlrSfpmRhxmaGJ0ka2QiABTszUn7rgjj4rmodHhFEEcb/0VAo
	dDBYmxD/VA/aoQHh0gtZ8dC3j4mknD6q4Bp5V+PQviwVKwjoPozLNAaC1HzWHj8Tjc73
	cCP+hf9qQePKQp7vL0CcZ1lzb8U1xum228qJ4cJVrCYz86a0pHmmcqucmabahKKqKKwO
	N/6p1oF34E81M/0Bk1Hc/zLqpmKv55J1Idv6Rv2JV0irVQhyrbb6ZF7ZeEkSZUiDQVo3
	fq3A==
X-Gm-Message-State: ALyK8tLPRxg678QZlITNWj2hlZYsfbjUwaDhmCcnVWOcpEziVcXy8hCdpKgqoX8vEZzURJzYM0sSAyGFfceKZw==
X-Received: by 10.237.50.199 with SMTP id z65mr42767205qtd.24.1467884599304;
	Thu, 07 Jul 2016 02:43:19 -0700 (PDT)
MIME-Version: 1.0
From: Sambaran Ghosh <sambaran.mail@gmail.com>
Date: Thu, 07 Jul 2016 09:43:09 +0000
Message-ID: <CADXrkTNJDZ_hgu_WNXOamSFE_iQcudB6G0Y8cB_coe0WFfM7Hw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Toaster build fails on Master branch Yocto
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
X-List-Received-Date: Thu, 07 Jul 2016 09:43:25 -0000
Content-Type: multipart/alternative; boundary=94eb2c1254621ce6520537088485

--94eb2c1254621ce6520537088485
Content-Type: text/plain; charset=UTF-8

While creating a toaster project with the Master Yocto branch,  build
always fails. But if I select Krogoth or Jethro branch then builds
succeeds. The major problem with sub-branches like Krogoth is that there
few layers supported. Is everyone having similar problem? And do you have
any solution?

--94eb2c1254621ce6520537088485
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<span>While creating a toaster project with the Master Yocto branch, =C2=A0=
build always fails. But if I select Krogoth or Jethro branch then builds su=
cceeds. The major problem with sub-branches like Krogoth is that there few =
layers supported. Is everyone having similar problem? And do you have any s=
olution?=C2=A0</span>

--94eb2c1254621ce6520537088485--
