Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE12EE0092E; Tue, 31 Mar 2015 08:33:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EAE4E00837
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 08:33:18 -0700 (PDT)
Received: by pacgg7 with SMTP id gg7so23046441pac.0
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 08:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=2G9L67HH73fGT5ayC5vf5wQUWHKLJME5K5osaClrWv8=;
	b=GhTLd8/ojcLwGH+hHzCe+A4tyMR27T8f+wCNYkCWJnr9m5s8qfBm5BBEGcvYj25+K3
	nMhW5V58GXWzrk1ZFwTnYCN6Tfw9ppK0PyJElag0zjEEijmr42Y+5gBhQJtPX6a/oZlL
	aFKuHXmXu04yUz672F6zaAHz8loNv58Oeq/wi2bhuXv+1ZbHax7v2FuG9me8Z71fnqNf
	ihCoce8YQ5/ij9MM9FYHMHLRyRAI5jjI30xjh9JZv5QNneQzVK/KW8irYvNLfpYgcOTG
	38htwXGpBK6PoU6Tmaar6mbNw9dHGkG/81z3f4X6nh9upiu1jTDHoTf3IzgcvNnvRlKe
	3BaA==
X-Received: by 10.68.225.162 with SMTP id rl2mr68099513pbc.117.1427815997642; 
	Tue, 31 Mar 2015 08:33:17 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:bdc8:daf2:1c92:3db7?
	([2601:c:a700:3ba7:bdc8:daf2:1c92:3db7])
	by mx.google.com with ESMTPSA id
	zq6sm13677272pac.11.2015.03.31.08.33.15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 31 Mar 2015 08:33:16 -0700 (PDT)
Message-ID: <551ABE39.5050503@gmail.com>
Date: Tue, 31 Mar 2015 08:33:13 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	OE-core <openembedded-core@lists.openembedded.org>
Subject: package update staging
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
X-List-Received-Date: Tue, 31 Mar 2015 15:33:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Morning all,

now that fido is nearing, what is the best method for staging package 
updates meant for oe-core?

regards,
Armin

