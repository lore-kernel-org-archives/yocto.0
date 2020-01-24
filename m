Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.14912.1579882261757132456
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2020 08:11:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cYUCEAuo;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A6F8E00CA3; Fri, 24 Jan 2020 08:11:01 -0800 (PST)
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
	*      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.41 listed in list.dnswl.org]
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0533AE00CA3
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2020 08:10:59 -0800 (PST)
Received: by mail-pj1-f41.google.com with SMTP id gv17so8409pjb.1
        for <yocto@yoctoproject.org>; Fri, 24 Jan 2020 08:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:autocrypt:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=Z2vkk8WTy8Z3hH+kZ9ZvDeaZrajyB1pak9kEyk6lmZQ=;
        b=cYUCEAuod7VSUUccFXQBrlozVINo711BGrYq2OPtns28PoyYwEiEtAmHzbi4mmWSa3
         z2gF+NmOldoaGsYRl5fqYlKdmd8cgO69fWoLqfvR7KyT2FLianeClizogZ9lRFvIgbzn
         xWTDoMbYWAs7FBe+uP4ziuhVD8Wbn4peEWAoa0w+RTULp/tSZuO7DdWjNx089xcnAHem
         p6lhp4AnhvcZZ9kiMC8s9qBWKgoXfxblxENMMWs58FaOhuSJB8dT29IWjm6SYKJXlhAk
         GILfNMHWNPU6wVVFnW9q66IqhZZnBrgPWX0TK2fTXfGTw3ZEb8HhoMAL9BmaryxTq4IZ
         Q+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:autocrypt:message-id:date
         :user-agent:mime-version:content-transfer-encoding:content-language;
        bh=Z2vkk8WTy8Z3hH+kZ9ZvDeaZrajyB1pak9kEyk6lmZQ=;
        b=EuzMg1hY9OvhUv2uDWG78wyxPmIIDN9T4J9Hk4Kajc0Sft36+sLXbJ+iTuyHVgtg4R
         P/MIo6sg5217xx6iLwEjw1nFMCWVUgLJ77urrykdlPUNMVtBTIRNQAaGgwIuy8NTiO/l
         /l7Z5ogRPzMfThqU8iO2T/IWvX+T2jkfGxe/R1X1X3iIFicgVWiVpbH5wkqQEqTnhrii
         NFldh6D2JNuzTHdXxMoOW1Zd7sD8UTrjX8Zm4S7AN4SdX+rcUoWYDkWNbTE4YQ+2Hwj1
         kwDKkaDhMW0J5ULEAI8V1fkLPixoPGUSmtMubvRl0PQFRTnFxnXpqJt/VjnRl6H+L5lC
         1acg==
X-Gm-Message-State: APjAAAVJi7ECUztA0X8FraJdmYan13JD0PBTc06/8WRqwVOTrQPCN40M
	JEMEtCMQWEgs6YWF4xhzQ0OpT3fn
X-Google-Smtp-Source: APXvYqx3aGUyM1GF5W5foMA3Lj4AuBXZNTo41YSuB/rKWaP4W56Bea1jGz67VUSMZYAXEX3QgsSalw==
X-Received: by 2002:a17:902:b690:: with SMTP id c16mr4325632pls.320.1579882259540;
        Fri, 24 Jan 2020 08:10:59 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:c529:ee5d:f9be:6846? ([2601:202:4180:a5c0:c529:ee5d:f9be:6846])
        by smtp.gmail.com with ESMTPSA id w20sm6892091pfi.86.2020.01.24.08.10.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jan 2020 08:10:59 -0800 (PST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 "bitbake-devel@lists.openembedded.org"
 <bitbake-devel@lists.openembedded.org>,
 Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>
From: "akuster" <akuster808@gmail.com>
Subject: Zeus /1.44 call for patches
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <95e2150e-8330-df7e-4a41-1e564d24400a@gmail.com>
Date: Fri, 24 Jan 2020 08:10:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Apologies for cross posting.

The next zeus dot release is scheduled to be built on Feb 3.

Please submit patches or backport requests to the list(s) by Jan 30th.

Regards,
Armin

