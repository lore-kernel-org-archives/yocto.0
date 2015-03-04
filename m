Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20F29E008CA; Wed,  4 Mar 2015 05:26:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 332FCE008CC
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 05:26:25 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t24DQIL0006228
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Mar 2015 05:26:18 -0800 (PST)
Received: from server.local (128.224.20.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 4 Mar 2015 05:26:18 -0800
Message-ID: <54F707F9.4050601@windriver.com>
Date: Wed, 4 Mar 2015 08:26:17 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1503040419480.30417@Device-040570>
In-Reply-To: <alpine.LFD.2.11.1503040419480.30417@Device-040570>
Subject: Re: valid git directives allowed in .scc files?
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
X-List-Received-Date: Wed, 04 Mar 2015 13:26:32 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-04 4:23 AM, Robert P. J. Day wrote:
>
>    still perusing kernel dev manual, and section 3.5 talks about
> git-related directives such as
>
>    branch newbranch
>    git merge myfeature
>
> but over in the linux-yocto_3.19 git repo in the meta branch, there's
> an example, features/pvr/pvr.scc, whose contents are:
>
>    git branch pvr master
>
> whose format is technically not explained in that section in the
> kernel dev manual. are there more shortcuts going on here?

In this case, they aren't shortcuts, just variants. When a wrapped
command (branch vs 'git branch') is used, there is extra error
checking and sanity that happens.

Both are valid, it all depends on what the developer is trying to
do .. and whether they know how to not hurt themselves (i.e. they
do want to inhibit the checks to use an extra branch flag, etc).

Cheers,

Bruce

>
> rday
>


