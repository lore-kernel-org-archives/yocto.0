Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AB95E009DA; Mon, 18 May 2015 22:13:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71A4FE0099B
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 22:13:33 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 18 May 2015 22:13:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,456,1427785200"; d="scan'208";a="728140951"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 18 May 2015 22:13:32 -0700
Received: by linux.intel.com (Postfix, from userid 48)
	id 3E8E36A4090; Mon, 18 May 2015 22:13:02 -0700 (PDT)
Received: from 10.254.91.149 (SquirrelMail authenticated user randy.e.witt)
	by linux.intel.com with HTTP; Mon, 18 May 2015 22:13:02 -0700 (PDT)
Message-ID: <55436.10.254.91.149.1432012382.squirrel@linux.intel.com>
In-Reply-To: <CAK8F28nesmgbMQhmcdPeiXbmiMmttnjmqP7_3_wQyDN7OsKGxQ@mail.gmail.com>
References: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
	<555407B9.7040105@windriver.com>
	<CAK8F28=iqLWycPRJtvbJ3cjHd04e-XvrQhqHQ0iC7xZ6ADrASA@mail.gmail.com>
	<55555FE4.7060902@windriver.com>
	<CAK8F28nesmgbMQhmcdPeiXbmiMmttnjmqP7_3_wQyDN7OsKGxQ@mail.gmail.com>
Date: Mon, 18 May 2015 22:13:02 -0700 (PDT)
From: randy.e.witt@linux.intel.com
To: "Ash Charles" <ashcharles@gmail.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using smart within an SDK
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
X-List-Received-Date: Tue, 19 May 2015 05:13:36 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> On Thu, May 14, 2015 at 7:54 PM, ChenQi <Qi.Chen@windriver.com> wrote:
>> The rpm database is not usable. You do a query to list files that a
>> package
>> installed and you will find all the paths are not correct.
> Ah okay---that makes sense.  Thanks.
>>
>> We are now working a new kind of SDK in OE. We call it extensible SDK.
>> By
>> design, its components could be updated/installed/removed using sstate
>> objects. The task is not completed yet, but we are working on it.
>
> I'd seen the extensible SDK and was thinking it looked pretty cool so
> I'll give this a whirl.  From what I've read, it doesn't yet support
> updating.  Is there a roadmap for this (happy to help out if I'm
> able)?  I'd also need to maintain an online sstate cache to make this
> SDK useful to others correct?
> --

The idea is that an sdk will comprise of a manifest(contains list of
sstate items in the sdk) and some location that contains the items in the
manifest. So to update the sdk you would run a command and give it the
location of the manifest and sstate, and it would make your sdk match what
is in the manifest.

So the sstate could be hosted on a webserver, nfs, locally, etc.

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


