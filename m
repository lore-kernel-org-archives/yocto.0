Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34063E011C5
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 13:18:12 -0700 (PDT)
Received: by mail-gg0-f176.google.com with SMTP id e5so1780406ggk.35
	for <yocto@yoctoproject.org>; Tue, 09 Oct 2012 13:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=vDwvriQtzv3O8qAtxBd4q8Yjn8Da9bdzeJRA9r6A+dM=;
	b=VQVB6kwo5CRHCp9mKh/pR71xUv9qX6zRimIlZ5gX/LRxHjIwEVU4B0pZx1nXmPBLHr
	a6ad/SlUBTfnBiIAusMdfMkv3isE5mNv+xhNCm2TvN4RbnLyXAg4ajNaB+8ohenGzVHB
	Nsxjd3lYKY9deBLEwkue/FNW09wGZZ8r5JSl58eJ4jsRNY2e7Y2RF5BC+GxTVpSq3e4b
	mIXWEMrevE09jiZiV5Wy0iTmEN2oqRE3oi7tbBTCzoeujFbyIxDSb4nNDSmnu65wKrDu
	hafFyz7UMN4NfzvvZ3fUYtRJdLnAyZBI1FrieJWioQmeK4xqGn/LCF2TEISmZSc79fh+
	/rVg==
Received: by 10.236.110.108 with SMTP id t72mr18790870yhg.32.1349813887425;
	Tue, 09 Oct 2012 13:18:07 -0700 (PDT)
Received: from [192.168.0.54] (cpe-174-097-157-052.nc.res.rr.com.
	[174.97.157.52])
	by mx.google.com with ESMTPS id u67sm25901451yhb.8.2012.10.09.13.18.05
	(version=SSLv3 cipher=OTHER); Tue, 09 Oct 2012 13:18:06 -0700 (PDT)
Message-ID: <5074867D.2080101@gmail.com>
Date: Tue, 09 Oct 2012 16:18:05 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: building under Centos 6.3
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
X-List-Received-Date: Tue, 09 Oct 2012 20:18:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Just an FYI,  following the Getting Started Guide for Centos 
prerequisites, I found one that was not listed that I needed: "chrpath".

