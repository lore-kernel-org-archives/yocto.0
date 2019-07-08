Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83AECE00C09; Mon,  8 Jul 2019 08:47:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.173 listed in list.dnswl.org]
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75CC2E009FA
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 08:47:19 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id p10so7906296pgn.1
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2019 08:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=DM1aRQvO11Z2uJdwBddqaeInDNoDfeFSfz5cvmif3ss=;
	b=vGpC5BjQnmpa3ZUefBrOcOR6K5t8icZFo2vT5slOp/aQvZpM6RtToBM9U0OtMEk0TD
	Qk8YS20wF7KPwOrP6T/LHYapckXQz1QcvmM4oHEjV3le0zXKLKie8pLdhD7n95FSYmxn
	KVmS7PsZyocOL9INrID0/8NvN/25U+PhupdHkFfesQR2OOICxeCvyOaGNbFXsSD8OOKQ
	ycqQM8xVbYxSztcHlL4F0+NjAHc1mAdjcgy1IcE0jNebZGvSv49NIlQjvjoSCUR4UzED
	lUbLAOiaqZbZb9fpSG/4B/lvHsDssd7twVOVWSYqKEz8fxgwbixQdlJVHSBqFngQ2MfG
	IJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=DM1aRQvO11Z2uJdwBddqaeInDNoDfeFSfz5cvmif3ss=;
	b=giLw8dEnbmv5q/HUKkjM859lC0lZIbMG+X3to/J307qif2dq64Lq3qw6+OBGSoSJHe
	Ya7msO92tVE2/asRKcOm6myfiR9aCQNPdJhgUGIYPP9PovhMhblr7OEC9PF+MfjsqOwu
	CJx67dDTucql1cskmBvOWcSm2AqzaMEGIzJz9V1RBSWRwdE4/5aoPyBVyKaQKrDv/uMo
	Njehh9wFto7cneEAQMslPqmTFBolCLkmcQG3dYLbyOxjZiPHDNLi9rofUDnQSbxqJ/XV
	hu2wnLeJC9pw71+h1LLmMbvXyJL1DmRw3rNUnI9hmvaSm6kSwlVMS1hkLaehRRG1McO5
	XseQ==
X-Gm-Message-State: APjAAAX6UrUJtEt7xOsgOHggzlYqZ+M5CrqayDVbrPhwt9b93fnCcYsJ
	6K9d51a8PS3fti4BzgH2/uFED2HhHGg=
X-Google-Smtp-Source: APXvYqz0jIyhMsYvVoEuqLZSoMDV7QzN5stD0LEYELYfegzx6a327e5QBOcsQUuV9fmNtJ3v/uWpxQ==
X-Received: by 2002:a63:e20a:: with SMTP id q10mr24227272pgh.24.1562600838725; 
	Mon, 08 Jul 2019 08:47:18 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:693b:41d3:261b:3345])
	by smtp.gmail.com with ESMTPSA id
	c69sm18950994pje.6.2019.07.08.08.47.17 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 08 Jul 2019 08:47:18 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  8 Jul 2019 08:47:15 -0700
Message-Id: <1562600836-17458-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] security fix CVE-2019-13122
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
X-List-Received-Date: Mon, 08 Jul 2019 15:47:20 -0000

This is an untested backported patch from stable/2.0 patchwork for the OE version.
It is a function already being used in the file so I have high confidence it wont introduce 
any new issues.

Andrew Donnellan (1):
  filters: Escape State names when generating selector HTML

 patchwork/filters.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.7.4


