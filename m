Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3852E00C08; Sun, 18 Oct 2015 23:37:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE41CE00C01
	for <yocto@yoctoproject.org>; Sun, 18 Oct 2015 23:37:29 -0700 (PDT)
Received: by iodv82 with SMTP id v82so177877048iod.0
	for <yocto@yoctoproject.org>; Sun, 18 Oct 2015 23:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VeEAF++RJ2YO4VEgXiVE64/8IwkRrUamS5E0bHj2GmA=;
	b=MGwTDQsUOP8J848m/21efbwg9burDgXfVcs9JYyfGXEb4+vIOJG1YW+DjrycQXRL5Y
	CNLqf1MKgf47zzuWQSuz2CPoDHffk+PfEChLZ3NYngwi3z13B1AMmjOnp9nOmhb+/XCJ
	96xu/v4ZoT+23MpPMvUClWZDxBLjNOmudUavsJH/r/LL5HNb0g6C1MNUXRgEwzbGydPd
	SXVssNWtuB0I7am98KCyzm/Ovj1lS7NHQ6w38AJ82qsuFE8JivvndNxBHVsuBgnI2UI6
	rRZUzrJD4GEA4OoOfc2cAzhsiYuA3oropVU8EVUduD0mWtb8OIAxaEjSNERmRq3dLHt8
	SU6g==
MIME-Version: 1.0
X-Received: by 10.107.19.71 with SMTP id b68mr25970831ioj.159.1445236648415;
	Sun, 18 Oct 2015 23:37:28 -0700 (PDT)
Received: by 10.107.142.202 with HTTP; Sun, 18 Oct 2015 23:37:28 -0700 (PDT)
Date: Sun, 18 Oct 2015 23:37:28 -0700
Message-ID: <CAGMdoFmNiiWXwrakW5d+aomp7gSoN3HZWnUotaX1yzwXgpv71Q@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: kernel defconfig configuration
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
X-List-Received-Date: Mon, 19 Oct 2015 06:37:33 -0000
Content-Type: text/plain; charset=UTF-8

I created a linux-wandboard_3.14.28.bbappend that just specifies a new
defconfig.  I see my defconfig being used to generate a .config.  But
then something renames .config to .config.old and replaces it with
another .config that no longer has the configurations I want.  I can't
find what is doing the override.  This is the run.do_configure:
http://pastebin.com/zPfuSwTV.  Can anyone suggest where to look next?
Thanks for any help.

