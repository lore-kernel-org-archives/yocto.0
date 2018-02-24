Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2547E00E9E; Sat, 24 Feb 2018 07:36:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B79F2E006F3
	for <yocto@yoctoproject.org>; Sat, 24 Feb 2018 07:36:27 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Feb 2018 07:36:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,388,1515484800"; d="scan'208";a="203458605"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.255.132.212])
	([10.255.132.212])
	by orsmga005.jf.intel.com with ESMTP; 24 Feb 2018 07:36:25 -0800
To: "Pulizzotto Alessio (COMAU)" <alessio.pulizzotto@comau.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <dcad044fec2b4e0ab2efbaea4043fe76@MXPA2FGAW.fgremc.it>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <042d7b71-da1c-7f50-e729-c66352edb6cf@intel.com>
Date: Sat, 24 Feb 2018 23:36:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <dcad044fec2b4e0ab2efbaea4043fe76@MXPA2FGAW.fgremc.it>
Subject: Re: Problem in the building phase - Yocto 2.4.1 for Siemens IoT 2040 (Intel Quark)
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
X-List-Received-Date: Sat, 24 Feb 2018 15:36:28 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/22/2018 07:59 PM, Pulizzotto Alessio (COMAU) wrote:
> Hello,
> 
>  
> 
> I’m writing you because I have some problems with the building of an
> 2.4.1 image of the Yocto.
> 
>  
> 
> I am using a Siemens IoT 2040 hardware witch have an intel quark cpu.
> 
>  
> 
> My error is the follow, in the “bitbake name-image”:
> 
>  
> 
> “ExpansionError during parsing
> ***/poky/meta-java/recipies-extended/xmlpull/xmlpull_1.1.3.4c.bb”
> 
>  
> 
> And at the end:
> 
>  
> 
> “module bb.data has no attribute ‘getVar’”

This error suggests that you are using an older version of meta-java.
You should try to use the latest.

Thanks,
Anuj

