Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22C0DE00C22; Mon, 19 Mar 2018 09:49:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B165E00474
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 09:49:45 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id y64so11655870ywa.3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 09:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=1kfWuEQsVDBO+EbdKmAfZQt4/yT+JZHEB2jt2XJri1s=;
	b=WRgK7iMlZRhSf7Qs6ysNhfmW9+hiGQN6p6saQ13F46vKDUcQZb7UXdNtweWkbR5fTS
	F1k7PjgnupNUv4/PyBfJRr/RNv4zlcCwRp6Ws74Tl9z28VDOD3kkStLBCZ01qUH02fpQ
	3bvx6d0zpKWuqKreN68sZk63RSnJpf5yZ58vvujiVVB+aPnkP1gAkodmblQmkgqBHs/2
	ndlvnDUXh7LmhZTFJhLGOMiBL1WnL9mNPrDmQubV7of+p7vzUPECcNRUbyXAuMRB/dGX
	O/Aosy33kpQSnBbKk4at6Q1H8VnJ47lfmCB5ChfVKaN/NYGRBHQRVmA0Qb7pMQx5g4wW
	lAVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=1kfWuEQsVDBO+EbdKmAfZQt4/yT+JZHEB2jt2XJri1s=;
	b=rZnB1IB9sqyAbLUl0ECf8Ga6GBxhQBTx5FM7nQpnDMkRX32a02iFEUGjuo7C31P8po
	wmVry87jTcppDgq5gbVArUu08J4gJsF4EBUtxoq0hpKn6AsRqjgTffD3bAjRFeL9GGqS
	ztYkpf+UswdIfC1BBtcI2WrnMFRtCoduFLQdJ1DEE67IXKpqXgXE3D/2OnUVk0JiUeby
	gjQww4AzZfgkbj2eFIFPo/S7T9Ik8KmNu2WaLP5WjO09zknTLMlrmBgej/wvIhYMKLbH
	kyoNnwSWBfSBajbKi+iLyGdoLXYcZj6m03HtcCUzN9d7StrZTvjLM8OQMXZBQ7uezas0
	Ls3Q==
X-Gm-Message-State: AElRT7HPngh2KWbuOuS/u6SRPKCTclOV/9gJHEyZOBiAJplaAiP8/+UV
	5cOHqIY+nF5UbCjUPDCsotJalGbNv/0=
X-Google-Smtp-Source: AG47ELu6PuZ1W95+iFDGNK4lc9LfRZJl+l5bcBvKWtjh72YEvCB17Z4HUcrWygs14vxJitPHF1r4eQ==
X-Received: by 10.129.161.4 with SMTP id y4mr7263054ywg.168.1521478184942;
	Mon, 19 Mar 2018 09:49:44 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18])
	by smtp.gmail.com with ESMTPSA id x8sm158823ywa.65.2018.03.19.09.49.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Mar 2018 09:49:44 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Mon, 19 Mar 2018 12:49:43 -0400
Message-Id: <6C79F0E5-F966-4068-B0CA-0B2FACB4ACD3@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: ARM CPU version question
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
X-List-Received-Date: Mon, 19 Mar 2018 16:49:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

What=E2=80=99s the recommended way to be able to propogate =
target-specific compile-time CPU tune information to affect the build of =
a source file in my own custom layer?

For example, if I=E2=80=99m building for an arm6-based target, I=E2=80=99d=
 like to be able to have the __ARM_ARCH_6__ symbol be available when the =
Yocto system builds my custom layer.  The BSP for such a target =
obviously defines this symbol when building its files for such a target. =
 Is there an easy way to propagate this information to my own custom =
layer, to affect my own sources?  Maybe my recipe needs to include =
certain conf files from other layers such as meta or the BSP layer?

Currently, I notice that architecture-level symbols are available to my =
custom layer at compile time, such as __aarch64_ and __arm__, but not =
CPU tune information, such as __ARM_ARCH_6__.

- Steve Pavao
Korg R&D=

