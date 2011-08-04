Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (unknown [93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA0F7E00771
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 08:00:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p74F0KKX002901;
	Thu, 4 Aug 2011 16:00:20 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02492-06; Thu,  4 Aug 2011 16:00:16 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p74F0Did002895
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 4 Aug 2011 16:00:14 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Todd Cooper <todd_cooper@yahoo.com>
In-Reply-To: <1312468953.58082.YahooMailNeo@web161219.mail.bf1.yahoo.com>
References: <1312468953.58082.YahooMailNeo@web161219.mail.bf1.yahoo.com>
Date: Thu, 04 Aug 2011 15:59:53 +0100
Message-ID: <1312469993.14274.10.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: prebuilt pacakages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Aug 2011 15:00:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-08-04 at 07:42 -0700, Todd Cooper wrote:
> Is there any way to make Yocto try to get prebuilt packages from known
> repositories rather than trying to rebuild the world?

The system supports a cache of prebuilt objects in the form of the
sstate data to accelerate build times if nothing changes. It doesn't
directly support using prebuilt packages directly though as its a much
harder problem to solve than you first realise.

A an example, given a package feed, its very hard to work out library
provision within that package feed or dependency naming.

Cheers,

Richard





