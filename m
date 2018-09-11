Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCC03E006F1; Tue, 11 Sep 2018 06:10:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 090EAE00460
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 06:10:42 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id v16-v6so25965068wro.11
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 06:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=RTZDGkT+MrUCa2/qS6YBVVU8zlBN3S+dpiQtLwnYU4w=;
	b=ttZpXYK6gNjcR/n8JQEG7uCz+ZIQmYR+rVMBckfIKvqT2RzWBx8YqStF3NARHRHpP3
	K727P77XYmgciyFgzbs+utKMmpTzDptKkXuOoZ88udBjNOGDvg9LD/StZoOeW+wgxL5U
	JEb+p1gjm3VO6Q6g+pSmfoxYAjFTtbA+7qKaovTf1JeN26Z0lYxYXwmjNny3k7C/gk2m
	XAhv4s4YD2/JAjqJo16ft0fuw1/2LxX9DleksQ42IxVgEByle90ZMWFiUeczndNVU9GL
	HqCrk07PQ1NA+TvQbROiAJyRGYpIHRT4SA5zSNIV/Q2B16IeJz+741CCrjeWG+NMRB6U
	M3hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RTZDGkT+MrUCa2/qS6YBVVU8zlBN3S+dpiQtLwnYU4w=;
	b=BrqU29vcBOCAW6W2lY4fWkf9F3FllTwUWq+NEloz8hox7htjaBwb/z/fI36iy7UOVO
	wH0RoOKUG50sv6b5PDDyIHAynrA6/I9kN5fkguyjfq8zghAjchPg/OY61jSdahjvkcOF
	kELOL75OhjzCp8+xsaaI77/QIHq+pVx2H3Ht5OgZvTvBW0wSCI13Kn8mhVDa2juxQ0HM
	BNGXqFbtYcsBaNLO3qjpx4t0vQUK1C99K2XjULk/nY9h3slCcNYq3p3Vixp+U0Gt7iZA
	7sprUMO8h2kOEilvrJQCYpV+s4YZQ5N7EWMI1o2m1ftxT9QBZII5zDg9pPzuaOIL9N4P
	/B2Q==
X-Gm-Message-State: APzg51ACa2HFeVkf1npGL6rVdV+xFtH8Jt2aCWIVS7JC1ECK6/gIBUX4
	JuPiTHE+lSUZQPjKgT9LVh7dl9V0IxiMoksdMT0bRIm+WkM=
X-Google-Smtp-Source: ANB0VdaMzO9qwXK4jqwotBaROMZ0VmB5pCoq/v+oJLGr8l0hRMaUOYWo+LCXspcps/k5RwejIFKhzq0MbTPl1Gxc6r4=
X-Received: by 2002:adf:f648:: with SMTP id
	x8-v6mr19182748wrp.144.1536671441741; 
	Tue, 11 Sep 2018 06:10:41 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 11 Sep 2018 15:10:29 +0200
Message-ID: <CAAfyv369aBTUobHChh9r2cNEx32F=jAX81ybBXfnZMYOPB16eA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: [sumo] systemd install problem when polkit enabled
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
X-List-Received-Date: Tue, 11 Sep 2018 13:10:43 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm building core image (with added systemd) for x86 but I hit an
issue when installing systemd
that it fails chown polkitd:root (looks like there was discussion
about this issue here:
https://patchwork.openembedded.org/patch/142904/ but no real
explanation why it sometimes fails). Any ideas what to check? Using
poky sumo. Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

