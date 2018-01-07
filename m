Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A003E00D88; Sun,  7 Jan 2018 04:10:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFA63E008B8
	for <yocto@yoctoproject.org>; Sun,  7 Jan 2018 04:10:44 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Jan 2018 04:10:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,325,1511856000"; 
   d="scan'208";a="8768151"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga008.jf.intel.com with ESMTP; 07 Jan 2018 04:10:43 -0800
To: Matt Schepers <mschepers@telspandata.com>
References: <CY1PR0401MB1340EE57B6571F238B64B7DFB01C0@CY1PR0401MB1340.namprd04.prod.outlook.com>
	<51e6ac82-e6f3-2bc4-8758-ac1c0fdcaacf@linux.intel.com>
	<63A4BEEE-D99F-4B1F-A18F-9D5085B4917E@telspandata.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <8e0714cd-97e9-6980-2128-1ce6fb0c7b4a@linux.intel.com>
Date: Sun, 7 Jan 2018 14:10:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <63A4BEEE-D99F-4B1F-A18F-9D5085B4917E@telspandata.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rdepends = "python3-modules" in recipe does not install python3-modules in image
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
X-List-Received-Date: Sun, 07 Jan 2018 12:10:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/06/2018 08:00 PM, Matt Schepers wrote:
> How do I check what PN is set to? I can see users-dbg.rpm and 
> users-doc.rpm in the rpm folder. The recipe name is users.bb

If the recipe is named users, then PN is most likely users as well.

-doc and -dbg are supplementary packages. What is the main package 
called? You can look for it in the rpm directory for example.

Alex

