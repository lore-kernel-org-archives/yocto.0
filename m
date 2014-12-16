Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEFB7E00AB0; Tue, 16 Dec 2014 08:43:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73F70E008FB
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 08:43:43 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id kq14so14333947pab.6
	for <yocto@yoctoproject.org>; Tue, 16 Dec 2014 08:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=2ckzicgwcFV06+ni8tcGgmRpT9qYMGT4wtlO9bX/CQg=;
	b=dla2ekHnjERC1K3angehjrsIfoD5N5/wMnl6R+XH/sXswxfigxMomY6yksI27+hIDe
	c9joXrZTqSTY9XhbM408FeBLfq2bNmRhOBd+HsW5850TuveymDZfejciomhgpv+witPQ
	Nh1lMPVB3n0Vsl+qL40ygmYDUK7ZEgy1KDESqi80BEvnRGZIOokRJDe0DEL/9nRUHc6r
	kbvX5dL12EzKr6NDgv1GSuCDWu9jpqx2qV1ITa6d6p5wNT5Zrm3kX7X3xRqJOp16HOtN
	n6w12KkZfzCyp+XnrwAaPS1XIth+U6Skel0k1yanJ2mwQSHXezVhUKjahRuBfQK5V290
	xfpQ==
X-Received: by 10.68.220.39 with SMTP id pt7mr61175381pbc.37.1418748222168;
	Tue, 16 Dec 2014 08:43:42 -0800 (PST)
Received: from ?IPv6:2601:9:3580:84c:447d:2ae8:83db:988?
	([2601:9:3580:84c:447d:2ae8:83db:988])
	by mx.google.com with ESMTPSA id w14sm1492799pas.14.2014.12.16.08.43.41
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 16 Dec 2014 08:43:41 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <549060BC.7040209@gmail.com>
Date: Tue, 16 Dec 2014 08:43:40 -0800
Message-Id: <6C5CEC9C-1355-4DD9-AA23-D188D420A275@gmail.com>
References: <549060BC.7040209@gmail.com>
To: akuster808 <akuster808@gmail.com>
X-Mailer: Apple Mail (2.1993)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Request for Dizzy patches for 1.7.1
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
X-List-Received-Date: Tue, 16 Dec 2014 16:43:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Dec 16, 2014, at 8:41 AM, akuster808 <akuster808@gmail.com> wrote:
>=20
> Hello all,
>=20
> I am collection patches for the up coming 1.7.1 release. Please let me =
know which patches should be in 1.7.1 by including "[Dizzy]" in the =
subject line.


Please consider,

http://patchwork.openembedded.org/patch/84905/

It is needed both in master and dizzy

>=20
> kind regards,
> Armin
> --=20
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core


