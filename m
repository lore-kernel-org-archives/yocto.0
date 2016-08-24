Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41428E009EF; Wed, 24 Aug 2016 14:04:31 -0700 (PDT)
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
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1113BE00874
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 14:04:27 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id hb8so9821605pac.2
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 14:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=CWMnhovS4wQKflN35dqtvcUV6ad2Bu0h0L9+YJULuXc=;
	b=WU8XE9OcFweGXEuAiCSIvtQOtegSDQBuppzKbflQ1PDq9sPYzJuAHk0g5MKGnPsrZI
	mEdv4zNZDlQOWmHlRCVcoskpLNgXBdRjVyLbN7/Uh2OPPTYqPXRUQB8tSYSex8RL7I5j
	MmA+JTRUk3rmRKuu1yGLZtPKXsWARa56F3uCrxKY4w8A0okf4yGVEgvbbD7VObgYI0qi
	nFDjBjAQKoS+2JROKbAMmF7eN4JfQ/Glp8WavW+z40ZRB6VLaadgeHTQxxxAu/FRKjgn
	fI9iSB6zAeYnnIssu9BFMmXUAoAjRb7yZ/lS4ycGHwyay4tATWLx6+huuTeQjHKcofEd
	aF2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=CWMnhovS4wQKflN35dqtvcUV6ad2Bu0h0L9+YJULuXc=;
	b=bifHEE+QEF7besC7JVBAs8rvYCFj8qRxfD02VqZ3JHfE0ecBh5kEisWAcgDkhIvIfL
	BT2D0J9FcRaQNZIDYNtO6GOR8MzH4q4xBFIrs6bYwNyXY5fuw3bTCKpJMu62Zf+L3sa5
	blgzWde5OIKPcc6f4yijTeAB76ihoN+5xesVtErf4SOleqQr0Z80Yf29cqjqh/0Yqc+5
	g1XKII2wUWqY+/ho2POR2+HpG9lCK9oyiCUJMlM/yK4WFJhUtK0O4uT5gpBMp2gMSZrb
	Wlb3P6Pok2BkOJ2hGUJFvx5NWqG/inPPsgy1vYmLFQZiuQ6v2PQmKMBfMRkUqA9TG528
	sHvQ==
X-Gm-Message-State: AE9vXwPN7zL01wvzmt+2fJ7oEzNcJrL46HDaY6ASotJZxOojBdQHMdMVxfJbPt4f0IW/QA==
X-Received: by 10.66.127.10 with SMTP id nc10mr9389197pab.109.1472072666768;
	Wed, 24 Aug 2016 14:04:26 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:f429:4025:3367:359a?
	([2601:646:8882:b8c:f429:4025:3367:359a])
	by smtp.gmail.com with ESMTPSA id
	h1sm15794529pay.48.2016.08.24.14.04.25
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 24 Aug 2016 14:04:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAOsp8o8fjX4eV3fwYHuN6QdXMN3ANi7K2ZRXDPHxrNBQ+TgVeQ@mail.gmail.com>
Date: Wed, 24 Aug 2016 14:04:48 -0700
Message-Id: <582F7F69-79E4-4AAC-BEEE-163C75E2B806@gmail.com>
References: <CAOsp8o8fjX4eV3fwYHuN6QdXMN3ANi7K2ZRXDPHxrNBQ+TgVeQ@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Building applications and distributions separately, but integrate into final image
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
X-List-Received-Date: Wed, 24 Aug 2016 21:04:31 -0000
X-Groupsio-MsgNum: 31638
Content-Type: multipart/signed;
	boundary="Apple-Mail=_72CC2B63-D5E6-4CF5-85D1-3DCF0415BB1C";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_72CC2B63-D5E6-4CF5-85D1-3DCF0415BB1C
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> On Aug 24, 2016, at 11:54 AM, Michael Habibi <mikehabibi@gmail.com> wrote:
> 
> All,
> 
> I am looking at Yocto as a replacement for our embedded distribution.
> Currently we build everything as a distribution. This includes
> building the Linux kernel, open source packages, as well as our own IP
> and applications.
> 
> As you can imagine, a vast majority of our build is taken up by
> repeatedly building distribution components and not our actual IP,
> which is a majority of what changes day to day.
> 
> In moving to Yocto, my first plan was to create all the necessary
> layers and separate out what changes from what doesn't (in fact much
> of what doesn't change is already included in Yocto or the many
> freely-available layers online).
> 
> However, this would still require application developers to have to
> learn and use Yocto to build the entire distribution. Ideally, I'd
> like to separate the applications from the main build, so that
> application developers have to learn less about Yocto, and more
> importantly, save on build time when they make their changes.
> 
> I am exploring exactly how I can use the available SDK options as a
> solution. If I create an image with the base distribution and required
> applications, I'm wondering if I can create a separate tree for the
> application developers. They would then build that entire tree with
> the yocto SDK. I haven't quite figured out yet how I can then
> integrate their applications into the Yocto image, and prepare it for
> deployment. I'm also unclear how we can define new dependencies if the
> base distribution is pre-built. For example, if we introduce a new
> dependency (our custom application now requires zlib, for example), it
> doesn't seem for there to be a way to then ensure zlib is built into
> the final image with the SDK option.
> 
> Unfortunately, we can't build the distribution and then install the
> applications directly onto the target. Based on how our codebase is
> currently designed, it requires a fully-complete image to be installed
> on the target as a whole, and not piecemeal. This is why I need to
> integrate on the host/build environment first before we create the
> deployable image.
> 
> Can anyone share any workflows that they use that may fit with what we
> need? In the mean time I am continuing to play with Yocto and the SDK
> to see what else I can come up with.


You can separate out the application development workflow from system
builder workflow. You can generate SDKs from build system e.g.

bitbake -cpopulate_sdk <image>

which should generate an SDK which is suitable for developing the
applications which are part of your image. However, when you add new
packages which has dependencies not as part of your images then you
have to regenerate the SDK and provide it.

In some large app teams, I have seen that they deploy the SDK on a
shared NFS or something drive and then platform/SDK teams can provide
newer versions of SDK and let app developers switch their applications
to new SDK in a staggered approach.


You have two ways to integrate the applications

1. Let application teams generate binary artifacts and then you
write recipes, to package them into final image.

2. second option is to build these applications from source as part
of image builds in your CI or production.

if you follow the API discipline. You might not need to update the SDK
so often. What this means is that the applications need to have there
own component build system. Yocto can deal with a lot of them e.g.
cmake, autotools, qmake, or even simple make.

with this you do not have to immediately expose the app devs to OE
internals.

Key piece is how you unit-test or do CI in such an environment especially
for applications. I have solutions for those too but it really depends
upon what kind of tooling is in place and how devs are used to do
the work.

> 
> Thanks all for your time.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_72CC2B63-D5E6-4CF5-85D1-3DCF0415BB1C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAle+C/QACgkQuwUzVZGdMxTY8QCeK6m1aZH5klQv/trYeohuubml
C4IAnAxwdOy6+EKoa060Jn2qM+3SI4s3
=3jBQ
-----END PGP SIGNATURE-----

--Apple-Mail=_72CC2B63-D5E6-4CF5-85D1-3DCF0415BB1C--
