Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2F41E008A6; Mon,  2 Feb 2015 02:03:04 -0800 (PST)
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
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 490DDE0070B
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 02:03:00 -0800 (PST)
Received: by mail-ig0-f176.google.com with SMTP id hl2so16982606igb.3
	for <yocto@yoctoproject.org>; Mon, 02 Feb 2015 02:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=M3qq6jNaVswAtmBRJ1eNx/CNl8Z+B8RZhUMSyfH9uFg=;
	b=C6yS4YccN99OXMeW7eUILUYLSoBJLJd6r6qZtBcKfL+mfpl02WS+3kO2D8SClDQRPY
	D9gfZVvR8zXVN5hLF1Ed225a1myvp/KjjOpSvmLuGtUDQWUhncQ+JUfM2ttqBk50//ho
	vvQt4mYqJt77meAhsAyAsVVMitScvXSTNfNmgbgg1DIbAtWw/i4bqauq114VMJxda1m/
	eQcwvjlIk2LzQQUBMBombJlVzM0fZWxMCuHP8ttq+RkRMlvmTfDycRfsSxAhxLyfipeo
	HzNSkL5yfY5pZR6Psi/prxwrZ9kgSlWQ4VK5741IMwsxu2Jo2iT+kOr02GhV7Rl9MExR
	BAsQ==
X-Received: by 10.42.201.78 with SMTP id ez14mr18054675icb.22.1422871380126;
	Mon, 02 Feb 2015 02:03:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Mon, 2 Feb 2015 02:02:29 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 2 Feb 2015 02:02:29 -0800
Message-ID: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Mon, 02 Feb 2015 10:03:04 -0000
Content-Type: text/plain; charset=UTF-8

Hi All

I have put together upgrade to gcc 4.9.2 as well as glibc 2.21 (
upcoming ) on  a contrib branch ( top 2 patches) its has not got much
testing besides x86 qemu thus far.

http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-glibc-upgrade

I would like to request some help in testing these out in your
respective environments and please report any issues you see so we can
start sorting them out at earlier and making its way into OE-Core.

Thanks for your help

-Khem

