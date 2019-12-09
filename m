Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.8381.1575881651204577652
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 00:54:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=D/o9sdtT;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: vashok890@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9584E010AC; Mon,  9 Dec 2019 00:54:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (vashok890[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9371DE00ED2
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2019 00:54:09 -0800 (PST)
Received: by mail-pf1-f194.google.com with SMTP id y206so6878188pfb.0
        for <yocto@yoctoproject.org>; Mon, 09 Dec 2019 00:54:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=uO0+a6Isg7gb0ZT1HcS7nt2J2jT/e7QFFpDaKT76EH8=;
        b=D/o9sdtTYfyZtEwKDUEA76bTxnjD+OgaEYiB73cDoqbmxISdj4vSjgfBxUsIUuqk+8
         8W1BkzPVtoSnBeDm0Of963PoP6Xk685DUbTrg+2nfN3fGJCega6Zw0h4AbW/FcE5Z/jn
         oWRmaOGqRdzjy+RIH3oqh6Ff7yMOYgY+NxTewytnzEgXxmwg5kQEIfc5MfO7Rh8sDyOi
         BvapFzBBqYhjKeBnMGbOck8/LiUpxUXSSXHnSDVouPuaMDe03tKODvgqR2Hir/GwndXU
         AQnA1iNQg4npKqUe44exfxB5TUlAsgVAgY2jtjAVOhc86UlYyCnGCfFxDTZWGM8w/Gj1
         QFEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=uO0+a6Isg7gb0ZT1HcS7nt2J2jT/e7QFFpDaKT76EH8=;
        b=k2mjKJehip1+n1cstGje5064PoThvKr1E4byClqbRu0e8M3vZ89PQ2WWpCPE3qungx
         hv3AHcCeVo6p6q/utDiKujWlJHeg6FktfwW6PrdVPkSWht24xlrWGYdBeLraCGgYL4O6
         KOia/ag3/9/RE79CLVvFSbtoWmzSebmG2IEp3QX81sON9kCIgEznm8HLNRnsIQc2VgAg
         qyaluGbwyi3DWG27z7C03zsa8gCFx3j5Zf+8isI7pYRF+cam/Xs/YeVVMuv8fm67J9lh
         Za3X/heewm0OD5VTTGkFXXXnCy0iuqmRtpipkKpnw3yYnktf016xxmJTMcJ9PcDOoyN7
         utZg==
X-Gm-Message-State: APjAAAVp4/KqBvrRUkgWnv0/tJlGW281K2ZwHTVaCZdeZcXDOC7BvF4+
	LSY+qE9CPOoeelyZHwnuCxElCsmKgK6MkQ==
X-Google-Smtp-Source: APXvYqxrFhRwF/LxJnukkgxcAUXI7/qTKPVTIhrqmGw7VCwLbK1t6SM4zK5jlk07H5KDpQBP03xPcw==
X-Received: by 2002:a62:ea19:: with SMTP id t25mr28461614pfh.74.1575881648809;
        Mon, 09 Dec 2019 00:54:08 -0800 (PST)
Received: from [10.232.24.27] ([72.163.220.3])
        by smtp.gmail.com with ESMTPSA id f24sm11661673pjp.12.2019.12.09.00.54.07
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 00:54:08 -0800 (PST)
From: "Varun A" <vashok890@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Dhcp-server rpm dependent on base-passwd rpm
Message-Id: <8E3A550B-2E68-4A43-A028-F5BFB9F6A816@gmail.com>
Date: Mon, 9 Dec 2019 14:24:05 +0530
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.9.1)
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Wanted to know if dhcp-server has an actual dependency with base-passwd =
rpm or is it an optional dependency. I am using dhcp-server 4.3.2 rpm =
and when I try rpm -qpR dhcp-server 4.3.2.rpm  I see base-passwd in it. =
Can I remove the dependency using a bbappend file?=
