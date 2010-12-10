Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 85A354C80FA4
	for <yocto@yoctoproject.org>; Fri, 10 Dec 2010 07:35:03 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBADZ0bO026047;
	Fri, 10 Dec 2010 13:35:00 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25557-08; Fri, 10 Dec 2010 13:34:56 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oBADYqOG026041
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 10 Dec 2010 13:34:52 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>
In-Reply-To: <4D013F9C.2010404@intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733104D391@shsmsx501.ccr.corp.intel.com>
	<4D013F9C.2010404@intel.com>
Date: Fri, 10 Dec 2010 13:34:38 +0000
Message-ID: <1291988079.1554.939.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add extra parameters for qemu script
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
X-List-Received-Date: Fri, 10 Dec 2010 13:35:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-09 at 12:44 -0800, Garman, Scott A wrote:
> However, one thing I feel the need to run by Richard, as he expressed 
> some preferences with how the poky-qemu script would work with regard to 
> options.
> 
> Richard: Criping's patch would remove the standalone options we had to 
> the poky-qemu script (e.g, nographic, serial) and instead requires the 
> user to specify them in one command option which can take any qemu 
> command switch.
> 
> So for example:
> 
> poky-qemu qemux86 nographic
> 
> would become:
> 
> poky-qemu qemux86 "<-nographic>"
> 
> The benefit of this is that this allows the user to specify any qemu 
> option they wish. Previously they were limited by the options we allowed 
> them to specify (which were quite limited).
> 
> I tend to feel that this approach is more flexible, and scales better 
> than having to support each and every qemu option with our own script 
> syntax. Is this acceptable, or should we continue to support our own 
> custom options in addition to Criping's new approach?

My gut feeling is that having some simplified way to trigger possibly
complex option combinations is still desirable but adding a way to pass
additional custom commandline is equally good. This gives us the maximum
flexibility moving forwards but keeps the script easy to use?

Cheers,

Richard


