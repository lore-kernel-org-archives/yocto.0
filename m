Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A94CE007AA; Sun,  7 Sep 2014 07:17:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AE95E0056A
	for <yocto@yoctoproject.org>; Sun,  7 Sep 2014 07:17:07 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s87EH52u007513
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 7 Sep 2014 07:17:05 -0700 (PDT)
Received: from server.local (128.224.20.133) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Sun, 7 Sep 2014 07:17:04 -0700
Message-ID: <540C68E0.5050907@windriver.com>
Date: Sun, 7 Sep 2014 10:17:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Ilya Dmitrichenko <errordeveloper@gmail.com>, yocto
	<yocto@yoctoproject.org>
References: <CAPhDKbFei3vk24Zt2K169DGW+_QLhEWtV+MGXFPOgOr8TFFX0w@mail.gmail.com>
In-Reply-To: <CAPhDKbFei3vk24Zt2K169DGW+_QLhEWtV+MGXFPOgOr8TFFX0w@mail.gmail.com>
Subject: Re: Kernel features
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
X-List-Received-Date: Sun, 07 Sep 2014 14:17:20 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-09-07, 4:51 AM, Ilya Dmitrichenko wrote:
> Today I have spent quite a while trying to figure how KERNEL_FEATURES
> works and why some of the things I pass in my configuration fragment
> are not getting enabled.
>
> It turned out that some of the options no longer existed and some had
> been renamed.

Do you have an example ? We try and not rename or remove public facing
configuration fragments, and hide the changing CONFIG_* values behind
the fragment names.

>
> The question is really why would this not get detected by
> kernel_configcheck or any other step?
>
> I'm guessing this might be the case of how kconfig works, perhaps...
> So I wonder whether anyone have looked into how we could actually get
> the feature dependency graph from kconfig to bitbake or at least some
> sort of helper tool? Perhaps parsing kconfig manifests in Python would
> be a starting point...

There have been many efforts are changing, writing and processing
Kconfig constructs in other languages .. they all end up being
pretty much a re-implementation of Kconfig, and hence a big effort
that needs to be continuously maintained over time .. also a big
effort.

But maybe I'm not quite understanding your question, if you can
send along an example, that might help.

Cheers,

Bruce

>
> Cheers,
>


