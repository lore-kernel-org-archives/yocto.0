Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C14E00309
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 08:44:35 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbnl22 with SMTP id l22so2141720vbn.35
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2011 08:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:from:to:content-type:date:message-id:mime-version:x-mailer
	:content-transfer-encoding;
	bh=2NCsV8p2qrnUmade/08DzzUpPToSw1SWBQalD468yI0=;
	b=grJHwrTIIGlnYx0pI9YZv6nObJL6E8nGGwTlpYXCVfeAgjNpriQPeBIkX2r7DyhUnH
	HzPF+HC2N6NRGhWc8TywrFiKDScmm/u71XkX6zy2BdgTuy0DA6D70S2lnTkbKWq5gBzP
	RZFTRhOOmZuu0AtbB4meAZPlJx8T9wCc4a0F0=
Received: by 10.52.65.14 with SMTP id t14mr26182301vds.47.1322066675384;
	Wed, 23 Nov 2011 08:44:35 -0800 (PST)
Received: from [10.0.1.36] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	ey9sm24582424vdc.19.2011.11.23.08.44.33 (version=SSLv3 cipher=OTHER);
	Wed, 23 Nov 2011 08:44:34 -0800 (PST)
From: Jim Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 23 Nov 2011 11:44:47 -0500
Message-ID: <1322066687.24623.4.camel@jim-ubuntu>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: ADT installer
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
X-List-Received-Date: Wed, 23 Nov 2011 16:44:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I was following the ADT manual online, section 2.1.1.1, and everything
seemed to complete as expected, but adt_installer.tar.bz2 was not
created in the ..../build/tmp/deploy/sdk direction as documented.  In
fact, there is no sdk directory in deploy.  Is this a documentation
issue or is this not working. BTW, I could not find the tarball anywhere
on my Ubuntu development system.

Jim A



