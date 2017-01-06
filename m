Return-Path: <rohitj.chd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 518F6E006F1; Fri,  6 Jan 2017 07:31:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rohitj.chd[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.47 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B249EE005B1
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2017 07:31:09 -0800 (PST)
Received: by mail-lf0-f47.google.com with SMTP id v186so1623151lfa.1
	for <yocto@yoctoproject.org>; Fri, 06 Jan 2017 07:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=v8VfGsrTvcYxN89wfaAyI/YqIeQCgFa9h2MBWR18JWA=;
	b=KlR+CLpU5HkMbWQ6fzmN1SQtYIOWG3B5wfytZGyb5ZVU4fmN6jLRrdCU4pTgv26Xhb
	V3ApSqX54QBohdniWIht6Apaj++pPoulp14q5M5QBwk3tEckITmvo7wbBQzwaDo8+yl/
	durjcxZPRex3IiSyVZEBcLpyXcyTjTXQwbHzfw4G35CZOWNQUs/eFhdLi3LVl2ytr/lP
	aRRSuzVOkUz8u2zd8zAgHn5IagDpmt06MSxEnTUetdrb+uv4mXyOHUVSFUpaFd52XqEk
	HOIWMPovEgsbf2KOEIt5TWb6BiC2n6pR6RbMMV2okHeahKXnKuJcp9v1XoJQo6ghQtC7
	8Z1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=v8VfGsrTvcYxN89wfaAyI/YqIeQCgFa9h2MBWR18JWA=;
	b=gXjEtuGeZqIxpRLlVdUdCwyAXf1I5caN3P5MsN0GjohC0lxG/EcNuPTXK+OfbMa7U2
	6BvDCEC3qaCfylZrMvA+stDpoludaZRHVDq1tjcQSwz7ZrBjR/GaQ3bOI8276WHlXQOv
	/dYKSShjzH6MuvXcH6vjUIybYZ8+5s2ME3gW32IMjLmBC0jTWnyjphLetc4knR12nE2n
	zd9jH7ZaP4UDlIHTFxIWHiuRWCR7ITwCis1B2p7pFFrAXE2x1elxeaVxdT90ecrfwrEr
	7BmuVddlvkkIAXuEwZ/X3CIac8Y4SLTu53u70fVHAuMTMrq54DLC4whHaLuUckogcvB8
	+Ixw==
X-Gm-Message-State: AIkVDXLI1nCw5I+nm0bSvDdEXozkmzj1Uj5fUiftkY+6ZuYt2sYQAnPBpC6HlOCjy1Timuifrjj1484Z7Zvgpg==
X-Received: by 10.25.22.104 with SMTP id m101mr2695444lfi.17.1483716667969;
	Fri, 06 Jan 2017 07:31:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.114.187.47 with HTTP; Fri, 6 Jan 2017 07:31:07 -0800 (PST)
From: Rohit Jindal <rohitj.chd@gmail.com>
Date: Fri, 6 Jan 2017 21:01:07 +0530
Message-ID: <CAHX_jjsZM0x+J-jP2XTVjH48rdUwKFiQFRt7ebKsYybVs+omrw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: openjdk 8 support compile for arm with jit support
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
X-List-Received-Date: Fri, 06 Jan 2017 15:31:10 -0000
Content-Type: multipart/alternative; boundary=001a114015e2f11b0105456eb4ef

--001a114015e2f11b0105456eb4ef
Content-Type: text/plain; charset=UTF-8

Please suggest me the solution for compiling
Openjdk 8 for arm adding support for any jit compiler like shark or jamvm

--001a114015e2f11b0105456eb4ef
Content-Type: text/html; charset=UTF-8

Please suggest me the solution for compiling <br>Openjdk 8 for arm adding support for any jit compiler like shark or jamvm<br>

--001a114015e2f11b0105456eb4ef--
