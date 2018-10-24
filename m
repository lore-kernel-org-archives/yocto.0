Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72E3DE00AD8; Wed, 24 Oct 2018 13:16:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F05C2E00994
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2018 13:16:18 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Oct 2018 13:16:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,421,1534834800"; d="scan'208";a="103001725"
Received: from aballal-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.69.49])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2018 13:16:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zolee K <zoleelikesdebian@gmail.com>
Date: Thu, 25 Oct 2018 09:16:11 +1300
Message-ID: <5563927.Rnuf27eHl3@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <CAK4Yt2=yFrCDFbuCGAz9=a5nt_gDw8U4VPJ20Y4zbkMF4vL_Qw@mail.gmail.com>
References: <CAK4Yt2=yFrCDFbuCGAz9=a5nt_gDw8U4VPJ20Y4zbkMF4vL_Qw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: adding new layer
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
X-List-Received-Date: Wed, 24 Oct 2018 20:16:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Zoli

On Thursday, 25 October 2018 2:36:31 AM NZDT Zolee K wrote:
> I created a new layer, modified the conf file content according to the
> decumentation:
> # We have a conf and classes directory, add to BBPATH
> BBPATH .= ":${LAYERDIR}"
> 
> # We have recipes-* directories, add to BBFILES
> BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>             ${LAYERDIR}/recipes-*/*/*.bbappend"
> 
> BBFILE_COLLECTIONS += "saxo"
> BBFILE_PATTERN_saxo = "^${LAYERDIR}/"
> BBFILE_PRIORITY_saxo = "4"
> 
> I copied the proftpd folder with a working bbappend file into the meta-saxo
> folder. But during bitbake I got an error massage:
> Warning: No bb files matched BBFILE_PATTERN_saxo
> '^/home/kz/oe-core/build/../stuff/meta-saxo/'
> 
> I played around with the priority without success.
> 
> Do you have any idea what am I doing wrong? I'd like to collect all my
> modifications in 1 layer.

If you have .bbappend file(s) but no .bb files in your layer you would expect 
that message, it's telling you one of the entries in BBFILES is not matching. 
There are several options here:

1) You can ignore the warning (it's just a warning)

2) Remove the .bb entry from BBFILES in meta-saxo/conf/layer.conf (you can add 
it back if and when you need it - of course that does mean you could forget to 
do that and then wonder why adding a .bb file doesn't work)

3) Set BBFILE_PATTERN_IGNORE_EMPTY_saxo = "1" to disable the warning.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



