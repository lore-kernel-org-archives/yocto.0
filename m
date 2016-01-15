Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C5ADE00978; Fri, 15 Jan 2016 10:15:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 744C4E00928
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 10:15:17 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jan 2016 10:15:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,300,1449561600"; d="scan'208";a="727833945"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga003.jf.intel.com with ESMTP; 15 Jan 2016 10:15:16 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.51])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 4012F2C8001;
	Fri, 15 Jan 2016 11:03:12 -0800 (PST)
Date: Fri, 15 Jan 2016 18:18:46 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Message-ID: <20160115161846.GA21755@linux.intel.com>
References: <1530744.VQ6Lh0k6b2@rjs-zotac.streifs.net>
MIME-Version: 1.0
In-Reply-To: <1530744.VQ6Lh0k6b2@rjs-zotac.streifs.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project =?utf-8?B?4oCOW3lvY3RvQHlvY3RvcHJvamVjdC5vcmdd4oCO?=
	<yocto@yoctoproject.org>
Subject: Re: [Toaster] Production Instance Setup
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Jan 2016 18:15:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rudolf,

I'm sorry for unpleasant experience you had with this setup.

I confirm that most of the issues you've pointed out exist and I was
able to reproduce them.

Eventually I managed to run Toaster in this configuration. Please, read
my comments below.

On Thu, Jan 14, 2016 at 03:03:19PM -0800, Rudolf J Streif wrote:
> Hi Everyone:
> 
> I am trying to set up Toaster in a production environment with Apache etc. The web server setup is ok. It is running builds where I am currently stuck.
> 
> I am using the Jethro branch from the git repo.
> 
> According to step 7 in [1] one needs to start
> 
> /var/www/toaster/poky/bitbake/lib/toaster/manage.py runbuilds
> 
> to start the runner service to dispatch builds. If there are currently no pending builds (non yet created using the web UI) then running this command immediately returns. The command gets dispatched to
> 
> poky/bitbake/lib/toaster/bldcontrol/management/commands/runbuilds.py
> 
> In its command help it states:
> 
> 14: help    = "Schedules and executes build requests as possible. Does not return (interrupt with Ctrl-C)"
> 
> However, that is apparently not the case because if there is not build request pending then
> 
> 35:            try:
> 36:                # select the build environment and the request to build
> 37:               br = self._selectBuildRequest()
> 38:            except IndexError as e:
> 39:                logger.debug("runbuilds: No build request")
> 40:                return
> 

This should be fixed by this patch:
https://lists.yoctoproject.org/pipermail/toaster/2015-November/003319.html

> If you use the web UI and schedule (start) a build first and then execute runbuilds, then the command eventually fails with:
> 
> 2016-01-14 21:37:54,086 DEBUG lbc_shellcmmd: () git remote -v
> Traceback (most recent call last):
>   File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/management/commands/runbuilds.py", line 59, in schedule
>     bec.triggerBuild(br.brbitbake_set.all(), br.brlayer_set.all(), br.brvariable_set.all(), br.brtarget_set.all())
>   File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py", line 365, in triggerBuild
>     self.setLayers(bitbake, layers, targets)
>   File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py", line 229, in setLayers
>     for remotes in self._shellcmd("git remote -v", self.be.sourcedir).split("\n"):
>   File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py", line 61, in _shellcmd
>     p = subprocess.Popen(command, cwd = cwd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
>   File "/usr/lib64/python2.7/subprocess.py", line 710, in __init__
>     errread, errwrite)
>   File "/usr/lib64/python2.7/subprocess.py", line 1335, in _execute_child
>     raise child_exception
> OSError: [Errno 2] No such file or directory: ''
> 
> This is because the BuildEnvironment object in the database has empty fields for Sourcedir and Builddir. One can fix that by going into the Django admin interface and enter paths into these fields of the one BuildEnvironment object that is in the database.
>
I also had to add BuildEnvironment object manually using Django admin interface.
This should be either done automatically or at least mentioned in documentation.

 
> Once the paths are entered and the build is started again then it breaks where runbuilds apparently waits for the Bitbake server to be available:
> 
> 2016-01-14 22:14:54,565 DEBUG lbc_shellcmmd: (/home/fedora/source) bash -c "source /home/fedora/source/_toaster_clones/_git___git.yoctoproject.org_poky_master/oe-init-build-env /home/fedora/build 2>&1 >toaster_server.log && bitbake --read /home/fedora/build/conf/toaster-pre.conf --postread /home/fedora/build/conf/toaster.conf --server-only -t xmlrpc -B 0.0.0.0:0 2>&1 >>toaster_server.log "
> 2016-01-14 22:14:55,540 DEBUG localhostbecontroller: shellcmd success
> 2016-01-14 22:14:55,540 DEBUG localhostbecontroller: Found bitbake server port 33438
> 
> 2016-01-14 22:14:55,543 DEBUG localhostbecontroller: Waiting bitbake server to start
> 
> ... repeated 50 times ...
> 
> 2016-01-14 22:15:20,595 ERROR runbuilds: Error launching build localhostbecontroller: Bitbake server did not start in 25 seconds, aborting (Error: '
> 
> That is in the file /var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py at lines:
> 
>     146         while not started and retries < 50:
>     147             started = _toaster_ui_started(toaster_ui_log_filepath, toaster_ui_log_filelength)
>     148             import time
>     149             logger.debug("localhostbecontroller: Waiting bitbake server to start")
>     150             time.sleep(0.5)
>     151             retries += 1
> 
> The function _toaster_ui_started() that checks if Bitbake is running is defined as:
> 
>     133         def _toaster_ui_started(filepath, filepos = 0):
>     134             if not os.path.exists(filepath):
>     135                 return False
>     136             with open(filepath, "r") as f:
>     137                 f.seek(filepos)
>     138                 for line in f:
>     139                     if line.startswith("NOTE: ToasterUI waiting for events"):
>     140                         return True
>     141             return False
>  
> Apparently, it is looking for a line to start with the string "NOTE: ToasterUI waiting for events" in the file toaster_ui.log which is located inside the build environment that is initialized with oe-init-build-env. I grepped the Poky code base for that string and could not find any code module that ever writes that string into any file. What the file does contain though is a line that starts with "Bitbake server started", which looks rather reasonable for the purpose of checking whether the Bitbake server has been started. I am not sure why one would need to read a file to look for a specific string to check if the Bitbake server has been started, if just before localhostbecontroller states
> 
> 2016-01-14 22:14:55,540 DEBUG localhostbecontroller: Found bitbake server port 33438
> 
> from reading the file toaster_server.log. Why not connect to the port and see if the Bitbake server is running?
> 
> Just for test purposes, I changed line 139 above to:
> 
>     139                     if line.startswith("Bitbake server started"):
> 
> in which case localhostbecontroller now continues with these messages:
> 
> 2016-01-14 22:21:16,008 DEBUG localhostbecontroller: Waiting bitbake server to start
> 2016-01-14 22:21:16,509 DEBUG localhostbecontroller: Started bitbake server
> 2016-01-14 22:21:16,528 DEBUG localhostbecontroller: Build launched, exiting. Follow build logs at /home/fedora/build/toaster_ui.log
> 
> where it exits. However, there is no build running. Bitbake server just sits and waits.
> 

This one I couldn't reproduce. I was able to run the build.

Can you run /var/www/toaster/poky/bitbake/lib/toaster/manage.py
runbuilds in console(not as a service) and show me the output?

> I wonder if anyone has succeeded in making this work and can explain to me what I am missing?
Yes, me :)

I already fixed this in master and I can probably backport it to
jethro, but it's not that easy due to big amount of changes we did since
jethro was released. Let's try to find the reason of this issue first as
it works for me so it's not totally broken.

--
Regards,
Ed

