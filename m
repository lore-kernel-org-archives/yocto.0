Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00F49E011D1
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 15:58:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2QMwFuj001924;
	Mon, 26 Mar 2012 23:58:15 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 00541-08; Mon, 26 Mar 2012 23:58:11 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2QMw5xL001917
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 26 Mar 2012 23:58:06 +0100
Message-ID: <1332802684.28414.146.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rudolf Streif <rudolf.streif@linux.com>
Date: Mon, 26 Mar 2012 23:58:04 +0100
In-Reply-To: <CA+gsK-raRiKQ7GHLSy4tAJHJmDardhr8by0A9FGJ7diCYo00Uw@mail.gmail.com>
References: <alpine.DEB.2.02.1203240525230.22364@oneiric>
	<1332589972.27577.1.camel@ted>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945175E22@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-raRiKQ7GHLSy4tAJHJmDardhr8by0A9FGJ7diCYo00Uw@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: tentative list of vars to be dropped from variable glossary
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
X-List-Received-Date: Mon, 26 Mar 2012 22:58:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-03-26 at 12:42 -0700, Rudolf Streif wrote:
> Another variable that seems to be dropped from the latest 1.1.1
> revision of the Reference Manual is BBMASK. In previous versions of
> the manual it was explained that this variable can be used to remove
> packages from images. However, that did not work for me and it did not
> surprise me either. 

BBMASK removes recipes from being parsed. It does not remove them from
images although that would I guess be an indirect result since you could
no longer build them.

> To include a package with an image you will have to make it a
> dependency of that image. If you then hide the recipe of the package
> using BBMASK then you are breaking the dependency and the Bitbake will
> complain with "Nothing provides <package>" because the dependency is
> still there.
>
> I could not think of any other use case for BBMASK in the way it is
> implemented. Are there any?

Its designed so that if you for example didn't care out any *gpe*
recipe, you could exclude them entirely and not even have the parse
overhead.

Its less useful now things are split into layers but nonetheless still
valid syntax.

Cheers,

Richard


