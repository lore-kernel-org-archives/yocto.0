Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83CEDE00A51; Sun, 20 May 2018 08:12:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.156.116 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A462AE008E1
	for <yocto@yoctoproject.org>; Sun, 20 May 2018 08:12:01 -0700 (PDT)
Received: from [192.168.24.148] ([87.26.78.158])
	by smtpcmd11.ad.aruba.it with bizsmtp
	id ofBz1x00L3QvvBK01fBzgP; Sun, 20 May 2018 17:11:59 +0200
To: Yocto Project <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <8b3544f6-732f-3f56-1087-7c6b17c8f61d@faresoftware.it>
Date: Sun, 20 May 2018 17:11:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1526829120; bh=ngEoX2vYtL0X4AO3nhW3N3HdXiz0GXZo4oAof9hW95k=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=mYTGwfa4YnF+2fT7R+YNkJ8LCtky/4MwpDhvBNSVs4lDXMmBY6Yj2RqYmtEK4MB4t
	NwxOUywNxwcgq5DpM4ymLN/JhCRW1Rm6q06UJXp6KiB/OPlD7v1Vqjhvw/0DSG37o3
	oKK5FCTkBZhuYaSw4Guga1tUnw1u8xiNEEBeTaBHlBk6Hk26FZOrj6dFkEaSBzL6Mq
	GSkMwyK/vn/Dw4TbdY2B3fivfJ5mvN15loxVKwDMb8amEKXRMQOxT5m3CkjgNthY+T
	IRL3L3B9RCR/qGQw62yyUPSwCFT6ZD55DcpLj5K/p08uxf4f3JNbH+HKeUPXY6t5z9
	ofGkO9NvDNnqA==
Subject: Krogoth dpkg_arch=armhf: how?
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
X-List-Received-Date: Sun, 20 May 2018 15:12:03 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

My image works with debian package management.

The image is produced with armel architecture, while sdk with armhf and 
other packages is armhf.

How can I set the correct debian architecture?

I try DPKG_ARCH:="armhf" but seems it doesn't take effect


MZ


