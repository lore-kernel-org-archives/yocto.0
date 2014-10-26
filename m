Return-Path: <dlaroche7@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46895E008F5; Sun, 26 Oct 2014 14:42:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dlaroche7[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA3CBE0084A
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 14:41:53 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id v63so2537925oia.27
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 14:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Tk6iYkYJxV2PNHui5u/3BobTPc3RfGiSz4iemgSgJ6U=;
	b=XN96pCjWw99B1cS+TeJ3lln8NJQ+XgUH5vS0OK6pHMlbkafN0X/x8bM0kHaCYDPYcQ
	uEXdUD57bnyAasvv2O8mB/wFxaE7jzoN7DmTwA17aX39CTD/oDLHTdpqsXH9n8uBj7jT
	HPeMkcXaubKPjSd0Hm00uSYd8/1e59gwuVtYdsEhDJ8WELPE0cPfNwkij4GlPRvdzeoQ
	CxCob+Haw0rIVetA9zoOidfGjUljSMgFCztQ4hpdvTITQmN1WUyIi2lIWJuMh/OQK0C4
	As2czE2FtHfKsGpDtxt+5z+EJnpHnoEiHCzYo6O+NQF5Ru77/OwXcJglu/U4K2rgEuGC
	/3SA==
MIME-Version: 1.0
X-Received: by 10.60.48.4 with SMTP id h4mr4026948oen.42.1414359712387; Sun,
	26 Oct 2014 14:41:52 -0700 (PDT)
Received: by 10.202.49.2 with HTTP; Sun, 26 Oct 2014 14:41:52 -0700 (PDT)
Date: Sun, 26 Oct 2014 17:41:52 -0400
Message-ID: <CAELZnSmhcswJLt8VWyWRLCKPtaEONz_KhqyC5TnwaSeDR1xXLA@mail.gmail.com>
From: Denis Laroche <dlaroche7@gmail.com>
To: yocto@yoctoproject.org
Subject: bash tab completion not working
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
X-List-Received-Date: Sun, 26 Oct 2014 21:42:00 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I built image core-image-full-cmdline on a beaglebone black and the
tab completion feature of bash is not working. Pressing the tab key
just puts the cursor to the next tab stop.

Looking at the bash binary on my workstation with the ldd command, I
see it is dependent on libreadline, but I don't see that dependency on
the binary of the beaglebone. I created a layer with a
bash_4.3.bbappend file containing this:

DEPENDS ?= ""
DEPENDS += "ncurses readline"

EXTRA_OECONF ?= ""
EXTRA_OECONF += "--enable-readline --with-curses"

I also added the layer to the build/conf/bblayers.conf file. Alas,
after rebuilding bash it still doesn't have a dependency on readline
and tab completion still doesn't work.

Would someone have a suggestion?

--
D. Laroche

