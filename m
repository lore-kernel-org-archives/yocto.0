Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9591BE00E36; Thu, 25 Jan 2018 10:49:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21F48E00CF5
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 10:49:18 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id d13so9671469iog.5
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 10:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=2Fv9SNpI6koQERHfm4Q/d/oinV+vWSlmaSJPrwjLbxo=;
	b=WZX8U5D1CwND99Wri5ozQLfmX4e66YUBiX6sQ9vUQGIyiRMN3vvqtPGfnBVXAlX4++
	ax1OG87eSmjGY4GGjk8sxCAPdRPbfOECTcTZaL/grcBXh09l+o+8qPNSyfO1umhGLSBB
	E3AOuOkfoRjTxfnNCsU0EhCdoyG3JFd3wo0mNE3o74o3OVMeGyVO6C7mR4I+IVBGtqVJ
	e7bjBHwpE1ZeXZp9jSZLMG3IzsXl7awOahbDoFfSyZ+KA31x0SspAkSoqfBQn2BZcG7S
	NWgbgJgfcM/w/s8z+oncV1lmbpfSdRooPeImQDXbJjjg4htqLlcpN8FquAYjlolPGiKc
	jGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=2Fv9SNpI6koQERHfm4Q/d/oinV+vWSlmaSJPrwjLbxo=;
	b=gR2AP6wS+/g8Xz4zumpUXRxmMP9Q8WNBqxX8NvorQaSTHy3ZJpFoMjXwAa06ztNlMo
	2eIFM157wFdJ9PHhYmy3LLJ3vQxYjuHkSiG4P5lCTRovrMAI0OOeYVtD/sxKdmfXgj1x
	DpK0/rQhBXeomhXNWIPmtjQ/hOniUCAGVOdPIUjyGKUhEC3tE85RFwGZlU6ZW76QN4pG
	stptud5FiMt6K9vuU70lg3fUMMj0Tn3Lar95Gnhyrplc6f9OkDNwJN+OPt0G0ZFmpe9x
	XiXXaX2wCQBAqavrfIoJYnFSTOkiTis/geI5zNY/2/6zoLNbK1QpmBA8c/s6DrVgcBF+
	XoZQ==
X-Gm-Message-State: AKwxytcREIMClgGmpgUJ+1YEeJ9laWsX5LDbIFCAVx6hrNs2Q8Ovd7Cp
	/Stbq4+W8KOOSLwB2EoniQ8cRg==
X-Google-Smtp-Source: AH8x2260ly6XoQmaJ5kDwkYfggjYxpGbRxgLAtnNOwuIz2ApjtpJA6B9UTKxZFT4jiRDm6QAMk+jDA==
X-Received: by 10.107.131.2 with SMTP id f2mr13823490iod.102.1516906158270;
	Thu, 25 Jan 2018 10:49:18 -0800 (PST)
Received: from [192.168.1.100] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230]) by smtp.googlemail.com with ESMTPSA id
	m99sm2386078ioo.10.2018.01.25.10.49.17 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Jan 2018 10:49:17 -0800 (PST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: nick <xerofoify@gmail.com>
Message-ID: <b9fae6f7-348c-00e2-b8bf-2322e7a7ab6c@gmail.com>
Date: Thu, 25 Jan 2018 13:49:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: Size of Packages from bitbake build feature idea
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
X-List-Received-Date: Thu, 25 Jan 2018 18:49:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Greetings All,

I assume this is possibly already there or is in another tool used by most people
here. However if not I was wondering if it's a good idea to add support for telling
what packages use up the most space on the root filesystem before the build or even
a good idea. 

Something like bitbake show package size can be very useful for trimming down your
packages before the build is done or even before debugging storage requirements. It
should also support telling what shared libraries are used by each package. 

Nick

