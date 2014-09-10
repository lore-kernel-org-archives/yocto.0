Return-Path: <daniel.kenji.morgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE7D0E0056A; Wed, 10 Sep 2014 05:54:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daniel.kenji.morgan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB61FE0054C
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 05:54:14 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id rd3so7081172pab.40
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 05:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:content-type:content-transfer-encoding;
	bh=OT+mt7mBB1izXqC7dyqqNMnAXN1cV0g8qGzDLv/c2Ng=;
	b=tuhpAUfNgBBsWdXBKBX/D6FjqqD1/x4MeSIMPXfyRwPrv48MdzEQQ83cI2+u3gNQI1
	FoTYK3/MogZn5WP2gDB5Egrlb/lQScyGp6Vt165c1tAgvZZSxIjQ8gX7PDi9cB2outwp
	6qn3MaT/Vmtaxsf0//2GsuS8YxOEGYY1UtIRM8VaFiaiQyu/WZ4wAUaHkA8LW8qXCNSN
	/rnx0xyny4TV3iZ+AU8zh66YOSZ1NbDUkK7AZ6m41vqpnB7bimz67oF06zyX1m3hFvr9
	xnbKVYDBNcDohu2FBjcHe5r544q20C0mujMyanDHeWNwFgeUrKFHGlQ9/cQmQgLTmh/K
	YhEA==
X-Received: by 10.70.35.15 with SMTP id d15mr67575702pdj.48.1410353654647;
	Wed, 10 Sep 2014 05:54:14 -0700 (PDT)
Received: from [192.168.1.7] (121.193.55.36.ap.dti.ne.jp. [36.55.193.121])
	by mx.google.com with ESMTPSA id
	k11sm11554960pbq.64.2014.09.10.05.54.12 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Sep 2014 05:54:13 -0700 (PDT)
Message-ID: <541049F3.4070805@gmail.com>
Date: Wed, 10 Sep 2014 21:54:11 +0900
From: Daniel Kenji Morgan <daniel.kenji.morgan@gmail.com>
Organization: Daniel Kenji Morgan
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Trouble installing shared library/header to sysroot
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: daniel.kenji.morgan@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Sep 2014 12:54:18 -0000
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

Hello,

I have a package that builds a shared library using autotools.
When built, the shared library and header files are correctly installed to /usr/lib and /usr/include respectively.
They are also correctly populated under sysroot.

I have been trying to change the target directory to /opt/lib and /opt/include only with limited success.
I managed to get the library and header files installed correctly by:

1. Setting "--libdir=/opt/lib" and "--includedir=/opt/include" in EXTRA_OECONF
2. Installing the directories in do_install_append
3. Adding the directories and files to FILES_${PN}

However, I cannot get the library and header files populated into the /opt/lib and /opt/include directories under sysroot.
I couldn't find any existing recipes in poky that did something similar.
Is what I am trying to do actually possible under Yocto?


