Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2087CE008F5; Sun, 28 Dec 2014 04:32:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9C3CE00756
	for <yocto@yoctoproject.org>; Sun, 28 Dec 2014 04:31:59 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 28 Dec 2014 04:29:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,655,1413270000"; d="scan'208";a="661447977"
Received: from apulli-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.17.138])
	by orsmga002.jf.intel.com with ESMTP; 28 Dec 2014 04:31:58 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: openembedded-devel@lists.openembedded.org
Date: Sun, 28 Dec 2014 12:31:57 +0000
Message-ID: <2843303.CPYcjsZDpv@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.7-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <6010322.On4bLv5MV8@peggleto-mobl5.ger.corp.intel.com>
References: <1859515.Hd60QW1tn7@peggleto-mobl5.ger.corp.intel.com>
	<6010322.On4bLv5MV8@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [oe] meta-java layer maintainership
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
X-List-Received-Date: Sun, 28 Dec 2014 12:32:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 01 December 2014 11:57:10 Paul Eggleton wrote:
> On Monday 01 December 2014 10:16:24 Paul Eggleton wrote:
> > Henning would like some folks to help him maintain the meta-java layer,
> > which contains OpenJDK and other open source Java-related components.
> > 
> > An ideal candidate maintainer would:
> >  * Have an interest in maintaining the Java-related recipes in the layer
> >  * Be willing to review and merge patches from the community
> > 
> > If you'd like to help out here (and responsibility can be shared by more
> > than one person, it doesn't just have to be one) then please reply here or
> > in private and I'll arrange for you to get access to the repository.
> 
> Looks like we now have enough people to take care of this, thanks everyone!

I'm not sure if this ever got announced, but we now have the following 
maintainers for meta-java:

  Henning Heinold <henning@itconsulting-heinold.de>
  Mario Domenech Goulart <mario@ossystems.com.br>
  Maxin John <maxin.john@enea.com>
  Otavio Salvador <otavio@ossystems.com.br>

At the same time, the layer has also been moved to the following location:

  http://git.yoctoproject.org/cgit/cgit.cgi/meta-java/

I've just updated the OE layer index accordingly. Please update your local 
clones using something similar to the following command:

  git remote set-url origin git://git.yoctoproject.org/meta-java

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

