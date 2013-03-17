Return-Path: <raj.khem@gmail.com>
Received: from mail-qe0-f45.google.com (mail-qe0-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 892CDE0048C
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 00:57:19 -0700 (PDT)
Received: by mail-qe0-f45.google.com with SMTP id b4so2732854qen.4
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 00:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=+4Dm3uw7XuhETjGxLGRn7T2gRQBWvOks8EHCEUx4tpM=;
	b=cQtMnuKuyQgEXxJriFA5MLbhhVXMYkCw/RfQB+MWDvoJ4y3dbf1KIHfw4lUMDxnDR0
	TMlwn6u/vfIPPXQxVDW90fQnCJeZZ/QxjaCku2Q2Q/IPHsAy4ILCs0m29q6JeVu2lKhH
	tk0Zw0BTdgtnO3a3wbBxTFbdju4w6PVFCSq+73UwOt+SJRuFn/gMsGRhiHNfjBlJPkJI
	it2CQLa+fOl4wnwVexdeyhY7Tx0DEG5QTonl6p33+ehW8K2FsX6O5C9FhG52+7W+pK+o
	4xW81zBFjL9e2lPQ8iq+vM1LPYo9MsVFBBv3WRrQueFmLX+D2rEaa5jksH2Q+QiUiFYX
	+HWg==
X-Received: by 10.224.209.7 with SMTP id ge7mr14345009qab.10.1363507039050;
	Sun, 17 Mar 2013 00:57:19 -0700 (PDT)
Received: from [172.23.7.5] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id ku2sm20223353qeb.4.2013.03.17.00.57.17
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 17 Mar 2013 00:57:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAHUNapQFU7iXCS2Lu4Z+rfNbU9iD+Fft2BDaawTT-U=YFqfLfA@mail.gmail.com>
Date: Sun, 17 Mar 2013 00:57:16 -0700
Message-Id: <A5868351-95B4-4DCA-A6E3-500062F521C0@gmail.com>
References: <CAHUNapQFU7iXCS2Lu4Z+rfNbU9iD+Fft2BDaawTT-U=YFqfLfA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: distribution validation
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
X-List-Received-Date: Sun, 17 Mar 2013 07:57:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Mar 15, 2013, at 5:02 AM, Trevor Woerner <twoerner@gmail.com> wrote:

> A new version of openSuSE has been released. What's the criteria for
> determining that a given version of a distribution has been validated
> for Yocto? What is required in order to add it to the list of valid
> distirbutions?


I would say for all machines in OE-Core if bitbake world works then its =
pretty good

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


