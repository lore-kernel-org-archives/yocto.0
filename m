Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B253E00BAB; Mon, 22 Feb 2016 09:55:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58BA1E00B70
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 09:55:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u1MHtJaI006261
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 22 Feb 2016 09:55:19 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 22 Feb 2016 09:55:18 -0800
To: Martin Jansa <martin.jansa@gmail.com>, "Burton, Ross"
	<ross.burton@intel.com>
References: <1455922741-3342-1-git-send-email-radzy@windriver.com>
	<56CB1DC8.1030505@windriver.com> <20160222153336.GB2255@mentor.com>
	<CAJTo0LY7D1o9+9mU13DdEnK_h4SjZPX3+jph5A4fXny_HSHuoA@mail.gmail.com>
	<20160222161956.GE6329@jama>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56CB4B85.9040905@windriver.com>
Date: Mon, 22 Feb 2016 11:55:17 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160222161956.GE6329@jama>
Cc: "T.O. Radzy Radzykewycz" <radzy@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
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
X-List-Received-Date: Mon, 22 Feb 2016 17:55:24 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 2/22/16 10:19 AM, Martin Jansa wrote:
> On Mon, Feb 22, 2016 at 03:58:44PM +0000, Burton, Ross wrote:
>> On 22 February 2016 at 15:33, Joe MacDonald <Joe_MacDonald@mentor.com>
>> wrote:
>>
>>> I'm also not against removing the local copy (I don't think it adds
>>> anything to the layer and occasionally causes headaches), but I really
>>> don't want to make meta-selinux dependent on meta-oe components, so I
>>> guess I'm voting for keeping it.
>>>
>>
>> Luckily it's also in oe-core (meta/recipes-devtools/swig/swig_3.0.8.bb).
> 
> And it was removed from meta-oe couple months ago:
> 
> commit 02f98d1bc7dc585538df5c96c2b0ccdd857ec46f
> Author:     Wenzong Fan <wenzong.fan@windriver.com>
> AuthorDate: Thu Oct 8 01:31:36 2015 -0400
> Commit:     Martin Jansa <Martin.Jansa@gmail.com>
> CommitDate: Tue Oct 13 12:28:17 2015 +0200
> 
>     swig: remove package
>     
>     swig 3.0.6 has been moved to oe-croe:
>       66923c6776da13bd4513a73c3f7c5e60d74eb0f3
>     
>     Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>     Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> 
> 
> 

Yup.. lets yank it then from meta-selinux, no reason to keep carrying it forward.

--Mark

