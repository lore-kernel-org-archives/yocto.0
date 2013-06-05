Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F81E01409
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 17:48:11 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id hz10so727385vcb.10
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 17:48:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=DmCsrgWM48b1icyGUiAHdGSJwAR6jByufTxSkluWtUc=;
	b=CFux9kz9S3jO05FhhN+KLW0MG4Vp3laBlPsMKsZtLLFozXNqjPStuTqbQJKKncKQLQ
	qibIqoo+MzsDBWCxRWtAb9+x8CmERJDtnd9aYKK7lxBd1f+ANTrG3FrIoTCBNAIt+9F9
	vYNuhifr8QQ5g1Wqk0CxMFPsdQCaQXKHXES3GyfI07bATWYLfmNhCkSYkSPlFXxBFPA0
	gDda0aw5UbljVhs9hMOEsYo6WkPIEEIZhbd/8gjk+V2KpmNA0jGMzmfV7ntjQ/zqxU9S
	R12rufDnUpDQhgSGbJs8CTeJ+SXsuwW7MFkGk1OFlkK1EOAHDsja2VQ+YtIsa3GLRJMv
	1ATA==
MIME-Version: 1.0
X-Received: by 10.52.97.37 with SMTP id dx5mr16421164vdb.23.1370393291212;
	Tue, 04 Jun 2013 17:48:11 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 4 Jun 2013 17:48:11 -0700 (PDT)
Date: Tue, 4 Jun 2013 17:48:11 -0700
Message-ID: <CAPhnLPD8jGosiRuwqt17qXSFH3Tii1ifyFbO-wmDGXvoyPY-pw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkmlLzbxTgPq+89ZjnZ5lR7N94n/P7Kex6vvUCbob22Oq91sczDK/3TuX2ugt4sgcbZpgcU
Subject: 1.5_M1.rc1 availability
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
X-List-Received-Date: Wed, 05 Jun 2013 00:48:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

1.5_M1.rc1 will be available soon at:

http://autobuilder.yoctoproject.org/pub/nightly/20130604-5

poky                 a62aed41f2d8f874f7ae24d0e5be5dbc66ea2199
meta-fsl-arm    be6317c244c61a62b952bbf9b5b706c239f49a78
meta-fsl-ppc    52b906c448f275719f241c634fe6e412e917b67a
meta-intel        24d63bd57269f3142c57c2d697c56101f73b23dc	
meta-minnow  0d428f867ffdf83dd35803c7318180751ddb096f
meta-qt3         4c27cce6688aa39852f3cba5e7b80ec279019605	
eclipse-poky    Not known yet

Please begin QA as soon as possible. Thanks!

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

