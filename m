Return-Path: <demech11@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D955E00C2B; Tue,  5 Sep 2017 09:21:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (demech11[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B63A8E009F5
	for <yocto@yoctoproject.org>; Tue,  5 Sep 2017 09:21:07 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id m199so12000812lfe.3
	for <yocto@yoctoproject.org>; Tue, 05 Sep 2017 09:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=v4j1un3pNMyr9vh6evntXV6YGE/AN7X400d9MPVm2V4=;
	b=j2DZUhF5oAoqDq8mJ03RzZTcz+O4RppUGvyNQdm6xPP0lOY8t03usvtMSxTZJ83SjS
	6ciaJ4nEzMlX2w8U6IOQ/gbajg6+DYTts3RG27C077ky6YLad8XuUIsRYVothLEdtRyK
	1DNimmnTcT+AGJdvBoqX+jPVrhrACBUQD8Y/oC7oFyOyLa45WjuhIul9WeqndRmgTauB
	OMmSK60Kz7l/Eo7v8nNm+iCfb3sMyAsDuJrq8+QzR3ugbZbEeKDKS66dYn4MLlqMhwXA
	JOi/q/2AL8PsLUvIt14FxNq7zr4qy8tU8aOIezGHsGxPHx7ga4ScbAuBqNDCpKVR+qIy
	nBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=v4j1un3pNMyr9vh6evntXV6YGE/AN7X400d9MPVm2V4=;
	b=YRFgDH3hYjwEAM4jEl83/u2W7G9cVwpL6WRwdyXrRNZ71gmuwHV0KpClHyEfCRUHU/
	OkS1mA3R8fKPLtLa7wDNzZzKKmYjLI7APdhdMyf14r/kU6sd7mTWnGLtHiVse3AOInPr
	PaQ9Oi9GlVCnxqsCqj/8ev/SFwpzXg2ZNSMwK7NEvk+GGFQjXnqa5FYyDUb478sCyWC8
	CBNDS4Cm4Oaaj6EC8M/X1+xkpLq3ECZkehEzDAdFhMWR+7yEfPL+MmH83leOpKYj4Qec
	SfFwMmEoEiWlqbXFVWJjVAeuo7XwqLXBSQjGG/bHQFXMgAhWbtqT1EG0IpNZ+uBQXL5T
	FPHw==
X-Gm-Message-State: AHPjjUhAilhv4KBZ6Uehi/yH35HWF/wb6rohKb7f0jIGlbV3thdnvWKf
	fy8Y4xfTdnm9PvAS1QrpTIAmbAdvIUF9GFo=
X-Google-Smtp-Source: ADKCNb5CxzcWEoQFfzz4unKakEaoqfueqo2elZ2a9/ULSfAZwmUSk3Mg91Mc5b9+RXIdTA/sGwxTbJdgwEs0rOpM33I=
X-Received: by 10.46.86.4 with SMTP id k4mr1708303ljb.8.1504628466082; Tue, 05
	Sep 2017 09:21:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.179.26.6 with HTTP; Tue, 5 Sep 2017 09:21:05 -0700 (PDT)
From: Demetrius Pampouktsis <demech11@gmail.com>
Date: Tue, 5 Sep 2017 12:21:05 -0400
Message-ID: <CAOZ0rcuUA8FEJNNCqrELGFGJ8A+Pk2syP6JvZWFxVgh9WweJ=Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Adding dependency to recipe, when dependency ins't in build system
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
X-List-Received-Date: Tue, 05 Sep 2017 16:21:09 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a custom recipe which has been building just fine. I am now
trying to add a runtime dependency (debian dependency) on the package,
and I can't seem to figure it out. The main issue is the dependency
isn't in the yocto build system.

I started off with what I know, and added below to the recipe.
     RDEPENDS_${PN} = "<package_dependency>"

And I received the following error.

ERROR: Nothing RPROVIDES 'package_dependency' (but
/home/yocto/fsl-release-bsp/sources/meta-custom/recipes-connectivity/ntpd-config/ntpd-config_1.0.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'miraclemax' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['miraclemax']
ERROR: Required build target 'ntpd-config' has no buildable providers.
Missing or unbuildable dependency chain was: ['ntpd-config', 'miraclemax']

After reading through some of the documentation. I found that RDEPENDS
will through an error if the package isn't in the build system.

I then tried some INSANE_SKIP
    INSANE_SKIP_${PN} += "build-deps"

And was still getting the above error.

Is there any way for me to add a dependency to a package without it
being in the build system?
-- 
Regards,
Demetrius Pampouktsis

