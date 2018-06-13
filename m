Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F9F4E03046; Tue, 12 Jun 2018 19:04:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 840C4E03044
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 19:04:34 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jun 2018 19:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,217,1526367600"; d="scan'208";a="64090635"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.20.122])
	([10.221.20.122])
	by orsmga001.jf.intel.com with ESMTP; 12 Jun 2018 19:04:33 -0700
To: Paul Knopf <pauldotknopf@gmail.com>, yocto@yoctoproject.org
References: <CAKmWj-1Uks-O3HhP016_qhtk-a_dhv=39zMkJKdebkuBPhhifQ@mail.gmail.com>
	<CAKmWj-3-=praP1s0047GE_P4D=fSA57TpJe77ZXHSZLZCuy4uw@mail.gmail.com>
	<CAKmWj-2NHyF7qKT5vKvVL1KoGEenCQzMPZL4Cyw2BMH_RN3ihw@mail.gmail.com>
	<CAKmWj-04G9Ar83SmsZo+_U-UZ=AnreREXqjPYf1YUR7eL+Nbkw@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <9d56f608-82a0-6b4d-6594-2286d8126d38@intel.com>
Date: Wed, 13 Jun 2018 10:04:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAKmWj-04G9Ar83SmsZo+_U-UZ=AnreREXqjPYf1YUR7eL+Nbkw@mail.gmail.com>
Subject: Re: Patch for custom imager plugin in wic.
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
X-List-Received-Date: Wed, 13 Jun 2018 02:04:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 06/13/2018 02:47 AM, Paul Knopf wrote:
> From 136d6214b6fc2c1118dac5b7f3e029ed006fab8a Mon Sep 17 00:00:00 2001
> From: Paul Knopf <pauldotknopf@gmail.com <mailto:pauldotknopf@gmail.com>>
> Date: Mon, 21 May 2018 16:56:51 -0400
> Subject: [PATCH] Support for changing the imager used in wic.
> 
> ---
>  scripts/lib/wic/engine.py | 2 +-
>  scripts/wic               | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)

Patches to OE-core should be sent to
openembedded-core@lists.openembedded.org. Are you using a custom imager
plugin?

