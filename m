Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41FC2E00908; Mon,  3 Nov 2014 07:08:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 467B0E0087C
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 07:08:29 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sA3F7nct018050; Mon, 3 Nov 2014 15:07:49 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Hp_63DZvgAyb; Mon,  3 Nov 2014 15:07:49 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sA3F7iPu018046
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Mon, 3 Nov 2014 15:07:45 GMT
Message-ID: <1415027299.5111.18.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: nick <xerofoify@gmail.com>
Date: Mon, 03 Nov 2014 15:08:19 +0000
In-Reply-To: <54556BF4.2020803@gmail.com>
References: <54551DFF.6060000@gmail.com> <54552CB3.30002@gmail.com>
	<1851809.saLbNT2Y4Q@peggleto-mobl5.ger.corp.intel.com>
	<54556BF4.2020803@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Angstrom Build Fails
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
X-List-Received-Date: Mon, 03 Nov 2014 15:08:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2014-11-01 at 19:25 -0400, nick wrote:
> This isn't a network issue as I can fetch Yocto sources from other servers without 
> any problems.

It can a network issue, routes to different places go through different
servers and so whilst less common than complete network failure, you can
have a DNS problem or a routing problem to certain hosts, maybe not in
your local network but in that of your provider.

Cheers,

Richard


