Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 988D0E00830; Fri, 24 Oct 2014 01:34:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5AFAE0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 01:34:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9O8XY4C010807; Fri, 24 Oct 2014 09:33:34 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Nk6CAgCE0aw6; Fri, 24 Oct 2014 09:33:34 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9O8XVPe010804
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 24 Oct 2014 09:33:32 +0100
Message-ID: <1414139646.30118.4.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: nick <xerofoify@gmail.com>
Date: Fri, 24 Oct 2014 09:34:06 +0100
In-Reply-To: <5449BD8D.3070907@gmail.com>
References: <5449BD8D.3070907@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Failing Build
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
X-List-Received-Date: Fri, 24 Oct 2014 08:34:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2014-10-23 at 22:46 -0400, nick wrote:
> Greetings Fellow Yocto Developers and Users,
> I am getting a failing build with bitbake core-image-rt-sdk on qemux86 or qemux86_64 machine builds.

I'm guessing you've built a non-rt image, then built an -rt image and
the two have become confused since the kernel changed. Wiping out the
tmpdir and rebuilding (but leaving DL_DIR and SSTATE_DIR) will probably
avoid this error.

Cheers,

Richard


