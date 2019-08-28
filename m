Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D66EE00DCE; Tue, 27 Aug 2019 21:13:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1059E00D77
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 21:13:42 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id uUDg2000U2wfazh01UDgx2; Wed, 28 Aug 2019 06:13:41 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <0a9330c5-0c11-aa0e-0ef8-0ee0674268ff@faresoftware.it>
Date: Wed, 28 Aug 2019 06:13:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1566965621; bh=kCZIXw9S7jBVp3OQ4RTEqqd9MPGQFwebNKqrdpcFCbE=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=bu13iwoeOQWM+VnkygKqfoYPSkWJlGSSaMZybpCdB86eOBaPlh4Me2gxvLQFv9Y47
	DOr5hb9hfqAKABql9ro/SwJlSJzG85jVAUTSBApsyvnJt2LytBcSK4n4KWDHuG8OBR
	/RGD4UFYdt5wRvMX1y/vh6GD6gPvXnFDs6pEXUvBMQdM9sD9T0GKhABaaqiVnG5uIg
	leyQ2KgLUOsieD+lNIphed/Hx4bX5zKSCyUfvg/RKoMYUr9mEO4bb0TLuGlogUBEvL
	x6jjLGsYUr/jhzTm71C2mNDkTizY+p13/7GFhN0qnQphrNgL3xQ25t9IcPuliVxcMQ
	zOV+zwHJLST3w==
Subject: MySql python support in Yocto.
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
X-List-Received-Date: Wed, 28 Aug 2019 04:13:44 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

There is some library for MariaDB/MySql in Python3 in Yocto?


Best regards.

   MZ


