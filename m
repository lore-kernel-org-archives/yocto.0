Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04D8FE009D4; Fri,  3 Feb 2017 05:11:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.174 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFA5BE009CD
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 05:11:49 -0800 (PST)
Received: by mail-qt0-f174.google.com with SMTP id v23so35831277qtb.0
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 05:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hT1uaY1QS6vosmy6x9+A7jGdRlnIdPXHi/m8Fzs4Hms=;
	b=XKsRHinbz7oK20eS5mUo1WE43DtSNz13Li8JwPqCZbADAPmLp5RtNVtrN372oV1YQx
	xBxucgEMj5VlCbQ7QWS2KkgbWMY5BR/31gLKCeXYVOfS+EjNBJt3hLjU6M2Z1Doqx2F8
	qaN+GWm7AzpeyylTXrB2C/boD5X2Y0k9PbxKjmds93juGDQlQSDGCzah8SH2uD6MNm6w
	oJgV5lnG7u32oChBrMTh/Mi/vpduOZhVA1HOFtjcI8fGqqH9cmB5itM4m68nWQWic8/7
	1LtxIl0Ax+gwHP00oLm0Ndc7+WfLy8OIxAz5Ufboub6Jg9JOa1m3K3BEGRrno+9MaQFs
	pE6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hT1uaY1QS6vosmy6x9+A7jGdRlnIdPXHi/m8Fzs4Hms=;
	b=cup/18qcG5+EwF9auMXPfHMGpxiakPwcHFI8g1npSn4Mr6BiadgEB64RUJb83/LWG8
	NyqzZ30rF3reQufjMEJT8l2LRHT/Wi77gtw//S5PKvG3ong8lueM5bc7CkikdcE7dWqi
	vMFJnud+eIO4rwgYRTLOm4ynm4Zdapr2cN+LoVRh9qbAHdTzcN9wsz6SD3ag5Oa7Xeyf
	BvWPJKtUsjjWsHrrz9AG/j1UN9F7ALtNbtdl0t0E3YJeHFthVSpk43bB1LO8/HPu6zSb
	DCgAh7nPMqwjcXstBhK0kRRnHTNfreTqfmTWAq+6DcBHKK/K4vaJmk7CyW28GMgRiqRM
	rPZQ==
X-Gm-Message-State: AIkVDXJvMdZOyeXqh8ZFszh9ATKcUnxGTtyDQGyzPwWGP3kJNI/ZAIRWEVKeNzZIWT4cfIXnNi6WzRrgZklkaA==
X-Received: by 10.237.53.164 with SMTP id c33mr13667734qte.121.1486127508612; 
	Fri, 03 Feb 2017 05:11:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.17 with HTTP; Fri, 3 Feb 2017 05:11:48 -0800 (PST)
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 3 Feb 2017 11:11:48 -0200
Message-ID: <CAF3SDA56bgLyrmSKxm=ObR-rrj2RVXojXnbeErkys2uJfdXU9w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Repeteability in image compilation. How to achieve it? How to measure it?
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
X-List-Received-Date: Fri, 03 Feb 2017 13:11:53 -0000
Content-Type: text/plain; charset=UTF-8

Hi everybody,

How can I be sure that the same image built by distinct building hosts
are trully identical?? Is it possible to measure that?

Regards!

-- 
"Do or do not. There is no try"
  Yoda Master

