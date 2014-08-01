Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F270E005BB; Fri,  1 Aug 2014 02:56:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC8CAE0056A
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 02:56:09 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id A0CEF27E04D;
	Fri,  1 Aug 2014 09:56:06 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 7zHLH2q0j7eI; Fri,  1 Aug 2014 09:56:05 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 02E3627E031;
	Fri,  1 Aug 2014 09:56:04 +0000 (UTC)
Message-ID: <53DB6430.8090608@dynamicdevices.co.uk>
Date: Fri, 01 Aug 2014 10:56:00 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: ronan.lemartret@open.eurogiciel.org
References: <53DA58C9.50705@open.eurogiciel.org>
In-Reply-To: <53DA58C9.50705@open.eurogiciel.org>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: Build Tizen with yocto work-flow
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
X-List-Received-Date: Fri, 01 Aug 2014 09:56:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 31/07/2014 15:55, ronan wrote:
> Hi all,
> presently we are working on a project "Tizen on Yocto" that provides
> an alternative to gbs tools or OBS.
>     - https://wiki.tizen.org/wiki/Tizen_on_yocto
>
> We are glad to announce the first release 0.1 of our project.
>
> The main features as the same found in Tizen common:
> - Smack security
> - Pure wayland environment, with tz-launcher
> - Crosswalk
> - Multi-user support
> - ...
>
> We would like to share this project with Tizen and Yocto communities.
>
> If you are interested to build Tizen with yocto, just follow this link:
>     - https://wiki.tizen.org/wiki/Build_Tizen_with_Yocto
>
> If you have any question or issue feel free to contact us, on the
> Tizen mailing list (dev@lists.tizen.org) .
>
> Here a link to the yocto project:
>     - https://www.yoctoproject.org/
>
>

Hi Ronan,

I'm interested in trying this out. Presumably it should be trivial to
add Mono support by pulling in meta-mono?

Have you looked at this on ARM target platforms at all? e.g. i.MX6 ?

Regards,

Alex


