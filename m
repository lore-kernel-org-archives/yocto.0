Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web12.4319.1587554358604676257
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 04:19:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fSsrCpRD;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: amayajindal786@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id x26so906174pgc.10;
        Wed, 22 Apr 2020 04:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:subject:message-id:from:to:mime-version
         :content-transfer-encoding;
        bh=CMdtBIa6Oa8isfDhXhm+5sIPZryoVMEo860wyA4Uj9I=;
        b=fSsrCpRDhGGvvD0QuKkS95ArQYMz+PHnsOkvD95085TvthedYhQ1p/TN17HySvrEA8
         2SwBWXtNl/CVixfOxCMoogPd4uATgPxTlpYGxfPG0e2kpdaC4h3nwvP2X3ZmLv2EWAOy
         3dvaYyuLNZ5SqErXqIxc3yk0qcu/TzPVldUg3NTSmfL1GDxU1jyYKac9drwYSvECY//D
         BZZX+gCXXL/jqYOZF6Th8iBZMDAWjh9AWME516A4jjhcrmqNO55jNqBeQAx/e8l85ZYT
         yR4z2EExK767oe7pmLJYuoZxW8tUHF3q/1v/r9pBcmv6t/aOM9ES1IACkF/iBAnUcPuo
         R2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:message-id:from:to:mime-version
         :content-transfer-encoding;
        bh=CMdtBIa6Oa8isfDhXhm+5sIPZryoVMEo860wyA4Uj9I=;
        b=BA/BXfP+u+VHJqA0f6c+DHuZ9J6LOI2OMu46NIHf5jHAe3Hr45kWZoQakRFHp5s9eb
         bwO0ROncaiMk/wc+u/Ov/Q/KtfE8Kglk9N+vR0dOX9WjC2F9I+80FciXlQeMCtP4lqyy
         3orCtpKytB8aZHi4A1XL2Z1M6Rac4mwQ5DvJX6RGga8TJdvHI/o0tHi85+Tr5kjAs/lX
         frDs+qAsBMe2oDG+POxQCpAIWDEOSSLbBtj0yfCJpLe/7CK2DHvKxjfzHR7ZeOw3ZBp4
         U59k1O05uVm0E3pdUaKR01OPPJrYtcrMm0moGWt1To6qVKFT3H83x4Zs331SuCUQqc1r
         mdJg==
X-Gm-Message-State: AGi0Pubkyo8H3ueBDfkEbx54qurZaDym6QPdscpgGpY+qGpjCsX0VMtD
	0zpHad2NwmTeeYCrtT5eX5xn8fdr
X-Google-Smtp-Source: APiQypKoDqQgbovXHyQpJNCSqXoTxRfYieAjyoqIMfhOSIYca0ZFN+kLBUM/1NPOggz4Hx3jzYvNSQ==
X-Received: by 2002:a63:1a0b:: with SMTP id a11mr24339164pga.29.1587554357796;
        Wed, 22 Apr 2020 04:19:17 -0700 (PDT)
Return-Path: <amayajindal786@gmail.com>
Received: from [100.64.50.122] ([49.14.110.148])
        by smtp.gmail.com with ESMTPSA id b24sm5273028pfd.175.2020.04.22.04.19.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 04:19:17 -0700 (PDT)
Date: Wed, 22 Apr 2020 10:11:20 +0530
Subject: Issue with mongodb 4.0.6 and openssl 1. 1.1 recipes
X-Priority: 3
Message-ID: <8vbzb4-b0osrc-vc4f5013h3tld0kxu7sbp5qo-3nm1eg-sh7d4i8e76u7-3dztt3q5l62p-ha7uz3-cznesvknhfoscl5g16-awt6eddpyecd-en7cb52uzhwn300xgv94upi214mroj-hc0ou6-9hzuku.1587530480412@email.android.com>
From: "amaya jindal" <amayajindal786@gmail.com>
To: "Mikael Falkvidd via lists.yoctoproject.org"
 <yocto=mjo.se@lists.yoctoproject.org>, yocto <yocto@yoctoproject.org>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPkhpIEFsbCzCoDxkaXY+PGJyIC8+PC9kaXY+PGRpdj5JIGhhdmUgeW9j
dG8gUm9ja28sIEkgbmVlZCB0byBwb3J0IG1vbmdvZGIgNC4wLjYgd2l0aCBvcGVuc3NsIDEuMS4x
IHJlY2lwZS4gQnV0IHRoZXJlIGFyZSBlcnJvcnMgaW4gY29tcGlsYXRpb24gb2YgbW9uZ29kYiB3
aXRoIHRoaXMgdmVyc2lvbiBvZiBvcGVuc3NsIDEuMS4xLiBQbGVhc2UgZ3VpZGUuwqA8L2Rpdj48
ZGl2PjxiciAvPlNlbnQgZnJvbSBteSBIdWF3ZWkgcGhvbmU8L2Rpdj48L2Rpdj4=

