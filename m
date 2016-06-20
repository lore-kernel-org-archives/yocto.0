Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DED6FE00825; Mon, 20 Jun 2016 07:06:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61895E005A9
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 07:06:01 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id q132so38389905lfe.3
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 07:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=gOjLGPs9sVJDWKc9j0yHrWxrMsOHEPG8htHYxNezyn4=;
	b=sfnXl0FmxJhlY9tVsO/FilnyDh0pvQAOZdKyqEHrzgJdbq0I7EgouihCEvABuMu9C7
	E/nCqZb1YfuRVSNYH8Bj6XN73pa1v1A5c1OLK5g+FSJZ6QJHEeiYjpt+BKpc7GmKIHU8
	p5zRb1If0F5q25vbaIMdzus2MHZ8iUdd/QoSmbCwLrIn6Hkf+Ljp6/+YgGaWA4gwrPla
	FERXYrAAfCsMEDsjyXW1Yfb1tM3SwZM1m7+Mv/bW6lo/CoLRUf/9jPGy8LxTDEgds6uL
	Rt6zVky9bWtW4bq7vlJyyE2iLpdFykHJJJUGlh4APv2DRdAcM5McIpIien/KU2O21BJB
	if1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gOjLGPs9sVJDWKc9j0yHrWxrMsOHEPG8htHYxNezyn4=;
	b=ljdKYLBwwZdaYEGPcr3Ooufi6IEkzUwQaeWT6ew4PyD84aTrQ8EQ14uDwYFDmTDolG
	KXvKtdcXIt015dWHH0C8+RjR/WwqKX1IfyYbPXveT7f4ENUeASf+eaVySszO5oFmKkGO
	reRCIA1wznwKDhMxXXOmZ0zxiqUu/r9LsE3zuhQ7EelavOWSDlf970WcW9E+/8udzST0
	+e/2kKLf0agV2XKmC7RP2bNnli+y6lBb5Ou67tEOJX3PO0opTMie7ITrGXOs55yBLZPT
	UVkuzeQedstQYEojB719ETUW2VJYKO1wK4Dxcz0h+bwpwdMKd72signU63RcqFova7r/
	SR8Q==
X-Gm-Message-State: ALyK8tIopYecwQMDqaKyvvgMTAEicrWlNCs7EJVjYkQam53Cu2m/2W/mtLCH2KK2ZCWTUOLjQc7KGaf0dJD9ug==
X-Received: by 10.25.215.131 with SMTP id q3mr3459595lfi.196.1466431559860;
	Mon, 20 Jun 2016 07:05:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.210.84 with HTTP; Mon, 20 Jun 2016 07:05:59 -0700 (PDT)
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Mon, 20 Jun 2016 15:05:59 +0100
Message-ID: <CABatt_xp9ybAu6tdY-JNf+VupRzEGPfPuM6pHQyZn31RL2GSbg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Multiple images/filesystems
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
X-List-Received-Date: Mon, 20 Jun 2016 14:06:07 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I currently have a read only filesystem image. What I would like to do
is have part of the filesystem read/write which is basically a
particular user account, say /home/scratch
To complicate things we have two flash devices,
1) eMMC with ext3 filesystem
2) NAND with ubifs filesystem

So I would have 2 partitions for eMMC one for /home/scratch and the
other for the rest of the rootfs.
For NAND I think I need 2 UBI volumes one contains a UBIFS with
/home/scratch the other with the remaining rootfs.
I think I have to create my own image_type.bbclass file to create the
ubifs and ext3 filesystems but I don't see how I separate out the
/home/scratch from the image's rootfs.  Anyone know what the best way
to do this is.

Many Thanks,
Martin.

