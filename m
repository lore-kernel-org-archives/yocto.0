Return-Path: <richard.purdie@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8982E00CA2; Mon, 21 Aug 2017 13:44:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DC22E00B01
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 13:44:02 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Aug 2017 13:44:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,409,1498546800"; d="scan'208";a="142316013"
Received: from doktawie-mobl2.ger.corp.intel.com (HELO hex) ([10.252.11.41])
	by fmsmga005.fm.intel.com with ESMTP; 21 Aug 2017 13:43:56 -0700
Message-ID: <1503348235.32591.69.camel@intel.com>
From: Richard Purdie <richard.purdie@intel.com>
To: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 21 Aug 2017 21:43:55 +0100
In-Reply-To: <0A5D9A624DF90343892F8F3FE7DE525A16A36FCE@fmsmsx101.amr.corp.intel.com>
References: <1503338452.584579.56219@fedora25.yocto.io>
	<0A5D9A624DF90343892F8F3FE7DE525A16A36FCE@fmsmsx101.amr.corp.intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>
Subject: Re: Release Candidate Build for yocto-2.3.1. now available.
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
X-List-Received-Date: Mon, 21 Aug 2017 20:44:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-08-21 at 12:03 -0700, Perez Carranza, Jose wrote:
> This mail is kind of strange, artifacts are not published, there are
> not rc specified and afaiu we worked on QA for pyro 2.3.1 last
> month. 
> 
> Can anyone clarify this? 

The eSDK artefacts in 2.3.1 were broken and its had to be rebuilt as
they were not functional. We're having some issues with the rebuilds
too :(.

Cheers,

Richard


