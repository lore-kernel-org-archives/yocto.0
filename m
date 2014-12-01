Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 429AEE00860; Mon,  1 Dec 2014 08:57:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC1A9E0030B
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 08:57:29 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sB1GuN9k012295; Mon, 1 Dec 2014 16:56:23 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id o3ZtNGAuXWqF; Mon,  1 Dec 2014 16:56:23 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sB1Gu7ow012278
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 1 Dec 2014 16:56:19 GMT
Message-ID: <1417453004.15614.30.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bob Cochran <yocto@mindchasers.com>
Date: Mon, 01 Dec 2014 16:56:44 +0000
In-Reply-To: <547C0400.3010706@mindchasers.com>
References: <547C0400.3010706@mindchasers.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Questioning FILESOVERRIDES implied precedence in setting FILESPATH...
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
X-List-Received-Date: Mon, 01 Dec 2014 16:57:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-12-01 at 01:00 -0500, Bob Cochran wrote:
> In poky master, FILESOVERRIDES is constructed as follows:
> 
> "${TRANSLATED_TARGET_ARCH}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}"
> 
> For my current build, I get:
> 
> FILESOVERRIDES="powerpc:custom-machine:e500v2:qoriq-ppc:poky"
> 
> FILESPATH is built by calling base_set_filespath(), which is in 
> utils.bbclass
> 
> This function constructs FILESPATH in such a way that the distro folder 
> ("poky") comes before the other overrides ( precedence is applied right 
> to left using FILESOVERRIDES )
> 
> I see that there was a patch to reverse the ordering back in Oct of 2013 
> (0bd63125c3b44) to make sure MACHINE overrides had precedence over 
> platform specific overrides.  However, I'm wondering if the intent was 
> to have the distro override both.  This doesn't make sense to me, so 
> please clarify whether this is correct.  If it is, please explain why 
> distro gets a higher precedence over machine.

It is intentional, the concept is that the distro is the ultimate
authority on configuration and it should be able to override anything,
including machine specific choices. I would agree that can work well in
some cases and less well in others.

Cheers,

Richard


