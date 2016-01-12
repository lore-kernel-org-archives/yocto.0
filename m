Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DB5DE00ACE; Tue, 12 Jan 2016 12:59:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84CBAE00A9C
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 12:59:19 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id oh2so280177834lbb.3
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 12:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=/MHOyUdpc+9HlPWBcj7rgtaoJ8bIezk3Njorfus6Ack=;
	b=m/FuornSPFIvgLxerSMVhDvNzrxuUG37kzdeEZ1F8xtazozBm1+xq2KteAlaW2Wjga
	A0cFg5CHhU1M6QwdFW4+8/sdSkckTp6lyBGGxSQvES8okzrB1/IaIq6PIdLRJD6XIQKi
	YCRlvpXzzEXAlAH3ErsdlzeFuszNBKSHx79qxbVWbEEI+Xx96K6TWYfa4rmkTwOmMsEY
	3sZhl/Y/gRID1rLf4cdlyIY2Qf1aZf+tfo46CubHA/5xHJOPo2zJBM6WVSbrojdOArJe
	YWXHUitB8wxKW1W5A0pvcXmx+AQW4rWE2dZLcIeACiHrLS0GSIpqpdKWzAcw//zqvd0+
	SRWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to:content-type;
	bh=/MHOyUdpc+9HlPWBcj7rgtaoJ8bIezk3Njorfus6Ack=;
	b=ZAqn8DWzXRA0RNPhLq738/sM4C7KAER0cxLXWT59p0s5NqF+cUoxvbVPlVYzZEUIWG
	exakNmM8uX+zY/RE3xsisLvtixDAnpn1cTUuXBIBdwp4Vv7NnNnaDuDA5YkB1HTo/Un5
	oSxnFEhI7A7tuReiGpTltrNadHgOZ8nWZ+0aV9ctPV5T0Fgp/lJlWI3avB8nhK0z4A5C
	JaOEz7eCIkhPvZEuSryZakb2VDJlv9pxYeFurTWnmCX5AGkRsSQsqSt0Q5STYzx4GCE+
	kLen6D0PSkbnRa66tRC0eK9peKRxWxvQNbkRm5IwrErGBJ69VwVnskQhX2UMCib83N+a
	cDNw==
X-Gm-Message-State: ALoCoQkWfsUjuD1DZt+DB4+djqmHSlsfLvBKwPe/DcqZcW0NSmNbORp2aqHbmQnbzet13Etw8y4rq3/IE2edGIDeXoBzYIAoWQ==
X-Received: by 10.112.50.134 with SMTP id c6mr50144288lbo.14.1452632357862;
	Tue, 12 Jan 2016 12:59:17 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.55.101 with HTTP; Tue, 12 Jan 2016 12:58:57 -0800 (PST)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Tue, 12 Jan 2016 12:58:57 -0800
X-Google-Sender-Auth: LGsnGnEj6GswIXVabcb0qeRPtBg
Message-ID: <CA+YB3rYrx5+5+DcXH693BL_vmdn2n=K4+kSgtQErLoxRs66WJw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: SCaLE 14x pass
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
X-List-Received-Date: Tue, 12 Jan 2016 20:59:24 -0000
Content-Type: text/plain; charset=UTF-8

Psst ..  does anyone need a pass to SCaLE 14x next week? If so, we
have one to give away. If you need a pass, send me email and we'll do
a drawing or something.

-- 
Jeff Osier-Mixon
Open Source Community Architect, Intel Corporation

