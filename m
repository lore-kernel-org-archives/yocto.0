Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82380E00C38; Mon, 12 Dec 2016 06:58:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2655DE00C31
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 06:58:45 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga105.jf.intel.com with ESMTP; 12 Dec 2016 06:58:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,336,1477983600"; d="scan'208";a="1080772686"
Received: from unknown (HELO [10.219.5.165]) ([10.219.5.165])
	by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2016 06:58:44 -0800
To: Stefano Babic <sbabic@denx.de>, Patrick Ohly <patrick.ohly@intel.com>,
	Kristian Amlie <kristian.amlie@mender.io>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
	<30a3dd41-2e1c-8658-b83d-8632944d1709@denx.de>
	<1481017522.17535.38.camel@intel.com>
	<8e1fdcb8-d9fb-0e51-2e21-91e7e7c6f450@linux.intel.com>
	<c3ce9528-f2eb-dd3f-cc68-331435aeda35@balister.org>
	<16ca1a50-f46a-196f-66b8-91f0d14f59c2@denx.de>
	<1481296433.17535.170.camel@intel.com>
	<4515f6e0-a99b-09ae-e233-786ceed4847d@denx.de>
From: Mariano Lopez <mariano.lopez@linux.intel.com>
Message-ID: <f62528f8-aadc-2542-2d2a-96faaa5af01f@linux.intel.com>
Date: Mon, 12 Dec 2016 08:59:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.0
MIME-Version: 1.0
In-Reply-To: <4515f6e0-a99b-09ae-e233-786ceed4847d@denx.de>
Cc: "Lopez, Mariano" <mariano.lopez@intel.com>, yocto@yoctoproject.org,
	=?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>
Subject: Re: update mechanisms
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
X-List-Received-Date: Mon, 12 Dec 2016 14:58:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


>> I
>> tried to summarize the key aspects of each mechanism in the table
>> itself. That's something that I haven't seen elsewhere and something
>> that the page can  I tried to be as fair and objective as possible,
>> please shout if I messed something up or you don't agree with my
>> summary.
>>
>> In particular the "complexity" column is a bit subjective. Stefano, I
>> hope you don't mind that I did not quite buy the "easy to use"
>> characterization of swupdate ;-)
> No worry...and I have not written myself. It was inserted by Mariano, so
> it looks like that swupdate at least for Mariano is "easy to use".
> I think it is correct to point out that customization is required.

Compared to other update mechanism that I tested it was the easier to
implement.

