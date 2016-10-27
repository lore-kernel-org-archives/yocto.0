Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8163EE00A08; Thu, 27 Oct 2016 10:34:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59395E0093B
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 10:34:28 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id s8so21479778pfj.2
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 10:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20120113;
	h=to:in-reply-to:from:subject:message-id:date:user-agent:mime-version; 
	bh=fWvzjsOJYauTyj/McMmKkDBzI4pqv4PomTz5RfEC2Ro=;
	b=IWMb6K4rHwRT7sSJH6wIosFinPOwpMDbRByrm7JM0oAQHDa5mnGswfQ8ew9wEhSxSq
	zz65P5Awk01MBitwYrzFVknbeVH1ASAVPObtjGECH1vBPYftQo0mWTRVzNhx0XpeanVz
	GJV5qJmazTujawjlgjWj7g04k2ak4VHeQ/3/Rv6hNCWtCBOQhyPL65BeqLp4Gr06uy+h
	1TL18UO8GnzbSNaikgPghid606xPaacDNi9Px2/u+ZOwsl95yKTrhNPuTm21t13m0B+i
	SBSzKCbYKIaMlw8x0pGMMHeeGuJ+Q5AP5p1B/0BF8nPdsre0ffFoQMng1HZG2p2XNEey
	RPnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:in-reply-to:from:subject:message-id:date
	:user-agent:mime-version;
	bh=fWvzjsOJYauTyj/McMmKkDBzI4pqv4PomTz5RfEC2Ro=;
	b=LcBxrP9/fFt7nnXuUzZmuB93qqjkeTehdIUoMIX26kkBX9fCvsxFwGCtqIDqfjZ/Zf
	tCqPS8vVE99v/asRJ/txf6ukBAw938oVECWYPaUKIvSkrpOeCg/mjxf8OF+RXrAV75/6
	kfOe+XfkSx5v/Z0svYQxa1pAdUD7eeGuIA+ve1Z6Tul1kQRKE+FGfb2OFaHGGlA2W5E6
	+IR7rmXVe5S1+62Y1Y2tbH+COCmFntjT+PpEbe0SSVadRPGwwy3Vtr8WRE2y/vaCscBQ
	Kw3Bi2RLZru43eBcYpY4hHy3QyT51q0ZYfj83EGRhCD4tuJtqZf7v9FN9nerdTgHLjMB
	c0Fg==
X-Gm-Message-State: ABUngvefDB4SIUc5Yf4rbmIBLO9uCGFJeoOS8yt2zpxpN7Zkdn7/33WDtDJwGQuMIGJEuHSW
X-Received: by 10.99.0.196 with SMTP id 187mr13508271pga.78.1477589667283;
	Thu, 27 Oct 2016 10:34:27 -0700 (PDT)
Received: from raltherr-linux.svl.corp.google.com
	([2620:15c:2c5:13:f937:65b3:9c56:c178])
	by smtp.gmail.com with ESMTPSA id 3sm13215626pam.21.2016.10.27.10.34.26
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Oct 2016 10:34:26 -0700 (PDT)
To: yocto@yoctoproject.org
In-Reply-To: <66FF3836D9E3F84186A25972B1DABA540288EC489B@SSBV0001.SSBV.NOORDWIJK>
From: Rick Altherr <raltherr@google.com>
Message-ID: <a9ccf644-5373-cf83-e955-d26b2ae28740@google.com>
Date: Thu, 27 Oct 2016 10:34:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
Subject: How to proceed with kernel-fitimage and INITRAMFS_IMAGE
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
X-List-Received-Date: Thu, 27 Oct 2016 17:34:35 -0000
Content-Type: multipart/alternative;
	boundary="------------B6D4250B62606B693841060E"

--------------B6D4250B62606B693841060E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Krogoth (2.1.1) doesn't include the changes required to build a fitImage 
with an initramfs.  Specifically, it lacks 
ec755d2524fcbd9dfded23a576f25c990d405a6c 
<http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=ec755d2524fcbd9dfded23a576f25c990d405a6c> 
which is only submitted to master.  From 
https://www.mail-archive.com/yocto@yoctoproject.org/msg31779.html, it 
looks like those changes will show up in the upcoming 2.2.

I've been testing those changes in OpenBMC 
<https://github.com/openbmc/openbmc> (Krogoth-based) and can 
successfully generate a fitImage with an initramfs.  Currently, 
kernel-fitimage.bbclass only stores an uncompressed initramfs which is 
problematic for the SoC I'm working on.  In short, even once 2.2 is 
released, fitImage w/ initramfs may not quite work for you yet.

Rick


--------------B6D4250B62606B693841060E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Krogoth (2.1.1) doesn't include the changes required to build a
      fitImage with an initramfs.  Specifically, it lacks <a
href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=ec755d2524fcbd9dfded23a576f25c990d405a6c">ec755d2524fcbd9dfded23a576f25c990d405a6c</a>
      which is only submitted to master.  From <a
        href="https://www.mail-archive.com/yocto@yoctoproject.org/msg31779.html">https://www.mail-archive.com/yocto@yoctoproject.org/msg31779.html</a>,
      it looks like those changes will show up in the upcoming 2.2.</p>
    <p>I've been testing those changes in <a
        href="https://github.com/openbmc/openbmc">OpenBMC</a>
      (Krogoth-based) and can successfully generate a fitImage with an
      initramfs.  Currently, kernel-fitimage.bbclass only stores an
      uncompressed initramfs which is problematic for the SoC I'm
      working on.  In short, even once 2.2 is released, fitImage w/
      initramfs may not quite work for you yet.</p>
    <p>Rick<br>
    </p>
  </body>
</html>

--------------B6D4250B62606B693841060E--
