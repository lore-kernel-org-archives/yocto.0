Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DEC0E00C3C
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 22:15:50 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id if17so4226381vcb.36
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 22:15:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=pwcwkNSBRDJn/vUsL+z9Ezb7elW2WPfB5vKKsL/y17Y=;
	b=g2J8TMeky2l9bsb8efIyHgHFe7dygNDVsIqcP/34yJhALyMyZUnuUe1Gpoto5v5qr7
	BtL681OqLJVQ/HqgHZFvwHGa1HuPzxTrF7LYrOiJA/6J8jACOqa4Bw0csI1df6CgcfHN
	O4iObU2QwthPLvc6Uny9vRlXRVEPT65o0HjOT9zvFcV9n5+Xy537Gwabf1zLb6dcZKTA
	i40k4vOA8SwY759H2KFncByc4gnHsJBkK8vqA6+4AcZp9U1PysFrWfYuroMUWt/o6DzC
	CKVZ8eO8XrndelC2gEry/Js5G0CdE3qU/0isFgT6GnctK4MALDBCY0+1wCaUKf9BmjAr
	GtcQ==
X-Gm-Message-State: ALoCoQnxotcjxmeG6vqWCy6Ad58CJZlIxZkKLCLD73pCpseL9w9kKc4/tTdVs9tsg0MyahSs8/u8
MIME-Version: 1.0
X-Received: by 10.52.253.75 with SMTP id zy11mr3467628vdc.10.1397193349844;
	Thu, 10 Apr 2014 22:15:49 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Thu, 10 Apr 2014 22:15:49 -0700 (PDT)
Date: Thu, 10 Apr 2014 22:15:49 -0700
Message-ID: <CAPhnLPDLvgMCN_e050a4sYWh=n=ukZMCjkuTskVWC2XWUd0oJQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: New RC for 1.6.
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
X-List-Received-Date: Fri, 11 Apr 2014 05:15:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

A few much needed bug fixes came in to fix some of the issues we saw
with rc3. We decided that we should just roll and rc4. Please begin
testing this as soon as possible.

We're seeing one issue on the world build:

http://autobuilder.yoctoproject.org/main/builders/nightly-world/builds/42/steps/BuildImages/logs/stdio

but as this produces no published artifacts, I think we're ok with at
least the release artifacts.

http://autobuilder.yoctoproject.org/pub/releases/yocto-1.6_M5.rc4

bitbake bb4980c63db386ce7d30d9a6b86e9f3861b3bc3a
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
meta-fsl-arm d4316faef78ceb01ff023579e15110939ec69408
meta-fsl-ppc c4fa1b431f4efc4982a168119db95236cfa8cad3
meta-intel db84acfc8d9ed8dccd4a79de39fee337bc729662
meta-minnow 7bdcd1140b729598bae6246a4bbc21c3950aadd8
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore dca1b4f073fff740364f066f6a68bb3c8697b7a6
poky a0958261265049904fd78a2ba0198d46e5e65ea9


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

