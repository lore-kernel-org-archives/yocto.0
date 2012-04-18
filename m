Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFF9CE01405
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 05:56:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3ICtsep001567;
	Wed, 18 Apr 2012 13:55:54 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 00502-07; Wed, 18 Apr 2012 13:55:50 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3ICtjvK001561
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 18 Apr 2012 13:55:46 +0100
Message-ID: <1334753748.24091.93.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Hatle, Mark" <mark.hatle@windriver.com>
Date: Wed, 18 Apr 2012 13:55:48 +0100
In-Reply-To: <C3CEA23F-CADF-4127-AFBE-191B2CE602BC@windriver.com>
References: <1334624465.26744.4.camel@dongxiao-osel>
	<4F8D8DB7.6030301@windriver.com>
	<1334709480.26744.10.camel@dongxiao-osel>
	,<1334726414.26744.21.camel@dongxiao-osel>
	<C3CEA23F-CADF-4127-AFBE-191B2CE602BC@windriver.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: A question about PACKAGE_ARCH renaming
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
X-List-Received-Date: Wed, 18 Apr 2012 12:56:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-04-18 at 12:45 +0000, Hatle, Mark wrote:
> There is/was a conversion that changed - to _ in the package arch.  And yes this needs to be fixed ASAP.

Let put this really simply. We are not doing this just as the -rc4 is
about to build. If we want to start considering a change like this we
might as well abort the release, start again and slip four weeks.

Why? That dash syntax works fine in opkg and is in use in real world
opkg feeds. This appears to be an rpm only issue. It also only appears
to be directly affecting hob right at this point.

When we filtered MACHINE people complained a lot. When we filtered
MACHINE_ARCH there were more complaints. If you just put the filtering
straight onto PACKAGE_ARCH as well, there will be immense trouble as it
will badly break Angstrom for a start :(.

I'd ask people think about what they're proposing and put it into
perspective.

I believe Dongxiao has a patch which would allow us to work around the
issue in hob for this release and then we can re-assess this issue in
1.3. I suspect the fix is going to be to drop the name mangling in the
core and move it to be specific to rpm.

Cheers,

Richard





