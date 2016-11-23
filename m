Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4EEFE00CCC; Wed, 23 Nov 2016 12:44:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BEC9E008CA
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 12:44:10 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id e9so1796101pgc.1
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 12:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=Qy9H6JzbjY+hUjvBW+vF20ma8b2gw+aj5UA9dJziy9A=;
	b=xRo2WqS8ZECviUZl2YP1XFanyJQRcy9hr820//jRPBVZDc+0gbscwiQujoZ3hUK6lx
	ZvEdy7NrdcOGf6zKY/DbYG/GPkohJzNtVws4lriTClSw979oqN87Le+fzMLKJEZS3WIh
	Xv8QtOQrYlFMOMrxQ6v8vKe3ua+pNxnD9NRfN3aTIcQ+lZfsznpUF9tTQyMsE9GvjBX7
	1PWXPkSwP9r86kqEDw49B46X9rxdeHOmbzzzCvzqD+/7x1ge9VoLnfqkIMyHOc5LLQZY
	dblPCdjqLg/0RPW3WO+RxhbM1l6F/HY8EI9hkb5OSu41laOQrql3uWrheTwKqTBPHO2o
	wIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=Qy9H6JzbjY+hUjvBW+vF20ma8b2gw+aj5UA9dJziy9A=;
	b=isfdaMIMznpYzArmvtkLMZ7MCpoylOd1Jl+/3pUQRjxTMMU/omUQ6DMmXchkf+6cPd
	OhiRUbdQBzj1nA7uDByz/+ZpntbC+U2DcE+zfmW8DsrTV0OIVkcNR1S+EMivke3WWIPx
	Ne+ZFtOFTl406XZa51MpM61anZPpA/Ty6yI+lZxH9a6yhAB/+AVE1xrjz9uIZi+40aax
	BqqCUOgcj8YMnG98pIEtTC/t75VNZ78aqSCiTN761CzhmfXTP7IyIWI6V9wYcYftymze
	9Wrrcp5ekU3hrC/hEbacPHY2pllZ21IrbfKJlGRfHoVmLJrre7V0GuChYXSUrO/ScpEV
	zFQw==
X-Gm-Message-State: AKaTC00BZ99fq5peZvuMuPFya4UUgQha8hemmnSsqEI5hFQ2oKRvwCBZseMorUYtjS4pIw==
X-Received: by 10.98.63.148 with SMTP id z20mr4623273pfj.151.1479933849485;
	Wed, 23 Nov 2016 12:44:09 -0800 (PST)
Received: from [192.168.0.130] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t184sm36805102pgt.36.2016.11.23.12.44.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Nov 2016 12:44:08 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161123173413.210554-1-mark.hatle@windriver.com>
Date: Wed, 23 Nov 2016 12:44:07 -0800
Message-Id: <E7DC7A35-38C3-4392-93EB-442A205FE5CF@gmail.com>
References: <20161123173413.210554-1-mark.hatle@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.3251)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mingw][patch 0/2] Update meta-mingw dependencies
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
X-List-Received-Date: Wed, 23 Nov 2016 20:44:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Nov 23, 2016, at 9:34 AM, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>=20
> There are two patches, the first patch is generally useful and I =
believe
> should be applied in all cases.
>=20
> The second patch is unique to Wind River Linux's implementation.  We =
have
> special layers called 'download layers', where we aggregate all of the
> download content needed by a given layer.  The layer recommends allows =
us to
> optionally depend on these special layers.  The patch is being sent =
for
> Yocto Project compliance reasons, and is not expected to be =
integrated.
>=20

may be you should prefix the subject for such a patch with something =
like [RFC]

> Mark Hatle (2):
>  layer.conf: Add dependency on oe-core
>  layer.conf: Add recommended download layer
>=20
> conf/layer.conf | 4 ++++
> 1 file changed, 4 insertions(+)
>=20
> --=20
> 2.9.3
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


