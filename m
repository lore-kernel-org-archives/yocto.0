Return-Path: <cordlandwehr@kde.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40897E009F6; Sat,  7 Jan 2017 02:49:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.4.96.248 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from postbox.kde.org (postbox.kde.org [46.4.96.248])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E05C6E009DB
	for <yocto@yoctoproject.org>; Sat,  7 Jan 2017 02:49:13 -0800 (PST)
Received: from weatherwax.localnet
	(p20030077AF6D90015E514FFFFE589B9D.dip0.t-ipconnect.de
	[IPv6:2003:77:af6d:9001:5e51:4fff:fe58:9b9d])
	(Authenticated sender: cordlandwehr)
	by postbox.kde.org (Postfix) with ESMTPSA id 2517DBF5B4
	for <yocto@yoctoproject.org>; Sat,  7 Jan 2017 10:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=kde.org; s=default;
	t=1483786153; bh=KabX8vawmjiAJULDnenqUVO/pSBf1o7XEcX2I3td3mk=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=XXRAvL6Gi290E8p+oDlCa/ZDGezRvWQmHGScYWqTGJh4l4gfTegIP8zshXW8g21V8
	KgYUz0kOsNyBFgfJBDfIH6BnRvSiggA8z4/mYTWTPPkZlE6sKM4QYqS6Qi9pdYwhhu
	/beJeT10YquQVnbxSnJpUFmDSNBr6oL8RcFrJyzQ=
From: Andreas Cord-Landwehr <cordlandwehr@kde.org>
To: yocto@yoctoproject.org
Date: Sat, 07 Jan 2017 11:49:12 +0100
Message-ID: <3768029.mGSIKBvTM1@weatherwax>
User-Agent: KMail/5.3.3 (Linux/4.8.0-2-amd64; KDE/5.30.0; x86_64; git-925145c;
	2016-10-28)
In-Reply-To: <9212079.t3pUQfekqL@weatherwax>
References: <9212079.t3pUQfekqL@weatherwax>
MIME-Version: 1.0
Subject: Re: [PATCH] Provide additional OECORE_EXTRA_SYSROOT variable for CMake Toolchain
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
X-List-Received-Date: Sat, 07 Jan 2017 10:49:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi, since it's roughly two weeks, I just wanted to bump this patch again (yes, 
I know many people were on vacations).
But actually, I would already be glad to hear whether I sent the patch to the 
right list.

Cheers,
Andreas

On Monday, December 26, 2016 2:41:49 PM CET Andreas Cord-Landwehr wrote:
> Hey, I would like to propose the appended patch for Poky's CMake toolchain
> to allow its usage inside a Yocto SDK for building libraries and
> applications using an external (meaning as in "different to the native SDK
> dir") install directory.
> 
> I hope that I use the correct mailing list and patch format. (It's my first
> patch to Yocto) Please tell me if this mail is better suited for a different
> mailing list.
> 
> Cheers,
> Andreas



