Return-Path: <marc.ferland@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0636DE0059C
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 12:48:16 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yenq10 with SMTP id q10so864097yen.35
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 12:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=70O4IpHX3iwAOCS8qgxCr2DBppk1hVLDl1knQYOUfsw=;
	b=YgJtUsjlVNIVpEzoXslKrgsyPSOimxLRIEo4OHktcMMBI09DGGrR7+V4df2eNL6TWe
	GQILj+IXG+Ud+5shxiSF5Z8c3Zy12rr7R6Y2YQzCT8oVI7X0xc0iUbnDVvsI7oT1yf97
	uTxKkISXJoXcGzSTGkGthmXdEQuUBiwhFKIO4=
MIME-Version: 1.0
Received: by 10.50.242.1 with SMTP id wm1mr10240534igc.30.1320958095743; Thu,
	10 Nov 2011 12:48:15 -0800 (PST)
Received: by 10.50.34.166 with HTTP; Thu, 10 Nov 2011 12:48:15 -0800 (PST)
Date: Thu, 10 Nov 2011 15:48:15 -0500
Message-ID: <CAMRMzCC+m_LrpexrghHb49JWD5bVL3-89O8bhh0=hwLpWi3ffA@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto reference manual: error in given example
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
X-List-Received-Date: Thu, 10 Nov 2011 20:48:17 -0000
Content-Type: multipart/alternative; boundary=f46d044795050f5a0b04b16786b0

--f46d044795050f5a0b04b16786b0
Content-Type: text/plain; charset=UTF-8

Hi,

The example given in section 3.2.2 is missing a:

inherit task

instruction.

Could also have been ALLOW_EMPTY = "1".

I realized this after a couple hours of debugging!

Regards,

Marc

--f46d044795050f5a0b04b16786b0
Content-Type: text/html; charset=UTF-8

Hi,<br><br>The example given in section 3.2.2 is missing a:<br><br>inherit task<br><br>instruction.<br><br>Could also have been ALLOW_EMPTY = &quot;1&quot;.<br><br>I realized this after a couple hours of debugging!<br><br>
Regards, <br><br>Marc<br>

--f46d044795050f5a0b04b16786b0--
