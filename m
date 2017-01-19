Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CBF0E00A48; Thu, 19 Jan 2017 15:20:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.194 listed in list.dnswl.org]
Received: from mail-ot0-f194.google.com (mail-ot0-f194.google.com
	[74.125.82.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA7CCE00A21
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 15:20:15 -0800 (PST)
Received: by mail-ot0-f194.google.com with SMTP id 73so5882357otj.1
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 15:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=Vb1/ZUsFugmZIswQS3i8hDgPccAWYGEU71+whPu+cgQ=;
	b=tkce4+haxmNJDHyzDZoOxfCYnd33EQtyzDwYxTI7FOQ0OC3HS2d63+EUmhmpHwJLRE
	OrNMq5XPPhsROl6qYoP2S1hKXz25krTod1a9eWel20GCBFReAWIibhXtrue3P3xlC2Jq
	wDcM0vJxlyjA3Dr6dYC+OrdDlW+I7OTZn3aMRfeg0i2iYzSY9AhAO6GludHhY2K465lw
	Nb/cR16uSLnk/i+3rxgU0z8NRrUMTks4On8e/+pWBHp7ubtsZivxsg408Ie9wsIEyHRq
	DHTzZAC2NpmBZvTcrJUXEyiGaH8ulrXdJTAfnXzxznjBoOL9I7nQTBHuZzoh1yf7PMqp
	w89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=Vb1/ZUsFugmZIswQS3i8hDgPccAWYGEU71+whPu+cgQ=;
	b=bdpdriK/YaJKKa+ljLhkWP6KIisFQfwp2z2A09qfWSRXkWybKI4F6mrs2mOUoNUmFi
	Pebw3uwKYVzcVnUk8UbvscUrRXXqCkUU2fKb59FyIcSSRnSSHg5X6fuUjtrwGmFvGjFK
	Fjeiqx0lGHGG/hSfPupASx5kbMk4IHhrXIAC+ahOn5+gidE4wX70p3MWWPM6htEhHQP0
	wpIi33ZwCJaWZy7eLK+oIkzagVbpqMUy1jAJU95NELPgPDFOHQQRDOpgCOzr4b7d58Q7
	fTZZd24CnC55lzisBdBCbGvP7oCqpRAjP6IoTpio3WN3ojxoGVupS9752RIK8bEBuYDo
	sYTQ==
X-Gm-Message-State: AIkVDXKkqVc3+Hw14vRXMJ63/ycH2YzDTrVOc4b7Qk4bEpZyq8fdkWKe2fOqrkawENjS+TRiVqWCihqZ2O1luw==
X-Received: by 10.157.19.43 with SMTP id f40mr6175281ote.189.1484868015487;
	Thu, 19 Jan 2017 15:20:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.202.46.9 with HTTP; Thu, 19 Jan 2017 15:20:15 -0800 (PST)
From: George McCollister <george.mccollister@gmail.com>
Date: Thu, 19 Jan 2017 17:20:15 -0600
Message-ID: <CAFSKS=Mr_Q4xhCKT3YEpkyFBAom9OLw0tD+aAbiuti3fb2nxuA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Correct way to use a custom bsp .scc file in morty
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
X-List-Received-Date: Thu, 19 Jan 2017 23:20:18 -0000
Content-Type: text/plain; charset=UTF-8

What's the correct way to use a custom bsp .scc file located in my
custom bsp layer? For purposes of this email let's say it's name is
myplatform-preempt-rt.scc. If I specifically add it to the
yocto-linux-rt_4.4 SRC_URI it appears to get processed twice by scc
according to the meta-series output file. It then tries to apply
patches to standard/preempt-rt/base that don't apply. When building on
a intel-core2-32 platform, intel-core2-32-preempt-rt.scc only gets
processed once and no incorrect patches are applied.

If I don't include it in the yocto-linux-rt_4.4 SRC_URI it's never
applied at all. I'm wondering if this a new problem with the last big
push to morty since I didn't notice this before.

I also verified that I can make myplatform-preempt-rt.scc work by
doing the following (only shows as processed once in meta-series and
no incorrect patches applied):
bitbake -c cleanall linux-yocto-rt
bitbake -c unpack linux-yocto-rt
Manually copy myplatform-preempt-rt.scc and related .scc, .cfg files
to the following path:
work/myplatform-oe-linux-gnueabi/linux-yocto-rt/4.4.36+gitAUTOINC+b846fc6436_61d7bf47fe-r0/kernel-meta/bsp/myplatform/
bitbake -c compile linux-yocto-rt

Regards,
George McCollister

