Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8EC5E00C44; Wed,  6 Jul 2016 20:41:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62C82E00C1D
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 20:41:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 06 Jul 2016 20:41:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,322,1464678000"; d="scan'208";a="1012231769"
Received: from lynhueyo-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.176.219])
	by orsmga002.jf.intel.com with ESMTP; 06 Jul 2016 20:41:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, Ottavio Campana <o.campana@videotec.com>
Date: Thu, 07 Jul 2016 15:41:08 +1200
Message-ID: <1964715.oqk7be7Eao@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.7-202.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <DB3PR04MB068425514BD2F5F577C7ACE1EE250@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <5637116E3E13BE46B0D936BF364783C1F350A1@MAIA.sede.videotec.com>
	<DB3PR04MB068425514BD2F5F577C7ACE1EE250@DB3PR04MB0684.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: customizing system configuration files in my image
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
X-List-Received-Date: Thu, 07 Jul 2016 03:41:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Fri, 01 Jul 2016 09:55:38 Zhenhua Luo wrote:
> On Fri, 01 Jul 2016 09:11:47 Ottavio Campana wrote:
> > I would like to customize an image I am developing based on core image
> > minimal.
> > 
> > Particularly, I'd like to customize the files /etc/network/interfaces and
> > /etc/inittab .
>
> Usually I do it by adding bbappend of corresponding packages to override
> original files, the interfaces is provided by init-ifupdown, the inittab is
> provided by sysvinit-inittab.
> 
> An example:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-core/in
> it-ifupdown

FYI there is a shortcut to creating these - the "recipetool appendfile" 
command. For example, say you have your desired custom inittab file locally as 
"myinittab" and you want the bbappend to be created in meta-mylayer then you 
would run:

recipetool appendfile meta-mylayer /etc/inittab myinittab

This will automatically determine which recipe is providing the file and how 
to overwrite it with your version. You do need to have built that recipe for 
this to work, but then that will already be the case if you have built the 
image beforehand.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

