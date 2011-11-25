Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7558E0030B
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2011 16:27:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAP0R9Ys000433
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2011 00:27:09 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 32588-05 for <yocto@yoctoproject.org>;
	Fri, 25 Nov 2011 00:27:05 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAP0R32P000427
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2011 00:27:04 GMT
Message-ID: <1322180829.10928.55.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>
Date: Fri, 25 Nov 2011 00:27:09 +0000
In-Reply-To: <1322131968.24143.6.camel@ted>
References: <1322131968.24143.6.camel@ted>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Re: Build Time Update
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
X-List-Received-Date: Fri, 25 Nov 2011 00:27:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-11-24 at 10:52 +0000, Richard Purdie wrote:
> Just to update on build time at the moment, we did regress pretty badly
> recently. I'm fairly sure this was down to a useradd change which meant
> dbus-native was depending on a target package and holding up a
> significant portion of the build and this has been fixed.
> 
> I just did a build of a qemuarm "core-image-sato" on my 12 way system in
> 43 minutes. I usually benchmark qemux86 which was at around 51 minutes
> for the same configuration. I suspect the recent pseudo and libtool
> linking changes have given us some good speedups.

To update, qemux86 was 42 minutes so we're definitely looking back on
track with parallelism improvements at least.

Cheers,

Richard


