Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55C5CE00DAE; Thu, 15 Dec 2016 18:54:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0840E00DA5
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 18:54:46 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id q130so78178460qke.1
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 18:54:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=mGZAnpNCOCzKz6Xs/aK8OWSuygXsG3LYHC04T9gLCU0=;
	b=P87+w/TtuLtM5uUJ5EThJt+7Flk+I64Tm2JnSItdbDtBMurTsQeSUrVo7PBBcJDhX6
	IwQK+r6MT1iC432SM+ghlqNy8ypZHx7Xmclin8x/6bYb1w6bptZ/nxqnOrqqUiXYioOZ
	nVXRXlLPNrdjjhSI23z4ICxkKYI+0NtCfVMfW16LlVnwweTdAubJ7zn7PH4P4SucMEt9
	T6C1nEeLRg1x3gQEXa6pM9aNcGIOIjOuAAs2zusQcgEWqDErxzyi+On22yTvzR62THvZ
	rwM29rmxc75EfKxjsWnE4MH97zdA0LS7Ai/1Is4yCFWbe2onGyx56dgXvcjc21qbhqvR
	mUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mGZAnpNCOCzKz6Xs/aK8OWSuygXsG3LYHC04T9gLCU0=;
	b=hTtHXWs1bFSo8gRRzfpAVXQDLIjXcCZBG2YyAf+uQ7ohWWxZbVAuomE/ZUqFkTSgxG
	2wbcIAcnrha7S1MHBmYCZwcWkY26htCnc1FPN1xa4AHRhDW6cc+OisfjD7fUMiTn1g2J
	uQom3Vabw0Dem7z2dp8dPVduxyGe22/o6OCKLTCrmp+2YKve/q9Ljc59yj0dKUpqUjZy
	0GvgU5xeK7RYFr/Xf+9CIq888kuPRfyAgz7Zr6XJAaH6Mo6KmRa8xzGyw+P98qpHuiql
	5X2P8KBZxoZkWG/wL8ajaSF7ZXDVhktghi5NwzGRCmHna80HPU3k249aY4KbqhK0hiGC
	olGA==
X-Gm-Message-State: AIkVDXICk3VwxvrfxxXY5j6g3FZxK29AQS8+DifTNt9nhTfCkYU9xB+2PPLtxwZ5GNM+tRD2u+qNdGH1M1je3w==
X-Received: by 10.55.200.147 with SMTP id t19mr618975qkl.165.1481856885433;
	Thu, 15 Dec 2016 18:54:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Thu, 15 Dec 2016 18:54:45 -0800 (PST)
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 16 Dec 2016 00:54:45 -0200
Message-ID: <CAF3SDA4zxDqiyofGbA35UGHgmNG6oBgKK==unMJFh_6RAwTPow@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to get headers installed at target side of SDK?
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
X-List-Received-Date: Fri, 16 Dec 2016 02:54:49 -0000
Content-Type: text/plain; charset=UTF-8

I'm a little confuse, so I may be about to say non-sense. Correct me
if I'm wrong...

I'm trying to get some headers installed at SDK so that programs
compiled with it see that headers. I tried appending
nativesdk-packagegroup-sdk-host adding my nativesdk-foo-dev as
dependence to it. With this I got the headers but at
/opt/poky/1.6.2/sysroots/x86_64-pokysdk-linux/ while I want them at
/opt/poky/1.6.2/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/. What
I'm doing wrong?

Then I tried to append packagegroup-sdk-target adding foo-dev to it
but still I can't get the headers at the SDK. I'm building the SDK by
building meta-toolchain and installing by executing the script
generated at tmp/deploy/sdk.

Regards,

-- 
"Do or do not. There is no try"
  Yoda Master

