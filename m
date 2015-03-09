Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40191E00750; Mon,  9 Mar 2015 12:22:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73FBAE003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 12:22:24 -0700 (PDT)
Received: from [192.168.0.40] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id D5994600048E
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 21:22:22 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1425928942; bh=Qw1TSRuqBmoXeyovPEK0TKHpEXe8gqJbCJTquWahrgA=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:Content-Type:
	Content-Transfer-Encoding;
	b=iZ69xq7biGUKswNPPCQG/MFEpJQpIJR84AfkK2qJuVhEOv4lIXlDaNhV1oghmht83
	cO0AeI/Zqv2GlAbCA8n4pVCp6qndIINDnOAhWlfzulfGI/st4ZTWT0rhFEYxV9QWhU
	og0+X+yzgvwlpKmGgmXMelW74JMHqY1VzjfHjYNA=
Message-ID: <54FDF2EE.6070509@mail.bg>
Date: Mon, 09 Mar 2015 21:22:22 +0200
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: 2 images with single Bitbake recipe
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
X-List-Received-Date: Mon, 09 Mar 2015 19:22:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi guys,

I need an advice for the following Yocto use case.

My system has to boot via minimal initramfs and then must use the full
rootfs. I can use 2 separate recipes to generate the 2 images (minimal
initramfs, complete rootfs), but I prefer to create all my build-
products via single bitbake command.

So, is it possible to build these 2 images with 1 recipe, and if "yes"
then how?

Thanks in advance. Regards,
Nikolay

