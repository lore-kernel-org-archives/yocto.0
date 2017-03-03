Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30519E00A28; Fri,  3 Mar 2017 05:53:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C83A7E009C3
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 05:53:08 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v23Dr14R007458
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 3 Mar 2017 05:53:01 -0800 (PST)
Received: from server.local (128.224.22.213) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 3 Mar 2017 05:53:00 -0800
To: "Burton, Ross" <ross.burton@intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
References: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
	<CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <5d2ca2c6-749e-cbb0-74e5-a03e8c66e9cb@windriver.com>
Date: Fri, 3 Mar 2017 08:52:59 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any rumblings about a newer YP powerpc reference board than mpc8315e-rdb?
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
X-List-Received-Date: Fri, 03 Mar 2017 13:53:11 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-03 8:41 AM, Burton, Ross wrote:
>
> On 3 March 2017 at 13:24, Robert P. J. Day <rpjday@crashcourse.ca
> <mailto:rpjday@crashcourse.ca>> wrote:
>
>       it seems of limited value for YP to have a powerpc reference board,
>     mpc8315e-rdb, that is essentially impossible to procure. is there any
>     effort being made to look around for a newer powerpc reference board
>     that people could actually buy?
>
>
> Do you have any suggestions?

Indeed.

I've looked, Josh looked at one point, and we even met with various
companies about their upcoming boards.

Nothing has ever panned out, so we stick with the existing reference
BSP.

Assuming we could acquire a new board, I'd be happy to replace the
existing reference.

Bruce

>
> Ross
>
>


