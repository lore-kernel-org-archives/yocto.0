Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DD80E010DE; Sun, 24 Jul 2016 19:41:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E52CFE00E88;
	Sun, 24 Jul 2016 19:41:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u6P2f1f2015825
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sun, 24 Jul 2016 19:41:01 -0700
Received: from server.local (147.11.116.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Sun, 24 Jul 2016 19:41:00 -0700
To: Chris Tapp <opensource@keylevel.com>, Yocto Project
	<yocto@yoctoproject.org>, <meta-intel@yoctoproject.org>
References: <829C58DE-3920-4E09-836C-2B75E0836725@keylevel.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <c798ca0d-2c13-1ca5-978a-6d4a75efd8aa@windriver.com>
Date: Sun, 24 Jul 2016 22:40:59 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <829C58DE-3920-4E09-836C-2B75E0836725@keylevel.com>
Subject: Re: Kernel bug 109051
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
X-List-Received-Date: Mon, 25 Jul 2016 02:41:16 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-07-24 6:09 PM, Chris Tapp wrote:
> I’m using the meta-intel “valley-island” BSP under “krogoth” and think I may have run into https://bugzilla.kernel.org/show_bug.cgi?id=109051.
>
> I’m using a J1900 (listed as affected) and the system locks up totally (running a graphics-based application) after an indeterminate period.
>
> Using the scripts referenced on the related bug page for comment 437 (https://bugzilla.kernel.org/show_bug.cgi?id=109051#c437) appears to resolve the issue.
>
> Is anyone aware of this and/or know if it will be fixed within the Yocto kernel tree?

Not unless someone sends a patch.

If you have a platform showing the error, and have tested a fix .. why
not just send the patch ?

Bruce

>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>


