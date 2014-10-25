Return-Path: <rudnik.mathias@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 817F7E00860; Sat, 25 Oct 2014 12:36:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudnik.mathias[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CFB4E0080D
	for <yocto@yoctoproject.org>; Sat, 25 Oct 2014 12:36:43 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id y10so596730wgg.23
	for <yocto@yoctoproject.org>; Sat, 25 Oct 2014 12:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=l7DUVGdXOib8TS+ui5Mhz2ZlpZyp//ghuaODqSHrcbA=;
	b=XxfV5Ur2IYSgtmK+YKxV2WsQvZzFeYVnLXkIZnY/PIRuch0YgLI4kh9JY7tkCXJZIS
	Yb+r3LnRR9FKnBJtK/VORXZ98kJcVVaLeL3HQs8MfjC6TOgW4YMHBXgUvPorhfsYUWH6
	zpmKmFYtL8j3GEKb+vZRH4NH4kzf28DZGg2b/u7KuaOA8Twp5LzKVxR2Y+v0QUpPTFgH
	3Wrm/Qri4EihpUWPznCjDnG/5SSgT3e+0XPV6tgw1es1LYJ4Q2nkOLVkZ/xWT5XDMUOT
	Go9ZZGDL6HEfv0248JJMSSapl6KzoeiAUPO6nqj+fqojuoLS8NZIuJURdZqOiSHPlclM
	sn0g==
X-Received: by 10.180.36.48 with SMTP id n16mr12127314wij.6.1414265802034;
	Sat, 25 Oct 2014 12:36:42 -0700 (PDT)
Received: from [192.168.178.24] (p579584D8.dip0.t-ipconnect.de.
	[87.149.132.216])
	by mx.google.com with ESMTPSA id fx2sm9646469wjb.37.2014.10.25.12.36.40
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 25 Oct 2014 12:36:41 -0700 (PDT)
Message-ID: <544BFBC7.1060000@googlemail.com>
Date: Sat, 25 Oct 2014 21:36:39 +0200
From: Mathias Rudnik <rudnik.mathias@googlemail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <544BF18D.1030106@googlemail.com>
In-Reply-To: <544BF18D.1030106@googlemail.com>
Subject: "yocto-kernel config list yocto-bsp" throws error
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
X-List-Received-Date: Sat, 25 Oct 2014 19:36:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just found out that whenever this error is thrown it means that there 
is no kernel config file in the specified layer (here it was 
meta-yocto-bsp).
Therefore the configuration options can't be listed.
I think it's very irritating that in such cases a traceback is printed.

