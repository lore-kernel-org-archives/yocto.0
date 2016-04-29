Return-Path: <psiva87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D414E00E54; Fri, 29 Apr 2016 02:46:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (psiva87[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4206E00E50
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 02:46:15 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id m101so16866840lfi.1
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 02:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=2+IUZR7mwH4ZVU5NXAKEFod2jPEgZJdYx1YXVzvAUCU=;
	b=rPAQGHnCh1NfrHVNkIKJ/U3Mn3UZFfEOuZIGTUK/U8g8UPhE6IL6IKHZd4nfQgAwc/
	LwY0LtQG30VBm8ld7l0ibq5UYnJS1IpTpdIXlCq/KpjXOM18VahiVw/oyRtlCJCLmtMA
	ncaJojw44AB6IyvgxIMCSP52qffZArtCZU0j3y5IypzBZOjUyMUFPvhkiMs3PrziYnYy
	izsBmkTGVZOJmFwswnwMM+Uz7ZV2d0ux8H4kaX/LvKhiEMwSJl4NOVmmAPHz3iqE2GpC
	dWoFyAPTVxMIvNqa2nGUAfExZNo9+MVYI/po3rlqIvAURn4CKr1/fdPsGMWA7F5jhun7
	Byrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=2+IUZR7mwH4ZVU5NXAKEFod2jPEgZJdYx1YXVzvAUCU=;
	b=MB2FYZ8kEYglnB0BX4Hbul1OcG5vccSgfuBKAnMCFvGBivIg/5QNfWF59Ag4XoebXi
	XLJOcuHGGPJT2UKmSZXdoZObERTxFJZZ/RFf7+677iLiMz5Z0iMQT4eO/+xYwrRD87b+
	euQc+uer0+1qCAUyrjggTUR1bTALrgMKk5J9d35l1EvmDj2wzdX+d8MAvBz8OUG+J7Ah
	M9DGmmo0nclgeN1LgJZThA7eIx0uD4WyMcWBEwsbvh4Yqcu2qnH9SR+hNEYVORJf54/o
	oWJ7r6PXM59zFYXgNqH1knl6btKQCwKVagBxPELDff4Fsgb00KERrmH7DZqyREB3VuSq
	X69g==
X-Gm-Message-State: AOPr4FWcKxyADcO507Bam5iZQLcoHizl0pQYwWuz5Pdpr4ie/TfTnZwVenDpGrOUuv4V/J8ugeDuy/0hMkXaKA==
MIME-Version: 1.0
X-Received: by 10.25.214.234 with SMTP id p103mr8746910lfi.35.1461923173708;
	Fri, 29 Apr 2016 02:46:13 -0700 (PDT)
Received: by 10.112.124.10 with HTTP; Fri, 29 Apr 2016 02:46:13 -0700 (PDT)
Date: Fri, 29 Apr 2016 15:16:13 +0530
Message-ID: <CAOorjZScGG9kG48=kpzcQv0b5m5ztTX5HmmpaVfrjh4HFD9nqA@mail.gmail.com>
From: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Help on submitting patch to yocto projcet
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
X-List-Received-Date: Fri, 29 Apr 2016 09:46:19 -0000
Content-Type: text/plain; charset=UTF-8

Hi,
Can any one guide me on submitting or upstreaming  patch to
git.yoctoproject.org recipe? Thanks in advance.

Regards,
Sivasubramanian

