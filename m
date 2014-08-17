Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 687C0E00723; Sun, 17 Aug 2014 11:06:27 -0700 (PDT)
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
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06E1CE00655
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 11:06:21 -0700 (PDT)
Received: by mail-wg0-f48.google.com with SMTP id x13so4135582wgg.7
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 11:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=AkAu1Le2+wabKslC3LTiQI8Wd54HeN6JOpodr7+XSVA=;
	b=0sqj9k8imuddRGGwItXQddu4mqIAAUVUJvZ4zI+NsmCs1z5MIgkfWE94gk2jKJwXyK
	KQhT+5elz00RA5JBSOqxy/Iznad8fPkU/vsDLGH7Vo5oP5EYOvxY5yVXJDN3o12qlOPP
	BRnOSl2cotoGgpMi8qOCqzkp+9XHjzlCGjw5rLLLmHxxCkrMwy84XmZlLqmegaRPRxMT
	J3lVDl3W6ItsEUqRr63zaau5PNG8/exy7n20lXPYsdIQqWRHb5wQo1LgXJZZO15xW66r
	WJ/iOXx4dxarUR32sqVylrLPPCTIcJxKU80tHsUPfEXjvwMZqT2UsywKKj0Ts0m6hxhn
	/OWQ==
X-Received: by 10.180.91.234 with SMTP id ch10mr521640wib.48.1408298779823;
	Sun, 17 Aug 2014 11:06:19 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12])
	by mx.google.com with ESMTPSA id c8sm35910082wjw.6.2014.08.17.11.06.18
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 17 Aug 2014 11:06:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <20140817173900.GH3660@jama>
Date: Sun, 17 Aug 2014 20:06:10 +0200
Message-Id: <7A586870-D626-4D2D-A72B-A9118712F317@gmail.com>
References: <546B672E-C981-41EE-B2E3-655F24672A3F@gmail.com>
	<20140817173900.GH3660@jama>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
Cc: yocto@yoctoproject.org, Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: Fix for meta-oe/recipes-graphics/fbida/fbida_git.bb
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
X-List-Received-Date: Sun, 17 Aug 2014 18:06:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Am 17.08.2014 um 19:39 schrieb Martin Jansa <martin.jansa@gmail.com>:

> On Sun, Aug 17, 2014 at 05:02:39PM +0200, Jens Rehsack wrote:
>> Hi,
>>=20
>> we played a bit with some tools before using a modified psplash to =
show some guidance on hdmi-fb and there was an error in fbida which =
wrongly mixes host-paths and target paths. Additionally - for Poky or OE =
it's unnecessary to guess additional path to check - recipes will do =
correctly.
>=20
> Please follow README and send it as inline patch to oe-devel ML.
>=20
> Thanks

Hi Martin,

1) I do not send inline-patches
2) I do not subscribe to more mailing lists just to send patches.

Either it's helpful and maintainers accept it or it's not and when one =
uses a search engine one applies it locally.

Cheers
--=20
Jens Rehsack
rehsack@gmail.com






