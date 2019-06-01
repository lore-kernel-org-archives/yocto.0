Return-Path: <morne.lamprecht@melangex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6B78E00AAF; Sat,  1 Jun 2019 07:40:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40590E00A5C
	for <yocto@yoctoproject.org>; Sat,  1 Jun 2019 07:40:21 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id 16so3325612wmg.5
	for <yocto@yoctoproject.org>; Sat, 01 Jun 2019 07:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=melangex-com.20150623.gappssmtp.com; s=20150623;
	h=sender:date:from:to:subject:message-id:mime-version
	:content-disposition:content-transfer-encoding:user-agent;
	bh=K81lUSqVjBuuwdnlPl1tvkkDeJD5NNVWGjf3VdoPRqw=;
	b=K+ReBXEYsSODaCT16SsAGGY4t7K8fLR2V+U+PjnjIgzbJkqqxpbf2OJwoM1CEeXu7k
	3xwTCRbzB3JWqwn7q4Zk1mL23z53LGQUMybi25v7WznTXEmo8Ayh6lKvjk1BZj28mFdi
	zOrsqWa/KF3kEkXkyG+kWh8u9XnoUXmacHw1gVvrpMwU+7O7sERgK05iVfhn7nhxPZzq
	uADIdTlOGsdsyYS2R0wFaS8LD75H6g7Kn0PuPnMyiDCbRGtW40P3IYXHWk8FsWwI6EjJ
	5dueoMKhiKnqciTLYvS2dW7VyWjlFSNgz4gmPvBJ73STdJQrqhAk3sU67O+HrAwXb2ag
	8aug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:subject:message-id
	:mime-version:content-disposition:content-transfer-encoding
	:user-agent;
	bh=K81lUSqVjBuuwdnlPl1tvkkDeJD5NNVWGjf3VdoPRqw=;
	b=fXoFmVviMzdGRSNR7HX25cKn/MO6Q4YC057+5Kb208AT/JTYsNOBZR6qUcwIEuMiv7
	BrwHBZxvNmSr5sqTLH+l3ZGc8Hs/4rizXpwdb0bYA3mm/x+J/0vsbyKlAQD4dLg1iqGi
	HjEs+luVD4pc69w22VlzHNhXTA+qoet19MGdxUbIanN/bQl/5spEYgq6/QQR1h16QYdt
	Z0zvrg0+myuNVfMuGulUtHvNTfS2s3/4yfMa5oHES4jLVjxRNDHCrIJWJ+B4KrwKpU1N
	O7vSEZi8EuGXg5Y5gVKIS8iiM52VSWrS4xbu92pCw15lde2wyoaXxWhLBn7NyDc2QayN
	Wb6g==
X-Gm-Message-State: APjAAAW+cBVVfuXYpmZy3y3i1Xqsyl+mgXPN5jzJuBhgRc8F3ck7ZkPW
	4TcmIHIA1ajPQk2p1yJDJG7yR5EokiM=
X-Google-Smtp-Source: APXvYqx57kZreoooyJV8WDiX3U2h9T7MPieVloSPPiM1U9a7spXL20rdaXr6ds2X7isfUEWOdBgJbA==
X-Received: by 2002:a1c:e0c4:: with SMTP id x187mr230441wmg.177.1559400019821; 
	Sat, 01 Jun 2019 07:40:19 -0700 (PDT)
Received: from localhost ([209.203.60.70]) by smtp.gmail.com with ESMTPSA id
	p16sm18280287wrg.49.2019.06.01.07.40.18 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sat, 01 Jun 2019 07:40:19 -0700 (PDT)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Sat, 1 Jun 2019 16:40:16 +0200
From: =?iso-8859-1?Q?Morn=E9?= Lamprecht <morne@linux.com>
To: yocto@yoctoproject.org
Message-ID: <20190601144016.GA19383@archworkstation>
MIME-Version: 1.0
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: do_rootfs fails while attempting to install hostapd package
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
X-List-Received-Date: Sat, 01 Jun 2019 14:40:22 -0000
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi

I created a new custom distribution and 
everything seems to work fine until the do_rootfs 
task is executed. It fails specifically when 
trying to install the hostapd package, with the 
error below (snippet from log.do_rootfs):

> Running scriptlet: hostapd-2.6-r0.aarch64
>
> usage: update-rc.d [-n] [-f] [-r <root>] <basename> remove update-rc.d
> [-n] [-r <root>] [-s] <basename> defaults [NN | sNN kNN]
> update-rc.d [-n] [-r <root>] [-s] <basename> start|stop NN runlvl [runlvl]
>
> error: %prein(hostapd-2.6-r0.aarch64) scriptlet failed, exit status 1

> error: hostapd-2.6-r0.aarch64: install failed

The hostapd package itself builds fine, it is 
just the installation to the rootfs that fails.

The hostapd package is specified in 
MACHINE_EXTRA_DEPENDS, if I remove it, then the 
build succeeds without any issues.

If I interpret the error correctly, it is the 
preinstall scriptlet that fails...but I am not 
sure where to start debugging this.

Any suggestions ?

		- Morné

