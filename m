Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E6B8E003A8; Tue, 21 Apr 2015 18:27:29 -0700 (PDT)
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
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB7ABE003A8
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 18:27:27 -0700 (PDT)
Received: by pdbnk13 with SMTP id nk13so258485309pdb.0
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 18:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=Pmaqlf1Bim4UufUkpJDN+XwEV+5H9pJegPCizSRNHh8=;
	b=ye5kSigHUqW5BtBT9Z/bSuBK41x2vj4HxZ0D5j92Ptt7KskDySQaEsO63YvG9i5spK
	mwK0zrvTQLQTKVaT7Wc+h0nQQEVlNaNH1f58sbQCfTME7ZVfENPGB85kgzWD9U3e/GEp
	B6vWXNthECnq2Ri8U9nIq7F3c4yOgqKk8GQ4IzJxwAThm4Oxbov2wDtFPNFYt36GYYTC
	VeV0cy7/yQPAnSIQcu3MiNZebmNicaDRimRfaq8fSkHsI0meKdogacx4/mE6Q1ATtxeD
	+dPSXTxpSRpxnUqKI+j/IIOGIBf5d43P6bswa1//61EpjcLoooAtAs38vIEmGivnTMv1
	dz0g==
X-Received: by 10.66.192.74 with SMTP id he10mr41939631pac.145.1429666047414; 
	Tue, 21 Apr 2015 18:27:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.114.166 with HTTP; Tue, 21 Apr 2015 18:27:06 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Tue, 21 Apr 2015 21:27:06 -0400
Message-ID: <CAAPegz2tNVr3PdWjs_KWb4p9V2Kdq+42LCtYpT3njU3C7Y57=A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: extrausers working from image file .bb but not from .bbappend
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
X-List-Received-Date: Wed, 22 Apr 2015 01:27:29 -0000
Content-Type: text/plain; charset=UTF-8

Hello.

Based on http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-extrausers
and the .bbclass file I've added this to a .bbappend,
pulseaudio_%.bbappend actually so root user can use pactl when
pulseaudio is running in system mode:

inherit extrausers
EXTRA_USERS_PARAMS = "\
        usermod -a -G audio root \
 "


From the .bbappend this isn't working. If instead I add it to our
custom image file recipe (image-blah.bb) it does work.

I'm not sure how to debug or why it isn't working from the .bbappend. Thoughts?



Also, the documentation in the .bbclass seems out of date but wanted to confirm:

http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/extrausers.bbclass

shows:

 Below is an example showing how to use this functionality.
# INHERIT += "extrausers"
# EXTRA_USERS_PARAMS = "\
# useradd -p '' tester; \
# groupadd developers; \
# userdel nobody; \
# groupdel -g video; \
# groupmod -g 1020 developers; \
# usermod -s /bin/sh tester; \
# "

This INHERIT vs. inherit seems like it could be something that changed
in bitbake in the past but was left over in the .bbclass.

Chris

