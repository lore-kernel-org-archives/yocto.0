Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA86DE00ADF; Tue,  1 Dec 2015 10:35:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3999E00748
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 10:35:26 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2015 10:35:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,369,1444719600"; d="scan'208";a="832033831"
Received: from lsandov1-mob1-linux.zpn.intel.com (HELO [10.219.5.140])
	([10.219.5.140])
	by orsmga001.jf.intel.com with ESMTP; 01 Dec 2015 10:35:02 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CA+-BmJabNsV5etkL=zrc_wt+XXgR91NU0vekwdEUfNsqsZif1g@mail.gmail.com>
	<565DAFE7.2060808@linux.intel.com>
	<2445935.qXt4qp3rbC@peggleto-mobl.ger.corp.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <565DE909.80007@linux.intel.com>
Date: Tue, 1 Dec 2015 12:38:01 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <2445935.qXt4qp3rbC@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>,
	Ayoub Zaki <ayoub.zaki@googlemail.com>
Subject: Re: FEED_DEPLOYDIR_BASE_URI does not work
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
X-List-Received-Date: Tue, 01 Dec 2015 18:35:31 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 12/01/2015 12:16 PM, Paul Eggleton wrote:
> On Tue, 01 Dec 2015 08:34:15 Leonardo Sandoval wrote:
>> On 12/01/2015 03:49 AM, Ayoub Zaki wrote:
>>> |Hello,
>>>
>>> Setting FEED_DEPLOYDIR_BASE_URI
>>> <http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-FEE
>>> D_DEPLOYDIR_BASE_URI> in local.conf as specified in the yocto manual does
>>> NOT generate any /etc/opkg/base-feeds.conf in the root of the target
>>> filesystem!
>>> Is ist a known bug ? I'm using jethro version with opkg as package
>>> manager.
>> Looks like a bug, so file a bug on bugzilla.yoctoproject.org.
>>
>> Have you tried setting the variables named
>> PACKAGE_FEED_[URIS|BASE_PATHS|ARCHS] ?
>>
>> http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#var-PACKAG
>> E_FEED_URIS
> Leo - I'm not sure your patch implementing this functionality actually got
> merged in the end, though I suspect the corresponding changes to the manual
> did in advance (if that's the case, that shouldn't have happened). Can you
> double-check this?
Paul, you are right, patch is not yet on master but documentation is 
already there. I will reply the original email so it is taken into 
account for the next merge.

>
> Thanks,
> Paul
>


