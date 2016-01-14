Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90964E007EA; Thu, 14 Jan 2016 15:03:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6496BE0070F
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 15:03:21 -0800 (PST)
Received: by mail-pf0-f173.google.com with SMTP id q63so110175488pfb.1
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 15:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:user-agent:mime-version
	:content-transfer-encoding:content-type;
	bh=S+HCZSYyq3mh3QBfNcRQYybrdOHjLLhjGec/VFM+e8g=;
	b=hJJyKFUZfyyjU7N8Ke6Y3G1OUQykAHB7dZAA+cBo0e73y61weECwvIZ3wfZDHFloAU
	V8aRD+Nyafg9cAaWkGOMd1rKiWCrH3xtwdVp2lTu/4t02hwYSKTnpEtTQqVRKJstdjEg
	l5cb75RzB4WCNO28B2AlwDKnMOO08JhVMn8Vr5UKASAFsz/gvRunpVC0nWYlvy6/Q+eO
	J6fDAef8fqFpRh78HyX1yN2lYljHeWRgb2b6zmKpNYYFum8D+y798nQNVsco7DvkIFrA
	nUf54oCmRfKyyylUE9i3sqI3VWYql7vqILYtC7jtcvV+O7pKNzvoMXqmG73MAb37atDm
	FT9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:user-agent
	:mime-version:content-transfer-encoding:content-type;
	bh=S+HCZSYyq3mh3QBfNcRQYybrdOHjLLhjGec/VFM+e8g=;
	b=hiR26zIUuaisNgDETleLCYeaKKIRhVWvXGODW/ccVP06ktaTiZu36Kk30xmmwefSNl
	YX/C/dTayvU9A5Xyj/rFKyiG2QgI1FPiok4gg7CsTpNP4+92AI/y18/zk0G5VDJyWngd
	KAnWonnSQGn4yK0vzuyTlB26cOq5lXdLknBsqiZUfPHyDC2g45Z7Z6XLusIMqV2ce39a
	Jj6CERW4HACTXJQFNgPqRzwemyUL27/3PneXkal7aFb6GvL3MQMPzrDvoW7ImOk3IM/G
	drFEIxOqUlY8xCMcCCUniAl6X7nfsnEvWl//LQmHsInwPsS4QDzWzDjKWOG5v3N0QdUf
	l8Xw==
X-Gm-Message-State: ALoCoQnpLq/FREMJDAoCbhcrYzl0FWzrwDkh8Ui27pUQorVcP885RJ77OUSrJb9aqUe03Ht30kiFctJXiZMuOPsCcXPovBZuIw==
X-Received: by 10.98.19.214 with SMTP id 83mr10107446pft.22.1452812601549;
	Thu, 14 Jan 2016 15:03:21 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	b28sm11580710pfd.24.2016.01.14.15.03.20 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Jan 2016 15:03:20 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: Yocto Project =?utf-8?B?4oCOW3lvY3RvQHlvY3RvcHJvamVjdC5vcmdd4oCO?=
	<yocto@yoctoproject.org>
Date: Thu, 14 Jan 2016 15:03:19 -0800
Message-ID: <1530744.VQ6Lh0k6b2@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.2.8-200.fc22.x86_64+debug; KDE/4.14.14;
	x86_64; ; )
MIME-Version: 1.0
Subject: [Toaster] Production Instance Setup
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
X-List-Received-Date: Thu, 14 Jan 2016 23:03:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Everyone:

I am trying to set up Toaster in a production environment with Apache etc. The web server setup is ok. It is running builds where I am currently stuck.

I am using the Jethro branch from the git repo.

According to step 7 in [1] one needs to start

/var/www/toaster/poky/bitbake/lib/toaster/manage.py runbuilds

to start the runner service to dispatch builds. If there are currently no pending builds (non yet created using the web UI) then running this command immediately returns. The command gets dispatched to

poky/bitbake/lib/toaster/bldcontrol/management/commands/runbuilds.py

In its command help it states:

14: help    = "Schedules and executes build requests as possible. Does not return (interrupt with Ctrl-C)"

However, that is apparently not the case because if there is not build request pending then

35:            try:
36:                # select the build environment and the request to build
37:               br = self._selectBuildRequest()
38:            except IndexError as e:
39:                logger.debug("runbuilds: No build request")
40:                return

If you use the web UI and schedule (start) a build first and then execute runbuilds, then the command eventually fails with:

2016-01-14 21:37:54,086 DEBUG lbc_shellcmmd: () git remote -v
Traceback (most recent call last):
  File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/management/commands/runbuilds.py", line 59, in schedule
    bec.triggerBuild(br.brbitbake_set.all(), br.brlayer_set.all(), br.brvariable_set.all(), br.brtarget_set.all())
  File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py", line 365, in triggerBuild
    self.setLayers(bitbake, layers, targets)
  File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py", line 229, in setLayers
    for remotes in self._shellcmd("git remote -v", self.be.sourcedir).split("\n"):
  File "/var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py", line 61, in _shellcmd
    p = subprocess.Popen(command, cwd = cwd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
  File "/usr/lib64/python2.7/subprocess.py", line 710, in __init__
    errread, errwrite)
  File "/usr/lib64/python2.7/subprocess.py", line 1335, in _execute_child
    raise child_exception
OSError: [Errno 2] No such file or directory: ''

This is because the BuildEnvironment object in the database has empty fields for Sourcedir and Builddir. One can fix that by going into the Django admin interface and enter paths into these fields of the one BuildEnvironment object that is in the database.

Once the paths are entered and the build is started again then it breaks where runbuilds apparently waits for the Bitbake server to be available:

2016-01-14 22:14:54,565 DEBUG lbc_shellcmmd: (/home/fedora/source) bash -c "source /home/fedora/source/_toaster_clones/_git___git.yoctoproject.org_poky_master/oe-init-build-env /home/fedora/build 2>&1 >toaster_server.log && bitbake --read /home/fedora/build/conf/toaster-pre.conf --postread /home/fedora/build/conf/toaster.conf --server-only -t xmlrpc -B 0.0.0.0:0 2>&1 >>toaster_server.log "
2016-01-14 22:14:55,540 DEBUG localhostbecontroller: shellcmd success
2016-01-14 22:14:55,540 DEBUG localhostbecontroller: Found bitbake server port 33438

2016-01-14 22:14:55,543 DEBUG localhostbecontroller: Waiting bitbake server to start

... repeated 50 times ...

2016-01-14 22:15:20,595 ERROR runbuilds: Error launching build localhostbecontroller: Bitbake server did not start in 25 seconds, aborting (Error: '

That is in the file /var/www/toaster/poky/bitbake/lib/toaster/bldcontrol/localhostbecontroller.py at lines:

    146         while not started and retries < 50:
    147             started = _toaster_ui_started(toaster_ui_log_filepath, toaster_ui_log_filelength)
    148             import time
    149             logger.debug("localhostbecontroller: Waiting bitbake server to start")
    150             time.sleep(0.5)
    151             retries += 1

The function _toaster_ui_started() that checks if Bitbake is running is defined as:

    133         def _toaster_ui_started(filepath, filepos = 0):
    134             if not os.path.exists(filepath):
    135                 return False
    136             with open(filepath, "r") as f:
    137                 f.seek(filepos)
    138                 for line in f:
    139                     if line.startswith("NOTE: ToasterUI waiting for events"):
    140                         return True
    141             return False
 
Apparently, it is looking for a line to start with the string "NOTE: ToasterUI waiting for events" in the file toaster_ui.log which is located inside the build environment that is initialized with oe-init-build-env. I grepped the Poky code base for that string and could not find any code module that ever writes that string into any file. What the file does contain though is a line that starts with "Bitbake server started", which looks rather reasonable for the purpose of checking whether the Bitbake server has been started. I am not sure why one would need to read a file to look for a specific string to check if the Bitbake server has been started, if just before localhostbecontroller states

2016-01-14 22:14:55,540 DEBUG localhostbecontroller: Found bitbake server port 33438

from reading the file toaster_server.log. Why not connect to the port and see if the Bitbake server is running?

Just for test purposes, I changed line 139 above to:

    139                     if line.startswith("Bitbake server started"):

in which case localhostbecontroller now continues with these messages:

2016-01-14 22:21:16,008 DEBUG localhostbecontroller: Waiting bitbake server to start
2016-01-14 22:21:16,509 DEBUG localhostbecontroller: Started bitbake server
2016-01-14 22:21:16,528 DEBUG localhostbecontroller: Build launched, exiting. Follow build logs at /home/fedora/build/toaster_ui.log

where it exits. However, there is no build running. Bitbake server just sits and waits.

I wonder if anyone has succeeded in making this work and can explain to me what I am missing?

Thank you,
Rudi




[1] http://www.yoctoproject.org/docs/2.0/mega-manual/mega-manual.html#toaster-installation-steps


