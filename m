Return-Path: <rapphil@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB6B4E00853; Tue, 20 Jan 2015 03:18:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rapphil[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47444E0082D
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 03:17:50 -0800 (PST)
Received: by mail-qc0-f179.google.com with SMTP id w7so9841464qcr.10
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 03:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=HE8Pp/W/nVNq85qOX70uTPHMP7dNPutn74EEW7HZBSw=;
	b=gJp7D4IaIe7ToH4MOIs9xvG5M08jhPZpszXUenwd4kz/IX6AXPx4K9HUzvABGWYzvs
	hO9QnZznDLZBystCfm695xqRXvtOXZx7LSMGGPzkWhF0jvwqbkAFJW+5H8stUgK4DKbi
	M3zKspkoC1H5rqKBvdR5LaKO5qCnJ366HtHKd2Z3DgGzCObxYwe9eHU9N9X/VFAQIJFM
	n3An2tT+M5/bv7t0IoioC+D0t3n+39XDd+505SbMcuRoRpnJjZgfPFfgEjIVO4vMP9DQ
	6DjgB5Vz211LXHqFmvjBPY+L5tqayvWf378j5QfZn/H0zdhThUYuk46wuFMG5r4GY4P4
	Tc3g==
MIME-Version: 1.0
X-Received: by 10.140.21.229 with SMTP id 92mr43695826qgl.33.1421752669270;
	Tue, 20 Jan 2015 03:17:49 -0800 (PST)
Received: by 10.140.240.67 with HTTP; Tue, 20 Jan 2015 03:17:49 -0800 (PST)
Date: Tue, 20 Jan 2015 09:17:49 -0200
Message-ID: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
From: Raphael Philipe <rapphil@gmail.com>
To: yocto@yoctoproject.org
Subject: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Tue, 20 Jan 2015 11:18:01 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm working on a set of recipes that must be configurable to be baked
in native, nativesdk, cross and target.

I have a bunch of questions concerning this terms. I searched the
documentation and wasn't able to find a definitive explanation for
these terms.

I will write some statements bellow about my understanding on these
terms, and I will ask you to please correct me if I'm wrong or add any
additional information:

- By default, recipes bake binaries for the target architecture that
is described in the MACHINE variable in the local.conf

- One can use BBCLASSEXTEND = "native nativesdk" to bake binaries for
the host architecture (native) and for target sdk architecture. The
target sdk architecture is described in the SDKMACHINE variable and
the host architecture is the architecture of the machine executing
bitbake. BBCLASSEXTEND = "native nativesdk" will alow you to bake
recipes that are "virtual" using the suffix native ( so ${PN}-native)
and the prefix nativesdk (so nativesdk-${PN}).

- Recipes that are cross need to inherit cross.bbclass. They are used for  ????

I'm looking for the reason why there is a u-boot-fw-utils and a
u-boot-fw-utils-cross. One produces a binary for the target and the
other for???

thank you.

