Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5839FE00AF0; Wed, 17 May 2017 07:38:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from outbound1.mail.transip.nl (outbound1.mail.transip.nl
	[149.210.149.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4CADE00ADB
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 07:38:20 -0700 (PDT)
Received: from submission6.mail.transip.nl (submission6.mail.transip.nl
	[149.210.149.10])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 3wScPQ5JQFzYdmQ;
	Wed, 17 May 2017 16:38:18 +0200 (CEST)
Received: from webmail.frontend (web0.mail.transip.nl [149.210.149.95])
	by submission6.mail.transip.nl (Postfix) with ESMTPA id
	3wScPM1YwNz12NDK; Wed, 17 May 2017 16:38:12 +0200 (CEST)
MIME-Version: 1.0
Date: Wed, 17 May 2017 16:38:12 +0200
From: Herman van Hazendonk <me@herrie.org>
To: Andrea Picaro <andreapicaro@gmail.com>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <CAA7DeJDDeNHquFeQdC=Q7bGPopC2Kp7UuKKk_Tpan5fECXcFcg@mail.gmail.com>
References: <CAA7DeJAfVXzNtgpmkKFA5P3LRWkURgH0YGBVpk=WxpsJd0LUCw@mail.gmail.com>
	<CAA7DeJCsunm+DYDRw9d8P5SZVHOEggxkzcPHKq27nbm-WGj=UQ@mail.gmail.com>
	<CAA7DeJBeA4F7yEF5Our7VJ485xpbBTR5Hr_FAK7hMATPynPVqA@mail.gmail.com>
	<CAA7DeJAbX0HzAQ-PSfVx-wmLURmVD8Pe_xzrRDe3TK9mc=pcJg@mail.gmail.com>
	<CAA7DeJDhAGXHTA_rbP98ixkUmz2HSXzpkSjPPYgVbdEa6QipWw@mail.gmail.com>
	<CAA7DeJAbGF+RP5o+rb-U_2SNcnh406qBLwMd+kK07egs7L8VUA@mail.gmail.com>
	<CAA7DeJDDeNHquFeQdC=Q7bGPopC2Kp7UuKKk_Tpan5fECXcFcg@mail.gmail.com>
Message-ID: <e63b5aa092d5b572b487b85495e8865d@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission6.mail.transip.nl
X-Report-Abuse-To: abuse@transip.nl
Cc: yocto@yoctoproject.org
Subject: Re: Enable qt web engine mp4 support in yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 17 May 2017 14:38:23 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrea,

It took us some fiddling to get it to work as well:

See our implementation at:

https://github.com/webOS-ports/meta-webos-ports/blob/pyro/meta-luneui/recipes-qt/qt5/qtwebengine_git.bbappend#L4

Cheers,
Herman
On 2017-05-17 16:32, Andrea Picaro wrote:
> Hello i'd like to enable mp4 video support for QWebengine. I've read
> many threads regarding WEBENGINE_CONFIG+=proprietary_codecs to be
> passed to qmake But,  how can i do this through a recipe?


