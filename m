Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61412E009EB; Fri,  5 Jun 2015 07:31:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.6 FSL_HELO_FAKE FSL_HELO_FAKE
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1029CE009E7
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 07:31:14 -0700 (PDT)
Received: by laew7 with SMTP id w7so55599433lae.1
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 07:31:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=3AyXhFUMFv91kv+Vf1UuEAl+95S8o/fsna8M9enm3Ds=;
	b=dSIvn4NjdPqE4eiFkwSFdvDKUz9Fqz57AvQqvGOVQUCf5KPLajX6heoPf9lxVVX3yr
	P9WF/uyV2Ai48IxEfhytmpALHVqyFBD88ikcb1AoKFeVBfXdbl9M3nBWR1fxnhMnRrTX
	U5QAXl7Ulc+AUpTJCCQSds+5+wa9ewtfSYDt85xioHidZcFpkMiqQo6gkMdohedRJnin
	Cuqalj9qCIlyOmOSOqk+GNEFddUHSlftrjl81ajlXD0sxcWrysKb8IKUpj6R7WxsqVSc
	dTRZ5r6c46kncB2kT4I8sdwmKzLI98/F9ItRSKnVwXGlDwBblJPdqHDqeY2FdqMqyC4L
	ScgQ==
X-Gm-Message-State: ALoCoQm4Uuf+LS4b2cbNn5s0AaacK6dLh0KlYb+RDaIT7pkGTa5WYseQzbXMhb/cz7k+ren8ARsB
X-Received: by 10.112.131.98 with SMTP id ol2mr3745810lbb.56.1433514672166;
	Fri, 05 Jun 2015 07:31:12 -0700 (PDT)
Received: from gmail.com (87-63-77-14-static.dk.customer.tdc.net.
	[87.63.77.14])
	by mx.google.com with ESMTPSA id rp10sm1812046lbb.8.2015.06.05.07.31.09
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jun 2015 07:31:11 -0700 (PDT)
Date: Fri, 5 Jun 2015 16:31:05 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150605143105.GB1829@gmail.com>
References: <cover.1432564621.git.petter@technux.se>
	<b18c54e85b63840a4a32f9f62189c473cf18c6b3.1432564621.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <b18c54e85b63840a4a32f9f62189c473cf18c6b3.1432564621.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCHv2 2/2] README: fix outdated device tree info
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
X-List-Received-Date: Fri, 05 Jun 2015 14:31:17 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, May 25, 2015 at 04:59:22PM +0200, Petter Mabäcker wrote:
> After '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default' was
> introduced, the default value for 3.18+ kernels was changed. Ensure this
> is reflected in the README.
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>

Merged to master. Thank you.

--
Andrei Gherzan

