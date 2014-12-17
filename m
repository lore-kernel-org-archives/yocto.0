Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9C66E00521; Wed, 17 Dec 2014 10:08:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F275BE002F9
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 10:08:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sBHI82Yc019705
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 17 Dec 2014 10:08:02 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Wed, 17 Dec 2014 10:08:02 -0800
Message-ID: <5491C67B.7030901@windriver.com>
Date: Wed, 17 Dec 2014 13:07:55 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Cody P Schafer <dev@codyps.com>
References: <CAPoQQ-3eq6N6j2R=0b6q0k0DXQqh_vN7EZ6jD_4mxPXU61eNgA@mail.gmail.com>
In-Reply-To: <CAPoQQ-3eq6N6j2R=0b6q0k0DXQqh_vN7EZ6jD_4mxPXU61eNgA@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bump linux-yocto-dev to 3.18?
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
X-List-Received-Date: Wed, 17 Dec 2014 18:08:11 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-12-17 01:02 PM, Cody P Schafer wrote:
> It looks like http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-dev/
> is still sitting at 3.17.6, are their plans to merge the 3.18 changes?
>
> Or does linux-yocto-dev wait on stable kernel releases?
> Or is this blocked on something else I'm unaware of?

I'm actually waiting for 3.19 at this point. If you look at the patch
series I sent out last week, we were busy working on developer
experience patches and integrating LTSI content.

There's also another activity to get linux-yocto-dev glued fully into
the autobuilder to shake out bugs before I push the changes to the
the main repositories.

Generally speaking, I don't merge each and every korg kernel into the
development branches, with a one kernel jump after we do a release
with a kernel (which in this case 3.17 comes with Yocto 1.8). And
that is simply to allow the existing set of three kernels to settle
before refreshing features, moving into another round of development
and preparation for the next release kernel.

Cheers,

Bruce

>
> --
> Cody
>


