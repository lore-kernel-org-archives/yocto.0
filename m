Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54F16E00830; Sat,  8 Nov 2014 04:47:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URIBL_RHS_DOB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.5 URIBL_RHS_DOB Contains an URI of a new domain (Day
	Old Bread) *      [URIs: github.com]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5F0E007BA
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 04:47:03 -0800 (PST)
Received: by mail-wg0-f41.google.com with SMTP id k14so5585914wgh.28
	for <yocto@yoctoproject.org>; Sat, 08 Nov 2014 04:47:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=pQtFRcVY2+KOA/fLzMqwQaZi0gFYbeZ50G0OerIG78A=;
	b=tHt/jJ30KCCRzTXLVFK56ECBYeGcGl3RCR2jMBI6s2XKiff5mSzJus5AsV+cXplFuS
	AAYHTLTujRd7NpOGmkPDx7fQ4X7IaSdkRwF/CyyWHkBFg7cE1ZiDc+LXlCarG13n/LyD
	4y4FOvtvy0FVN5pRZLfxDNVfGpYXaN084/mLxlD3H6AGVJP0V6rnxvelTcPDc0POmyMF
	eV9a8TzR+xl4Gfuyqo5JoostZv93iA0HAZ5RjojsyInU4VBH5N4Rh5tgq5YrhAzizAOV
	d1mlQW090Uh3YYb9m+E22VSnQgcIdmbzr0Wv5xEjgGvBGKyMev+TtCIynLE/4VMWm4e/
	kHlQ==
X-Received: by 10.180.10.231 with SMTP id l7mr13954251wib.1.1415450822882;
	Sat, 08 Nov 2014 04:47:02 -0800 (PST)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12])
	by mx.google.com with ESMTPSA id a8sm5583210wiz.21.2014.11.08.04.47.01
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 08 Nov 2014 04:47:01 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <CAJTo0Lbd4JcvuipFTGDu_3c1kyQDO49gxfp59QwjzFW=618jhQ@mail.gmail.com>
Date: Sat, 8 Nov 2014 13:47:01 +0100
Message-Id: <37719788-60D1-4C79-BCC4-4F4FA3DFDEB1@gmail.com>
References: <20141027080733.D8D1F380909@gemini.denx.de>
	<1415215791-27197-1-git-send-email-wd@denx.de>
	<CAJTo0Lbd4JcvuipFTGDu_3c1kyQDO49gxfp59QwjzFW=618jhQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1878.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Perl: fix PERL5LIB settings
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
X-List-Received-Date: Sat, 08 Nov 2014 12:47:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Am 07.11.2014 um 12:55 schrieb Burton, Ross <ross.burton@intel.com>:

> Hi Wolfgang,
>=20
> On 5 November 2014 19:29, Wolfgang Denk <wd@denx.de> wrote:
>  meta/recipes-devtools/perl/perl-native_5.14.3.bb | 4 ++--
>  meta/recipes-devtools/perl/perl_5.14.3.bb        | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>=20
> Perl was upgraded to 5.20.0 in July, can you rebase and verify that =
this is still required?

I can finally confirm that it fixes the issues in daisy (bitbaking =
Dancer2 using =
https://github.com/rehsack/meta-cpan/tree/master/recipes-www/dancer2-perl)=
.
You can try whether Dancer2 bitbakes for dizzy and/or master to verify - =
for me it's impossible to create a dizzy build - to many daisy adoptions =
and release pressure for next weeks.
If you know someone having dizzy - bitbake Dancer2, Unix::Statgrab or =
alike to prove ...

Cheers
--=20
Jens Rehsack
rehsack@gmail.com






