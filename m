Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.21.1582148694531139055
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:54 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 140.211.169.56, mailfrom: mark.hatle@kernel.crashing.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABBC8E0175C; Wed, 19 Feb 2020 07:46:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96E30E015FD
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 07:46:39 -0800 (PST)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01JFkU52025205
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Wed, 19 Feb 2020 09:46:31 -0600
Subject: Re: [OE-core] oe-core recipe for defining directories in /
To: Quentin Schulz <quentin.schulz@streamunlimited.com>,
        JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
        Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>
References: <CAA=hcWRUzFinBcNXf5EF+2mCwMhA5tz-vEFKubg6_QkwvxOEEg@mail.gmail.com>
 <20200219102908.cpe7lxm3v64ff2hf@qschulz>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <e449b0f3-8e1f-110a-8efe-c47c48f4b9e7@kernel.crashing.org>
Date: Wed, 19 Feb 2020 09:46:30 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200219102908.cpe7lxm3v64ff2hf@qschulz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 2/19/20 4:29 AM, Quentin Schulz wrote:
> Hi JH,
> 
> On Wed, Feb 19, 2020 at 09:12:08PM +1100, JH wrote:
>> Hi,
>>
>> Which recipe defines all directories in "/"? I need to make a bbapand
>> to add directories to /.
>>
> 
> None. Or all of them, depends on how one sees it.

He is correct, this is shared between all package users.  But with that said,
there is a base filesystem package and an associated 'syncing' file for all
other users.

The is a recipe called 'base-files', it builds up the core filesystem
infrastructure, as well as puts down a few basic files that all filesystems need.

The 'syncing' file is a corresponding file to used to coordinate permissions
between all recipes: meta/files/fs-perms.txt.  fs-perms.txt is always consulted
when building any recipe to ensure that all common directory, permissions,
owners and groups get a common configuration.

If you are going to bbappend to base-files then you should also to add to
fs-perms.txt (you can do this, like a bbappend, by adding your own file to your
own layer and updating the variable 'FILESYSTEM_PERMS_TABLES' in one of your
global configuration files (usually your distro configuration file.)

but, this isn't the recommended way...

If the directories you are adding are custom to your product, I would recommend
creating a new package to manage this, as well as a custom
fs-perms.txt/FILESYSTEM_PERMS_TABLE entry to coordinate it between recipes that
use this new custom directory structure.

(If only one recipe uses that directory, then all of the overhead is simply not
needed!  You only need this if multiple recipes are sharing a common directory
structure.)

--Mark

> You just create a directory in do_install of a recipe.
> 
> You then make sure this directory is part of a package by checking it's
> in one of the recipe's generated packages's FILES_<PACKAGE>.
> 
> Quentin
> 
