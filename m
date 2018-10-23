Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 245CDE00901; Tue, 23 Oct 2018 13:24:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9247E008D7
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 13:24:52 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2018 13:24:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,417,1534834800"; d="scan'208";a="268186192"
Received: from mananrde-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.144.77])
	by orsmga005.jf.intel.com with ESMTP; 23 Oct 2018 13:24:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jon Mason <jdmason@kudzu.us>
Date: Wed, 24 Oct 2018 09:24:45 +1300
Message-ID: <3993355.W3q9HHZT7X@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <CAPoiz9wwT2poZB=Yyg9Bs9MMK3OfPGaAtLR123w047erg6b2Cw@mail.gmail.com>
References: <CAPoiz9wwT2poZB=Yyg9Bs9MMK3OfPGaAtLR123w047erg6b2Cw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: NAME missing in mpc8315e-rdb.conf
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
X-List-Received-Date: Tue, 23 Oct 2018 20:24:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 23 October 2018 11:12:34 PM NZDT Jon Mason wrote:
> A quick grep over all of the native config files shows that of all the
> "#@TYPE: Machine", only one lacks a "#@NAME", mpc8315e-rdb.conf.
> 
> It appears that the file OE version of the file has a real name and
> description.  See
> http://git.openembedded.org/openembedded/plain/conf/machine/mpc8315e-rdb.conf
> 
> Is there a reason to not at least copy this and have it provide some
> useful information?

Yes please - this would show up in the layer index so it is worth having:

http://layers.openembedded.org/layerindex/branch/master/machines/?
q=mpc8315e&search=1

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



