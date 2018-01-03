Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13F1AE00DA3; Wed,  3 Jan 2018 15:16:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EBF1E00D81
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 15:16:24 -0800 (PST)
Received: by mail-ua0-f180.google.com with SMTP id e39so2078799uae.12
	for <yocto@yoctoproject.org>; Wed, 03 Jan 2018 15:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=7+4Mju0CnVZNC3OL1GgXGOb+qN5usG9PhnKLgA4znSA=;
	b=Ebiz6OSB9FdE34vy7zh4ttCLnKMAZfCQ+9kR7D6PwVgrBnOMPgnN46jpjLK+W6UgOR
	ccbBkONLsja59YJGijlG+/Lg+G2RU1HCVKNFHRI8uAInG+lP0kRZZJ45wn+Lb0ntvYMU
	Gu6JEVUnCEMJvr8FLI8Ie7qP+SrHqktaIobCJdKSn6fUPRN4NLOKMe29qdN3KJSVKS/l
	nebBj9lA3fH1P4KwAehd2VqE8aFKzlmChpEo4+Lp3u2gg0kmNvoe/SV3HW5Twi5bCHXM
	H2j5pP0sDuEsSNiTXH0d9NmMEJNamxiJ+uH1lmf0CwllH4L2pZ3Vgao/aR7VHGdoBOe6
	4XjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7+4Mju0CnVZNC3OL1GgXGOb+qN5usG9PhnKLgA4znSA=;
	b=FGH8zE1s31CQakew7pFywlm2RsTc/er71ulzLNSw0jilYLfiy3opexEWoiQD1AlBUL
	rvmbvQe2e7/GECjKXqX71iZ6ezR/+JVfObkV8ZMg85tprLJPiQSpQT0BG1zntO3NHBt3
	t4/MAzPJMFYnOvM5nKAs602ZX7tQWOZaSSHvHgrEJBnew6iKTg1XHNZsfQAKI5uDgqbN
	JRPIq0QVQEK7BIPbjjnjPssANJZM5k+ABTg0jrSpY6W3kz+yeWmFiRb27CS2hMweQ93h
	00zApPeynuvUMXbFQLHq15Fs9gQdJanI7Fwo90X2vhcaqw43gMxkTHuziVDQWhD0UQWV
	WqUw==
X-Gm-Message-State: AKGB3mKPAmFCUuiHpM1v6tbER1Pt9mMGuo865Ik+k9qL0oNcM7YN/1sr
	HexZBlz+/xCvWM5+5g5kFo/oV+D1F5wmYfgKjPDTrwtfTKPwkmd+o7nMGcibodIDAIXEUHSvGpU
	1FBRzCyNsSORiM92eI+D1I8KOCw==
X-Google-Smtp-Source: ACJfBouNz4zBnaGUFkMu6ngPDfQgPFrBepyJAys3a52PmfCx+i6RlMWgj0FiaYtaHzIs1ZHZ3RPSsAbYcQdil3sJIJo=
X-Received: by 10.159.32.130 with SMTP id 2mr3067438uaa.11.1515021383319; Wed,
	03 Jan 2018 15:16:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.28.74 with HTTP; Wed, 3 Jan 2018 15:16:23 -0800 (PST)
From: Rail Shafigulin <rail@esenciatech.com>
Date: Wed, 3 Jan 2018 15:16:23 -0800
Message-ID: <CAOLNbFaCAMRPySoNmdGD8ZKkwU9aO+UaJ_gOSaL2NfR9-AnJBg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: verifying prerequisites for a software
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
X-List-Received-Date: Wed, 03 Jan 2018 23:16:25 -0000
Content-Type: text/plain; charset="UTF-8"

I haven't worked with Yocto a lot, so forgive me if the question seems
a bit trivial.

I'm working with a Zynq FPGA from Xilinx. I'm trying to build a Linux
image for it. Xilinx is using its own distro called Petalinux. They do
provide a layer called meta-petalinux for building it.

I need to include libsoc, https://github.com/jackmitch/libso, into the
image. However it has a number of prerequisites before it can be
built,https://github.com/jackmitch/libsoc#manually-building. How do I
verify that all of these prerequisites are installed (part of my
image) prior to building libsoc?

Any help is appreciated.

-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



