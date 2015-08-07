Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 638E9E00A3C; Fri,  7 Aug 2015 06:19:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7F50E00A31
	for <yocto@yoctoproject.org>; Fri,  7 Aug 2015 06:19:48 -0700 (PDT)
Received: by igbij6 with SMTP id ij6so30791075igb.1
	for <yocto@yoctoproject.org>; Fri, 07 Aug 2015 06:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=pKHeDvHoRBNyoXMQuETDBvJg7nhtJLT9BgP5MyTJu2w=;
	b=phwMkyuHaSf5WLQlb4M77RIYSXqLLL4HBh37TfgKH+6cXkngEFuOzuf/3/ACwo+fuc
	+teRwWVh5y4FWtUfJOF+uyOpNMNE40qseEnBff7xfglBHLoW8sc7nspM+RmklZK7eAU+
	G98KhOyKAAWsfcHtwIJf9S1kOzXqhm5uVZ/OmCzOawNXLTawvyCQVs3k4dyfnJWFRTm+
	Moxf7wLRVlVfsLyn7VHgfwICIxkSqtmmRSYeQP0hVQfw3ORyLiUUzTqk+1HwszSfKpz4
	3i72krailTImuDlLXX4pLfQ8Pza6A77UZk7NpafB7aqAx2wWMrI07gVQF/ztObfQuiJ9
	D9fA==
X-Received: by 10.50.50.129 with SMTP id c1mr2837112igo.60.1438953588323;
	Fri, 07 Aug 2015 06:19:48 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	n6sm3652970igv.17.2015.08.07.06.19.47
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 07 Aug 2015 06:19:47 -0700 (PDT)
To: yocto@yoctoproject.org, Paul Barker <paul@paulbarker.me.uk>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55C4B071.30709@gmail.com>
Date: Fri, 7 Aug 2015 09:19:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
Subject: ipk zImage in master-next
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
X-List-Received-Date: Fri, 07 Aug 2015 13:19:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

When packaging a zImage kernel for IPK in master-next the following
error shows up:

| kernel-image-zImage-4.1.2-fslc+g95d9e15
| *** Error: Package name  contains illegal characters, (other than
[a-z0-9.+-])

It looks like the newer kernel.bbclass is much more sophisticated about
generating package names than before.

Has anyone else seen this? Is there a simple way of saying "the type is
zimage where packaging for ipk is concerned but zImage otherwise"?

Best regards,
	Trevor

