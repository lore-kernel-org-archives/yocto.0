Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE99E01460
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 13:55:38 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-116-162.range81-153.btcentralplus.com
	[81.153.116.162]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 0C4199ADE
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 21:55:36 +0100 (BST)
Message-ID: <50451947.2090401@r-finger.com>
Date: Mon, 03 Sep 2012 21:55:35 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
In-Reply-To: <CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Mon, 03 Sep 2012 20:55:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 03/09/12 21:15, Bruce Ashfield wrote:
> On Mon, Sep 3, 2012 at 4:06 PM, Tomas Frydrych
> So we fix the configuration of the layers .. 

I expect this is not actually that trivial. I think the only way to do
this is properly is for the layer priorities to be respected by all
files in the layer, not just the bb files. No idea how involved that
change would be, or what the side effects would be.


> and meta-ti was supposed to work properly with meta-yocto last I heard.

If properly means 'out of the box', then no; the two layers can be made
to work together, but it's fairly clear that nobody comprehensively
tests that combination at the moment.


> The meta-yocto layer beagleboard configuration is a hardware ARM reference, that
> uses the linux-yocto kernel (policy and version) and is used for the
> project QA on hardware.

I am all for QA, but in this instance your QA procedure breaks things
for the end user. Could you not just call it something else, e.g.,
yocto-qa-arm-reference.conf?

Tomas

