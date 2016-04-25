Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10954E00857; Mon, 25 Apr 2016 10:35:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D58C9E0077F
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 10:35:07 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u3PHYsK1008925
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 25 Apr 2016 10:34:54 -0700 (PDT)
Received: from server.local (147.11.119.214) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 25 Apr 2016 10:34:54 -0700
To: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>, "Burton, Ross"
	<ross.burton@intel.com>
References: <BY1PR0701MB1594FEBCBD9F70D587587878E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<CAJTo0LY9Vtas26+M_Zq2fzREkpqXLD-uNOtXpJbzN8_9it=1Pg@mail.gmail.com>
	<BY1PR0701MB159480B842DF78C33DA2A161E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <571E553D.4070200@windriver.com>
Date: Mon, 25 Apr 2016 13:34:53 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <BY1PR0701MB159480B842DF78C33DA2A161E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure: Unable to find revision 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upstream
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
X-List-Received-Date: Mon, 25 Apr 2016 17:35:12 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-25 12:10 PM, Jaggi, Manish wrote:
>
> ------------------------------------------------------------------------
> *From:* Burton, Ross <ross.burton@intel.com>
> *Sent:* Monday, April 25, 2016 8:12 PM
> *To:* Jaggi, Manish
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Fetcher failure: Unable to find revision
> 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
> upstream
>
> On 25 April 2016 at 14:30, Jaggi, Manish
> <Manish.Jaggi@caviumnetworks.com
> <mailto:Manish.Jaggi@caviumnetworks.com>> wrote:
>
>     It seems the revid / tag is not on any branch
>     git branch  --contains 2134d97aa3a7ce38bb51f933f2e20cafde371085
>     returns nothing.
>
>     How to fix this issue ?
>
>
> You probably want to use git branch -r --contains 213... as otherwise
> git branch will only list local branches.  The web UI says that this
> commit exists on master though...
>
> [Manish] Same output with -r.
> Can you please share the link of web ui. As per the error it is not on
> master branch.

linux-yoct-dev and linux-yocto-4.4 are different trees. linux-yocto-dev
tracks the latest mainline kernel, not -stable.

So if you are looking for 4.4.3 on linux-yocto-dev, you aren't going
to find it.

Bruce

>
>
> Ross
>
>


