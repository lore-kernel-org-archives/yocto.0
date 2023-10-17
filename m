Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ACC4CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 11:56:38 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.211622.1697543793500893290
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 04:56:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=Uukz0bpC;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=d2Kb6TN79jnzy3OCVzQ6iTUN1E0CFkbjDzzrw7ewaYU=; b=Uukz0bpCBI1cbLmo7T2IDBQJbY
	CWxm/Qq1AyMzxqN8nbLy5qofeckwUBpdkchYd5Je/N7JxMPOEObxmW1V9IjL/KiVux2C4PUJW8GTL
	iP5wYXC6JjmQHqrMMIz7uW1ZDv5WvyDxP4x+LQay0b2pycE0HAk3Cp1VAoRdb8XKDTAiogd2bY6nM
	lap98YQDXr2LBvsgEgYfRi7XLSLCE76ZDVqE0ujCFst6I4wMOt4IrJvuTJytZ6KucvZFz5QWZDzLl
	L9LlEBh+yg3yl+/2bUYXv49+or1MchoLCyUlt95AvNpD3GD+OKtZy61wL5xl/SfWdh7IHxg2rZRfJ
	rRQGApVQ==;
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.102.5]:41012 helo=fedora)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1qsigU-001bko-24
	for yocto@lists.yoctoproject.org;
	Tue, 17 Oct 2023 07:56:30 -0400
Date: Tue, 17 Oct 2023 07:56:24 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: example where "RDEPENDS" is including a "virtual/" run-time
 dependency
Message-ID: <492bb1d0-8487-1a5-78d1-6c11f639f03@crashcourse.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 11:56:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61374


  while the dev manual insists that "virtual/" dependencies are only
for build-time deps and not run-time deps, i ran across this example
on the meta-intel master branch, under
dynamic-layers/openembedded-layer/recipes-oneapi/ (blank lines added
for clarity):

$ grep -r "RDEPENDS.*virtual/" *

compiler/intel-oneapi-compiler_2023.0.0-25370.bb:RDEPENDS:${PN} +=
"perl elfutils virtual/opencl-icd level-zero-loader zlib tbb libelf
setup-intel-oneapi-env"

dpcpp-compiler/intel-oneapi-dpcpp-cpp-runtime_2023.1.0-46305.bb:RDEPENDS:${PN}
+= "virtual/opencl-icd zlib tbb level-zero-loader bash tcsh"

mkl/intel-oneapi-mkl_2023.0.0-25398.bb:RDEPENDS:${PN} += "bash tbb
intel-oneapi-compiler setup-intel-oneapi-env virtual/opencl-icd"

  i have no opinion on it, just observing that it seems to fly in the
face of the rules laid down in the dev manual:

https://docs.yoctoproject.org/dev-manual/new-recipe.html#using-virtual-providers

rday

