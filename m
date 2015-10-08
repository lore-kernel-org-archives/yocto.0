Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53B44E00C38; Thu,  8 Oct 2015 13:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32177E009C5
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 13:29:39 -0700 (PDT)
Received: by ykec126 with SMTP id c126so23149482yke.2
	for <yocto@yoctoproject.org>; Thu, 08 Oct 2015 13:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=45tj5zpMkw2A06EHQV1wMrDugYrnHK1qbd25AKYfCyM=;
	b=Wz8XOFobNzfXZTHdoWRjQ0XOId1LYmnO8G84Q5hKtyQPkh1pv+jXSFdcsbCfu/kMC/
	wghqGKNP62QRNd4TkPKply1e4HPQJLenbzjVK7iU/io7XsIe85I3jHFvYhpngpuTexIs
	FmVe1vAWHW7NAx14mg/+4TzBjS1WEXXtiIWOZUVUESB6UuJrTRNCwuG6QlJmmKH6PZ7u
	lt6ewdGLkY3/tZ7en3dOyVAW/K6mm+EcrknuwGu1TlCDreekEybiauYDQPxGVQ6oWOo2
	xl9ArJx6UKMhBA7LPHUFtMd3GtBSsnMPhHTMV8/snPpKhVby3a9L1aJPOfuzgs27Yn9b
	E6+A==
MIME-Version: 1.0
X-Received: by 10.129.106.9 with SMTP id f9mr7434931ywc.223.1444336179510;
	Thu, 08 Oct 2015 13:29:39 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Thu, 8 Oct 2015 13:29:39 -0700 (PDT)
Date: Thu, 8 Oct 2015 17:29:39 -0300
Message-ID: <CAF3SDA4AiYrxqdTTY5VVFizmgMKOXjYTJzaz8kNN9D6j9iwccA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: kernel-module- prefix for out-of-tree modules mandatory?
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
X-List-Received-Date: Thu, 08 Oct 2015 20:29:44 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

Is the kernel-module- prefix mandatory for out-of-tree modules
compiled inside Yocto? And, This prefix applies to package names or
recipe names? Should I rename my recipe file with this prefix or setup
PN stuff?

Cheers,

-- 
"Do or do not. There is no try"
  Yoda Master

