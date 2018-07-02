Return-Path: <voltamund@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 932B2E010E8; Mon,  2 Jul 2018 04:52:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (voltamund[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B70B1E00C61
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 04:52:00 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id z13-v6so8412569wma.5
	for <yocto@yoctoproject.org>; Mon, 02 Jul 2018 04:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:thread-index:content-language;
	bh=+Y4TQfwksVsKy8ZHtZa80RkXsiGIxfZxOrIgRj1uN3w=;
	b=Fz7tu89C7I8sWO9ShDTz2Cw284qyYPo5yICvhI39OUuo3T5uItUNwCyRS2IQdKL3NV
	lCI+kMy8OvYikhaGXlo0U/hViaa1Uyghxl2emV4Qu9TbbcpPBov4A+wLXHqiwj2N8czp
	tEh7Ur4IMf7uftmtW7Nuz0KAv5+n08cPX22xcBObMeSTJMwPCg1ItwQN4b3Kbxxu0Qlc
	GAI50Mx3Y45RJbx+iIJfbeVN6dNEb9UTPbNa48ttYpLcuLBg+JHunjoSK+J7ptWafaWt
	j1Zr1nAxDnl6suAYJC9QL9PbKsHMY4ELCIT4DxgsJjCdYfdYjV74DaXzhgUI0gwVT57B
	yhbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding:thread-index:content-language;
	bh=+Y4TQfwksVsKy8ZHtZa80RkXsiGIxfZxOrIgRj1uN3w=;
	b=D+eevH0HwToBBdf1tWHRdABnpU/klAne6EsGYpTIZDaTgQM3uBwOOfDUTvXCPa/1qz
	IlSmvCur6Ce4B6YWiL2lYyYTUINm3DW7sxjKFKzrm3v5uNGMGP3wHbsD+qOQIVMnb8g9
	BD52aKbjhuvOr7N2M9zmFxtQ9TtB3cipTpSDCm/la5+3flTWnZ9MdhXuB+NtHJwFLAU8
	clVRsD+63Nl3BnfL0Pa8Hfm94BHwzsfuf5w3gIc0/aeWSmkLmapGrhTt8wC3kGW7gU3E
	DQnq81Jr7fJY6mc5yWng0IXpYO3sCuoUnQrxVJvk2CcD5fSE1btgHFuDiiuiZmkhE2rA
	Uv7A==
X-Gm-Message-State: APt69E19QSqoD5BEtafXR2PpvsKSDJYBjV5ctJBZKREiTp1xOxNQBw7c
	8kDjVMRB+XqDIYsnKGAyeBuoDJFv
X-Google-Smtp-Source: AAOMgpdUFJ2H2/TZHtsQvDh2gUlcNOldvkqKoLbxN00nvsavge/iQDQRnb1sX2kt27SBtQ9fcDEmUQ==
X-Received: by 2002:a1c:c289:: with SMTP id
	s131-v6mr8870653wmf.65.1530532319888; 
	Mon, 02 Jul 2018 04:51:59 -0700 (PDT)
Received: from VaioZ (178.113.191.237.wireless.dyn.drei.com. [178.113.191.237])
	by smtp.gmail.com with ESMTPSA id
	s12-v6sm18030363wrr.43.2018.07.02.04.51.58
	for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 02 Jul 2018 04:51:59 -0700 (PDT)
From: "Jan Krause" <voltamund@gmail.com>
To: <yocto@yoctoproject.org>
Date: Mon, 2 Jul 2018 13:51:56 +0200
Message-ID: <000301d411fb$14798a00$3d6c9e00$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdQR+noDvd/ZOQQsQYmJPJb7dMBxSg==
X-Antivirus: Avast (VPS 180702-0, 02.07.2018), Outbound message
X-Antivirus-Status: Clean
Subject: Add additional file with execute permission to SDK
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
X-List-Received-Date: Mon, 02 Jul 2018 11:52:02 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: de

Hello

I try to add an additional shell script to a Yocto SDK (release rocko). The
file should be installed directly in the target directory of the SDK (same
directory where the environment-setup-* file is installed). I added a
meta-environment.bbappend and do something like this:

create_sdk_files_append() {
    cp script.sh ${SDK_OUTPUT}/${SDKPATH}/
}

do_install_append() {
    # This makes populate_sdk fail
    chmod +x ${D}/${SDKPATH}/script.sh
}

The create_sdk_files_append is enough to include the file in the SDK. The
SDK is successfully generated but script.sh has no execute permission after
SDK installation. To add the execute permission I used do_install_append.
But then populate_sdk fails.

Problem: package
packagegroup-cross-canadian-raspberrypi3-1.0-r0.x86_64_nativesdk requires
meta-environment-raspberrypi3, but none of the providers can be installed
  - conflicting requests
  - nothing provides /bin/bash needed by
meta-environment-raspberrypi3-1.0-r8.x86_64_nativesdk
  
How can I fix this problem?

Regards
Jan


