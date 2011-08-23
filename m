Return-Path: <stefan@datenfreihafen.org>
Received: from sirius.lasnet.de (sirius.lasnet.de [78.47.116.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0F18E011C6
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 04:49:07 -0700 (PDT)
Received: from [2001:638:602:1183:21f:16ff:fe0d:7d41] (helo=excalibur.local)
	by sirius.lasnet.de with esmtpsa 
	(Cipher TLS1.0:RSA_AES_256_CBC_SHA1:32) (Exim 4.69 #1)
	id 1QvpTc-0007bc-Vh by authid <stefan@sostec.de> with srv_auth_cram_md5
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 13:49:06 +0200
Received: from stefan by excalibur.local with local (Exim 4.76)
	(envelope-from <stefan@excalibur.local>) id 1QvpTc-0008UO-5y
	for yocto@yoctoproject.org; Tue, 23 Aug 2011 13:49:04 +0200
Date: Tue, 23 Aug 2011 13:49:04 +0200
From: Stefan Schmidt <stefan@datenfreihafen.org>
To: yocto@yoctoproject.org
Message-ID: <20110823114904.GF27712@excalibur.local>
References: <1314099270.12908.5.camel@laptop>
MIME-Version: 1.0
In-Reply-To: <1314099270.12908.5.camel@laptop>
X-Mailer: Mutt http://www.mutt.org/
X-KeyID: 0xDDF51665
X-Website: http://www.datenfreihafen.org/
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Checker-Version: SpamAssassin 3.2.5 (2008-06-10) on sirius.lasnet.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=AWL,BAYES_00,NO_RELAYS
	autolearn=ham version=3.2.5
Subject: Re: bitbake: pause build ?
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
X-List-Received-Date: Tue, 23 Aug 2011 11:49:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello.

On Tue, 2011-08-23 at 13:34, Lukas-David Gorris wrote:
> 
> While in the process of compiling a large image I had to do some cpu/mem
> intensive stuff on the build machine. Usually I would just cancel the
> build, letting the running tasks finish and then start the build again
> when done. This works well but the downside is that unnecessary log data
> will show and that the metadata will have to be parsed again when you
> start over.
> 
> So I thought why not add a 'pause mode' to bitbake ?

What stops you from stopping bitbake with CTRL+Z and getting it back
in foreground with fg after you finished the other things you want to
do.

regards
Stefan Schmidt

