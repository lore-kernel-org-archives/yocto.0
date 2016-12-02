Return-Path: <kunyi@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B8D4E00D6E; Fri,  2 Dec 2016 00:36:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B124E00A64
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 00:36:46 -0800 (PST)
Received: by mail-qt0-f173.google.com with SMTP id c47so245553877qtc.2
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2016 00:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=qxE4lReDY34ShdQoLSeltzw0fs1VsEskz3TCEIt+gqk=;
	b=ZBuD+oaX3WOiMs/BiJ88fqiDFz5gOeCuK46rE1QUCUHK2YzR5s/d98mLO+d2ulc1qi
	2Qy+S1bivMp4XC+IL67QPNs23WBgvdjoNsvGUORoONEQp+0WulumjsmeBV3nwlHsqAtw
	ie9Setj+7a1hm7NjdGZ5GLW/tdorndLhBR+wCPWzqoT4MehvFfzhhl+IsY7I6flccVBF
	hJ/4s3Q7yHSk4LEwv/HYZqWR/fXCHoJ8+io2a9bgm/rrGVCuJXu1W8T6CmS7+KYDuGz8
	N/jNvVna03roAJP6ElqF12eDUEr6omB7iaMvuAHdBmJ5BV79VvIsdYWMgFelGYx94BN8
	qelQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qxE4lReDY34ShdQoLSeltzw0fs1VsEskz3TCEIt+gqk=;
	b=R7vhGxeQa3sgoJVaJpruJHAJIhSTdWEp8gtOkelbAbKVPc7cBrp3g/h5VScTXv8rVr
	RhefhQnlMmCHZ1FA9yxaSxs5RkjzY63+xwzL/F0OB8W1W+R1EpabuULjG3eFg0jslpl7
	LTvX3RJAHdYmWw3PvQxLy70RxFAnuCLoqTwSZro0BPB4DHCXDgEEhFFFZqWEIAGf13Vi
	LMEMiF8n6U4stndfWt+rQmO6LraqJjCbcpxB2ZgKyc3E2KEay+npXD4q51Nqj0IH8j1X
	nJHb0z9jbyrLdrl1E16IKDvRx8SkQuxr2h8THX9tdK0Y4UC8i45kxm9kvZuRCizhmFVJ
	56gw==
X-Gm-Message-State: AKaTC01PmvbNRsXjxBfBtX5X1I/3lLdokwYnIiXTE/FLWziNxP9QJ5eLmj6mHN0iHRfj25TqdzSv1DEhw1MkzDT8
X-Received: by 10.200.54.89 with SMTP id n25mr41800488qtb.82.1480667805263;
	Fri, 02 Dec 2016 00:36:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.19.175 with HTTP; Fri, 2 Dec 2016 00:36:24 -0800 (PST)
From: Kun Yi <kunyi@google.com>
Date: Fri, 2 Dec 2016 00:36:24 -0800
Message-ID: <CAGMNF6VXO9PzmXEb-tPHnw7zxRAM-pUgHa3O2XUVKE2xYidD1A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto doesn't recognize cross-compiled binaries inside SDK
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
X-List-Received-Date: Fri, 02 Dec 2016 08:36:48 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I'm trying to use SDK for an existing image to run cross-compiled code
on my host machine. My target is ARM and host is x86_64. The SDK has
arm-openbmc-linux-gnueabi toolchains installed. (The rationale is to
build and run C++ unit tests for the modules that I'm developing on
the host, but that's not relevant)

Reading Yocto 2.1 reference it seems that I should be able to
cross-compile binaries for arm inside the SDK shell and run the
binaries directly, yet even the simple hello-world example shown in
http://www.yoctoproject.org/docs/2.1/mega-manual/mega-manual.html#creating-and-running-a-project-based-on-gnu-autotools
 failed for me.

Step 1-9 complete without much issue, but doing ./hello inside the SDK
shell fails:

bash: ./hello: cannot execute binary file: Exec format error


"file hello" suggests it was built for ARM:

hello: ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV),
dynamically linked, interpreter /lib/ld-linux.so.3, for GNU/Linux
2.6.32, BuildID[sha1]=9d47644538b2bf26176bb4897d20b29e531aab59, not
stripped

"echo $CONFIGURE_FLAGS" gives:
--target=arm-openbmc-linux-gnueabi --host=arm-openbmc-linux-gnueabi
--build=x86_64-linux
--with-libtool-sysroot=$HOME/gbmc/sdk/2.1/sysroots/armv5e-openbmc-linux-gnueabi


Am I missing anything? Let me know if any other information is needed.

-- 
Regards,
Kun

