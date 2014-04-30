Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C45EE00985; Wed, 30 Apr 2014 10:15:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72017E0096C
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 10:15:08 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id db12so2598935veb.10
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 10:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=TG+mzSmqxiaD8v1sDvFEu1PayrIkZ+5Si/aI3W73geY=;
	b=bOoROhPpV0xCMrwt1ZfSqmzu5wBi3t/4SbRQPmFkwrWUEc3j+WSbLQTnHBSd3Yq0X8
	T0C6NDub1+kT3L9Zw8OR3DO7mkiaVFIyFpkvClZaFcBSbCEHzvzp+rlCKJYYASolotVX
	TZcmnMGmAQCHqtRtuEYJp7J0WyyFHOUgBWdRxP9Cr4Amr3ParMnpmzthW1yJw9f1H4QM
	2in2YeWiAAXLtPRGdKQP6gwvVDxNjJviUOI+0dUjllWftxj7t2MiVMcOmbB+mZHFMfSd
	Qxtuu5JS5q+jDswR+10ZGTPsOUHrAznwmPEEB8XveprOLOJcQ/PTXgrttBe/skJXd2gB
	FTPQ==
X-Received: by 10.220.163.201 with SMTP id b9mr66951vcy.79.1398878107037; Wed,
	30 Apr 2014 10:15:07 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.221.5.133 with HTTP; Wed, 30 Apr 2014 10:14:26 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 30 Apr 2014 18:14:26 +0100
X-Google-Sender-Auth: mJ960EzpnmIRnJ2xH5iSqWVjHdY
Message-ID: <CANyK_8c6oFsJC60RcKPFQV9Q4tMERYoxz5t5AmZ87_b53hutwQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>,
	Andrei Gherzan <andrei@gherzan.ro>
Subject: Daisy branch for meta-raspberrypi
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
X-List-Received-Date: Wed, 30 Apr 2014 17:15:13 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm looking to create a new Raspberry Pi image now Yocto 1.6 is out.
oe-core has a 'daisy' branch and meta-openembedded should be following
soon.

Could we get a 'daisy' branch created in meta-raspberrypi? If there's
anything which needs doing before that is branched let me know and
I'll see if I have time to help out.

Thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

