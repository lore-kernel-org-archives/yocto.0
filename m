Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C5E7E00DB5; Wed, 10 Jan 2018 02:36:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0B1BE008FB
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 02:36:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jan 2018 02:36:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,339,1511856000"; 
   d="scan'208";a="9612953"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga008.jf.intel.com with ESMTP; 10 Jan 2018 02:36:46 -0800
To: Matt Schepers <mschepers@telspandata.com>
References: <CY1PR0401MB1340EE57B6571F238B64B7DFB01C0@CY1PR0401MB1340.namprd04.prod.outlook.com>
	<51e6ac82-e6f3-2bc4-8758-ac1c0fdcaacf@linux.intel.com>
	<63A4BEEE-D99F-4B1F-A18F-9D5085B4917E@telspandata.com>
	<8e0714cd-97e9-6980-2128-1ce6fb0c7b4a@linux.intel.com>
	<CY1PR0401MB13409392C7732CE7F482D774B0100@CY1PR0401MB1340.namprd04.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <eb12486f-5a5c-836e-c377-8387aaa4dba7@linux.intel.com>
Date: Wed, 10 Jan 2018 12:36:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CY1PR0401MB13409392C7732CE7F482D774B0100@CY1PR0401MB1340.namprd04.prod.outlook.com>
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
X-List-Received-Date: Wed, 10 Jan 2018 10:36:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/09/2018 08:45 PM, Matt Schepers wrote:
> For this recipe the base package is called users.rpm and I can see it in the RPM. Using 'bitbake users -e | grep PN' I was able to find that PN is also set to users, which seems correct.
> 
> However the recipe does not install python3-modules even though it's specified in RDEPENDS. I can get it to work by forcing python3-modules in the IMAGE_INSTALL variable, but this is not how I expect yocto to work based on the documentation.

Then you need to inspect the user.rpm file using the rpm toolset, and 
find out whether python3-modules is indeed in package dependencies.

Alex

