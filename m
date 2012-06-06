Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1045AE00723
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 08:10:36 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B1A6AF81222; Wed,  6 Jun 2012 09:10:35 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D4312F811DA;
	Wed,  6 Jun 2012 09:10:34 -0600 (MDT)
Message-ID: <4FCF72EA.3030200@mlbassoc.com>
Date: Wed, 06 Jun 2012 09:10:34 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1206031757260.20352@oneiric>
	<alpine.DEB.2.02.1206040435060.9995@oneiric>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA4CB@SHSMSX102.ccr.corp.intel.com>
	<CAMKF1srmT8221t=XuXJ-fReqwCK3QQb8ri2rxDjb8bHwFUbh9A@mail.gmail.com>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA672@SHSMSX102.ccr.corp.intel.com>
	<alpine.DEB.2.02.1206050929001.4572@oneiric>
	<3AB6CE7F274E534CAFD089D127A8A1FC23BCA9CF@SHSMSX102.ccr.corp.intel.com>
	<alpine.DEB.2.02.1206051100550.2774@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206051100550.2774@oneiric>
Subject: Re: something about gtk+-2.24.8.tar.bz2 that requires constant downloading?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Jun 2012 15:10:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-06-05 09:01, Robert P. J. Day wrote:
> On Tue, 5 Jun 2012, Wang, Shane wrote:
>
>> Robert P. J. Day wrote on 2012-06-05:
>
>>>    at this point, has the problem been identified?  or does this still
>>> require a bugzilla submission?  it would appear that the issue
>>> involves any package with a "+" in the package name which, for now,
>>> appears to be just that gtk+ package.  would any other special
>>> characters trigger this?  that's the only package i've tripped over
>>> that caused this behaviour.
>>>
>>> rday
>>>
>>
>> Yes, it has been identified. If you can't submit a bug, I can do.
>> Yes, I believe other special characters will trigger that.
>>
>> Just because I am not familiar with all fetch code, I can fix it for
>> gtk+ now but I am not sure whether that fix will bring any
>> regression bugs. Give me more time.
>
>    ok, i'll leave it in your capable hands and go find something else
> to nitpick.

Has someone filed a bug on this yet?  It breaks all my builds now since
I always use BB_NO_NETWORK="1" :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

