Return-Path: <denis@denix.org>
Received: from vms173019pub.verizon.net (vms173019pub.verizon.net
	[206.46.173.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63B5DE00BB7
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 08:49:38 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173019.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N41005P82MPS930@vms173019.mailsrvcs.net> for
	yocto@yoctoproject.org; Mon, 14 Apr 2014 10:49:38 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 7A3CF20182; Mon,
	14 Apr 2014 11:49:37 -0400 (EDT)
Date: Mon, 14 Apr 2014 11:49:37 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Message-id: <20140414154937.GA3370@denix.org>
References: <CAPhnLPDLvgMCN_e050a4sYWh=n=ukZMCjkuTskVWC2XWUd0oJQ@mail.gmail.com>
MIME-version: 1.0
In-reply-to: <CAPhnLPDLvgMCN_e050a4sYWh=n=ukZMCjkuTskVWC2XWUd0oJQ@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: New RC for 1.6.
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
X-List-Received-Date: Mon, 14 Apr 2014 15:49:38 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Thu, Apr 10, 2014 at 10:15:49PM -0700, Flanagan, Elizabeth wrote:
> All,
> 
> A few much needed bug fixes came in to fix some of the issues we saw
> with rc3. We decided that we should just roll and rc4. Please begin
> testing this as soon as possible.
> 
> We're seeing one issue on the world build:
> 
> http://autobuilder.yoctoproject.org/main/builders/nightly-world/builds/42/steps/BuildImages/logs/stdio
> 
> but as this produces no published artifacts, I think we're ok with at
> least the release artifacts.
> 
> http://autobuilder.yoctoproject.org/pub/releases/yocto-1.6_M5.rc4
> 
> bitbake bb4980c63db386ce7d30d9a6b86e9f3861b3bc3a
> eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
> eclipse-poky-kepler 1dfe1d2f1322b5fda8e1a7637c447b0e060efb3e
> meta-fsl-arm d4316faef78ceb01ff023579e15110939ec69408
> meta-fsl-ppc c4fa1b431f4efc4982a168119db95236cfa8cad3
> meta-intel db84acfc8d9ed8dccd4a79de39fee337bc729662
> meta-minnow 7bdcd1140b729598bae6246a4bbc21c3950aadd8
> meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
> oecore dca1b4f073fff740364f066f6a68bb3c8697b7a6
> poky a0958261265049904fd78a2ba0198d46e5e65ea9

And the question I have is how one gets his own layers into Yocto 
autobuilder?

-- 
Denys

