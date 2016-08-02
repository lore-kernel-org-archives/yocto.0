Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ACF3E0114B; Mon,  1 Aug 2016 20:28:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 396BBE00F39
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 20:28:04 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id o80so269763557wme.1
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 20:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=KU1gagt9KJnw8JDfzeUTzMZajH8XMh1cCRgELLPLKKI=;
	b=f1mgNYdMlAem7bGkpLmkY3gebhNRKwhOsa6yLYWevwG2dXLs3pg3YrQZj8CckyaVjI
	Q2Ad+b6izdBTwoTen4JA0S67Wl4GpNL1U1/BqibVuKlqEf0eKUkkKGuf8AvER+xQX6A7
	DtbMzOogR7Woaz9g+G/puGhT7imYC9UEzhqk9rJgsJo+WEDptmPJDGT1y4qspzy072mC
	7b+qxfoG8E+VGazDYXzkuC1x/C28UqGun5fuym+GsHzB8bUyxQMlWg8n4OP2a6d7uGQ1
	YKaAfU0vW9Q6ilZsrSAKi9ehOslfYwl5L1AD6Yx06MreH9eW5pKXPqWFljfiRjsdSSFB
	QFTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KU1gagt9KJnw8JDfzeUTzMZajH8XMh1cCRgELLPLKKI=;
	b=BaAqzstylE4HtB5tt3IR0B2fci8KyySc8QLAnYt5wi9gHPKjL6kmYiBr49oNcuiL9W
	VjLmoPAEFkPhp1Yuh7iZnz5LyBg2SAy4ab4lOh1VSy1ZsMalcMnJq4ETPT5j7O+SHbGZ
	m8QFHeFsDNKzAecXmkEFU+VnMu1LFVdAozloH1BQwi8Q/7Leoo9zrtXp1cG0nbzCsgFY
	YC+ixV8/28vMiCy6xcYie6Gpa4qbyiBHOoNdWDT30UUpCvXOlZU/i5PdfxxXyHfA5vgv
	djrWsf95O6czKNH+ZMRI7Aq95a7giIZCc/kEVH8MDp7am+vrcPGjfBec3vmoK28EDct5
	PCvw==
X-Gm-Message-State: AEkoouvxSl2Bg9uAhoZacgbpjWSc6vPE/tjJivwntAkAUqqmvtBRtSzlh4gzDhcEPQZuovBAGDvr38Dve4wAKw==
X-Received: by 10.28.167.80 with SMTP id q77mr17323854wme.62.1470108482769;
	Mon, 01 Aug 2016 20:28:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.217.211 with HTTP; Mon, 1 Aug 2016 20:28:02 -0700 (PDT)
From: Prasant J <pj0585@gmail.com>
Date: Tue, 2 Aug 2016 08:58:02 +0530
Message-ID: <CAA2DH4tYj7SPQVuJwu14zmgTS=iWEYJ3YV6Rf_rKrN66dAWgnA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: smartpm: is there a checksum verification for rpm downloads?
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
X-List-Received-Date: Tue, 02 Aug 2016 03:28:06 -0000
Content-Type: text/plain; charset=UTF-8

Hi,


I'm using Smart + RPM for package management on my embedded linux
systems. We are currently using scripts for checksum verification of
downloaded rpm packages.

Does smart have an inbuilt facility to verify md5 or sha256 of rpm
packages downloaded from server?


Regards, Prasant

