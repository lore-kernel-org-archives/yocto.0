Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD0C3E00C03
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:35:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Apr 2014 09:30:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,872,1389772800"; d="scan'208";a="494252776"
Received: from dmilliga-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.64])
	by orsmga001.jf.intel.com with ESMTP; 16 Apr 2014 09:34:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Katu Txakur <katutxakurra@gmail.com>
Date: Wed, 16 Apr 2014 17:34:42 +0100
Message-ID: <4960605.ayIGcoMIuZ@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <CAM1ZcoUuebe55sDijir5xVqF36KuHmrax8PrqvxHPp0TptaEcg@mail.gmail.com>
References: <CAM1ZcoVDa-mgYRYuPJqJQ4uKHNeVz+btnfFA=FnkD1xxhiFJvw@mail.gmail.com>
	<2723535.xEbZsL9sAs@peggleto-mobl5.ger.corp.intel.com>
	<CAM1ZcoUuebe55sDijir5xVqF36KuHmrax8PrqvxHPp0TptaEcg@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: non empty package group
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
X-List-Received-Date: Wed, 16 Apr 2014 16:35:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 16 April 2014 17:28:45 Katu Txakur wrote:
> 2014-04-16 17:17 GMT+01:00 Paul Eggleton <paul.eggleton@linux.intel.com>:
> > On Wednesday 16 April 2014 17:09:19 Katu Txakur wrote:
> > > yes, it does "inherit packagegroup" and all the packages are installed.
> > > What I would like to have is a mypackagegroup.ipk that I can copy to any
> > > system to install all the files, binaries.... in those recipes using
> > > "opkg install mypackage.ipk"
> > > The problem that I have is that the files, binaries... of the recipes in
> > > RDEPENDS_${PN} are not included in the mypackagegroup.ipk. Do you know
> > > how can I include them?
> > 
> > opkg and similar package managers simply aren't designed to work like
> > that; it's expected that both devices would have access to the same
> > package feeds and therefore you would just install the packagegroup
> > package on each system in the same way.
>
> I see, but I don't want to feed the package from a repo, I just want to
> include all the files in the package.
> I'm now trying to set
> PREFERRED_PROVIDER_each-recipe = "mypackagegroup"
> hoping that it will change the location of the files from their individual
> recipes/packages to the packagegroup.
> I've just cleaned the entire tmp folder, I will find out tomorrow if this
> worked.

It isn't as simple as that, that just selects between providers but there is 
nothing to actually make the "mypackagegroup" recipe actually provide 
anything. The files would need to actually be produced as part of the 
packagegroup recipe, and then it isn't really a packagegroup anymore.

I'm afraid our system just isn't designed to work this way. I'm sure it could 
be made to, but it would require some additional work.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

