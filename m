Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DAF0E014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 00:20:39 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5R7RKSq029260; Thu, 27 Jun 2013 08:27:21 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id qIZUxk7dP2Fb; Thu, 27 Jun 2013 08:27:20 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r5R7RF7W029236
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Thu, 27 Jun 2013 08:27:17 +0100
Message-ID: <1372317615.9930.180.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Jun 2013 08:20:15 +0100
In-Reply-To: <1831F7C6-54BC-4E5F-BC00-1B8C17E8D1FD@gmail.com>
References: <1831F7C6-54BC-4E5F-BC00-1B8C17E8D1FD@gmail.com>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org
	\(yocto@yoctoproject.org\)" <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<Openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] eglibc (would be 2.18) recipes
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
X-List-Received-Date: Thu, 27 Jun 2013 07:20:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-06-26 at 14:06 -0700, Khem Raj wrote:
> Hi All
> 
> I have put together eglibc recipes for upcoming 2.18 release and pushed to a contrib tree here
> 
> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/eglibc-2.18
> 
> They built angstrom/systemd-images fine and booted OK on all supported qemu machines
> on OE-Core
> 
> Please test them out in your configurations and machines and provide feedback, lets weed out
> the issue early

You have a fix for bug 4168 in there that nobody else can reproduce or
understand:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4168

I'd really like to better understand what is happening there before we
pull that one in.

Cheers,

Richard


