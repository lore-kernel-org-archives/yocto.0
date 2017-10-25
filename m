Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5727CE00D14; Wed, 25 Oct 2017 01:50:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B94F3E00D0E
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 01:50:03 -0700 (PDT)
Received: by mail-wr0-f171.google.com with SMTP id o44so23151885wrf.11
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 01:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=+ewGdnUhKejiwnWOOJA+wzbRQpvQPB8jRGle+yfcJtQ=;
	b=WDvjzDLd2arw+2bl6x224HJlr8Bt9G0EIUHQZJPXZIiUmfhMfBDGrCyOxAJp+gcUAI
	AVZHoFZ5pAsaaiB26GPE28+9auZf+pagDIPyTlm0YrtffbCf/S3YISjSzkSbz+OADeiO
	JTtF7QR0VlZwYVk7/yrtN+DCORs+/OobptvflfdYxHkRTh88WnHJ4N/NpmeX5FEiD+Vd
	FDXYMZ+a+b5PvS9TD+11Om5QmxPK2KiirXtWDga1Ak+Y1WEEPvoBC6Qa5jjYiwKXTXYm
	XqMwrINFPF7BVUKesrCkhrMAYDO+otVVrbsPGYgeCT7OQhfkmgHnmTBi3KpNtwg3sN3W
	iYBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=+ewGdnUhKejiwnWOOJA+wzbRQpvQPB8jRGle+yfcJtQ=;
	b=hjnNyHwB2Neb1//T/YMEG/CeUmtfMgJBAGGKd1P/eiQ8JDnlURK/pwhfsmFF1WWR8K
	kAH9SS/SqHJhSRWTZGweE+EDuUQKH62z7db5JAoYFsJstHjd6BFzyvVNTIed6tmHaVF6
	8Hbsl9c6+5Z+RxiJ7EiZoXJf+a3CBD31ait1pERv7ytY8fVCdCSbhLvG3WvBq2ZsDo4k
	xLn03tLxZ1XMfDgLaJi5ipYPuNG7F8siKwnevdeCQ91YN1pNgpJ1A+Vja07p2t8V2MOz
	fehRVVcNE4UrjUZ0V+SutpHcMa9jy0Yuqq4GoO6W8GRKkognJzbKSb5/Vus96OciCcXB
	hKxA==
X-Gm-Message-State: AMCzsaXRujcPLdikqCllAS8BQ/BvrJemGDFmcG7e5YQNjYoe0gXvo+1R
	FYt06mQfWSmW00Uns0D7QThMvLWtNkDfIFEhmuG4JLe5
X-Google-Smtp-Source: ABhQp+QLxQVmQiiMt1LyZrhg1E87cuDy8CAyTB6apARixInOJp3j8FvXTH7KGARkAtopgzg+HTes/0MkVIeKQsED0Lk=
X-Received: by 10.223.154.184 with SMTP id a53mr1515182wrc.48.1508921402609;
	Wed, 25 Oct 2017 01:50:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.20 with HTTP; Wed, 25 Oct 2017 01:50:02 -0700 (PDT)
From: Paul Barker <pbarker@toganlabs.com>
Date: Wed, 25 Oct 2017 09:50:02 +0100
Message-ID: <CAPyrkgxOa749tUa55nK+XZ9UJBcEHU718KEhN4GW+t4c70U7EQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>, yocto@yoctoproject.org
Subject: [meta-raspberrypi] Rocko branch maintenance
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
X-List-Received-Date: Wed, 25 Oct 2017 08:50:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'd like to put myself forward as stable branch maintainer for
meta-raspberrypi again. The plan is to maintain rocko for 12 months in
line with the Yocto Project's current maintenance period. I'm
currently looking after pyro and I think it's gone well over the last
6 months. Obviously, pyro will also continue to be maintained until
it's around 12 months old.

However, if anyone else wants to help spread the load then feel free
to step forward and propose yourself for rocko branch maintenance.

Cheers,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

