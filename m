Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF27D4C800A9
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 18:57:59 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Jul 2011 16:57:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,496,1304319600"; d="scan'208";a="22854231"
Received: from doubt.jf.intel.com (HELO [10.7.199.182]) ([10.7.199.182])
	by orsmga002.jf.intel.com with ESMTP; 07 Jul 2011 16:57:59 -0700
Message-ID: <4E164802.4000206@intel.com>
Date: Thu, 07 Jul 2011 16:57:54 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
	<1310073373.20015.847.camel@rex>
In-Reply-To: <1310073373.20015.847.camel@rex>
Cc: yocto@yoctoproject.org, Saul Wold <saul.wold@intel.com>
Subject: Re: Details on Bug #963 kernel tarball corruption.
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
X-List-Received-Date: Thu, 07 Jul 2011 23:58:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/07/2011 02:16 PM, Richard Purdie wrote:
> On Thu, 2011-07-07 at 13:34 -0700, Flanagan, Elizabeth wrote:
>> I wanted to ping the list on this bug as I've drilled down into it and
>> I see what's going on. These are the steps to reproduce it and I have
>> some questions at the end....
>>
>> The issue: The autobuilder has been serving up bad kernel source
>> tarballs. This is not an autobuilder issue. I've narrowed this down to
>> being an issue with do_fetch and do_unpack....
>>
>> First, I created a local linux-yocto repo and modified
>> meta/recipes-kernel/linux/linux-yocto_2.6.37.bb to point to it:
>>
>> SRCREV_machine = ${AUTOREV}
>> SRCREV_meta = ${AUTOREV}
>>
>> SRC_URI = "git:///srv/build/build/repo/git.pokylinux.org.linux-yocto-2.6.37;protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>>
>> I do bitbake virtual/kernel -c kernel_checkout -f and the repo is
>> fetched into my DL_DIR, unpacked into
>> tmp/work/qemux86-poky-linux/linux-yocto-2.6.37....r20/git and then
>> do_kernel_checkout runs. At this point, everything is correct.
>>
>> At this point my local SRC_URI repo is:
>>
>> * master
>>   meta
>>   yocto/base
>>   yocto/eg20t
>>   yocto/emgd
>>   yocto/gma500
>> ....
>>
>> My clone in DL_DIR is the same.
>>
>> My clone in  tmp/work/qemux86-poky-linux/linux-yocto-2.6.37....r20/linux
>> looks like this:
>>
>>   master
>>   meta
>>   yocto/base
>>   yocto/eg20t
>>   yocto/emgd
>>   yocto/gma500
>>   ....
>>   remotes/origin/master
>>   remotes/origin/meta
>>   remotes/origin/yocto/base
>>   remotes/origin/yocto/eg20t
>>   remotes/origin/yocto/emgd
>>   remotes/origin/yocto/gma500
>>
>> With the local head branches and the remotes being the same.
>>
>> Now, on to where this gets ugly.
>>
>> I commit a new branch to my SRC_URI repo:
>>
>> My SRC_URI:
>>
>> BAD_BRANCH
>> master
>> meta
>> yocto/base
>> yocto/eg20t
>> yocto/emgd
>> yocto/gma500
>> ....
>>
>> I re-run fetch and my DL_DIR looks like this:
>>
>> * master
>>   meta
>>   yocto/base
>>   yocto/eg20t
>>   yocto/emgd
>>   yocto/gma500
>> ....
>>   remotes/origin/BAD_BRANCH
>>   remotes/origin/master
>>   remotes/origin/meta
>>   remotes/origin/yocto/base
>>   remotes/origin/yocto/eg20t
>>   remotes/origin/yocto/emgd
>>   remotes/origin/yocto/gma500
>>
>> Notice, the new BAD_BRANCH is now only in remotes. This *should* be
>> ok, since after we do_unpack we run do_kernel_checkout which should
>> copy the refs in remotes to heads
> 
> I think we hit game over at this point. BAD_BRANCH should be present and
> isn't :(.
> 
> I talked quickly with Beth over jabber. I think this is a fetcher bug
> and something like:
> 
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index f3bc793..7954f66 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -170,7 +170,7 @@ class Git(FetchMethod):
>  
>          # If the repo still doesn't exist, fallback to cloning it
>          if not os.path.exists(ud.clonedir):
> -            clone_cmd = "%s clone --bare %s://%s%s%s %s" % \
> +            clone_cmd = "%s clone --bare --mirror %s://%s%s%s %s" % \


--mirror implies --bare, so:
-            clone_cmd = "%s clone --bare %s://%s%s%s %s" % \
+            clone_cmd = "%s clone --mirror %s://%s%s%s %s" % \

should be adequate.

--
Darren

>                    (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.clonedir)
>              bb.fetch2.check_network_access(d, clone_cmd)
>              runfetchcmd(clone_cmd, d)
> @@ -188,7 +188,7 @@ class Git(FetchMethod):
>              except bb.fetch2.FetchError:
>                  logger.debug(1, "No Origin")
>              
> -            runfetchcmd("%s remote add origin %s://%s%s%s" % (ud.basecmd, ud.proto, username, ud.host, ud.path), d)
> +            runfetchcmd("%s remote add --mirror origin %s://%s%s%s" % (ud.basecmd, ud.proto, username, ud.host, ud.path), d)
>              fetch_cmd = "%s fetch --all -t" % ud.basecmd
>              bb.fetch2.check_network_access(d, fetch_cmd, ud.url)
>              runfetchcmd(fetch_cmd, d)
> 
> might just fix this (since it means a refspec is added to keep the
> remote and local heads in sync).
> 
> Cheers,
> 
> Richard
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

