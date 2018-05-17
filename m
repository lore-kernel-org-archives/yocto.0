Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDFECE009BC; Wed, 16 May 2018 21:19:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EAB1E008D2
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 21:19:30 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 May 2018 21:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,409,1520924400"; d="scan'208";a="224913367"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.23.24])
	([10.221.23.24])
	by orsmga005.jf.intel.com with ESMTP; 16 May 2018 21:19:28 -0700
To: Stefano Cappa <stefano.cappa.ks89@gmail.com>, yocto@yoctoproject.org
References: <CAKRytNwzOzk0N9Z1mg6V2zufrQutWYRrjn7bcbijEa3FwdQH8g@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <b48c3441-8ad6-f718-4ab5-2a3195da2325@intel.com>
Date: Thu, 17 May 2018 12:19:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAKRytNwzOzk0N9Z1mg6V2zufrQutWYRrjn7bcbijEa3FwdQH8g@mail.gmail.com>
Subject: Re: How to modify a meta third party layer sources from my custom layer
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
X-List-Received-Date: Thu, 17 May 2018 04:19:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 05/14/2018 04:58 AM, Stefano Cappa wrote:
> Hello everyone, 
> I'm new to yocto so please don't kill me :). I have a question, probably
> very stupid and simple, but I'm really don't know how to understand this
> so I'm trying to ask to the cummunity.
> 
> I'm using Yocto 2.4 for an hardware with meta-freescale layer to support it.
> However I have to apply some changes. I'm able to build if I
> modify/overwrite and delete some files by myself, but when I try to use
> a custom layer to do that I cannot build, because obviously I don't know
> what I should do.
> 
> My custom layer applies some patches to work and work-shared dirs and
> everything is ok, but I don't understand how to add files and changes to
> my layer to modify meta-freescale sources.
> 
> I can create a fork of that layer, but I prefer to add all changes to my
> layer.
> In particular I need to add some .inc, .bb files into
> /recipes-bsp/u-boot/ of meta-freescale and a folder with some files and
> patches taken from poky/meta/..../u-boot/
> like u-boot-fw-utils-imx_2017.09.bb
> <http://u-boot-fw-utils-imx_2017.09.bb> and u-boot-common_2017.09.inc
> 
> How can I do this from a custom layer? Which is the right procedure?
> 
> Custom layers can modify only work and work-shared dirs content or also
> other layer sources, because that they are executed?
> 

Please take a look at:
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#prioritizing-your-layer

and the sections around it, and see if that answers your question.

