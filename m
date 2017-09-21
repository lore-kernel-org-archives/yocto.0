Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D68BCE00CEF; Thu, 21 Sep 2017 14:36:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD946E00C99
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 14:36:26 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v8LLaJu4013428
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Thu, 21 Sep 2017 22:36:20 +0100
Message-ID: <1506029779.18640.168.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Svein Seldal <sveinse@seldal.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 21 Sep 2017 22:36:19 +0100
In-Reply-To: <01070f8e-6997-8b16-73f3-baea5a58dc8e@seldal.com>
References: <01070f8e-6997-8b16-73f3-baea5a58dc8e@seldal.com>
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
X-List-Received-Date: Thu, 21 Sep 2017 21:36:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-09-21 at 22:00 +0200, Svein Seldal wrote:
> To determine a image version, I'd like to read a VERSION file which
> is 
> located in the root of the layer. (Per our development procedure.)
> I'd 
> like to read it from a bbclass file. However I seem to be unable to
> find 
> any methods or variables to find a useful path to either the current 
> bb-file or the root of the layer.
> 
> The only way I have found is to parse through BBLAYERS and guess at
> what 
> my own layer is of those, and then use the found to access the file.
> But 
> this feels very wacky.
> 
> Is there a reason why bitbake doesn't have a variable path reference
> to the current file?

You mean like ${FILE} ?

$ bitbake bash -e | grep ^FILE=
FILE="/media/build1/poky/meta/recipes-extended/bash/bash_4.4.bb"

Cheers,

Richard

