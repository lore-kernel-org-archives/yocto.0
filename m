Return-Path: <joe@deserted.net>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78C2CE015AB
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 23:53:44 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id qd12so61347ieb.36
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 23:53:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2JMY2HlX1vO1jcBzNELfO1ZiynSEg9dD1wk9FvwFboE=;
	b=WGneilMoxlHU7u65SS5/nuQbArDyUA78ukMzSOdlaTDZlxWAY8LF3deCsHGQaOLgsw
	HOXBuQM/i6MLAWRAhPA5VIbZJ2ME1az+zMfOoAgB5UiY7IpSYC0D4AXFt7+0pGA5HC5c
	45rbWfFY/5yqDKTQvJWih/Anf49wg82aN9EMtWBmVkd0ZBgL5kk1q6/ReK/l/kic9++b
	BAIZ72hcDXI8c8tJauFP2fyMgRXTeNDp7YPnkPP80eVm6KWygW2K5e3kdxoifv7kySBV
	bpeR/l1Bwnw1Z81xfyMeQqQYS9vQsPyaP6RuyQubYashgzKfY7WKC/gCGd/1qTXT4Z8A
	GCoQ==
X-Gm-Message-State: ALoCoQk1Vd0FUt4RliZsbDb7cjuVL2i6liCBUEMHiOyZdLnxBZwN4ldPJq1+S96LDpyUDjsCLgjL
X-Received: by 10.50.62.211 with SMTP id a19mr1150304igs.18.1379650819498;
	Thu, 19 Sep 2013 21:20:19 -0700 (PDT)
Received: from burninator.deserted.net (198-84-238-35.cpe.teksavvy.com.
	[198.84.238.35])
	by mx.google.com with ESMTPSA id y10sm1025512igl.4.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 19 Sep 2013 21:20:18 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Fri, 20 Sep 2013 00:20:12 -0400
Message-Id: <1379650814-18256-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-security][PATCH 0/2] Bastille updates
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
X-List-Received-Date: Fri, 20 Sep 2013 06:53:47 -0000

I started out planning to eliminate the dependency on lib-perl in Bastille
since it really doesn't need it anyway.  The initial step in this is to
provide exactly the same functionality in Bastille simply without the
dependency on the external lib, which really does a lot more than Bastille
uses or shows any intention of using.  I submitted this back to the
maintainers and if there's any sign of life and interest, I'll probably
follow this up with another update that will simplify the construct I
introduced.  Most places simply don't need it at all.

In testing this, though, I discovered an install issue with Bastille that
was simpler and more pervasive, so that's 1/2.  2/2 is the big "let's dump
lib-perl" change.

-- 
-Joe MacDonald.
:wq


