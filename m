Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75383E00BD5; Wed, 25 Nov 2015 23:16:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6162FE00BC6
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 23:16:52 -0800 (PST)
Received: by wmec201 with SMTP id c201so17350926wme.0
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 23:16:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=60o/YBGgHFKYUZ+3lvRZOBLrIBgYIWjPNpzyT11cRBg=;
	b=dQGq+6HgJh5WuQ9eZdKKjNYShA4yM+hlhdxlF//cBAfzUHEXCTE5bvF+b27yorn7BV
	ZNqnREOL/V9V8PMRjeow+NaZZhITbuC1FtszzMtk4/gQ6A+iRQIgYAPdx402TqC9mnhc
	aU2bxb6seM4K08TG/hfk1r1DPXvOdjsv2FO5U0BiFqr3cQapV2W67B/Nx+xLUDrrjgjP
	2VVLCFJJTMvOZHVrHg7BzC34LR39s1Cvzzk9q/a0GnPe4T0sawJRCDPAVJELbl5xrpUb
	/wKItht7+MOkwn/qYCzRvL3OW4FF3l8qrdFiTVgoQtS6pYhgKn6exfs0ILgytwWzZC1R
	210w==
MIME-Version: 1.0
X-Received: by 10.194.2.33 with SMTP id 1mr54688385wjr.150.1448522211577; Wed,
	25 Nov 2015 23:16:51 -0800 (PST)
Received: by 10.28.59.4 with HTTP; Wed, 25 Nov 2015 23:16:51 -0800 (PST)
Date: Thu, 26 Nov 2015 08:16:51 +0100
Message-ID: <CAAfyv37MZCr1cRNedU9xsbNwXQLejQSaibmd+z6cwYBANzAt=g@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: PRINC functionality workaround
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
X-List-Received-Date: Thu, 26 Nov 2015 07:16:56 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

after upgrading to jethro release PRINC functionality was removed by
commit : a4d530bcf55f03258078c10a123e2717444e1060 on oe-core. PRINC
functionality was used in some of our recipes so I took part from
PRINC funtionality and put is to separate method (in bbclass) [0]

I'm trying to use it in bbappend like:
inherit veryspecial_helpers
PR := ${increase_pr(5)} but this seems to be then evaluated as :
u-boot/2015.07-${increase_pr(5)} which is wrong and fails.

Any ideas what is wrong with this approach? Maybe some brackets? Many thanks.

[0] - http://pastebin.com/zCbVaBM9

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

