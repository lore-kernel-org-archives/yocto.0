Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A824E00C97; Thu, 30 Nov 2017 13:46:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14D2AE00B48
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 13:46:07 -0800 (PST)
Received: by mail-ua0-f182.google.com with SMTP id i20so4694072uak.6
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 13:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ni7ZpWFWAyPME5a6t8s/KRrM5bjhwxl0WtT+DOO0qdc=;
	b=Dth6ZI5BRD5sk1pBfcsxbs8EuA+Kqoja+HDeKFDtJ87GOrh/9qqQBlRe7LngNQYi96
	2vbmf8t8jGeWPI0vrErUiE8574UaYAkb/VH48bOOGvj/eVWYkkLRbGs/l6KRZp2innjn
	CbXM5Q9cudJFZIUbi8UuTu3WRx8K7ACyxTtLIp6Px8NbaqXtfW3aoZ1KabqBpL5qp63Z
	VQZFK4YrWjJwaGfQ+t8Uy/YTiAYFY+aj1BfKymSgYBu2TVGybhA+3ldTxH1ZV3IHLOcE
	6WQWpFPFVCJIkV5M5hTBmUb49gIQIViRRIZ7BaS4Jc248GD1rFOlpjlBlaCBWnCzudA3
	eQPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ni7ZpWFWAyPME5a6t8s/KRrM5bjhwxl0WtT+DOO0qdc=;
	b=QUvTpwb6wcwJvofBO8IQlDKP2v4FdmR9punw7kUBRhyQK7KvSSgJaLUW5eKrjJiaJ+
	0Is7dWr9P4bQgK4jHwnzLZSYvU6KBRa1Gnlw7ylrghE2m5CPHzrro6TbeQzgHRe6KWbe
	YJuQxK3MXiU6zeIXquJ7adqriSAi4B8deSO4Zk/LauPM/nI3SHLSdodCyoq2baFYMidv
	d6bHjoJu+KoQaawARXrOfOEF57qsuSgGJ4YIzx+mkV60wpiSNQwZvIzHfEB62Ts+t/JV
	f3pYSxqqFwfmjRUoNseTGBgh9T82oPF2NCdnVBTtLllY/VICWYI44a5FRdHuFNx+WxuT
	IHFQ==
X-Gm-Message-State: AKGB3mLhXx6+YJE8s49r2v0cejY/r4XD+35xZ2562OgQSXauO3bxKZRW
	ftiANVOdFhyn0IOB0N9/HkSC+XGwKmyOxB2fZOt27OOtLwR/iDOpR2YuOGO7cLrvEnfyzF2xbpt
	rUh1KttMnCOL1wNZcp5ASmmclGw==
X-Google-Smtp-Source: AGs4zMYr01u10Kv+OBHNoi9gEfC+0/R+NRQuMX/0P0O4clcVUZtHPL+FWUep+u083xuByIeCpN730Dke0KcbYJLZCgs=
X-Received: by 10.176.94.20 with SMTP id z20mr2687784uag.175.1512078367204;
	Thu, 30 Nov 2017 13:46:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.95.198 with HTTP; Thu, 30 Nov 2017 13:46:06 -0800 (PST)
In-Reply-To: <eed2b610-b2af-7ef1-de4d-c92109f1a144@linux.intel.com>
References: <CAOLNbFYR+Y9WsUu0Cw3KLtHdDyZ_giUQO00bj==58LKZ87DAeQ@mail.gmail.com>
	<eed2b610-b2af-7ef1-de4d-c92109f1a144@linux.intel.com>
From: Rail Shafigulin <rail@esenciatech.com>
Date: Thu, 30 Nov 2017 13:46:06 -0800
Message-ID: <CAOLNbFZMaR7-zY-u0QE45PppBUQQKKv0CuarKNrru1KOn+mRqg@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: dev package non-sym link
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
X-List-Received-Date: Thu, 30 Nov 2017 21:46:09 -0000
Content-Type: text/plain; charset="UTF-8"

> Check whether the situation is the same in .../image/usr/lib. If so, then
> the upstream is installing .so files incorrectly and you need to figure out
> what it does and how to fix it so that it symlinks .so instead of copying or
> hardlinking it.
>
> Alex

Thanks for the reply. I changed do_install of my recipe

do_install () {
  install -d ${D}${libdir}/
  install -m 0755 ${S}/libAnokiWave.so.1.0.1 ${D}${libdir}
}

Now the error is gone and there are no warnings but if I check

/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/anokiwavelib/1.0+gitAUTOINC+16df62468c-r0/package/usr/lib/

all I see is libAnokiWave.so.1.0.1

If I change my install task to

do_install () {
  install -d ${D}${libdir}/
  install -m 0755 ${S}/libAnokiWave.so.1.0.1 ${D}${libdir}
  ln -s ${D}${libdir}/libAnokiWave.so.1.0.1 ${D}${libdir}/libAnokiwave.so.1
  ln -s ${D}${libdir}/libAnokiWave.so.1 ${D}${libdir}/libAnokiwave.so
}

I get the following warnings

WARNING: anokiwavelib-1.0+gitAUTOINC+16df62468c-r0 do_package_qa: QA
Issue: Symlink /usr/lib/libAnokiwave.so.1 in anokiwavelib points to
TMPDIR [symlink-to-sysroot]
WARNING: anokiwavelib-1.0+gitAUTOINC+16df62468c-r0 do_package_qa: QA
Issue: Symlink /usr/lib/libAnokiwave.so in anokiwavelib-dev points to
TMPDIR [symlink-to-sysroot]

I'm not sure how to fix these issues. The links, libAnokiWave.so.1 and
libAnokiWave.so, must exist but right now they don't point to the
right location or doen't exist at all.

Would appreciate any help with this.

Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



