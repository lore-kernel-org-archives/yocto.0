Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7240FE00815; Wed, 28 Jan 2015 05:39:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.222.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B2E6E00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 05:39:41 -0800 (PST)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:61166
	helo=mail.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES128-SHA:128)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1YGSqG-0003Bg-2u; Wed, 28 Jan 2015 14:39:37 +0100
Received: from localhost (172.20.20.163) by Exchange2010.bmw-carit.intra
	(192.168.100.28) with Microsoft SMTP Server (TLS) id 14.1.218.12;
	Wed, 28 Jan 2015 14:39:36 +0100
Date: Wed, 28 Jan 2015 14:39:36 +0100
From: Clemens Lang <clemens.lang@bmw-carit.de>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20150128133936.GD30548@ulm-bmuc496424.bmw-carit.de>
References: <20150128085214.GC30548@ulm-bmuc496424.bmw-carit.de>
	<8731054.dVFh4y5ell@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <8731054.dVFh4y5ell@peggleto-mobl5.ger.corp.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [172.20.20.163]
Cc: yocto@yoctoproject.org
Subject: Re: Automated license incompatibility checks
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
X-List-Received-Date: Wed, 28 Jan 2015 13:39:48 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Paul,

On Wed, Jan 28, 2015 at 10:25:29AM +0000, Paul Eggleton wrote:
> This sounds like something we should be handling in our
> INCOMPATIBLE_LICENSE check code, although it's not clear that we
> currently handle where alternatives to an incompatible license are
> available for a recipe/package, so that looks like it would be new
> functionality. You haven't mentioned INCOMPATIBLE_LICENSE - does your
> solution build on that, or replace it?

Some of this duplicates what INCOMPATIBLE_LICENSE does, so it should
probably replace or use it. However, INCOMPATIBLE_LICENSE is a
blacklist, and I'm using a whitelist approach, because in our use case
we really only want to distribute under licenses we have explicitly
reviewed.

I'd like to solve the problem of shipping an image that contains, for
example, GPL-2 code that links against BSD-4-Clause code, which are
incompatible licenses[1]. Despite its name, the INCOMPATIBLE_LICENSE
code does not check for this situation. It is merely a blacklist for
licenses that should not be packaged at all, regardless of their
dependency context.

Our use case includes configuring the license whitelist separately for
each image we build, because we have different requirements for
development and production images (but that has been possible with
INCOMPATIBLE_LICENSE before).

Does that shed some light on what I'm trying to achieve?


Cheers,
Clemens

[1] https://www.gnu.org/licenses/license-list.html#OriginalBSD
-- 
Clemens Lang • Development Specialist
BMW Car IT GmbH • Lise-Meitner-Str. 14 • 89081 Ulm • http://bmw-carit.com
-------------------------------------------------------------------------
BMW Car IT GmbH
Geschäftsführer: Michael Würtenberger und Reinhard Stolle
Sitz und Registergericht: München HRB 134810
-------------------------------------------------------------------------

