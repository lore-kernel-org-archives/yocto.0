Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98B23E00751; Mon,  5 Jan 2015 14:14:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37958E004F2
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 14:14:02 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2015 14:14:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,702,1413270000"; d="scan'208";a="632871680"
Received: from vgannu-mobl2.amr.corp.intel.com (HELO [10.254.107.145])
	([10.254.107.145])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2015 14:14:01 -0800
Message-ID: <1420496041.8591.17.camel@picadillo>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Mon, 05 Jan 2015 16:14:01 -0600
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E908CE@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1412301317080.7369@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E908CE@ORSMSX101.amr.corp.intel.com>
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BSP guide refers to meta-fri2 as example for binary/ data, it has none
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
X-List-Received-Date: Mon, 05 Jan 2015 22:14:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2015-01-05 at 21:44 +0000, Rifenbark, Scott M wrote:
> 
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> >Sent: Tuesday, December 30, 2014 10:20 AM
> >To: Yocto discussion list
> >Subject: [yocto] BSP guide refers to meta-fri2 as example for binary/ data, it
> >has none
> >
> >
> >  in sec 1.3.1 of BSP guide, there is an explanation of the README.sources file.
> >first, the text suggests that file is mandatory:
> >
> >"You must include a README.sources in the meta-bsp_name directory."
> 
> I understood that for a released BSP to be considered Yocto-compliant, the 
> README.sources files is a requirement.
> >

Right, README.sources refers to the sources used to generate the
binaries in a released BSP e.g. the release tarballs on the Yocto BSP
Downloads page(s).

> >however, as i read it, it's really only necessary when a layer provides some
> >binary content in the binary/ subdirectory. the guide then goes on to claim
> >that the meta-fri2 layer does just that, but i see no binary content in that layer
> >-- in fact, none of the meta-intel sublayers appear to come with binary
> >content. so perhaps that part of the guide can be updated to refer to an
> >appropriate layer.
> 
> The wording here does imply that the sources are the ones used to
> generate the images that would be in the "binary/" directory.  Can
> someone tell me if it would be more accurate to state that the
> README.sources file simply indicates where the sources to build the
> BSP are period... regardless of whether or not any binaries are
> included in that directory?  Knowing that would help me make sure this
> section is not mis-leading.  Also, knowing that would help me choose
> an appropriate example to point to for the README.sources file.
> 

No. the README.sources indicate what was actually used to build the
images, which can and do contain much more than what is specified by the
recipes in the BSP layer.

So README.sources is meaningless if there are no binaries in /binary,
and the layer itself may have no /binary directory or README.sources
until a tarball is generated for release, which generation might be done
by the release process instead.

Again, this all refers to released BSPs, and if e.g. meta-fri2 doesn't
have these in the meta-intel git repo, any meta-fri2 released BSP
certainly does.

hth,

Tom

 

> >
> >rday
> >
> >--
> >
> >===========================================================
> >=============
> >Robert P. J. Day                                 Ottawa, Ontario, CANADA
> >                        http://crashcourse.ca
> >
> >Twitter:                                       http://twitter.com/rpjday
> >LinkedIn:                               http://ca.linkedin.com/in/rpjday
> >===========================================================
> >=============
> >--
> >_______________________________________________
> >yocto mailing list
> >yocto@yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/yocto



