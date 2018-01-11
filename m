Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD2D4E00D99; Thu, 11 Jan 2018 02:11:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from osg.samsung.com (osg.samsung.com [64.30.133.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07AECE00D99
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 02:11:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 0182029D94;
	Thu, 11 Jan 2018 02:11:08 -0800 (PST)
X-Virus-Scanned: Debian amavisd-new at dev.s-opensource.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D9V6D7ogqU60; Thu, 11 Jan 2018 02:11:00 -0800 (PST)
Received: from [192.168.0.2] (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id C1F5229D87;
	Thu, 11 Jan 2018 02:10:58 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAPTzV16hShVj_HsC4Ykd-HC_J+hGewG+DQYyB+=kD1mgsu56gA@mail.gmail.com>
From: Philippe Coval <philippe.coval@osg.samsung.com>
Organization: https://blogs.s-osg.org/author/pcoval/
Message-ID: <952a174d-ae9f-e82f-3294-1d9490cf8da7@osg.samsung.com>
Date: Thu, 11 Jan 2018 10:39:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAPTzV16hShVj_HsC4Ykd-HC_J+hGewG+DQYyB+=kD1mgsu56gA@mail.gmail.com>
Cc: "iotivity-dev@lists.iotivity.org" <iotivity-dev@lists.iotivity.org>,
	"Maloor, Kishen" <kishen.maloor@intel.com>
Subject: Re: [meta-oic] Question about Iotivity 1.3.0/1 and fixes status
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
X-List-Received-Date: Thu, 11 Jan 2018 10:11:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 11/01/18 02:30, Chanho Park wrote:
> Hi Philippe,
>
Hi Chanho Park, HNY to you
> I found you already prepared iotivity 1.3.0, 1.3.1 recipes and fixes
> in your github tree[1].

Yes they are still under review, did you test them ?

Maybe I should resend them, now.

> I wonder why you don’t post them in the meta-oic.

Well I shared patches to list couple of time:

https://lists.yoctoproject.org/pipermail/yocto/2017-June/036896.html
https://lists.yoctoproject.org/pipermail/yocto/2017-September/037829.html
https://lists.yoctoproject.org/pipermail/yocto/2017-December/039355.html

> Do you have a plan to upstream them?
I need reviewer to approve and commit them (@Kishen ?)
or may I do it by my own
since  nobody objected on previous changes ?

Side note, I also simplified a recipe for iotivity master branch
(it now relies on scons install like tizen, debian etc)

so if it helps I will update devel branch and this page soon:
https://wiki.iotivity.org/wiki/yocto


> Best Regards,
BR, Keep in touch your feedback is valuable.

> Chanho Park
>
> [1]: https://github.com/TizenTeam/meta-oic/tree/sandbox/pcoval/on/master/review

-- 
mailto:philippe.coval@osg.samsung.com gpg:0x467094BC
https://blogs.s-osg.org/author/pcoval/


