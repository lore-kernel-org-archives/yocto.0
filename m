Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 840CAE006CB
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 17:42:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Mar 2013 17:42:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,881,1355126400"; d="scan'208";a="305369074"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 20 Mar 2013 17:42:25 -0700
Received: by linux.intel.com (Postfix, from userid 48)
	id BF8C16A400F; Wed, 20 Mar 2013 17:42:19 -0700 (PDT)
Received: from 10.24.2.83 (SquirrelMail authenticated user kevin.strasser)
	by linux.intel.com with HTTP; Wed, 20 Mar 2013 17:42:19 -0700 (PDT)
Message-ID: <53276.10.24.2.83.1363826539.squirrel@linux.intel.com>
In-Reply-To: <1558587.S9v9mAN4hA@helios>
References: <cover.1363640001.git.kevin.strasser@linux.intel.com>
	<1558587.S9v9mAN4hA@helios>
Date: Wed, 20 Mar 2013 17:42:19 -0700 (PDT)
From: kevin.strasser@linux.intel.com
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: kevstras@gmail.com, yocto@yoctoproject.org
Subject: Re: [meta-baryon] [PATCH 0/5] Updates and fixes
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
X-List-Received-Date: Thu, 21 Mar 2013 00:42:35 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> Hi Kevin,
>
> On Monday 18 March 2013 18:05:21 Kevin Strasser wrote:
>> Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
>>
>> The following changes since commit
>> 566cb211cee8a9870257a4ac2fc706990a70b9d2:
>>
>>   nfs-utils: update bbappend version to 1.2.7 (2013-02-27 15:24:30
>> +0000)
>>
>> are available in the git repository at:
>>
>>   git://git.yoctoproject.org/poky-contrib strassek/baryon
>>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=strassek/baryon
>>
>> Kevin Strasser (5):
>>   kernel: enable nfsd in linux-yocto 3.8
>>   ffmpegthumbnailer: update to 2.0.8
>>   ffmpegthumbnailer: include cstring
>>   samba: sync with meta-oe
>>   lvm2: sync with meta-oe
>>
>
> Looks good, thanks. My only concern is with the samba update - without
> testing
> it, it looks a bit like it won't be configured to work out of the box.
> Perhaps
> we can get away with this though given that it can be configured through
> Webmin. What do you think?
>

Sorry for the delayed response. Now that you mention it, yes it does make
sense to try to keep the old behavior when possible. It looks like we've
been keeping a custom config file to achieve that end. I'll take a closer
look and then send out a revised patch.

-Kevin

