Return-Path: <aws.ismail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C8E8E00ACE; Thu,  5 Nov 2015 22:12:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (aws.ismail[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18272E00AAA
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 22:12:40 -0800 (PST)
Received: by obctp1 with SMTP id tp1so85072251obc.2
	for <yocto@yoctoproject.org>; Thu, 05 Nov 2015 22:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=Irp5MRX/aWgi3zoC4ERnlrVbPXKW1hOojvRjNGnU+gE=;
	b=YTuWxW0C2Yvc6I7ZNftg2kykF0cdU+EAyfbs6DiATM5LyxL0FfGIT6Rfnkniz8d8G7
	sGBEiprZt+9sZC/PAVErzrHQNJqbXRlNRpXTgyXKVQ17EkljjaxpQr+VvEsVkgVosVrL
	mVqO2MDCO42TwO/2S+wkSRcIdwApJ25BhcUcCxzLIwG5mo961bdIIvbLsCX5x2vAHb2C
	Bcfv+KjCg8f493WhhN9JBXRXcXhKagsvFHnXJb4GU7VVuajcGu+s+0ydzVrbA2iKRdG2
	OTI02xG4RWZAMx8I4Y7DII6dxJhWoTwGzvOuHR4APtwQ44Q3/EYGTaLbxayhn0dXdThu
	v02A==
X-Received: by 10.60.33.202 with SMTP id t10mr7219359oei.66.1446790359669;
	Thu, 05 Nov 2015 22:12:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.41.39 with HTTP; Thu, 5 Nov 2015 22:12:20 -0800 (PST)
From: Aws Ismail <aws.ismail@gmail.com>
Date: Fri, 6 Nov 2015 01:12:20 -0500
Message-ID: <CAMHMu0PDTzCNkRR8gjFY7NsUKxC_+mNP1Q-0iaS9SZuabq8VDQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Is it possible to call runqemu with multiple tap devices?
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
X-List-Received-Date: Fri, 06 Nov 2015 06:12:43 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I noticed that runqemu starts with one TAP device by default. Inside
the VM this would be eth1 vNIC device. Is it possible to start the VM
with multiple tap devices (i.e. eth1, eth2, eth3, etc.)?

I have tried using the "runqemu-gen-tapdevs" script, which creates
multiple tap devices successfully (on the host), but when I try to add
the new tap devices as part of the qemuparams it fails.

The only way I was able to boot the VM with multiple vNICs was to use
the simple "-net nic ..."  qemuparam option, but then this vNIC won't
be configured and won't have a proper address like what's done to the
default one by runqemu.

Am I missing something, or does this mean that the runqemu-internal
script would need to be modified to support multiple vNICs in the
QEMU_CMD?

Thanks.

