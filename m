Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 315ECE0030C
	for <yocto@yoctoproject.org>; Sat, 26 Nov 2011 06:03:19 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAQE3Dok013564;
	Sat, 26 Nov 2011 14:03:13 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12340-06; Sat, 26 Nov 2011 14:03:09 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAQE33pm013558
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 26 Nov 2011 14:03:05 GMT
Message-ID: <1322316191.25382.15.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Date: Sat, 26 Nov 2011 14:03:11 +0000
In-Reply-To: <4FF5AC937153B0459463C1A88EB478F201A8D4E47F@orsmsx505.amr.corp.intel.com>
References: <4FF5AC937153B0459463C1A88EB478F201A8D4E47F@orsmsx505.amr.corp.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV variable
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
X-List-Received-Date: Sat, 26 Nov 2011 14:03:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2011-11-23 at 15:19 -0800, Saxena, Rahul wrote:
> Can anyone explain how to set the SRCREV variable for a recipe ?
>  
> I get a error: “Please Set SRCREV to a valid value” 

Could you post some logs of the build showing this problem please?

> For example if my source is MesaLib-7.9.tar.bz2 file from following
> site…what steps do I need to do to get the SRCREV ?
>  
> ftp://ftp.freedesktop.org/pub/mesa/7.9/
> 
Elsewhere you pointed out a recipe with a plain SRC_URI = "ftp://xxx"
address which would be the correct way to do this.

I suspect you have multiple mesa recipes and its selecting a "git://"
based one over the "ftp://" one you think its using. The "easy" way to
tell would be to delete the git mesa recipes and then it will probably
use the one you're expecting.

The better way to tell it to use the right recipe would be:

PREFERRED_VERSION_mesa = "7.9"

(assuming the recipe is called mesa)

It would be easier to help if we had some logs and more information
about what you're trying to do though, I'm just having to guess.

Cheers,

Richard



