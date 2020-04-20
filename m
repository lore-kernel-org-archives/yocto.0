Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.3183.1587445246524850086
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Apr 2020 22:00:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RAau+XZI;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: amayajindal786@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id v2so4816618plp.9
        for <yocto@lists.yoctoproject.org>; Mon, 20 Apr 2020 22:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:subject:message-id:from:to:mime-version
         :content-transfer-encoding;
        bh=JXSXcseg0wYC8Q21PRhUTuTLqZ7A3g5oASt3jCNEZOI=;
        b=RAau+XZI/I0aJv7HelLeKymeWfz7NZxWrTMTnGMauL/FWjfuM8Py/T2L4Ev0hJJFNB
         svMWGEr3UMGjSmkLjIKv6XaC41GjqhUgXCd4ssXNnNrxwyUhl7YsDLt/l0UEtItt3KH0
         qphotk3CFCgadpmWcyj08MarpgLkwMC+FOfeNQ3Eftlr2IV+p5AE3qUIHDNHbKo+ow09
         BuMEVg3ohnsOaUQ2QYgvCm9cBkAqm2g/9CyRqmbMpToPodsdmsZijIBbbYha1PmzTND4
         KvWUzy4F1lJo1cMyeJM99ZDh/YHYiEclcrjtG2j0ZW4QeibFKqMvHDC1C7rMTTZsvfpf
         tYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:message-id:from:to:mime-version
         :content-transfer-encoding;
        bh=JXSXcseg0wYC8Q21PRhUTuTLqZ7A3g5oASt3jCNEZOI=;
        b=c7z2RwtwX3fpDSnM95V/4iZ/ESWqzvvalog7e2XeIewK96xjHtO3tW675CURvfXxfu
         5R8SAp8IavSgcLVllFVVcmUp9vaksbQVrJeZ+mGXyxxAtOmKH86WOuxbkxzaGzkzzquB
         Qz/BMnhOHT4SVtkzNOxZ347pf81ahrCpo1BbYG6eJlwOCGU3Vz0H0rcHndZ8yHafd1VQ
         CKIKr4X35Hx5yjiCVGpZP4Z5DxKlMpDSmlUA5vJCo4bEbPgx2z5Ol7Bg6NEkyzuLQzky
         FD30/2fBZuOUQnvooRPRaLF5Aifn7W0KhMFpPnwfo0OF07/McR0tovd7t3SNByZz0Hco
         7vBg==
X-Gm-Message-State: AGi0PuY3ZnL1GOJJ5DYbojyy7ZyCiYWQtHInfvbW0fM9CwGyS1RKnbOb
	ECjNR+xFjVMDfWoydFDmMOasdqEU
X-Google-Smtp-Source: APiQypLUuEnwvGWgq8mpkpvvNSTa7w+pU7GfQXtIo9UDYm7o5aP314PrhRlX0ZX2NhNPSkI/QiwsNg==
X-Received: by 2002:a17:90b:3598:: with SMTP id mm24mr3686752pjb.132.1587445245897;
        Mon, 20 Apr 2020 22:00:45 -0700 (PDT)
Return-Path: <amayajindal786@gmail.com>
Received: from [100.123.40.4] ([49.14.110.28])
        by smtp.gmail.com with ESMTPSA id e29sm978661pgn.57.2020.04.20.22.00.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 22:00:45 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:55:22 +0530
Subject: Mongodb 4.0.6 compilation failed with openssl 1 1.1a or openssl 1 1.1pre9 recipe.
X-Priority: 1
Message-ID: <-1x1rt0-b5xgax-gwzuhjnzab79bwgfft-pkf7yc-z901l3kfv2a1r63ku-ybkl1njkqv29roqj83-lkq071-29be7mtij8eddpd6qis58qxe-hs1gfmp4ja9hn60gt6-we06qhvsiahi-borcr0-navh0x.1587392722100@email.android.com>
From: "amaya jindal" <amayajindal786@gmail.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, yocto
 <yocto@yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPjxiciAvPkhpIEFsbCzCoDxkaXY+d2UgaGF2ZSByb2NrbyB2ZXJzaW9u
IG9mIHlvY3RvIHByb2plY3QuIFNvIHdlIGhhdmUgYWRkZWQgdGhlIHN1cHBvcnQgb2YgbW9uZ29k
YiA0LjAuNiBmcm9tIHVwZGF0ZWQgeW9jdG8gY29kZW5hbWUuIE5vdyB3ZSBuZWVkIHRvIGFkZCBv
cGVuc3NsIDEuMS4xIGFsb25nIHdpdGggdGhlIGFib3ZlIG1vbmdvZGIgdmVyc2lvbiBidXQgSSBh
bSBnZXR0aW5nIGNvbXBpbGF0aW9uIGlzc3Vlcy4gQ2FuIGFueW9uZSBoZWxwIG9yIGd1aWRlIG1l
IG9uIHRoYXQuwqA8YnIgLz5TZW50IGZyb20gbXkgSHVhd2VpIHBob25lPC9kaXY+PC9kaXY+

