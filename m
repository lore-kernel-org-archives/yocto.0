Return-Path: <rich@noir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 779C1E00C64; Mon, 14 Mar 2016 10:23:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00, RCVD_IN_BRBL_LASTEXT,
	RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.4 RCVD_IN_BRBL_LASTEXT RBL: RCVD_IN_BRBL_LASTEXT
	*      [198.144.209.5 listed in bb.barracudacentral.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from sendai.noir.com (m209-5.dsl.rawbw.com [198.144.209.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FE2EE00C23
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:23:37 -0700 (PDT)
Received: from zama.noir.com (zama.noir.com [192.168.1.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by sendai.noir.com (Postfix) with ESMTPSA id 2CA40E1A0A;
	Mon, 14 Mar 2016 10:23:37 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <56E64947.5020606@mlbassoc.com>
	<cdc27932-91ca-378d-1582-286b72cc3e7f@noir.com>
	<56E6EE59.80907@mlbassoc.com>
	<B08B39D7-7278-4A76-9F4D-4A0CD9659B99@gmail.com>
	<f928436d-dc83-a514-59eb-fe6c9ed04e7c@noir.com>
	<CAMKF1soG8VLt2xWbJ5A-Y82bqnGkYrGNf5wqbigP1fODKTDv-A@mail.gmail.com>
From: K Richard Pixley <rich@noir.com>
Message-ID: <6454faef-537d-3662-e2ee-eb704acdc194@noir.com>
Date: Mon, 14 Mar 2016 10:23:36 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:47.0)
	Gecko/20100101 Thunderbird/47.0a2
MIME-Version: 1.0
In-Reply-To: <CAMKF1soG8VLt2xWbJ5A-Y82bqnGkYrGNf5wqbigP1fODKTDv-A@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 17:23:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/14/16 10:16 , Khem Raj wrote:
> On Mon, Mar 14, 2016 at 10:11 AM, K Richard Pixley <rich@noir.com> wrote:
>> While we're on it...
>>
>> Can anyone explain what a "live" image is intended to be?
> it can either boot from the disk or you can run the installer to
> install it to another media on your device.
How is that different from an ISO?  I mean, isn't that what an ISO image 
does?
>> (I haven't gotten a live image to "work", but I'm not entirely sure I know
>> what "work" means for a live image.)
> what issues do you see ? may that can help answer this
Mostly build time issues with "live" conflicting with "vmdk" and the like.
>> Or how hdddirect is intended to be different from hddimg?
> hdddirect is raw disk image.
I thought hddimg was a raw disk image.  If hdddirect is a raw disk 
image, then what's hddimg?

--rich

