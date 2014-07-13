Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02F4EE006DB; Sun, 13 Jul 2014 01:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57D5AE006BC;
	Sun, 13 Jul 2014 01:18:09 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id m15so2783728wgh.3
	for <multiple recipients>; Sun, 13 Jul 2014 01:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=nwRueYEdcw4xpUeaRatq8Yljg7HdzQEosNChDqWkMEk=;
	b=yL/B0Y3qmP+l1SFRtiMW9rHbFtgi2EugwD6DwCsCi7G3uMAxaE3r6P7soSlifo867G
	2jORoS8ADndmQuembqmYDQvd9z88FFTpKIAT8G+5U8miJRy67Djxxk3GpYOgm5PvP2sh
	AoT0UziIhg17ZRRjS8o9db2tLmAqjhE/4zFvkaJkOqrIl3nP1p+0iOrjt5iFdOa2i6Y+
	/TWfjVIwNRsEaTnPN28nYikyuhUrd1Cu1cvlOH42bWyLjX5V8ko0DSqDYFoY0XyoGgpe
	ANiCqqNOiLbJtP6kPycxgJn1uwUKFq9SK6+aP4IKpbeQWZ3teE8zoMBhS6UJ+plB9zJs
	Sr0Q==
X-Received: by 10.194.191.162 with SMTP id gz2mr10958028wjc.89.1405239488948; 
	Sun, 13 Jul 2014 01:18:08 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12])
	by mx.google.com with ESMTPSA id h3sm10223239wjn.10.2014.07.13.01.18.07
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 13 Jul 2014 01:18:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <53BEFCFB.4020707@linaro.org>
Date: Sun, 13 Jul 2014 10:18:03 +0200
Message-Id: <7B87B364-748C-49B1-A0D5-EB0FFB54D254@gmail.com>
References: <5D390CCC-BE0C-424B-99C4-0D127E618934@gmail.com>
	<53BEFCFB.4020707@linaro.org>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.1878.6)
Cc: meta-freescale@yoctoproject.org
Subject: Re: [meta-freescale] Developer-Image
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
X-List-Received-Date: Sun, 13 Jul 2014 08:18:18 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Am 10.07.2014 um 22:52 schrieb Trevor Woerner =
<trevor.woerner@linaro.org>:

>=20
> Since these questions aren't really FSL-specific you might find you =
get
> a better response time (and maybe even better responses!) on the =
generic
> yocto mailing list :-)

Let's try that :)

> On 07/10/14 16:14, Jens Rehsack wrote:
>> is there an easy way to build an image which contains debug symbols
>=20
> add "dbg-pkgs" to EXTRA_IMAGE_FEATURES in conf/local.conf
>=20
>> and header files?
>=20
> add "dev-pkgs" to EXTRA_IMAGE_FEATURES in conf/local.conf

Added both as described in =
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html =
(having a patterns speeds up search ^^) to =
https://github.com/rehsack/meta-jens/blob/master/recipes-graphics/images/x=
bmcdev-image.bb (also conf/local.conf, but seems I forgot to push),
but still no debug symbols neither header files.

I found another place (SDKIMAGE_FEATURES) to add, but don't know how to =
deal with that. What does the sdk-info.txt means?

I lurk for xbmc debug symbols because it crashes very often and I want =
to get a smell of the root-cause. I don't expect a general xbmc issue, =
because it would sound different in community than ;)

Additionally, for an internal add-on we're needing libxml2 header files, =
which are missing either.

Thanks in advance for additional hints.

Cheers
--=20
Jens Rehsack
rehsack@gmail.com






