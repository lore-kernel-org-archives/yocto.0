Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.3178.1587445237798421564
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Apr 2020 22:00:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mEbHOx3g;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: amayajindal786@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id y6so370575pjc.4;
        Mon, 20 Apr 2020 22:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:subject:message-id:from:to:mime-version
         :content-transfer-encoding;
        bh=ybc5CWR3MavdWsHX3omNQuFvd2DTbpul9X8o7f9AV3U=;
        b=mEbHOx3gmeB6z9blvFUretpluK8QnFtQ34Ch9/BT3Gzx1uNDm9EJGSYaAkGyxQP+Yi
         wDYT1siqbiBEJXi4es1a75/OroBldWQhWkkyxKqs7kFVqhPHVMISYaT/xHj4/McSnyWe
         O1lllL6/3/9hcVh5JxxOW+powgYDHluwJARgkHTwTBpd2noKHtAl0M1Nsv3FJKsfcX3e
         A8ePAdZu04gssQ+RcOu0ICxAUiSJLM/NOfaroXKDM/Qc8LErX0mBfXf8AhHlYFNnrZ7s
         nLbXGyH0xuOBEQRBbA2PqiQ5BPfE3gaLhcoM0iUjqZCK1OoS7/O3riVPwcdEDMHCPhj4
         HZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:message-id:from:to:mime-version
         :content-transfer-encoding;
        bh=ybc5CWR3MavdWsHX3omNQuFvd2DTbpul9X8o7f9AV3U=;
        b=laWVbfU2XXaYBLfFyF9Dj+MMClgJ5LU8wh7md45J2zk0bZmum/onBKqOZC/KkzEoQP
         jnOrlMwv5Qm2yZhcq1CSidiiamx2bOExKAIokp3clEcGmdog/mbZ90Bk00WgK/cp+5qP
         +l8mSyq+TDubJ3Tcp++ghow7Qb28uhaRNEyryzBbO25nTNeW/yEU/Xho+eKUk+lUt3aV
         Ns/KYT4m4ijkkhMSUTcrMGwgekuRplHzVpbKZ663CiRuKZxZ+2ihaw6Fssww2IpybdNy
         C9VmCHTrnBtN6zAV1gEsbPbzUAI6xHmzdMfWIpTqQGF7w33AM8pYe4FZb3sRbi3OYPDn
         7yaA==
X-Gm-Message-State: AGi0PubsfyjZnnnfGPBj3WWBD4PpqV3xaX/xWmwnGbiHmpLlJ5w2dRnf
	i0/aKTguoFUHdAEMYUFqXsRTi8u9
X-Google-Smtp-Source: APiQypIoQaFq9WiwzPRqh+clYjgTzQ8yIClyfeCyusd70A9szJnCr+zB8tnMV2OLhCH7uMp5R4DPYA==
X-Received: by 2002:a17:902:b68f:: with SMTP id c15mr17933865pls.120.1587445237073;
        Mon, 20 Apr 2020 22:00:37 -0700 (PDT)
Return-Path: <amayajindal786@gmail.com>
Received: from [100.123.40.4] ([49.14.110.28])
        by smtp.gmail.com with ESMTPSA id o21sm1020728pgk.16.2020.04.20.22.00.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 22:00:36 -0700 (PDT)
Date: Tue, 21 Apr 2020 10:30:27 +0530
Subject: Mongodb 4.0.6 compilation failed with openssl 1 1.1a
X-Priority: 3
Message-ID: <n6jtuwjsll9e-ihtg1h-nsx5tjdxxylqsx3nxbulgsdg3x79c1ksoinr-hh4do1wvdnbj10ygrb12zzq-uvdrze-xzvthfm01f8lmcxvqtuqnwok-3kwfovr2ukzv-v9xkcx9xjn9t-yh1mmi95rdl9.1587445188471@email.android.com>
From: "amaya jindal" <amayajindal786@gmail.com>
To: "Khem Raj via Lists.Yoctoproject.Org"
 <raj.khem=gmail.com@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
 <yocto@lists.yoctoproject.org>, yocto <yocto@yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPjxkaXYgZGlyPSJhdXRvIj48YnIgLz48ZGl2IHN0eWxlPSJmb250LWZh
bWlseTpzYW5zLXNlcmlmO2ZvbnQtc2l6ZToxNHB4Ij48ZGl2IHN0eWxlPSJtYXJnaW46MHB4O2xp
bmUtaGVpZ2h0OjEuNTtoZWlnaHQ6YXV0bzt3aWR0aDozMjhweDttaW4td2lkdGg6MzI4cHg7bWF4
LXdpZHRoOjMyOHB4Ij48ZGl2IGRpcj0iYXV0byI+PGJyIC8+SGkgQWxsLMKgPGRpdj53ZSBoYXZl
IHJvY2tvIHZlcnNpb24gb2YgeW9jdG8gcHJvamVjdC4gU28gd2UgaGF2ZSBhZGRlZCB0aGUgc3Vw
cG9ydCBvZiBtb25nb2RiIDQuMC42IGZyb20gdXBkYXRlZCB5b2N0byBjb2RlbmFtZS4gTm93IHdl
IG5lZWQgdG8gYWRkIG9wZW5zc2wgMS4xLjEgYWxvbmcgd2l0aCB0aGUgYWJvdmUgbW9uZ29kYiB2
ZXJzaW9uIGJ1dCBJIGFtIGdldHRpbmcgY29tcGlsYXRpb24gaXNzdWVzLiBDYW4gYW55b25lIGhl
bHAgb3IgZ3VpZGUgbWUgb24gdGhhdC7CoDxiciAvPlNlbnQgZnJvbSBteSBIdWF3ZWkgcGhvbmU8
L2Rpdj48L2Rpdj48L2Rpdj48ZGl2IHN0eWxlPSJoZWlnaHQ6YXV0bztsaW5lLWhlaWdodDoxLjU7
d2lkdGg6MzI4cHg7bWluLXdpZHRoOjMyOHB4O21heC13aWR0aDozMjhweCI+PC9kaXY+PC9kaXY+
U2VudCBmcm9tIG15IEh1YXdlaSBwaG9uZTwvZGl2PjwvZGl2Pg==

