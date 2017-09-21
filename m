Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8716AE00CB4; Thu, 21 Sep 2017 13:48:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7B00E00C99
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 13:48:51 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga105.jf.intel.com with ESMTP; 21 Sep 2017 13:48:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,426,1500966000"; d="scan'208";a="314807849"
Received: from ytan1-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.70.156])
	by fmsmga004.fm.intel.com with ESMTP; 21 Sep 2017 13:48:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 22 Sep 2017 08:48:43 +1200
Message-ID: <1979255.oHZKlvZ7SS@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAC+thW254MBv1CRC1tRh_hPRNPD=586P53hTPOHPaBE==useTg@mail.gmail.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
	<CAC+thW2OF7qchCxiRk3MgL4PvZ9Yg4xkSidQpO5QDByR-iZMmg@mail.gmail.com>
	<CAC+thW254MBv1CRC1tRh_hPRNPD=586P53hTPOHPaBE==useTg@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eSDK install script failure
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
X-List-Received-Date: Thu, 21 Sep 2017 20:48:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 22 September 2017 1:06:19 AM NZST Andrea Galbusera wrote:
> On Wed, Sep 20, 2017 at 11:26 PM, Andrea Galbusera <gizero@gmail.com> wrote:
> > On Wed, Sep 20, 2017 at 11:54 AM, Paul Eggleton <
> > paul.eggleton@linux.intel.com> wrote:
> >> On Wednesday, 20 September 2017 8:44:22 PM NZST Andrea Galbusera wrote:
> >> > Seeing the errors below while installing an eSDK. This is a routinely
> >> > generated VM that installs the eSDK from installation script. The errors
> >> > appeared with the latest iteration of the eSDK script, which is
> >> generated
> >> > with almost up-to-date revisions from master. Of course I have extra
> >> layers
> >> > in the mix, but none of them apparently had relevant changed since last
> >> > (working) iteration: mostly synching to master branches happened. Can
> >> > anyone help suggesting how to investigate this further? What do those
> >> > unexpected task mean? I'm blocked on releasing this SDK to developers
> >> and
> >> > clues from expert would be very appreciated...
> >> >
> >> > ==> default: Checking sstate mirror object availability...
> >> > ==> default: done.
> >> > ==> default: ERROR: Task python-native.do_fetch attempted to execute
> >> > unexpectedly
> >> > ==> default: ERROR: Task python-native.do_prepare_recipe_sysroot
> >> attempted
> >> > to execute unexpectedly
> >> > ==> default: ERROR: Task python-native.do_unpack attempted to execute
> >> > unexpectedly
> >> > ==> default: ERROR: Task python-native.do_patch attempted to execute
> >> > unexpectedly
> >> > ==> default: ERROR: Task python-native.do_populate_lic attempted to
> >> execute
> >> > unexpectedly and should have been setscened
> >> > ==> default: ERROR: Task python-native.do_configure attempted to execute
> >> > unexpectedly
> >> > ==> default: ERROR: Task python-native.do_compile attempted to execute
> >> > unexpectedly
> >> > ==> default: ERROR: Task python-native.do_install attempted to execute
> >> > unexpectedly
> >> > ==> default: ERROR: Task python-native.do_populate_sysroot attempted to
> >> > execute unexpectedly and should have been setscened
> >> > ==> default: ERROR: SDK preparation failed: error log written to
> >> > /home/vagrant/poky_sdk/preparing_build_system.log
> >> >
> >>
> >> Basically this means that these tasks tried to execute where really the
> >> results should have been able to be restored from sstate.
> >>
> >> The cause of this type of error is one of three things:
> >>
> >> 1) The sstate archive corresponding to a task wasn't able to be fetched
> >> from
> >> the server (for a minimal eSDK) or wasn't present in the installer (for a
> >> full
> >> eSDK - less likely as we basically do a trial run as part of building the
> >> eSDK
> >> in the first place)
> >>
> >> 2) The signature was somehow different to what it should have been.
> >> (Locked
> >> signatures are supposed to guard against this.)
> >>
> >> 3) A task that wasn't expected to execute did execute and thus the sstate
> >> wasn't available.
> >>
> >> Given that this was python-native which I would expect would be a normal
> >> part
> >> of the SDK, I would suspect #1. Is this a minimal or full eSDK (i.e. what
> >> is
> >> SDK_EXT_TYPE set to)?
> >>
> >
> > That was a "full" eSDK. I noticed that the "same" eSDK installer from
> > another build host was not affected and I'm trying to rebuild on the
> > original one with even more recent revision and see if it still happens or
> > not. Failure with the first one was repeatable, hence I suspect an issue at
> > sdk population stage, not during installation.
> 
> Nuking tmp/ and rebuilding with the same revisions of the successful build
> host didn't fix the issue... Same error on installation of the generated
> eSDK. Would you suggest any other investigation step? On my todo list I'd
> put using the sstate from that other build host than nuking local
> sstate-cache/ and going to take a very long coffee break. :-(

Right, so the next step would be looking for the hash for
python-native.do_populate_sysroot in conf/locked_sigs.inc within the failed
SDK install directory and then looking for that in both the sstate-cache
directory within the failed SDK and then in the sstate-cache directory of
the build that built it. I suspect it may not be there, but let me know what
you find.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

