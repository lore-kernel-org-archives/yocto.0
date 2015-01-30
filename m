Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5812EE00873; Fri, 30 Jan 2015 10:28:57 -0800 (PST)
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
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3991EE00546
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 10:28:51 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id at20so5262057iec.7
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 10:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=GR6NKoL2+JhHtYeNLxXAtnj2dUIgwVGQPsX0ZmqRLXU=;
	b=NCRianDCefBdk5UXIoAIDsrEjYau8Wrrz9Jhh0a2xhBWi6v7baC9MfliFLtzX0NTH6
	zgFB3wof9yeNH4mjlIsJ3UiXV/Xpo2OHvrZ/WyyPXVKBrkoajb9sOedFALiefyUJJXHg
	LUeBvRAeyUia56G3kVp2UV6xU1u743lVT9OHuR2moA5DhUsn7U9tgt7oXnDRfZX+O8V5
	RSHzj6cpyKmGFGfNbyCTKeb5lJHBMWYjACguYUvs4/WMZdcmk5rnxxEAbTDuHdy9z5px
	vM2Hd0MPkjqi2p7qow/fn3f0eniqZ65CW4EU0gRh3FcsnxRPVp2wlptNtU9XcUqlz/mq
	EQ4g==
X-Received: by 10.50.222.44 with SMTP id qj12mr81869igc.48.1422642531204; Fri,
	30 Jan 2015 10:28:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.8.196 with HTTP; Fri, 30 Jan 2015 10:28:21 -0800 (PST)
From: Ash Charles <ashcharles@gmail.com>
Date: Fri, 30 Jan 2015 10:28:21 -0800
Message-ID: <CAK8F28nZxY06hxRokjJVNOvWPLwwdgp86qu11QJa8_bOFGKw-g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Adding 'sbin' to default path
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
X-List-Received-Date: Fri, 30 Jan 2015 18:28:57 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Why does the PATH variable in the dot.bashrc shipped by the base-files
not include 'sbin' paths?  It seems like any interactive user should
be able to call e.g. 'ifconfig' informationally---they should, and
would still be, blocked from calling 'ifconfig eth0 up'

After looking at the PATH for a generic user on my local Ubuntu
system, I just added a patch to my meta layer to add the following
line to the dot.bashrc:

export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin

It seems to work well---users created with the extrauser class pull
this default from the skel.

As this is security related though, I wanted to ask the question to
make sure I'm not doing something silly, dangerous or otherwise
idiotic.

Thanks,

--Ash

