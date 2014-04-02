Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7A4FE00BAB
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 22:32:51 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id il7so10929502vcb.4
	for <yocto@yoctoproject.org>; Tue, 01 Apr 2014 22:32:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=VboWWnJno9h5/BEqwz2+V9jPC68yKyzd4gjvj0RmZiM=;
	b=IIhoe2xBHvTwB0KtDZOUUJz7zmrdr1g8cTqW4qYdEqPF/VSdWyE0BnF2yQHAeY7gzs
	dno9wbxwnRae+op5a7muJV4AZZaAn18iWkCxkUG6xFowbAUF6jvns6kDIU93STST4o6d
	Gph9Vh0zrrepCmUJPXLqQSN+F1izAO/nyuPN33ppHXXVpUr0xJyZOi4lTyv3M01nqLPS
	fIbaRyy2ASq1+rfhp5O+eh27FjwDP0FkbUeO6+82EDLR43xlfdPBXUnK0byIHWKFV9fb
	tY76CvImkt3cbfa35Bvrm/RFeYphquy6IpLIfbg5UT4ot3zeFvERtP9hTPBd53NSsIvR
	HTvw==
X-Gm-Message-State: ALoCoQnOwKI8rXDkxaOtWE10dUlKP/nUkytBAZ6EFg/rlu0xQ+IZi5O/Q3qVSpB/NlJkR1JqQ/Ey
MIME-Version: 1.0
X-Received: by 10.52.108.164 with SMTP id hl4mr5630195vdb.25.1396416771087;
	Tue, 01 Apr 2014 22:32:51 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Tue, 1 Apr 2014 22:32:51 -0700 (PDT)
Date: Tue, 1 Apr 2014 22:32:51 -0700
Message-ID: <CAPhnLPDEhVthy3gt1E9Gwx1L6Q74Kg8a8FFuOqMrEtvJf5P50g@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: 1.6_M5.rc2 will soon be available
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
X-List-Received-Date: Wed, 02 Apr 2014 05:32:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

The next rc for the upcoming 1.6 "daisy" release will be available at:

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.6_M5.rc2 Unknown

Please begin QA as soon as possible.

bitbake f0a1a3e24757f7658d272035620465f92a3e4c3c
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm b6eb4bf18bc96332a18c53bdfcf23a4ff684bc72
meta-fsl-ppc 290a669e5480792836d4f7769ba2ef6f49799323
meta-intel 385480881105643d83277023ce74df8c1b4a9c9e
meta-minnow 743fa66aa0cc2265a9c1f293c305828d90b4fbbd
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore 9d502ca8551fd461f869395b1b7e62d6dcf59a84
poky 3e528d3e4bc542ca2f654c54363c56af0fb9f61b

-b

