Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D999E0164B
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 23:12:44 -0700 (PDT)
Received: by mail-vb0-f45.google.com with SMTP id e15so212317vbg.18
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 23:12:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type;
	bh=XMmBqtyoyLqfmcKzu7hZJKWkEurZF7a98DHfpvdpsmc=;
	b=WPy+sy9Q172DYmzJbK4bz9tqR4vwwVv2vDZyLeud5a55fef8raxkrJVx5iLoPLTxqj
	FfBbMakdbUZZvZoXgYwSLmMTWjPzdPa3ber6e7O6GRnFyOSrNhaaDnD6TPAgDqbSfyMv
	TP7k6jqwkSk1PgQHCitg4bLzgKU8YtQLGtK4/e3G/4q1GtUYoewL9YLfO6B6TYxrfeIl
	xF2vn+g9gMNv1m+Wij2DZnWOgnymE/JLj/rU72eV05+/qqaW6jCL81yXfDS1W7SRGkqB
	FzDwCMmOjZQhEzc4Ahna7fy0niHDFxFcmXDwJ1lFPwpOiWjOS5mRTLkdBENwcV/gJlLZ
	NxBg==
X-Gm-Message-State: ALoCoQlJ0hgZ7DhkoKoQ8SpvlwyYsfnM4AYwDB835aQm4SM81cCWdtgwdXVgpCQthRQHi/tjvWHL
MIME-Version: 1.0
X-Received: by 10.221.64.17 with SMTP id xg17mr391453vcb.5.1380694364360; Tue,
	01 Oct 2013 23:12:44 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Tue, 1 Oct 2013 23:12:44 -0700 (PDT)
Date: Tue, 1 Oct 2013 23:12:44 -0700
Message-ID: <CAPhnLPBmVORSGNJH7_Oav-DJS98-5FthwCnQnmBsE61A1Xfd2g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.5_M5.rc6 available for testing.
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
X-List-Received-Date: Wed, 02 Oct 2013 06:12:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

All

1.5_M5.rc6 is now available for testing. We've identified one issue
with package index
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5277

Artifacts are available:

http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc6

poky 0197e5cb4253d6137b0d166cfcd699d404d2cab3
eclipse-poky-juno 9cff88d9b3043547e3ad6264f5af3f4a8d367496
eclipse-poky-kepler ab0acbd9e7fa3b5bc48af72c569b4ed1f7d686bb
meta-qt3 199986d8fc59a18cd660dbad635076fc9d4d7cc3
meta-minnow 38c2d6ec6c9f8880ff86bed10aa95589850dc214
meta-intel 0dbdf993f8a7e8005248ffac3a5feba1f8ad3623
meta-fsl-arm 60b2189d29851b9bc066e129b2945163214bc742
meta-fsl-ppc 25ee629b826a138ef407c113f776830e5d822c01

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

