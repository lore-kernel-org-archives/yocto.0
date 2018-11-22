Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A44EE00C1E; Thu, 22 Nov 2018 07:47:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mtownsend1973[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 188AAE00A85
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 07:47:04 -0800 (PST)
Received: by mail-it1-f171.google.com with SMTP id g85so14685265ita.3
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 07:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mmqUHdYoMAnMt0dBzrR/cWaIupKDk9DfnbFrepU8LDA=;
	b=o+vH26v29OP26R7uyHeaV/oPiYK26g/56d1kqOvFc+RTnRVPMZ+Cnb8/RowRs978qu
	DhOpjO8PFk5qk0RZ79esu4dq/AAEItsaRAYM+qZZRNvSv0tSXZ1SeLSIe0mSrN4hY8yx
	7nUURIlLC7mGCYZWSkGcUYgQdWSmCzg1J09+TLjH4ARofM2yb8eHSVDfmONq2ygLgqK0
	CeNq4K0V3DoGEkPuwFgYCvwpyzdqjap7iEe5tLHLShoGHNhgL9yS1d6gGsIxjzSlGOM1
	rqyFHP6AOKab7HPSQM6BpLbCP0oPHjIU6Tu0y7BTWq7cRp5e9f5A9DCBcy9MZ9bExFFU
	gjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mmqUHdYoMAnMt0dBzrR/cWaIupKDk9DfnbFrepU8LDA=;
	b=rXFdu6nKAhBUVqMSyrXXJsx592NAQN8NLGoEhDfjud0MlvEfGvphYmFw9NmcS/28bm
	oBQLx1vgg61wS0aXi+xvGbO3blKZy7UuMyqOQBWkelxQYWqgMyha+cpsoMCf1jRlPSsO
	LaUwQ5xBG45Ugb2F+Ruj9/bHyKsP9QbmToSJSUI4L2rwZAJ2IFC5573UwDlfprdsFv+f
	ytmdODTIvXILIEEP5x507mjgmw0G/X1R9fFfB+JebcSRy7xqNPg3VmwlVBpk7bArBc85
	ohURJMnvaGcb9WTOtTtosu9F1Z0CBQ7o/NgbyWb/NwPY6NphW4w8ixKbAhX9V9t8TrMf
	AY4A==
X-Gm-Message-State: AGRZ1gKyxRu6fcZirhJWZ2m/i3Y0uNNirAig3RUxVUj6W6bQgwq8WaIS
	ef249//9f5d7H2UQB7xiDTkN9T+qXvARVUNOHKkEYYQ0
X-Google-Smtp-Source: AJdET5e/Ke0jvhm9cCiL+LppN/bPU2tJhkADNtgOkazFqvE6teGvGuSSZQG74dkZi6nlfEnBaZ3dWL4zoz/fzDURwXI=
X-Received: by 2002:a24:7b95:: with SMTP id
	q143-v6mr10334457itc.31.1542901624095; 
	Thu, 22 Nov 2018 07:47:04 -0800 (PST)
MIME-Version: 1.0
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Thu, 22 Nov 2018 15:46:52 +0000
Message-ID: <CABatt_xbvyTXSAuExyo+oA4UDqfm3pA9nh4cyga6Yoi9BDnahQ@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: meta-mono: QA Error building mono-5.12.0.226
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
X-List-Received-Date: Thu, 22 Nov 2018 15:47:05 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

This one is probably for the meta-mono maintainer

I was getting quite a few file-rdeps QA errors.
I managed to get rid of them all except 1 using
RDEPENDS_${PN}-libs-2.0 += "mono"
RDEPENDS_${PN}-libs-3.5 += "mono"
RDEPENDS_${PN}-libs-4.0 += "mono"
RDEPENDS_${PN}-libs-4.5 += "mono"
RDEPENDS_${PN}-gac += "mono"
RDEPENDS_${PN}-configuration-crypto += "mono"
RDEPENDS_${PN}-xbuild += "mono"
RDEPENDS_${PN}-api-4.5.1 += "mono"
RDEPENDS_${PN}-api-4.5.2 += "mono"
RDEPENDS_${PN}-api-4.6 += "mono"
RDEPENDS_${PN}-api-4.6.1 += "mono"
RDEPENDS_${PN}-api-4.6.2 += "mono"
RDEPENDS_${PN}-api-4.7 += "mono"

The one remaining is

ERROR: mono-5.12.0.226-r0 do_package_qa: QA Issue:
/usr/lib/mono/4.5/Microsoft.CodeAnalysis.Scripting.dll contained in
package mono-libs-4.5 requires mono(System.Runtime.Loader), but no
providers found in RDEPENDS_mono-libs-4.5? [file-rdeps]
ERROR: mono-5.12.0.226-r0 do_package_qa: QA run found fatal errors.
Please consider fixing them.
ERROR: mono-5.12.0.226-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/ws/rufilla/oina/tools-oina-build-local/build_oxinst/tmp/work/armv7ahf-neon-poky-linux-gnueabi/mono/5.12.0.226-r0/temp/log.do_package_qa.15001
ERROR: Task (/ws/rufilla/oina/tools-oina-build-local/build_oxinst/../meta-mono/recipes-mono/mono/mono_5.12.0.226.bb:do_package_qa)
failed with exit code '1'

It looks like the 4.5 lib package requires the System.Runtime.Loader
library but I'm not sure how to get it to build this or I see there is
an external directory which looks like it contains all the 4.5 libs so
maybe it hasn't been included in here?

Any Help appreciated,
Martin.

