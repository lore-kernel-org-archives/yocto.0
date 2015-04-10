Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B130EE00993; Fri, 10 Apr 2015 08:28:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7080EE00932
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 08:28:56 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so24825049pac.1
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 08:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=CYD/GYS7rU5ZyUTg4URCXrEWTCQlRK+QUA4nlmTCUwQ=;
	b=ArSbVCAaS7POLMGIMxCRzboBJiMJcPgbvOS8ucerH8JwYE2wgSjI2NBdw2upXBkfZk
	jKfP0mya3K0yzMwYvjwRr9+jyWBtcY69A6ZbhNwRa1W6QMCKHHSkdiWNhcsfSIK3Q4He
	qAxuZvLESHd7jzivBCZ5ZV4Mbh46Rq0IrWchxIIGhonlra9g6Mj11k3rBygRoL0RkyOA
	YDAYHwCrWZQCn6aqQMS0kVHR1MgzvLu1rEJ0gimTdciF13t7O5Z77ududmljY9DBglXn
	Sk+h/dcbq+pDCL1ClusV7Ur0iJKpGfPL2eNyzuiO1lkXEpB/j4f5yilnVN7ctt6OMTBx
	mOkw==
X-Received: by 10.66.177.238 with SMTP id ct14mr3517146pac.121.1428679736546; 
	Fri, 10 Apr 2015 08:28:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.114.166 with HTTP; Fri, 10 Apr 2015 08:28:36 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Fri, 10 Apr 2015 11:28:36 -0400
Message-ID: <CAAPegz2sokQPsJYQCNL5WeqLFfFccpFg426q1TjFRvNJ5kqzeA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: pulseaudio without x11
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
X-List-Received-Date: Fri, 10 Apr 2015 15:28:58 -0000
Content-Type: text/plain; charset=UTF-8

Hello.

Using close to latest poky.

I'm building a custom image, inheriting from 'core-image' and adding
in pulseaudio-server and DISTRO_FEATURES_append with pulseaudio but
removing x11.

I'm seeing that the pulseaudio.service file isn't present, and even
when I copy it over, pulseaudio can't startup because it isn't able to
find the DISPLAY environment variable and it isn't running under a
user session, which I guess it how it normally runs?

Is anyone else using pulseaudio on a build without x11 that might be
able to provide some hints on how to do so?

Chris

