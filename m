Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3C5FE00DDF; Mon, 11 Apr 2016 11:22:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f196.google.com (mail-ob0-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63FC2E00C90
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:22:32 -0700 (PDT)
Received: by mail-ob0-f196.google.com with SMTP id 4so12866593obi.2
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=GQwhT/AytaX30a5d3upulcz8ihZ2SdN7frRhkHnFFg0=;
	b=i/0yol2Yv/C0koo1IDF2XGEqcQhTxnqi+AAWq7IKEwHrFVASv2PGxImuBtyKG0BMZ1
	A1HRqWECaP/jXvDGqGGUaYixjyFrUdOqd4RNvRrygUTYRQ4bwEwl0p7MuVuAoevSKo8L
	ktCaNQQYZEZGfl+8xJA1sUkNzDZvV/1gw2Z+cuppp2UVOK7cl/SS7Qv24Jge10jjrOSU
	RBucKQ88y1n3ADUskolxMc3oSaHFYUxkJLk54D34F0+I2qWfBV2+9G3XHefnK/T6BNV2
	N0rvN7xkM2K4kQyjSvb8R7ZXsnk29cNGY+jYooaszhRtWLBUj05uJ5NAm+V8dKso/g5D
	t3jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=GQwhT/AytaX30a5d3upulcz8ihZ2SdN7frRhkHnFFg0=;
	b=L4+k6jVE+J0XsIdjYaRqp4pUoWSOTfYWWPI+kJOBEexDODLymxcej872MmKXXcQQbr
	9ngwHHQxho1U9tqriqUgXsMs17aY2utmWhgFmQvTSj82br56EUPDqkSULLStS3mNw+eq
	LmAykvYlXHBq4aSUzI2jhhy+h0Fy4meBWDzP+hn8prvJkqgowP0Q2GbzmgiN3lX2YUEZ
	z99Qlsm0ZJPhvny4vW/vG0NI/yplD4IKPYlG8LVzDV8S5iHVYOakIvZteYhZA0mfuaHB
	H23nShHOVQOYS4v4p7cmwZj9PbWMxyFBEKwJN31ReAtRG0IRYpBUwWHbQEq0gfJFGtla
	+wSQ==
X-Gm-Message-State: AD7BkJJR54iwNWxI00ouACj0B5h93p7y1ZJyiHRYcUgOeswn0uguxMmX4XgkHSmiJPOQC24uNO1BThCxmvzGWg==
MIME-Version: 1.0
X-Received: by 10.182.142.103 with SMTP id rv7mr11331696obb.40.1460398952389; 
	Mon, 11 Apr 2016 11:22:32 -0700 (PDT)
Received: by 10.202.4.71 with HTTP; Mon, 11 Apr 2016 11:22:32 -0700 (PDT)
Date: Mon, 11 Apr 2016 12:22:32 -0600
Message-ID: <CALRMKQqW=aUg-uwNqyBEvX2RdB4oh+_j-t_KBpKp1a2cCgskjQ@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: yocto@yoctoproject.org
Subject: A lot of, seemingly, hung tasks
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
X-List-Received-Date: Mon, 11 Apr 2016 18:22:38 -0000
Content-Type: text/plain; charset=UTF-8

Over the weekend, I upgraded my connected development platform to
Debian 8.4.0 from Centos 7.

However, today I have yet to make a successful poky-tiny build for
either coreI7-64 or qemux86-64.  In each case, I've aborted the build
after one or more tasks has stopped doing anything for 30 minutes or
more.

I define "stopped doing anything" as having not touched a file in 30
minutes, while the CPU utilization (on this 2 core, low end, ASUS
VivoPC) drops very low.

I've tried re-running the offending recipes and tasks individually,
and cleaning and restarting from scratch, but I keep ending up with
something hung.

Any ideas what is up, and, more importantly, what I should do to resolve it?

Ron Oakes

