Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B86C8E00750; Mon,  9 Mar 2015 12:31:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D8BAE003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 12:31:12 -0700 (PDT)
Received: by padfa1 with SMTP id fa1so74862642pad.9
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 12:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=ML9kFuf2r1TYUUWv+L8daDhm+HAq6Wkj9/8LzYpNXdc=;
	b=0NNSodTjeh0M9y/cWKR5JSbWUOv+ppYgv2MZF0/RLWbERsCSonj9lMHQ5BHPUA1bs9
	N08JPzMgKVmZft8D6BLodDCqR6ecP7M2C1fEAAl4DqYoGy53yx2qjxpdooXDs8SzwO+J
	PsKyb2nb9HogcasmuG7UdwQQ5OmBcqFD0MRiPkh4S2hXRI6ye+PDf1E3zqpCtH/tHZZ1
	qo9xTZaQr6rSPNGRQ6EEIBuexS1ofKuBTkLuKh6/9B+hUsK3gepprHkIvWPYvDW8lJKt
	KQ330G2f+1I+cUoocQx3YlX4aVKLwavR0gpKo9eg5uK+W0PVFzVYchx+gshG1jZuaXga
	memA==
X-Received: by 10.70.53.226 with SMTP id e2mr57008868pdp.25.1425929471659;
	Mon, 09 Mar 2015 12:31:11 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:5dec:324d:fc8d:ab4d?
	([2601:9:3580:84c:5dec:324d:fc8d:ab4d])
	by mx.google.com with ESMTPSA id
	cy6sm20528930pdb.15.2015.03.09.12.31.10
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Mar 2015 12:31:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <54FDF2EE.6070509@mail.bg>
Date: Mon, 9 Mar 2015 12:31:08 -0700
Message-Id: <BD661189-005C-48AE-804D-31A33CB14583@gmail.com>
References: <54FDF2EE.6070509@mail.bg>
To: Nikolay Dimitrov <picmaster@mail.bg>
X-Mailer: Apple Mail (2.2070.6)
Cc: yocto@yoctoproject.org
Subject: Re: 2 images with single Bitbake recipe
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
X-List-Received-Date: Mon, 09 Mar 2015 19:31:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Mar 9, 2015, at 12:22 PM, Nikolay Dimitrov <picmaster@mail.bg> =
wrote:
>=20
> Hi guys,
>=20
> I need an advice for the following Yocto use case.
>=20
> My system has to boot via minimal initramfs and then must use the full
> rootfs. I can use 2 separate recipes to generate the 2 images (minimal
> initramfs, complete rootfs), but I prefer to create all my build-
> products via single bitbake command.
>=20
> So, is it possible to build these 2 images with 1 recipe, and if "yes"
> then how?
>=20


Look at how initramfs =
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-ta=
sks-bundle_initramfs
and also meta/conf/local.conf.sample.extended

> Thanks in advance. Regards,
> Nikolay
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


