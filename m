Return-Path: <koen@dominion.thruhere.net>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 848FDE0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 11:40:35 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so2562319pbb.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 11:40:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to:x-mailer:x-gm-message-state:content-type
	:content-transfer-encoding;
	bh=iRf8HnlsxomWNcboOE3qAsf9GXZo50wq/GXSpDeWt3E=;
	b=VdcA1DG3llnEHO6MZwvyb2eoOQsLAA9c8RHSR1qA3B6/RfrH+k41m9Zd/BTnNDf3PM
	2eYuQpI4ii4wtpgZlZrKLhRp44Y36H2SZkvrwSSEP+Ni7XfZfHwOLDl585Jv6Q2O5Jl3
	ZrSZAXEoM5SK2z4TSFDBGJaQ5yyOCpeVUxnTWE0Edt37/V7dd837gwM5wNfNCv1JIxSc
	25t1Vbla2RSMLPh9XAzfnkflDcDJRCiAzTwtNzShEIxYBU6wO1//wVG2WMliV4Ldexvt
	FeRaP5ZfJJVoLpTxl85qMiXCkuXMgUkFgv4yK9Jzx3agnrb+CmvzG739nhAlObFr09qv
	M5hA==
Received: by 10.68.201.6 with SMTP id jw6mr11709954pbc.92.1333132835309;
	Fri, 30 Mar 2012 11:40:35 -0700 (PDT)
Received: from [10.61.32.129] ([69.38.219.78])
	by mx.google.com with ESMTPS id y3sm2398717pbh.59.2012.03.30.11.40.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 11:40:34 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4F75A3E5.6060608@linux.intel.com>
Date: Fri, 30 Mar 2012 11:40:47 -0700
Message-Id: <0259BBCD-EF2C-4207-B1A6-1C65339BBE9B@dominion.thruhere.net>
References: <4F75A3E5.6060608@linux.intel.com>
To: Bryan O'Donoghue <bryan.odonoghue@linux.intel.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQld2t6KRrOyFfAo9kDXfqJ6Cwf3hifzqCEulRzZByD1ELCAiclAXeKFpqwZEX/MVBeEGSyQ
Cc: yocto@yoctoproject.org
Subject: Re: udev configuration
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 30 Mar 2012 18:40:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 30 mrt. 2012, om 05:15 heeft Bryan O'Donoghue het volgende =
geschreven:

> Greetings list.
>=20
> I'm booting a yocto image a "core-image-minimal" and I've noticed that =
not all of the serial ports have entries in /dev. More generally for =
hardware coming down the line, I'd like to know how/where the =
configuration for udev is supposed to go in a yocto BSP.

For creating device nodes udev doesn't have a config anymore, it's all =
handled by the kernel using devtmpfs. I suspect not all serial ports are =
enabled in the kernel.

regards,

Koen=

