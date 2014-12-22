Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8455BE008C1; Mon, 22 Dec 2014 10:41:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 489ECE006EF
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 10:41:25 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id tr6so4859273ieb.35
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 10:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=R3aBzj0qwavRKkEduXJgPVsdSKxKjH6stPIimM0vt7U=;
	b=sgrhKm/My5s3BUYQ+RGkwihGIG1J5AitD9OFHdFrdCulxFEDZ5Xk8MyI/r/OnZL6Nq
	L+GEPil0HvWDDohO3HCYiJObk/lGTk4hMRVkrUK1FbmBTzoqCP5hvXeczfhFuUw1PmgE
	imNkJAWrrBeQ+KLxiA61VjFQu3+lbflkHxUAj76v+MQu/Y1xPb0RcSc3uuJq3jPld6c9
	iZ8OravmYH26BTfkg7gbBiPXORVDvm3BQSFZ9SRzVVzoh08rWYVqQ7nX+53d0IVvg2G9
	i10qONEk5coG2qfek0QQlLfTKM1Y71yka8edzKDxXyIxvZCDpJgEAM/9I7PXYPyasVvj
	TlBQ==
X-Received: by 10.107.153.147 with SMTP id b141mr21905721ioe.49.1419273685016; 
	Mon, 22 Dec 2014 10:41:25 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id m11sm5225473igt.7.2014.12.22.10.41.23
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 22 Dec 2014 10:41:24 -0800 (PST)
Message-ID: <549865D2.2090803@gmail.com>
Date: Mon, 22 Dec 2014 13:41:22 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Build Server Questions?
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
X-List-Received-Date: Mon, 22 Dec 2014 18:41:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Greetings Yocto Devolopers,
I am wondering if a build server is a good idea for Yocto Builds. In addition what specs are good for 
a build server if I am to purchase one. Further more I am assuming as many cores as possible for making
the build be parallel and faster. I was also  thinking as much ram as possible too, 64 GB as a minimum.
If there are any other ideas on specs for a build server that would be greatly appreciated.  
Regards Nick

