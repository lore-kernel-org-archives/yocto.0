Return-Path: <remco+vogels@beryllium.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09421E00D42; Fri, 27 Oct 2017 01:35:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from treon.beryllium.net (treon.beryllium.net [5.135.167.165])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4267AE00D40
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 01:35:29 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by treon.beryllium.net (Postfix) with ESMTP id A2031A61;
	Fri, 27 Oct 2017 10:35:28 +0200 (CEST)
X-Virus-Scanned: Ubuntu amavisd-new at treon.beryllium.net
Received: from treon.beryllium.net ([127.0.0.1])
	by localhost (treon.beryllium.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lYl0rk2N-9bV; Fri, 27 Oct 2017 10:35:27 +0200 (CEST)
Received: from webmail.beryllium.net (localhost [IPv6:::1])
	by treon.beryllium.net (Postfix) with ESMTP id C0372A4D;
	Fri, 27 Oct 2017 10:35:27 +0200 (CEST)
MIME-Version: 1.0
Date: Fri, 27 Oct 2017 10:35:27 +0200
From: Remco Poelstra <remco+vogels@beryllium.net>
To: Khem Raj <raj.khem@gmail.com>
Organization: Vogel's Products B.V.
In-Reply-To: <CAMKF1spuHyhrDty_J0ECmAPYss6S=uv1M8PUV==Eew+9DGfF2w@mail.gmail.com>
References: <4b2b01b16549fc2c8a21edf445b53ee0@beryllium.net>
	<CAMKF1spuHyhrDty_J0ECmAPYss6S=uv1M8PUV==Eew+9DGfF2w@mail.gmail.com>
Message-ID: <e670015c4ae0e7e6ae764cce0af1b464@beryllium.net>
X-Sender: remco+vogels@beryllium.net
User-Agent: Roundcube Webmail/0.9.5
Cc: yocto@yoctoproject.org
Subject: Re: libcap compile error
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
X-List-Received-Date: Fri, 27 Oct 2017 08:35:32 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Khem Raj schreef op 2017-10-24 18:22:
> it seems you might be using uclibc, and xattr is absent in 
> DISTRO_FEATURES, add
> 
> DISTRO_FEATURES_append = " xattr"
> 
> in your conf/local.conf and see if that helps.
> 

Hi,

This did indeed resolve that issue. Unfortunately it didn't take long 
for another compile error to pop up. I'm investigating my options for 
moving to a more modern Yocto release. I hope that will prove to be more 
useable.
Thanks for the suggestion.

Kind regards,

Remco Poelstra


