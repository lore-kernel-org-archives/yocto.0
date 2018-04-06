Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B81CDE00BF7; Thu,  5 Apr 2018 21:52:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D42EE005A9
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 21:52:09 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Apr 2018 21:52:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,413,1517904000"; d="scan'208";a="31461073"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.16.247])
	([10.221.16.247])
	by orsmga008.jf.intel.com with ESMTP; 05 Apr 2018 21:52:08 -0700
To: Raymond Yeung <rksyeung@hotmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <5e7c67e4-3f79-aece-0d1b-a1494acda442@intel.com>
Date: Fri, 6 Apr 2018 12:52:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
Subject: Re: Adding debug output in recipe
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
X-List-Received-Date: Fri, 06 Apr 2018 04:52:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 04/05/2018 03:33 PM, Raymond Yeung wrote:
> Is there a way to add simple debug output (ideally don't need to control
> debug level) to echo out values of variables?  I tried the bb.xxx
> variants, but couldn't get them to work.
> 

To find out what a variable is being set to, you can try:

bitbake -e <recipename>

Please see:

https://wiki.yoctoproject.org/wiki/Technical_FAQ#I_set_a_variable_but_it_doesn.27t_seem_to_be_having_an_effect.2C_how_do_I_fix_this.3F

Is that what you were looking for?

