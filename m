Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C6CCE00D07; Tue, 14 Nov 2017 09:40:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D672EE00C84
	for <yocto@yoctoproject.org>; Tue, 14 Nov 2017 09:40:20 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id z3so13293332wme.3
	for <yocto@yoctoproject.org>; Tue, 14 Nov 2017 09:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=uY5iRX63b4xBpt1Nv5XmpuYMGctZ2k80fLpkPzIY5UM=;
	b=uSPkWpqotadJ2CDZfHaDbS7+VkeA1jSOtjwfCMU25/yZMqUsnwJZ/Kvk7rjPl3UgUD
	F+Fnz3futloezXduFecoqycA9HnsO2nmI+/WXZk99sh/Nh6WW55ijgS7SoMa+pJy0mdi
	y4f6cDAKzlpTijdY5P/OXyFLywsqziOgcTPICEo76cxi1l9bKm6Vy37KixHs9A/mkGkK
	W1sAdK4p4dS3rMgIBdPLhX0NpbQqGovtOZGJ0WobJmr3DTTsmD2b+PxTKVkuhKRcMTQg
	uqsh8bW6T9FD5BRo5STjBjV1GUMPBtDGh90vEOADFLlojEMdaa0CGTmVNQDbhdaDGdld
	z7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uY5iRX63b4xBpt1Nv5XmpuYMGctZ2k80fLpkPzIY5UM=;
	b=exKOvSbEUrggV5cCj1kbJoUdZ1kLNcJrSdziLt3f3Rg0MizmZBy9oFQB038i68BN89
	NyEubhQUf/FjtsgRr+y7ZG1fxTbKv6/FUPR+3mZ2WC/H3bYxvbLPlT3pvHrZdIdM4pvK
	ctXWbmmaRAwYyWTHHu0NUbe75TK9bBgJTeorhqX7jKY210R2BOQHz+f5yQISHXcBg4lj
	9NPbz/sCkIOa5tvrVMaOG+uEVV8+M1i4YpEz/CWw2ySchgLiqL+iA350HHON3N2ata04
	BgRVyUu9fSze4f6IMdfGcT6iqsfloQgvRqr44YBXW9uMfT4lqzuToWmthrEEn2DQr3MR
	Z+YA==
X-Gm-Message-State: AJaThX6/pJCSQzE6zNfz0Kxk28YvfNlOKUfV6XViOeknB+YQzWuT4Nq2
	55cvN8iNceKiPdETmII1GYAFcRsZL/2lAzzsbcwznw==
X-Google-Smtp-Source: AGs4zMb8+EIPsHeBvmKMMh/4V0TV5fRFJEj/uZbLUMVjec8Q7zLfBTiOlzWAtb9B3uqtkkpt5dQDlxx986AiwJuQPjs=
X-Received: by 10.80.192.5 with SMTP id r5mr7395269edb.138.1510681219352; Tue,
	14 Nov 2017 09:40:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.135.197 with HTTP; Tue, 14 Nov 2017 09:40:18 -0800 (PST)
From: Ran Shalit <ranshalit@gmail.com>
Date: Tue, 14 Nov 2017 19:40:18 +0200
Message-ID: <CAJ2oMhJr-p6SedTxBUGcSru-0t6=UEOa1F9KKr6WfHaMGd+pLw@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: two source folders for kernel
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
X-List-Received-Date: Tue, 14 Nov 2017 17:40:21 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I see that there are 2 source directory for linux, and I can't see any
difference between them:

build/tmp/work-shared/lec-imx6/kernel-source/
build/tmp/work/lec_imx6-poky-linux-gnueabi/linux-imx/4.1.15-r0/git

Why do we need two , are both used  ?

Regards,
Ran

