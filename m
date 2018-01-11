Return-Path: <ngthanh.vu94@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20040E00E0F; Thu, 11 Jan 2018 00:05:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ngthanh.vu94[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03EBEE00DB5
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 00:05:08 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id 25so2327226ioj.9
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 00:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FQhvWKZfvnzrWa4vAfU4dM2sE7SSOp34iCcMFclz2O4=;
	b=tP02muIVv+IYZyoSKI+0cGg5RFBsv3k7reF8MTMiyES8r1Ds5IaWICYB5WGFyeXinw
	g4lvTFYboLlybuDqF9d/dTSPabD/gfjSfQA2W5+09BlfFBWfiMp1sSK4XyVaI3SeNX7o
	EHY9+eEFhk4LJIpPPK5hS7tIUD3vySli1WzQOp5W977pWVdSzQ49lWnMklycdcqo3CZn
	vNfCZLDZ8W3/Gt1vfVrksIy4KuetX03+K2p6xefMzzRrnT9YhMqt/uZL6PzU9NVGkRrf
	CziotCeoFj7c69urNPIFUYvyZCKbUWtapUIC9PT4rTVieqPUBwsQ5CXZDk/PV+9myYkA
	G2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FQhvWKZfvnzrWa4vAfU4dM2sE7SSOp34iCcMFclz2O4=;
	b=Rca46mLMKBQ2aaDIAHpiYA3N0AIIFeYsuwjyh6RreSCXsbx0PYw7yi8rLUgRblQR0f
	yBCPOcL+FxfZI0DpdgvyacCW3rBCppq76C3hm2G6ywFiakF4aBXGOGQCA4SHicWvu9XH
	CLV1wvnHYzoOR5e7NRVkqy4IR2DSiTXFtOWTx60aWpfVsQpEyMIZI2/PfENMGmFCXOvF
	QkKpoqvKVGa+O5gpVM5BHEhKOSX6c4JUN8qtEjT4tQutXOUCux+1gJdTzvDGHiSPxb4h
	uiuwNgotuOQ+swSmDZRPIx/42frQwci01+rPCxbV9rnVJ0x/p4x7rYjOH4Nk8IK2O3fx
	NRsQ==
X-Gm-Message-State: AKGB3mJsWRDVrS8YBUyC/RAu9gwanFdKo+rEYqhY6kDLA6WiWL9D0PXi
	7df7YcNcppE7wS8ElWqp1HAdeMDq2NXb01gVYbqx2Q==
X-Google-Smtp-Source: ACJfBot7FvMzCS2n1mDbERfDCza6DLJwph5zcRL77bdI3usZ679h0eE3gTE/OplT6R9RNXYnyyYTH4w/OCkeH78WcmI=
X-Received: by 10.107.158.4 with SMTP id h4mr20357069ioe.129.1515657907524;
	Thu, 11 Jan 2018 00:05:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.44.21 with HTTP; Thu, 11 Jan 2018 00:05:06 -0800 (PST)
From: =?UTF-8?B?Tmd1eeG7hW4gVGhhbmggVsWpIA==?= <ngthanh.vu94@gmail.com>
Date: Thu, 11 Jan 2018 15:05:06 +0700
Message-ID: <CAGJSYqmyc+yZm9vi4OG8C2KU0=6RUv+Wfpx66yPqFCaze_AWCQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How can I change the default ext4 or etx3 of the rootfs to ext2 or jffs2 in yocto build?
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
X-List-Received-Date: Thu, 11 Jan 2018 08:05:10 -0000
Content-Type: multipart/alternative; boundary="001a1140e9ac2dd91705627b9b59"

--001a1140e9ac2dd91705627b9b59
Content-Type: text/plain; charset="UTF-8"

I want to minimize the size of the image built in core-image-minimal.
However, I have no idea how to change the local.conf file or recipe file.
Can anyone help me?

--001a1140e9ac2dd91705627b9b59
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">I want to minimize the size of the image built in core-image-minimal. However, I have no idea how to change the local.conf file or recipe file. Can anyone help me?</div>

--001a1140e9ac2dd91705627b9b59--
