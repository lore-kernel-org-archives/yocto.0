Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77321E00C2D; Wed, 30 Nov 2016 04:55:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E49CFE00C22
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 04:55:50 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id c21so327968203ioj.1
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 04:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=ZZlmGFA4OjQ7vJKuE5dIaUgQXyjxDCF4T0bH5BPxVC4=;
	b=VFLC7eCiixnU0KKHitNefsC1o12M237Jc7ySUAmNcnFw4ErduxU8YnKi7vJXlE9f/U
	SBq408NfsIZN5zps5hHsKvO0rXfOtswm6vpYCoH1H5XsjzNjAED4Y2UmouosSE3sezRL
	Pw87JO7orDnu5tYKyy0nWlyl6A/qQ/dlYR3pRn9mh99GDAfxjDmLS04UBK3Pt1R5Jv5I
	5Zq0XDLjKC5lbh/8MK2TlPVWPPjPxzpSiyHEt+Dx0kcNSh8C9KSIzoWYO7o4yup8GmKo
	6mcYU1E9mcMle41gDCb4v0YBhO67o+NKfdAbDd0tHlLMenZ0p2YUwAikv5aAyU7oc10l
	TzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=ZZlmGFA4OjQ7vJKuE5dIaUgQXyjxDCF4T0bH5BPxVC4=;
	b=iTA6ch9vZppY6sUfbsX8mpoVdmK/OJNMqxLKkJApP2w/a83vb4e81rzP6ukFtlY9fy
	iIq5EQCADyyVDFi0kYSvGTD9FVVZvPqVPgqmdM+e+fUUSVgrR+HM5oPZWZUNfFqX/tzI
	SZj6uUUmk9/y0DqGN3CgDZNJKNaUlKTbchsMt9iJYJfL0d0XXbTa56c90oFJaPJuLVZT
	B7osltL/rIGORuwunLtNFCeBh0YKgOZkgyQaTNmht/77pfh/KUxrtfhimlCVvvx0vmwJ
	YjOYne2LYCIQqQCGQO4ArZc4o/mfbgeWg/+rs7fKs+GRXyGcaBxnMfdQM2lsmcUG0wqN
	g0XA==
X-Gm-Message-State: AKaTC01mKKm+eGl3O/PlBPCJIz67MaL+HHek1NVGqsIJKnm+0ex0u9NXEN+Dy3vnqI2czLZb
X-Received: by 10.36.122.135 with SMTP id a129mr28165122itc.103.1480510549401; 
	Wed, 30 Nov 2016 04:55:49 -0800 (PST)
Received: from pohly-mobl1 (p5DE8E1B8.dip0.t-ipconnect.de. [93.232.225.184])
	by smtp.gmail.com with ESMTPSA id
	n102sm23273372ioi.38.2016.11.30.04.55.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Nov 2016 04:55:48 -0800 (PST)
Message-ID: <1480510545.6873.285.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Wed, 30 Nov 2016 13:55:45 +0100
In-Reply-To: <20161121154247.14845-1-git@andred.net>
References: <20161121154247.14845-1-git@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH] swupd-client: do out-of-tree builds
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
X-List-Received-Date: Wed, 30 Nov 2016 12:55:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2016-11-21 at 15:42 +0000, André Draszik wrote:
> From: André Draszik <adraszik@tycoint.com>
> 
> Backport a patch that fixes out-of-tree builds, and at
> the same time switch to using autotools.bbclass rather
> than autotools-brokensep.bbclass

I'll update swupd-client to the latest version soon and merging this
change would just lead to conflicts with my development branch. Is it
okay to wait for this version update?

Thanks for fixing this problem also upstream!

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




