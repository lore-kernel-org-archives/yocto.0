Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4247AE00BC3; Mon,  9 Apr 2018 06:55:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC676E009E2
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2018 06:55:23 -0700 (PDT)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Apr 2018 06:55:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,427,1517904000"; d="scan'208";a="49271217"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2018 06:55:21 -0700
Date: Mon, 9 Apr 2018 16:55:52 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: =?iso-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Message-ID: <20180409135552.GA1207@mbabyjoh-desk.ger.corp.intel.com>
References: <20180330084019.18955-1-git@andred.net>
MIME-Version: 1.0
In-Reply-To: <20180330084019.18955-1-git@andred.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH 0/3] Java CA certificates updates
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
X-List-Received-Date: Mon, 09 Apr 2018 13:55:24 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

On Fri, Mar 30, 2018 at 09:40:16AM +0100, André Draszik wrote:
> openjdk-8 and openjre-8 use a trustStore that has nothing to do with
> the system trusted CA certificates as provided by the ca-certificates
> package.
> 
> These patches fix both to use the system CA certificates instead.
> 
> The depend on oe-core patch
>    ca-certificates: use relative symlinks from $ETCCERTSDIR
>    http://lists.openembedded.org/pipermail/openembedded-core/2018-March/149359.html
> to be merged first.

Merged to master-next now. 

Since "ca-certificates-java" relies on "PREFERRED_RPROVIDER_java2-runtime" set to
"OpenJDK-8/OpenJRE-8", we should update the usage instructions in "README" to avoid
confusion.

Thanks and Regards,
Maxin

