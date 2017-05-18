Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91134E00BBD; Thu, 18 May 2017 06:17:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B83D4E00B43
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 06:17:11 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id EA597260F9C
Message-ID: <1495113422.12055.56.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: Abayiz <abayiz@yahoo.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 18 May 2017 15:17:02 +0200
In-Reply-To: <1879655844.551173.1495108954174@mail.yahoo.com>
References: <853904707.1405328.1495010277595.ref@mail.yahoo.com>
	<853904707.1405328.1495010277595@mail.yahoo.com>
	<1495091834.12055.46.camel@collabora.co.uk>
	<1879655844.551173.1495108954174@mail.yahoo.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: Install Torch7
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
X-List-Received-Date: Thu, 18 May 2017 13:17:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-05-18 at 12:02 +0000, Abayiz wrote:
> Dear Fabien, 
> 
> Thank you very much for your reply. 
> No, I didn't try 'devtool edit-recipe torch' to add dependencies. Actually I didn't know how to
> add them. Is there any way to directly call that .sh file there??
> Could you give me a minimal example to illustrate it? 

Usually we add build dependencies with DEPENDS = "..." and runtime dependencies with RDEPENDS =
"..."

So you need to check dependencies installed by "bash install-deps".
Can you list them? Maybe recipes exists in which case you have to add them to the variable described
above.


> 
> Thank you. 
> 
> 
> 
> On Thursday, May 18, 2017 10:17 AM, Fabien Lahoudere <fabien.lahoudere@collabora.co.uk> wrote:
> 
> 
> On Wed, 2017-05-17 at 08:37 +0000, Abayiz wrote:
> > Dear all, 
> > 
> > I'm quite new to Yocto, I've successfully built qemu and ran helloworld example on it. Now I'm
> > trying to install Torch 7 (https://github.com/torch/torch7) library. What I did is: 
> > 
> > devtool add torch https://github.com/torch/torch7.git
> > devtool build torch
> > 
> > But the build exits with error, in the attachment I share the log file with you. 
> > My host machine runs Ubuntu 16.04 LTS, and Torch7 is successfully running on it. The
> installation
> > of Torch first requires to run the 'bash install-deps' command on Ubuntu. My rough estimation is
> > that Yocto seems like cannot build those dependencies automatically. 
> > 
> > Could someone give any help on it? Installing Torch7 is very important to my project now, thank
> > you in advance. 
> > 
> 
> Do you try "devtool edit-recipe torch" to add dependencies to the recipe and configure "cache
> variables" approprietly?
> 
> 
> > Best, 
> > Abayiz
> 
> > 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 

