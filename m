Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0026E00B66; Sat, 24 Oct 2015 14:32:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7489EE00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 14:32:38 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 24 Oct 2015 14:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,193,1444719600"; d="scan'208";a="818658826"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.11.48])
	by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2015 14:32:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 24 Oct 2015 22:32:36 +0100
Message-ID: <5879328.63HBpW5fi6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAK18fxE5L0e9Mz-a-90K0Rs5GSkXfOvvc0JHbf2UR+aF15u-=w@mail.gmail.com>
References: <DUB122-W3822DB1A9BC96901F1DF0924B0@phx.gbl>
	<560E7269.6090903@gmail.com>
	<CAK18fxE5L0e9Mz-a-90K0Rs5GSkXfOvvc0JHbf2UR+aF15u-=w@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [linux-yocto] [raspberryp2] Error during the build of linux kernel
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
X-List-Received-Date: Sat, 24 Oct 2015 21:32:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 24 October 2015 23:29:28 Andrei Gherzan wrote:
> Hi,
> 
> On Fri, Oct 2, 2015 at 2:02 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > On 10/02/15 07:58, Karim ATIKI wrote:
> >> Hello Trevor,
> >> 
> >> Thanks for your feedback.
> >> You really think that "Fido" is an older release ?
> > 
> > Sorry, I didn't mean to imply it was "old" and therefore should be
> > avoided, I meant to point out that it was something that was released
> > before the switch to gcc5 by default :-)
> > 
> >> Is the 1.9 release of Yocto stable enough yet ? And will this pb be
> >> fixed as well ?
> > 
> > I think the next release will be 2.0. Whether or not it is stable enough
> > is something you will have to evaluate for yourself :-) I'm rather
> > certain this issue is already fixed in master, therefore it should be
> > available for the next release.
> > 
> >> Karim
> > 
> > Did you really mean to reply personally? I've re-CC'ed the list, hope
> > you don't mind.
> 
> First of all please use the correct email subject tag: [rasberrypi].
> Otherwise your email might get overlooked.

You mean [meta-raspberrypi] right?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

