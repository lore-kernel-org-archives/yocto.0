Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2969FE00349; Wed,  2 Dec 2015 12:12:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06808E00349
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 12:12:54 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2015 12:12:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,374,1444719600"; d="scan'208";a="865270077"
Received: from lilenlim-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.174.188])
	by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2015 12:12:34 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: kris duff <t_dufff@yahoo.ca>
Date: Thu, 03 Dec 2015 09:12:31 +1300
Message-ID: <2594672.lHqPTbpoNL@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <1277413665.13071775.1449064911230.JavaMail.yahoo@mail.yahoo.com>
References: <1277413665.13071775.1449064911230.JavaMail.yahoo.ref@mail.yahoo.com>
	<1277413665.13071775.1449064911230.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Where to set preferred_version / preferred_provider
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
X-List-Received-Date: Wed, 02 Dec 2015 20:12:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Kris,

On Wed, 02 Dec 2015 14:01:50 kris duff wrote:
> I am using webmin 1.620 on my image (a custom recipe in my own meta layer).
> When I have upgraded my yocto revision to dizzy, a new webmin version has
> appeared in the meta-openembedded layer (the version is 1.700) this version
> seems not to work (I am unable to start it using systemctl and when I try
> to add a webmin.service in a bbappend it fails).

Can you provide more detail on this? We'd really like the shared webmin recipe 
to work properly, if there's an issue we should try to fix it there.

> I have tried to put the
> instruction PREFERRED_VERSION_webmin = "1.620" in my meta layer
> conf/layer.conf but I can't make it to work. When I add PREFERRED_VERSION
> and trying to bitbake my image, I receive a message telling me that the
> image have to install 2 version of the same package. (probably because the
> package is present in multiple meta layer) 

Can you please paste in the exact message?

> I also tried to add a version
> suffix in my image (webmin-1.620 or webmin_1.620 and I always get an error
> telling me that this package is not found.). Then I would like to try
> PREFERED_PROVIDER_ but I don't understand how this command should work with
> webmin. For now, I have removed the webmin_1.700.bb file but, this is not a
> good solution. Any idea ?

PREFERRED_VERSION is the correct way to do this. The proper place to set 
PREFERRED_VERSION_webmin would be in your custom distro config (assuming you 
have one - which you really should if you are doing anything more than 
experimenting.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

