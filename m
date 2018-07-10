Return-Path: <martin@geanix.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C04E5E00C88; Tue, 10 Jul 2018 01:37:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.hundeboll.net (mail.hundeboll.net [88.198.92.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3762FE009B9
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 01:37:35 -0700 (PDT)
Received: from [10.0.0.161] (unknown [85.184.147.232])
	by mail.hundeboll.net (Postfix) with ESMTPSA id 6C1191C080B;
	Tue, 10 Jul 2018 10:37:34 +0200 (CEST)
To: Mauro Ziliani <mauro@faresoftware.it>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <72f720d8-8638-808a-0433-316f83caa781@faresoftware.it>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin@geanix.com>
Message-ID: <94004992-f933-ec78-cd60-d496616d9bf5@geanix.com>
Date: Tue, 10 Jul 2018 10:37:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <72f720d8-8638-808a-0433-316f83caa781@faresoftware.it>
Subject: Re: SRC_URI git from ssh fails
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
X-List-Received-Date: Tue, 10 Jul 2018 08:37:35 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Mauro,

On 2018-07-10 10:31, Mauro Ziliani wrote:
> Hi all
> 
> I'm working with Krogoth and imx6dlsabresd board.
> 
> I'm in trouble fetching source code from a git repository via ssh.
> 
> If I get manually the source codes with
> 
> git clone ssh://user@server/repos.git -b 0.4
> 
> it works
> 
> 
> If I put it in myrecipe_git.bb with
> 
> 
> SRC_URI = " \
> 
>     git://user@server/repos.git;protocol=ssh;tag=0.4 \
> 
> "

You might get lucky with a colon instead of the slash:

     git://user@server:repos.git;protocol=ssh;tag=0.4

But it is just a wild guess, and I didn't really test it :)

// Martin

> 
> S="${WORKDIR}/${PN}-${PV}"
> 
> 
> the fecth task fails.
> 
> 
> I try also SRCREV="0.4" outside SRC_URI and rev=0.4 in place of tag=0.4
> 
> 
> Where I mistake?
> 
> 
> Thanks
> 
> 
> MZ
> 
> 

-- 
Kind regards,
Martin Hundebøll
Embedded Linux Consultant

+45 61 65 54 61
martin@geanix.com

Geanix IVS
DK39600706

