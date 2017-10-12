Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A5F7E00D00; Thu, 12 Oct 2017 07:03:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9D58E00CEC
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 07:03:43 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Oct 2017 07:03:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,366,1503385200"; d="scan'208";a="159749051"
Received: from yshteyn-mobl.ger.corp.intel.com (HELO
	jlock-mobl3.ger.corp.intel.com) ([10.252.6.189])
	by orsmga005.jf.intel.com with ESMTP; 12 Oct 2017 07:03:42 -0700
To: yocto@yoctoproject.org
References: <CAAkg2-mXCpkQuy1kc5wFD3+PbuA96C1f_XLzJHUtqDep=_gfUw@mail.gmail.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <81a0ce37-82ec-80ee-ab22-ee3e201b0ec5@linux.intel.com>
Date: Thu, 12 Oct 2017 15:03:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <CAAkg2-mXCpkQuy1kc5wFD3+PbuA96C1f_XLzJHUtqDep=_gfUw@mail.gmail.com>
Subject: Re: Navigating the layer labyrinth
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
X-List-Received-Date: Thu, 12 Oct 2017 14:03:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 12/10/17 10:34, Bernd wrote:
> I am a new user for a few weeks now, trying to make a customized image
> for a toradex colibri-vf module, so far I have succeeded in the
> following disciplines:
> 
> * adding the 3rd party layers that I need
> * making my own layers
> * using a .bbappend to patch the device tree
> * using a .bbappend to workaround a bug(?) in one of the freescale layers
> * writing my own recipe to install a python script
> * writing recipes for pulling additional python packages with pypi and
> setuptools3
> * writing my own image recipe
> * making it boot and run on the target platform
> 
> During this learning experience I have made the following observations
> of circumstances that made it especially hard for me to get things
> done, I'm not yet really sure if this is a documentation issue or if
> it is really a missing feature but I feel I could have had a much
> *much* easier time learning and understanding the concepts and
> relationships and the inner workings of existing layers upon which I
> want to build my system if the following things were possible (and/or
> if they are already possible they should be documented in the very
> first chapter of the documentation):
> 
> * Finding the *file path* of an existing recipe (or append file or
> class) *by its name* and also all existing .bbappends for it, i
> imagine something simple like bitbake --show-paths foo-bar would
> output me the small list of absolute paths of recipe files by the name
> foo-bar and all matching .bbappend files in the order in which they
> would be applied, it would show me only this small list of paths and
> not dump 100kb of unrelated information along with it. This would be
> incredibly helpful when I need to inspect an existing recipe in order
> to understand how I can bbappend it or even just to see and understand
> what it actually does.

bitbake-layers supports at least some of this functionality:

$ bitbake-layers -h
NOTE: Starting bitbake server...
usage: bitbake-layers [-d] [-q] [-F] [--color COLOR] [-h] <subcommand> ...

BitBake layers utility

optional arguments:
   -d, --debug           Enable debug output
   -q, --quiet           Print only errors
   -F, --force           Force add without recipe parse verification
   --color COLOR         Colorize output (where COLOR is auto, always, 
never)
   -h, --help            show this help message and exit

subcommands:
   <subcommand>
     add-layer           Add a layer to bblayers.conf.
     remove-layer        Remove a layer from bblayers.conf.
     flatten             flatten layer configuration into a separate output
                         directory.
     layerindex-fetch    Fetches a layer from a layer index along with its
                         dependent layers, and adds them to 
conf/bblayers.conf.
     layerindex-show-depends
                         Find layer dependencies from layer index.
     show-layers         show current configured layers.
     show-overlayed      list overlayed recipes (where the same recipe 
exists
                         in another layer)
     show-recipes        list available recipes, showing the layer they are
                         provided by
     show-appends        list bbappend files and recipe files they apply to
     show-cross-depends  Show dependencies between recipes that cross layer
                         boundaries.
     create-layer        Create a basic layer

Use bitbake-layers <subcommand> --help to get help on a specific command

Thanks,

Joshua

