Return-Path: <laurentiu.palcu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 266BDE008B8; Fri, 31 Oct 2014 08:03:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28E4CE0087D
	for <yocto@yoctoproject.org>; Fri, 31 Oct 2014 08:03:46 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 31 Oct 2014 08:01:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,295,1413270000"; d="scan'208";a="629051497"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.104.113])
	by orsmga002.jf.intel.com with ESMTP; 31 Oct 2014 08:03:44 -0700
Date: Fri, 31 Oct 2014 17:03:44 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Natural Groove <natural_groove@hotmail.fr>
Message-ID: <20141031150343.GD3482@lpalcu-linux>
References: <BLU436-SMTP125444BFE2825F659D2B396929A0@phx.gbl>
MIME-Version: 1.0
In-Reply-To: <BLU436-SMTP125444BFE2825F659D2B396929A0@phx.gbl>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Raspberry b+ support
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
X-List-Received-Date: Fri, 31 Oct 2014 15:03:54 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, Oct 31, 2014 at 01:13:53PM +0100, Natural Groove wrote:
> Hi,
> 
> I am interested in using oe to crossbuild stuff for raspberry pi b+,
> and I wondered if someone already achieved to do this?
> From what I read there are some specifics to deal with, can someone
> help me with setting this up for b+?
FWIW, I own a rpi b+ that I use to automate things in my house and it
works just fine. I'm not aware of any specifics... Just get the
meta-raspberrypi layer from [1] and follow the instructions in the
README file to build your image.

[1] git://git.yoctoproject.org/meta-raspberrypi

laurentiu

> 
> Thanks in advance
> Natural
> 
> ---
> Ce courrier électronique ne contient aucun virus ou logiciel malveillant parce que la protection avast! Antivirus est active.
> http://www.avast.com
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

