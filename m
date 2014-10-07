Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0446BE007C1; Tue,  7 Oct 2014 08:22:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2B31E0076C
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 08:22:04 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id va2so5860692obc.16
	for <yocto@yoctoproject.org>; Tue, 07 Oct 2014 08:22:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=nbLb2rlMNCscTi8Dyf+/eUvrW+ymZ9Rm7Wpg/gJq+T8=;
	b=JM5Yt/qgvoEdpIiy3kdCORN2rReRUwqc/8rp+3+wRS8mMAaaOr+IX2xy0hYA/tkJNK
	6z6wjdfVw/1PhAg9zetKdKFE+auvhUTWAoOvjTGyHdjGLilVEW/lCJWIFIB7NiEwaQa0
	ezDcTbnwBToGudnnxUa8lpHPGBm2jgfNKJcQF3MeHqHBvsP7DYu7umLxvjRhHNWH8ivn
	/Mg6w9uC180c2nrdHvhtDzZvM9FW/Ps2VbM2mtIxwv4wNLKT03mBgXpGaKMPsZGYLnkB
	870uoT518roWWbP/mEYlP/FCbND/nxlwkNfgumJ8oqXoitXJm2sQ27vfzwbLAmx0eCJz
	A0CA==
X-Gm-Message-State: ALoCoQlfdqTOyR3m+2FsThZE22zdCRxO0iAMEXtYJZtM52UL3EGfI7gimWC3p/kfPzln+3BvZ1WK
X-Received: by 10.60.58.36 with SMTP id n4mr5100447oeq.73.1412695322746; Tue,
	07 Oct 2014 08:22:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.187.8 with HTTP; Tue, 7 Oct 2014 08:21:42 -0700 (PDT)
In-Reply-To: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 7 Oct 2014 17:21:42 +0200
Message-ID: <CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
To: Wy kevinthesun <kevinthesunwy@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Cannot run simple binary executable file
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
X-List-Received-Date: Tue, 07 Oct 2014 15:22:17 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 7, 2014 at 1:07 PM, Wy kevinthesun <kevinthesunwy@gmail.com> wrote:
> Hi, I am new to Yocto Project and learning to develop software on Atmel
> SAMA5D3 Xplained board, on which Yocto 1.5.1 is pre-built. I followed the
> instructions and got the 1.6.1 toolchain
>
> poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1.6.1.sh.
>
> I can compile the simple HelloWorld program and binary file is made. Then I
> copied the binary file
>
> into board and tried to run it. However, when I changed to the file located
> directory and type
>
> "./Hello", it returned "sh: ./Hello: No such file or directory". Then I
> tried "sh Hello", it gave
>
> me  "Hello: Hello: cannot execute binary file ". If I type "file Hello", it
> gives "Hello: ELF 32-bit
>  LSB  executable, ARM, EABI5 version 1 (SYSV), dynamically linked (uses
> shared libs), for GNU/Linux 2.6.16,
> BuildID[sha1]=9933a2d2ce212099c5f9902a8e612c1423e136da, not stripped". I
> googled and someone
>
> said the problem may be the toolchain. Then I tried 1.3, 1.5.1 toolchain for
> arm, but still same
>
> error. Could you please help me about this problem?


i suspect this is an armv7 soft-float vs hard-float mismatch. Either
your prebuilt OE system is configured with soft-float and the
toolchain you use compiled for hard-float by default, or the other way
around. can you check how you've compile HelloWolrd and check the
other ABI?

