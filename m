Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4489CE00985; Wed, 13 May 2015 17:52:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C778EE0095C
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 17:52:16 -0700 (PDT)
Received: by iebgx4 with SMTP id gx4so47622646ieb.0
	for <yocto@yoctoproject.org>; Wed, 13 May 2015 17:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=gBG3emsRKzwL38icMoglLpLtoS1pzxmD6sLm6oheqCA=;
	b=BOboFypSjDMbVlSCw3I5Gt0hAK1b1b+J6jhCL/JtWqRpae2VtX/iLDKEuWaxPIFoW+
	8fgQ5F03el9oqfQrk8tntdzsmU9tONRc+cTYZX+y5vgcL8TvPgBU0vV7DMmkGS+6vIu2
	KfDgfN2j5UioptoDf6reGHkf1vY9FnhunlYd9fofO0YhMCApqcbSz3UEVVLj6vGDUqIb
	9Qw0iwzKaMjSH/3A98ymlzoM/QeMwuNUNvHyLEI8JLxiiseNqJOKeWaPFg7NJTU1wAit
	8sPx5QxWKyL/RbBEy7QWaMe2PUnMKxVB6HDteqRwSXIKpuIlbQADK1bj9Cbd0ohrz008
	NV3Q==
X-Received: by 10.43.163.129 with SMTP id mo1mr11590750icc.61.1431564735757;
	Wed, 13 May 2015 17:52:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.144 with HTTP; Wed, 13 May 2015 17:51:45 -0700 (PDT)
From: Ash Charles <ashcharles@gmail.com>
Date: Wed, 13 May 2015 17:51:45 -0700
Message-ID: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Using smart within an SDK
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
X-List-Received-Date: Thu, 14 May 2015 00:52:19 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'd like to be able install packages using smart within an SDK
environment (much like [1]; @Erik, did you find a solution?).

I stumbled on two questions in looking into this.

1. Why does the nativesdk version of smart get wrapped with these
environment variables, 'RPM_USRLIBRPM', 'RPM_ETCRPM', and
'RPM_LOCALEDIRRPM'?  As per [2], the RPM utilities themselves are
already wrapped.  It might be nice to specify the '--data-dir'
argument to smart with a create_cmdline_wrapper instead.

2. Why does the smart configuration data get removed during SDK
creation?  In particular, the self.target_pm.remove_packaging_data
line in meta/lib/oe/sdk.py.

[1] https://lists.yoctoproject.org/pipermail/yocto/2015-March/024152.html
[2] http://lists.openembedded.org/pipermail/openembedded-core/2012-December/071894.html

Thanks for any advice!
--Ash

