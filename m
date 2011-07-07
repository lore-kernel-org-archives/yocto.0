Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0436C4C800A9
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 18:26:52 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p67NQkpr011532;
	Fri, 8 Jul 2011 00:26:46 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10535-01-9; Fri,  8 Jul 2011 00:26:37 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p67NLeLX011060
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 8 Jul 2011 00:21:40 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
In-Reply-To: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
References: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
Date: Thu, 07 Jul 2011 22:16:13 +0100
Message-ID: <1310073373.20015.847.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, "Hart, Darren" <darren.hart@intel.com>,
	Saul Wold <saul.wold@intel.com>
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
X-List-Received-Date: Thu, 07 Jul 2011 23:26:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-07 at 13:34 -0700, Flanagan, Elizabeth wrote:
> I wanted to ping the list on this bug as I've drilled down into it and
> I see what's going on. These are the steps to reproduce it and I have
> some questions at the end....
> 
> The issue: The autobuilder has been serving up bad kernel source
> tarballs. This is not an autobuilder issue. I've narrowed this down to
> being an issue with do_fetch and do_unpack....
> 
> First, I created a local linux-yocto repo and modified
> meta/recipes-kernel/linux/linux-yocto_2.6.37.bb to point to it:
> 
> SRCREV_machine = ${AUTOREV}
> SRCREV_meta = ${AUTOREV}
> 
> SRC_URI = "git:///srv/build/build/repo/git.pokylinux.org.linux-yocto-2.6.37;protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
> 
> I do bitbake virtual/kernel -c kernel_checkout -f and the repo is
> fetched into my DL_DIR, unpacked into
> tmp/work/qemux86-poky-linux/linux-yocto-2.6.37....r20/git and then
> do_kernel_checkout runs. At this point, everything is correct.
> 
> At this point my local SRC_URI repo is:
> 
> * master
>   meta
>   yocto/base
>   yocto/eg20t
>   yocto/emgd
>   yocto/gma500
> ....
> 
> My clone in DL_DIR is the same.
> 
> My clone in  tmp/work/qemux86-poky-linux/linux-yocto-2.6.37....r20/linux
> looks like this:
> 
>   master
>   meta
>   yocto/base
>   yocto/eg20t
>   yocto/emgd
>   yocto/gma500
>   ....
>   remotes/origin/master
>   remotes/origin/meta
>   remotes/origin/yocto/base
>   remotes/origin/yocto/eg20t
>   remotes/origin/yocto/emgd
>   remotes/origin/yocto/gma500
> 
> With the local head branches and the remotes being the same.
> 
> Now, on to where this gets ugly.
> 
> I commit a new branch to my SRC_URI repo:
> 
> My SRC_URI:
> 
> BAD_BRANCH
> master
> meta
> yocto/base
> yocto/eg20t
> yocto/emgd
> yocto/gma500
> ....
> 
> I re-run fetch and my DL_DIR looks like this:
> 
> * master
>   meta
>   yocto/base
>   yocto/eg20t
>   yocto/emgd
>   yocto/gma500
> ....
>   remotes/origin/BAD_BRANCH
>   remotes/origin/master
>   remotes/origin/meta
>   remotes/origin/yocto/base
>   remotes/origin/yocto/eg20t
>   remotes/origin/yocto/emgd
>   remotes/origin/yocto/gma500
> 
> Notice, the new BAD_BRANCH is now only in remotes. This *should* be
> ok, since after we do_unpack we run do_kernel_checkout which should
> copy the refs in remotes to heads

I think we hit game over at this point. BAD_BRANCH should be present and
isn't :(.

I talked quickly with Beth over jabber. I think this is a fetcher bug
and something like:

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index f3bc793..7954f66 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -170,7 +170,7 @@ class Git(FetchMethod):
 
         # If the repo still doesn't exist, fallback to cloning it
         if not os.path.exists(ud.clonedir):
-            clone_cmd = "%s clone --bare %s://%s%s%s %s" % \
+            clone_cmd = "%s clone --bare --mirror %s://%s%s%s %s" % \
                   (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.clonedir)
             bb.fetch2.check_network_access(d, clone_cmd)
             runfetchcmd(clone_cmd, d)
@@ -188,7 +188,7 @@ class Git(FetchMethod):
             except bb.fetch2.FetchError:
                 logger.debug(1, "No Origin")
             
-            runfetchcmd("%s remote add origin %s://%s%s%s" % (ud.basecmd, ud.proto, username, ud.host, ud.path), d)
+            runfetchcmd("%s remote add --mirror origin %s://%s%s%s" % (ud.basecmd, ud.proto, username, ud.host, ud.path), d)
             fetch_cmd = "%s fetch --all -t" % ud.basecmd
             bb.fetch2.check_network_access(d, fetch_cmd, ud.url)
             runfetchcmd(fetch_cmd, d)

might just fix this (since it means a refspec is added to keep the
remote and local heads in sync).

Cheers,

Richard


