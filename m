Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B66E00D69; Mon, 11 Dec 2017 00:55:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CC7AE00D32
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 00:55:07 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id t8so12882783wmc.3
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 00:55:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=jofgHTLCnZnFhJi7XJyCZJ20UzVGvEvB/izKzJBFm4c=;
	b=PBlTkQfhJCXsS07RLg6R/dukXMtw4LpSOrpXB6lavZliWUYBuJNDE60v9ZKIJVrrtk
	CF7T1b0z27pzCJ6+R9+mdzW10Sl5kzJAqDAiXl8SUXB3OmOoHqkaqAOsvuZdFg9vWTyw
	L77iOT8NoKtk3P5z6swfExMa5o69tHt40Dv6Yt3S8ga0puGPToDWrVK1HCGGX0iRizGG
	y6kQziljeWmrkvnMENZododlX+a8SRWSgB0og5w9fsB/4Iyw36hsRATnA8xT1NyieNeI
	/++qI/AV55h0ewPF+tMbS/wLwgoaZy8dKamBlR4poHAvRpN5EEMMaP1CsBvuXB2ZQgtW
	22bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=jofgHTLCnZnFhJi7XJyCZJ20UzVGvEvB/izKzJBFm4c=;
	b=lALEwjhuIvNWYmj9dT5Rv4ZgUQa87cwjD+JaNQKPfy62rppViEb8tD9CcQXb9EfHmW
	eQTiMtZ9ZJoHafzSsUZWe4CrKGdiDYDBw1N4c4YtRL6aJ1jg+dsIUr7zj39N/pvRN4o+
	Wr/20Pn32YrBOjZrxthUwSi/YhqGu6LBARdWoNRBdKC6D56prEXJBer4u1iIcd08llYE
	tX1tFBpW9HbR7EBhj+Z0wncxrygcEb2ccQ4IRgwlDr0czd/P8/UCNIpr9LLQgSWa6N5n
	KB7HxeHzWEb5QfN7iRjfYbTt6x/5Y0IxubrhnH0e1ABkHkFFphV6UMYBdP6ISOVbQyo9
	Lgjg==
X-Gm-Message-State: AKGB3mKP8Qc4irvWTnZCq+9WOKrWnMhye80ZbFhRSQD0sAKtA+phuHwR
	otAkicgkF02422NNcvhcfcDl9/5eiNU9bM0gPpn+y5Q2
X-Google-Smtp-Source: ACJfBos4UGVwgAvPDmgo7oEazFrvY9Uh80uzN/1BRs0QYG+H3Z8tntOqe4U6HMaE5n2m1aUSDK0fyGXQF0XzWuSrNaM=
X-Received: by 10.28.71.5 with SMTP id u5mr96737wma.84.1512982506308; Mon, 11
	Dec 2017 00:55:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Mon, 11 Dec 2017 00:55:05 -0800 (PST)
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 11 Dec 2017 08:55:05 +0000
Message-ID: <CAPyrkgwxYUBGb4wLa83Bcm5dRDFh0m7X3o0tZx9sCYy2PEZV=A@mail.gmail.com>
To: "openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>, 
	Yocto Project <yocto@yoctoproject.org>
Subject: OpenEmbedded stand at FOSDEM 2018
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
X-List-Received-Date: Mon, 11 Dec 2017 08:55:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

We've got confirmation for an OpenEmbedded stand at FOSDEM 2018! We're
in the AW building as usual, you can see the full list of stands and
location details here: https://fosdem.org/2018/stands/

What we need:

* People to help out on the stand and chat about the project. If
you're going to FOSDEM and don't know many people in the OE project
this is a great way to get to know some. Even if you can only help out
for an hour or two this would be much appreciated!

* Device/product demos which show off the features of OE. We only have
one table this year so please let us know if you're bringing hardware,
that way we can make sure everything fits. Preference will go to
hobbyist projects as this is FOSDEM but we're happy with commercial
projects as long as they're not an explicit sales pitch.

* Build system demo. I really want us to show off toaster again as
that got a lot of interest last time we demo'd it at FOSDEM.
Unfortunately I'm on holiday before FOSDEM and I'm not travelling
directly from home so I'll be unable to bring something to run this
demo on. So if someone could bring a laptop or mini-PC/monitor/etc to
run a build system demo on that would be excellent. If not I'll see if
I can get something shipped to Brussels.

I've created a wiki page here:
https://www.openembedded.org/wiki/FOSDEM_2018. Please add to this if
you're planning to bring anything or just attend.

Look forward to seeing many of you in Feb :)

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

