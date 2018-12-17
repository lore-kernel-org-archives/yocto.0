Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84920E00C9D; Mon, 17 Dec 2018 05:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C550E00C7D
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 05:42:30 -0800 (PST)
Received: by mail-qk1-f180.google.com with SMTP id n12so7286281qkh.11
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 05:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=SzECxi+Y/2b/a4pjTCGP+3EGa2CnMZtttb7OLVrzo+A=;
	b=gEyI+L9gnsMYI+Y9C3TvJNUbasM3HWC612/dUR+J3hTmc//CdesmNibBmc8uuYY4Zg
	MJpdUdwo28lJZ/6uvauIUo5dONeBmSgQElF3/gDaZno/gPdnSxIeZpokNxc5V/fwKo07
	YP7aquFIRu34MuRVaeD7awVVMWAp7VSyHDupem1lm2GWspmjFTM4yVI2DK1//8U+Vhnq
	nCCQN5wj/9NsdRUIjD38X1LiCwSD/w8D611IrrK6pMjMJQTRejhfHmNuF+NzpqzLgkcf
	Y8GyODYX4rBFDevKCTZozEIKfV2wSPSu4fIjCQK4nh70mBRS8g10h+JTM6HNhvRdeCxg
	ov1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SzECxi+Y/2b/a4pjTCGP+3EGa2CnMZtttb7OLVrzo+A=;
	b=gINk+RdMuZSYF+P3in2mI4nLelOcQqzaK0f3BD+XkVxZuJuqo/tiko7ZVNjDFwh9YO
	2B9EcnsfFw3gb18Hfq0EWTHTrDGsHDgyPX57s4BsYJGm6mYNVRL0k7Y8jFIHjBMZiRfZ
	/RFME5B90ptu4QeGtfFlEKlehvoP2cYTevAYWGdjeKXgec7wnOa2u+w9RTPfWnYO6uvB
	VYYMdfxtJ5bd6rnQPosKnI6diXW3qnjPNki+yOz9xJ3okgVrZ6nvGSH90UamrtAJvPrS
	kVTm5N4O1gb3E5VCjyp/gwGOkP/iiwrcp/nrNWooGsQxHaRtIK+TQoNzlW63u9DbdXVF
	7N/Q==
X-Gm-Message-State: AA+aEWb6mA3VbRfx8uGoTp950OiDf1sKoJvf9nqK8mr0Zl9DYgVsw7Qa
	CeEHxHU8Gc9QTThPHuZ+HMEQ38PbuXvdbL2THhiyDKeD
X-Google-Smtp-Source: AFSGD/W3nSOadHa6qKnZ0tSim+g529bVPAfAr21OzUnV+Dxni8YXUZWsOj7eqKMQsZyWBtHSI1xU/iVdIptYpiVgNIk=
X-Received: by 2002:a37:268b:: with SMTP id m11mr12161138qkm.131.1545054150159;
	Mon, 17 Dec 2018 05:42:30 -0800 (PST)
MIME-Version: 1.0
From: Ranran <ranshalit@gmail.com>
Date: Mon, 17 Dec 2018 15:42:19 +0200
Message-ID: <CAJ2oMhLA6j-455_9B_CjZ_fza6UK8ncNwPzNqvggnC5KSX_KZQ@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: static build of Qt
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
X-List-Received-Date: Mon, 17 Dec 2018 13:42:31 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

Is it possible to make a static build of Qt using yocto ?
Or does it have to be manually done as shown here:

https://doc.qt.io/QtForDeviceCreation/qtee-static-linking.html

Thank you,
Ran

