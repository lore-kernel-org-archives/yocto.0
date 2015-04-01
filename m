Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDB04E0059F; Tue, 31 Mar 2015 17:49:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 945C3E0049A
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 17:49:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t310nBne018201
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 31 Mar 2015 17:49:11 -0700 (PDT)
Received: from server.local (128.224.21.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 31 Mar 2015 17:49:11 -0700
Message-ID: <551B4086.8050200@windriver.com>
Date: Tue, 31 Mar 2015 20:49:10 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.11.1503311824570.28969@localhost>
In-Reply-To: <alpine.LFD.2.11.1503311824570.28969@localhost>
Subject: Re: "fatal: A branch named 'meta-orig' already exists."
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
X-List-Received-Date: Wed, 01 Apr 2015 00:49:25 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-31 6:26 PM, Robert P. J. Day wrote:
>
>    oh, what fresh hell is this?
>
> ... snip ...
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: do_validate_branches (log file is located at
> /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524)
> ERROR: Logfile of failure stored in:
> /home/rpjday/oe/builds/qemux86/tmp/work/qemux86-poky-linux/linux-yocto/3.19.2+gitAUTOINC+9e70b482d3_31b35da6a5-r0/temp/log.do_validate_branches.17524
> Log data follows:
> | DEBUG: Executing shell function do_validate_branches
> | NOTE: Setting branch meta to
> 9e70b482d3773abf92c9c5850e134cbca1d5651f
> | fatal: A branch named 'meta-orig' already exists.
>
>    this is building core-image-minimal for qemux86, and i'm assuming
> this is not fedora rawhide related.

You've got a borked tree sitting in work-shared. If you clean-all
and start again, does it show up ?

If it repeats, then it very well could be the version of git in
rawhide that is causing the issue.

Bruce

>
> rday
>


