Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13424E00CF9; Fri, 22 Sep 2017 01:30:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E06D7E00CF2
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 01:30:43 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v8M8Uarw015014
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Fri, 22 Sep 2017 09:30:38 +0100
Message-ID: <1506069036.18640.187.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Svein Seldal <sveinse@seldal.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 22 Sep 2017 09:30:36 +0100
In-Reply-To: <29436fab-d836-536b-d5d9-3cc1fe5a5e85@seldal.com>
References: <01070f8e-6997-8b16-73f3-baea5a58dc8e@seldal.com>
	<1506029779.18640.168.camel@linuxfoundation.org>
	<29436fab-d836-536b-d5d9-3cc1fe5a5e85@seldal.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: Path to current bb-file or layer
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
X-List-Received-Date: Fri, 22 Sep 2017 08:30:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-09-22 at 10:17 +0200, Svein Seldal wrote:
> On 21. sep. 2017 23:36, Richard Purdie wrote:
>  > You mean like ${FILE} ?
>  >
>  > $ bitbake bash -e | grep ^FILE=
>  > FILE="/media/build1/poky/meta/recipes-extended/bash/bash_4.4.bb"
> 
> To me ${FILE} seems to be pointing towards the receipe, and not the 
> current .bbclass file as you'd expect.
> 
> If I put this in local.conf
> 
>      INHERIT += "sp-version"
>      SP_BASEVERSION = "${@read_spbaseversion(d)}"
> 
> And in sp-version.bbclass:
> 
>      def read_spbaseversion(d):
>          bb.warn("SVEIN FILE: ", d.getVar('FILE', False))
>   	return '0'
> 
> If I do bitbake -e, I get
> 
>      WARNING: SVEIN FILE: /home/s/build-sp-
> image/build/conf/bblayers.conf
> 
> Later the read_spbaseversion is used from within recipe (although
> they 
> don't need to as this variable goes into the global scope, but for
> the 
> sake of the demonstration). Then the value being prined is:
> 
> WARNING: /home/s/build-sp-image/meta-sp/sp/sp.bb: SVEIN OPEN: 
> /home/s/build-sp-image/meta-sp/sp/sp.bb
> 
> Hence, ${FILE} seems to point to the current file scope, like a
> recipe, 
> and not any class files that the recipe might take use of.

Its all about when your code is executed. Try putting:

SP_BASEVERSION := "${@read_spbaseversion(d)}"

in the bbclass file. I suspect that will give you the bbclass file
name.

By default everything is deferred expansion so your code would give you
the final .bb as that is the context the code is run in.

Cheers,

Richard

