Return-Path: <raj.khem@gmail.com>
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB59FE01541
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 08:27:14 -0700 (PDT)
Received: by mail-pd0-f170.google.com with SMTP id x11so4026168pdj.29
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 08:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:x-mailer:from:subject:date
	:to; bh=dXpLbsaiplSNZDtigDVTfyLeyw2n2JvgC/1a2zH0ekc=;
	b=J96nc1pDybc8jcaH/DKQOeJLyy2aDKAlb0F6qWJoPfaxMucs21Nu3Dq6wUqv0qfk2x
	9kf380GscZGL/QvvE+4I0O+M6eqjbcupH0reo5w0hmrgOHVDfjvoGqMsVXgY4+OfU04Q
	SXC0u3rBRnfG/TWcNEEyoUcIPGK5TCm6YWKAS0PdgK7iLI9Vy0wITgN1OHYAPf/d0tPg
	9AnXgS/Aem1h9XGLmKNWsbVT+BHK9mDsX0f5aQjX1IkhTr0Bdo2a6GFikfIHhzkf8CsV
	FwfZy3wvMi03ubD5q5b5iBTqIRHs1OJxDkcBIiw0j7OGo3EmJeLZME42NexczzSbwDQ3
	KhWw==
X-Received: by 10.68.194.8 with SMTP id hs8mr18094084pbc.84.1371569233871;
	Tue, 18 Jun 2013 08:27:13 -0700 (PDT)
Received: from [192.168.0.6] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209]) by mx.google.com with ESMTPSA id
	pb5sm18714039pbc.29.2013.06.18.08.27.12 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 18 Jun 2013 08:27:13 -0700 (PDT)
References: <DUB116-W535D2739FAA722F6E3D6BB988C0@phx.gbl>
Mime-Version: 1.0 (1.0)
In-Reply-To: <DUB116-W535D2739FAA722F6E3D6BB988C0@phx.gbl>
Message-Id: <56FE8FC4-73F6-48FE-A7AA-5069E03FF6E4@gmail.com>
X-Mailer: iPad Mail (10B329)
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Jun 2013 08:27:13 -0700
To: Thanassis Silis <djnass_18@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: toolchain's environment-setup file that includes the image generated rootfs
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
X-List-Received-Date: Tue, 18 Jun 2013 15:27:16 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit



On Jun 18, 2013, at 7:19 AM, Thanassis Silis <djnass_18@hotmail.com> wrote:

> /opt/poky/1.4.1/sysroots/armv7a-vfp-neon-poky-linux-gnueabi".

If this dir exists on your build host then it doesn't need change

