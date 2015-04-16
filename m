Return-Path: <testlaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9BD2E009C2; Thu, 16 Apr 2015 04:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (testlaster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E228E009A3
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 04:00:24 -0700 (PDT)
Received: by wgyo15 with SMTP id o15so76565439wgy.2
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 04:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=IzaxzTkhJlqNX9kF+toaAB4NkfY3wUhMe+X3Gm/lVh4=;
	b=wd/yJ9/R9VQulzb4UPX5E0XAAxr0hrTpigNptness1IwHGbhvEJ3yroK3rlKmozkTZ
	hCFDWWarobAH/2WmHyMiu4ZlPQo5PgeYeO5VmXkq847qeIHbp1ZN2Z+7OpvKY8puCGHM
	HOQ8D625jhz41H2f33VaOZ2I5RSJvgY6cqSCoJkXyj1iKBI7FL3fLjIkz925yqsmQEEb
	3lg4m3N3HmDVvLgHTug65lHIi75Lc1n2urxhf7nXOv7JUtH86gKPfCbzV8rGhSumgd+C
	QyPeLqNzEt4XrFsMXIdJ61z7MdVeUoFjocHssPxfh9pGPmzdotxpOO9MbCrAFsID+4bq
	24/g==
X-Received: by 10.180.208.7 with SMTP id ma7mr4253647wic.0.1429182024024;
	Thu, 16 Apr 2015 04:00:24 -0700 (PDT)
Received: from [192.168.11.13] (gwise.truvelo.co.za. [41.160.58.98])
	by mx.google.com with ESMTPSA id fo7sm11132402wic.1.2015.04.16.04.00.22
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Apr 2015 04:00:23 -0700 (PDT)
Message-ID: <552F9641.8090805@gmail.com>
Date: Thu, 16 Apr 2015 13:00:17 +0200
From: testlaster <testlaster@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <mailman.9.1429038001.21905.yocto@yoctoproject.org>
In-Reply-To: <mailman.9.1429038001.21905.yocto@yoctoproject.org>
Subject: Yocto Header files?
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
X-List-Received-Date: Thu, 16 Apr 2015 11:00:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi everyone.

I would just like to know if it is possible to get the Yocto Kernel 
Header files?

I need it to build a PCI driver but I cant seem to find a recipe or a 
download for it.

Thanks and kind regards.
Testo

