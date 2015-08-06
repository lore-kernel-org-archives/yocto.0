Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13BB8E00902; Thu,  6 Aug 2015 00:42:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C71F4E00349
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 00:41:49 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so6265864igb.0
	for <yocto@yoctoproject.org>; Thu, 06 Aug 2015 00:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Fgw6uR4XoS7RHEDhukbe0m2QmQpJD7EYfeV5AkVFyw0=;
	b=giiwA94AgWSEf9M/pHOf1sUBY+ww12+PgJ29aS5AoaOp+JF3EoKZekYwvqnpUYWtI5
	rycuRzyyKI68eetwE7pt2AAA+VYIUcHX9IX5Muymzc0MeQv5GE7CK4Ba2wdeGLMFtRJP
	VPLqgtn2x5/WhGajnxWTe3Da2ZPY6Lx7mDfoy2MpQ+X8pjgCESlCz142uR+3NWJGXp0s
	AgsXqAyp0pon8WkHetIwvJw79a1nZv0hpT6tOCfnp7BTzylZXDXbOVvsu3lwIy+iSfhr
	dPDdktAmjVdBORSRmgVmXqw9tnkCgAv0XHcZduEQipHEV6F+/udn0QXNcf0oaViRy0HM
	rGTg==
MIME-Version: 1.0
X-Received: by 10.50.97.97 with SMTP id dz1mr1899105igb.64.1438846908876; Thu,
	06 Aug 2015 00:41:48 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Thu, 6 Aug 2015 00:41:48 -0700 (PDT)
In-Reply-To: <55C305EC.9030809@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com>
Date: Thu, 6 Aug 2015 09:41:48 +0200
Message-ID: <CALbNGRRCTwfoXkSSr9TR-=-vaQCasZDbf=T2hNk2mbshtNtE2w@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Thu, 06 Aug 2015 07:42:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 6, 2015 at 8:59 AM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
> Yes, I in fact was not sure if it should be a distro or machine feature
> and then decided on the former because there is more than the kernel to
> make it work like changing mesa configure options. But as mentioned to
> Andrea M=C3=BCller, probably we should ship a mesa .bbappend for this in =
the
> BSP so I agree that a MACHINE_FEATURE will make more sense.
Suggestions:

* Mesa: A simple append with

PACKAGECONFIG_append_rpi +=3D " gallium"
GALLIUMDRIVERS_rpi =3D "vc4"

would do. If you check mesa.inc in oe-core others (intel) do similar
(we might have to wait for a more recent mesa expected in September).

* kernel: have different name e.g linux-raspberrypi-vc4

The selection is done in this layer by changing default providers. In
a first step this could be done manually - aided by a helpful comment.

Andreas

