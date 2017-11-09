Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB6BAE00D43; Thu,  9 Nov 2017 00:36:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.171 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA1CDE00D3A
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 00:36:28 -0800 (PST)
Received: by mail-yw0-f171.google.com with SMTP id t71so4653890ywc.3
	for <yocto@yoctoproject.org>; Thu, 09 Nov 2017 00:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=t9PaapnjflMNTBag4PHrnkfg0pHblUXiMgHiPbdHxFc=;
	b=IA2i4sqmIVdow4wCPqaOiPQUzyj9yG0cGh/kLxpGJ6N5XBarjxqQ8OPb6ny++OEtOl
	/7KX8G6jBDJom3r9Ek8uzgOArJ8OgQ6XX1hdprZLhen45f+4/skrZyoeGPRT2FQRrLUz
	0yVtEmkUtMZ09Bolthj7v5RR8cJMAlKf1jN1Tvw5CMPp8j0etJB6EZkqYS1J6U9Rt0eO
	Vjt6Fw56pDKcvmL/Pt3gpfSsFsjLfQdbCqJ1gRPgbx1IOVnaxrDOjYmHgVK9nCNl0Y2g
	rPpTBgXxOtBg+3gDllVGE7FxDREyXn4vkyYXtFvzZeuB4/93U47W9p3hKxWfzLSiK1Rl
	P8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=t9PaapnjflMNTBag4PHrnkfg0pHblUXiMgHiPbdHxFc=;
	b=T3LFhty44iuUC8a0HjZ2W09I2LD6vopNOu9AnrDBNhvkvS/981JixRtU7u/34jo3Hj
	GrfW0X4rtdvbWOlMv4FNHXMuuhp7yFPb9uk8FRBAHaxe/bPVuKLKrqdBgkSmpYXM43iV
	u3v9WXobcnBN7dFfX3PKT8KqlfuLneonKYQLqZ0e1j4F3zXOghqZ7bTjvGnlMI8gnocb
	Hr3Nch1/wKkp8EWWEr0bfNNBTMS/7HneRjDaS1PtfXo1r0tKlsWORAN9IvuAmOulltNb
	FPSmohQL6qBurQqzJrlf12RLQbFRUx+hmJAiX/YUvAEqPZ1KKRFgoQERnKcUJKFopOBK
	kLcQ==
X-Gm-Message-State: AJaThX5c5zH7J2cBHZcSSY1da7lKnV2bJePXVbxNu0BnBUZ4GmlgvHQv
	c6AmQxFi28h35qyTTNXZnJco6oYyj/iqW8uo5co=
X-Google-Smtp-Source: ABhQp+QLuyXHLkQrVaL47e4/PSGBfbELr7E0Dxk5QnHpk8x8ES0slxO3sW4iP8aYzbwFA0BdycPvdpPnxY6g0xcm6Gw=
X-Received: by 10.129.71.11 with SMTP id u11mr2069861ywa.86.1510216587635;
	Thu, 09 Nov 2017 00:36:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.224.151 with HTTP; Thu, 9 Nov 2017 00:36:26 -0800 (PST)
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 9 Nov 2017 09:36:26 +0100
Message-ID: <CALbNGRRKv72-BPBKKeEMwCiGUf5VkqCE6gSYf91pUPySX=eK_A@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailman-Approved-At: Thu, 09 Nov 2017 08:01:46 -0800
Subject: Layer index not updated
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
X-List-Received-Date: Thu, 09 Nov 2017 08:36:29 -0000
Content-Type: multipart/alternative; boundary="001a114d72ea3d73c0055d88b361"

--001a114d72ea3d73c0055d88b361
Content-Type: text/plain; charset="UTF-8"

Hi,

did not find any heads up here so: Layer index stopped updating ~1,5 month.
Low priority - this is just notification & thanks in advance for taking
care :)

Andreas

--001a114d72ea3d73c0055d88b361
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div><div>Hi,<br><br></div>did not find any heads up here so: Layer index stopped updating ~1,5 month. Low priority - this is just notification &amp; thanks in advance for taking care :)<br><br></div>Andreas<br></div>

--001a114d72ea3d73c0055d88b361--
