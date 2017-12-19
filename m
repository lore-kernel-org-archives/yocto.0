Return-Path: <cc.smart.ch@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26635E00CEF; Tue, 19 Dec 2017 12:28:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cc.smart.ch[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECE7AE00C0F
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 12:28:52 -0800 (PST)
Received: by mail-pf0-f170.google.com with SMTP id n6so11615851pfa.4
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 12:28:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=WtnGWNKHxVtQXDSspYlBrGWSuAYjgvCEX+LQ8kYDRPM=;
	b=WtDaoM+1kVZTGiq+VoLRlie8oX034upsF4MmNRRy0PBTfktiDg8VvclwI4rQ+ZVE6I
	FydpIv23MrtxmR19iw8wuncNAdZulV6ApGIXAZ5LYNuAYFOFitd7qi6/O/TGyZBAM3sp
	84gj1grrFgPozVCBW72kuB48DUH/A+WuGt9S7+CareLCKQFS5VkNoDruLfhzuAsW2r84
	i1pcsoPhVGA6+7d9o/rvgDo0hIUUzoL0cjq6Z/APdMrBPJmcwyC8b9g5cEnOkEpHWPj0
	VWOtej+eYWgRXwmMyJ/x/kGdR07gUVcAEISi7K+GsWdR5+XTboRSM2fCOXvjaTInIUPa
	B6Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=WtnGWNKHxVtQXDSspYlBrGWSuAYjgvCEX+LQ8kYDRPM=;
	b=LX+aAo3urCMjnCRf640gSSqKl4vsjpFXmxCJbnN/2Bv+bdBp6TBHb48bpFSj/tmsbU
	mVYj+Ek+SeI+ncSAjXq8ciw1UR5IvFxDDgTcP39DdTt5grRu447Wtlk5YGZB797biq3K
	kMqhXQnlOF5ahAdDsgP/3Cv2JropitnmnAjqG9hzHn3b9uasSdIhuOlI/OD2YZ+UnTf5
	nVh2DahR0usHwQDwL+3MZ6CMY6XF91mv1IItr4v0MoW9JEdzTPjeqoYbFmEoKKymDCut
	+NYoM4OULx5KT4oq3q3/XkRwDLQs0OiIAwpdVIE8V4ykBtSgBirOKZBo6RkQl1iJQ8Xy
	fA7A==
X-Gm-Message-State: AKGB3mJi6gw67jJwr8OqpC2rht3qhBEgrH3pO9KPtxYF/jlPQfVPcCi2
	+ezQJRYxesuz5F0VmnX3G3BWuw==
X-Google-Smtp-Source: ACJfBosqPXQx8/gps0+dga1/QtSUaU0lOQv8pHac1LdElaoygBNT2gdv/Jv+0XgcPfSLkC88wryisw==
X-Received: by 10.99.166.18 with SMTP id t18mr4077292pge.252.1513715332114;
	Tue, 19 Dec 2017 12:28:52 -0800 (PST)
Received: from [172.16.11.152]
	(gw.ptr-80-238-209-140.customer.ch.netstream.com. [80.238.209.140])
	by smtp.googlemail.com with ESMTPSA id
	q24sm32009123pfk.168.2017.12.19.12.28.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Dec 2017 12:28:50 -0800 (PST)
To: yocto@yoctoproject.org
From: ccSmart <cc.smart.ch@gmail.com>
Message-ID: <ae6a6ca1-0416-4780-076a-97a26f753707@gmail.com>
Date: Tue, 19 Dec 2017 21:28:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 20 Dec 2017 08:11:36 -0800
Subject: Trying to make PylonGPS build with DEPENDS, does not find includes
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
X-List-Received-Date: Tue, 19 Dec 2017 20:28:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Greetings.

I'm trying to set up a poky layer at 
https://github.com/navdata-net/meta-navdatanet/tree/rocko

Compiling PylonGPS from https://github.com/charlesrwest/pylonGPS 
requires, amongst others Google protobuf.

I include this as

DEPENDS += "protobuf-native"

During build i get

fatal error: google/protobuf/stubs/common.h: No such file or directory
#include <google/protobuf/stubs/common.h>

However, this file can be found at

/workdir/dev/rpi3/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/pylongps/0.1.0-r0/recipe-sysroot-native/usr/include/google/protobuf/stubs/common.h

So i assume it is a problem with visibility / build environment setup.

For running the build, i'm using the crops/poky docker image.

Where should i look for finding the correct solution ?

Thanks for your input.



