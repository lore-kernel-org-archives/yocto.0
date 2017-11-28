Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49981E00C0E; Tue, 28 Nov 2017 06:29:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD024E00B1E
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 06:29:25 -0800 (PST)
Received: by mail-it0-f44.google.com with SMTP id b5so2105itc.3
	for <yocto@yoctoproject.org>; Tue, 28 Nov 2017 06:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=bBPaxDlysex2x4vXTZQDvzECEqcydGIs3vFgVkwY5dY=;
	b=FicC4hKWF54jGgSUrOcv4US6X5mByv6/+YQR4n6CLqblGZlyZ8Zcd0+aUzDDgHmISj
	miCycgW5mS+MG+I9iilit96z9aFOGyK6JwMJnx6acmNIDrQbMm+1Mt4jgrBChbOFQkVT
	kJ8Bev486jcFeizFnX3m8kQpPHO9wM58EzGypgCQAUiEsv37IaM2CL5HPINknOsfaGRm
	wFyhaeaJJtU6hhA68uhurSIjjm+qdsr1kQk2NQXYx4LCspR+fpfK0TGBHVb74aeYeg2Q
	Igpz4pt2zoNPmsMDaDljUkzpu7Izz5SjikKWJB126usBGojtX+4HTdjeLRhEkdbvPf5L
	xH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=bBPaxDlysex2x4vXTZQDvzECEqcydGIs3vFgVkwY5dY=;
	b=rV+e3KSseQGjvxTq8j4/Cir+bFDJCU+QwYEdX2zSeLzdIrpZAhmQtnvwNfmMLGycs5
	VUP2Vcw0Fosm4DrJiYFEiVXY08vQqYyMvKccJDXrnAxu+Nh+G+qcOG8Yv7h59UyAPVdx
	wkoFMB56KAlEA+txs2JoMsSW2E59GClkUR9C9n99AhQzBM76BffblvAdfh/d16JAQl5M
	2FgEVtIoVPnA4E6GrVfR0w5qGfLnY+PkNI6cs2QIT9MlmSN/KrCZziXYs8mh5JyY7vWq
	cU8Ephn9/N3alZTDQJXS7aXpt1GIyD7rZ4N+UcRfHLrAbG3RX5USRSPcgnp3IEbQRPUj
	5bBQ==
X-Gm-Message-State: AJaThX5zsKj+rExfPdXGeFEmW4dbZtizkKgB85wwcbqj+8NmPVEaJaMC
	TfrkDTGxvxURcUYVnZuRBUQ=
X-Google-Smtp-Source: AGs4zMYwr/zazGwicq2vzKtw9wv8p/efBJMChq2+f7opRDhBP+agEnZKYxwY8hMOTtA8B3QuQScUtg==
X-Received: by 10.36.37.138 with SMTP id g132mr2877962itg.72.1511879364893;
	Tue, 28 Nov 2017 06:29:24 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	g93sm10408569ioj.51.2017.11.28.06.29.24
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 28 Nov 2017 06:29:24 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1511879363.16998.16.camel@gmail.com>
To: Christian Ege <k4230r6@gmail.com>, Yocto list discussion
	<yocto@yoctoproject.org>
Date: Tue, 28 Nov 2017 08:29:23 -0600
In-Reply-To: <CAALGJZY3j17rTPo8r4iYxt6D1Gcy-5_dy79Ge7xg9=mqsDsS2g@mail.gmail.com>
References: <CAALGJZY3j17rTPo8r4iYxt6D1Gcy-5_dy79Ge7xg9=mqsDsS2g@mail.gmail.com>
X-Mailer: Evolution 3.26.2 (3.26.2-1.fc27) 
Mime-Version: 1.0
Subject: Re: How to generate SPDX Information
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
X-List-Received-Date: Tue, 28 Nov 2017 14:29:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-11-28 at 14:57 +0100, Christian Ege wrote:
> Hello,
> 
> due to the fact there is a license troll who actively sue German
> companies. I did some research to comply ith the need to provide the
> copyright information within my YOCTO builds. My research ended up
> with the spdx.class which includes support for the fossology tool.
> But
> the current version of fossology does not support the spdx plugin
> used
> in the spdx.class anymore [1] This plugin is not updated since 4
> years. As an alternative there is the DoSOCSv2 tool [2] for which a
> Patch by Lei Maohui exists which was not accepted and Lei ended up in
> a separate layer called meta-spdxscanner [3].
> 
> So my specific question is, what are the recommended actions to
> comply
> to provide copyright information with the sourcecode/binary? What is
> the state of the art at the moment and how do the users of oe/yocto
> solve this requirement.

Not sure if it is the best method, but we include all the license
information in our (readonly) rootfs image by adding 

 COPY_LIC_MANIFEST = "1"
 COPY_LIC_DIRS = "1"

to local.conf. Our UI application then parses /usr/share/common-
licenses/license.manifest show a scrollable list of software with a
short blurb for each like:
"licensed under one or more of the following licence(s): ${SPDX list
from license manifest}"

If the SPDX list contains the text "GPL" (and maybe some others, can't
remember right now), we add "Source code may be downloaded from http://
www.company.com/foss". We upload a monolithic tarball containing all
the GPL code to this site every release. This tarball is generated by
adding:

 INHERIT += "archiver"
 ARCHIVER_MODE[dumpdata] = "1"
 ARCHIVER_MODE[recipe] = "1"

to local.conf, then filtering out the copyleft software with some post-
processing scripts.

Finally, for each package, we add the text from the actual licenses
files for each package (from the directories under /usr/share/common-
licenses/<PACKAGE>/ so that the user can see the full terms.

Not sure if it is the best method, but it works for us. I think it
covers all the license requirements (mainly, attribution and making the
copyleft source available).

> 
> Thanks in advance,
> Christian
> 
> -- 
> [1] https://github.com/FOSSology-SPDX/fossology-spdx
> [2] https://github.com/DoSOCSv2/DoSOCSv2
> [3] https://layers.openembedded.org/layerindex/branch/master/layer/me
> ta-spdxscanner/

