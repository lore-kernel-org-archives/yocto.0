Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCC76E006B3; Mon, 20 Jun 2016 06:13:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 869BAE0049B
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 06:13:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u5KDCwrg002122; Mon, 20 Jun 2016 14:12:58 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id XvqKqgWJubN5; Mon, 20 Jun 2016 14:12:58 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u5KDCtPo002117
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 20 Jun 2016 14:12:56 +0100
Message-ID: <1466428375.3319.133.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kyle Russell <bkylerussell@gmail.com>, yocto@yoctoproject.org
Date: Mon, 20 Jun 2016 14:12:55 +0100
In-Reply-To: <CAFrQVPMhmCAT+TfdOmQ95LsaTSc13=6GNvc=L=6cHmACGHRZgw@mail.gmail.com>
References: <CAFrQVPMhmCAT+TfdOmQ95LsaTSc13=6GNvc=L=6cHmACGHRZgw@mail.gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: prelink support
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
X-List-Received-Date: Mon, 20 Jun 2016 13:13:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2016-06-20 at 08:24 -0400, Kyle Russell wrote:
> It looks like the image-prelink support is still disabled in master
> because of an issue with IFUNC symbol relocation.
> 
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf
> /local.conf.sample?id=8debfea81e69d038bd2d56314b272cb74f5582ed
> 
> Is there still a problem, or is it safe to reenable image-prelink?  I
> see a "Fix ARM IFUNC support" in the prelink-cross repo, but that
> appears to have been committed several months before image-prelink
> was disabled.  We'd like to enable image-prelink on a build off
> jethro.
> 
> Any help or links to a recent discussion thread would be helpful. 
> Thanks!

Basically, its still broken. I actually ran into a bug the other day
caused by the issue where I had prelink enabled locally.

I know Mark is working on some fixes but its an onion problem, you fix
one thing, then find other issues. Mark can give the full story but
right now, its not able to be re-enabled.

Cheers,

Richard

