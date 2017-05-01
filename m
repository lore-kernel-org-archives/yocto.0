Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BDBFE00AA2; Mon,  1 May 2017 13:29:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0F5CE00546
	for <yocto@yoctoproject.org>; Mon,  1 May 2017 13:29:45 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 May 2017 13:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,401,1488873600"; d="scan'208";a="963189735"
Received: from lloh4-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.176])
	by orsmga003.jf.intel.com with ESMTP; 01 May 2017 13:29:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Arun Kumar <arunkr24@hotmail.com>
Date: Tue, 02 May 2017 08:29:40 +1200
Message-ID: <1893674.Z6vQr92n9c@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <YQXPR01MB0374DDC32B81E75C018C9E39D8150@YQXPR01MB0374.CANPRD01.PROD.OUTLOOK.COM>
References: <YQXPR01MB0374DDC32B81E75C018C9E39D8150@YQXPR01MB0374.CANPRD01.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: hello world recipe failing at do_patch.
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
X-List-Received-Date: Mon, 01 May 2017 20:29:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Arun,

On Monday, 1 May 2017 8:52:54 AM NZST Arun Kumar wrote:
>      I am starting out with the yocto project. Created a new recipe 
> using the command
> 
>      $ yocto-layer create helloworld
> 
> I added the directory to the bblayers.conf file in my <buiuld_dir>/conf 
> directory. As per my knowledge and article on internet this should be an 
> easy build.
> 
> $ bitbake helloworld
> 
> fails with the following signature.
> 
> //--------------------------------------------------
> 
> Summary: 2 tasks failed:
> /home/beagle/yocto/poky/meta/recipes-extended/texinfo-dummy-native/texinfo-
dummy-native.bb:do_patch
> virtual:native:/home/beagle/yocto/poky/meta/recipes-devtools/gnu-config/gnu-
config_git.bb:do_patch
> //---------------------------------------------------

That's just the summary - what's in the rest of the error message?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

