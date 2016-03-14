Return-Path: <rich@noir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D504DE00C64; Mon, 14 Mar 2016 10:11:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70B74E00C23
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:11:50 -0700 (PDT)
Received: from zama.noir.com (zama.noir.com [192.168.1.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by sendai.noir.com (Postfix) with ESMTPSA id 1572DE19F6;
	Mon, 14 Mar 2016 10:11:50 -0700 (PDT)
To: yocto@yoctoproject.org
References: <56E64947.5020606@mlbassoc.com>
	<cdc27932-91ca-378d-1582-286b72cc3e7f@noir.com>
	<56E6EE59.80907@mlbassoc.com>
	<B08B39D7-7278-4A76-9F4D-4A0CD9659B99@gmail.com>
From: K Richard Pixley <rich@noir.com>
Message-ID: <f928436d-dc83-a514-59eb-fe6c9ed04e7c@noir.com>
Date: Mon, 14 Mar 2016 10:11:49 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:47.0)
	Gecko/20100101 Thunderbird/47.0a2
MIME-Version: 1.0
In-Reply-To: <B08B39D7-7278-4A76-9F4D-4A0CD9659B99@gmail.com>
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
X-List-Received-Date: Mon, 14 Mar 2016 17:11:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

While we're on it...

Can anyone explain what a "live" image is intended to be?

(I haven't gotten a live image to "work", but I'm not entirely sure I 
know what "work" means for a live image.)

Or how hdddirect is intended to be different from hddimg?

--rich

