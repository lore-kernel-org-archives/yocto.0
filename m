Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2D6DE00C1F; Sun, 16 Oct 2016 01:31:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.81 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 385 seconds by postgrey-1.32 at yocto-www;
	Sun, 16 Oct 2016 01:31:41 PDT
Received: from mailout03.t-online.de (mailout03.t-online.de [194.25.134.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D7A3E0049A
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 01:31:41 -0700 (PDT)
Received: from fwd33.aul.t-online.de (fwd33.aul.t-online.de [172.20.27.144])
	by mailout03.t-online.de (Postfix) with SMTP id 24172422075A
	for <yocto@yoctoproject.org>; Sun, 16 Oct 2016 10:25:15 +0200 (CEST)
Received: from [192.168.2.105]
	(TcXVMYZSghWu5qNAHHmIoLGPTjIuwbpQEYJUHBtUhAxCc4oLkQeRVnnBPp4gIP5Qvz@[79.199.47.227])
	by fwd33.t-online.de with (TLSv1.2:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1bvgkq-2o6yxM0; Sun, 16 Oct 2016 10:25:12 +0200
From: Markus Volk <f_l_k@t-online.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <f390bb91-935c-77d0-55a3-c144c74a647f@t-online.de>
Date: Sun, 16 Oct 2016 10:25:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
X-ID: TcXVMYZSghWu5qNAHHmIoLGPTjIuwbpQEYJUHBtUhAxCc4oLkQeRVnnBPp4gIP5Qvz
X-TOI-MSGID: efa55e94-ee8e-49a0-9a30-f38cc7277c57
Subject: Problems getting build appliance to work
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
X-List-Received-Date: Sun, 16 Oct 2016 08:31:46 -0000
Content-Type: multipart/alternative;
	boundary="------------359896153C805DCC80786336"

--------------359896153C805DCC80786336
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi,

i have created an image for genericx86 from the krogoth branch and would 
like to integrate a build appliance. I used build-appliance-image.bb as 
a template.

However, there is still something missing. When I run bitbake, i’m 
getting a loop.


After aborting by [strg + c] I get this output and also have the same 
behavior when cloning poky and my meta layer in the running image, 
instead of building it into


builder ~ $ cd poky/git/

builder ~/poky/git $ . ./oe-init-build-env


### Shell environment set up for builds. ###


You can now run 'bitbake <target>'


Common targets are:
core-image-minimal
core-image-sato
meta-toolchain
meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86'

builder ~/poky/git/build $ bitbake -e
^CError in atexit._run_exitfuncs:
Traceback (most recent call last):
File "/usr/lib/python3.5/multiprocessing/popen_fork.py", line 29, in poll
pid, sts = os.waitpid(self.pid, flag)
KeyboardInterrupt

WARNING: Timeout while attempting to communicate with bitbake server
WARNING: Timeout while attempting to communicate with bitbake server
WARNING: Timeout while attempting to communicate with bitbake server
WARNING: Timeout while attempting to communicate with bitbake server

ERROR: Gave up; Too many tries: timeout while attempting to communicate 
with bitbake server
ERROR: Could not connect to server None:


I have no idea what i am missing here.

Who can give me a tip?


--------------359896153C805DCC80786336
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>
      <meta http-equiv="content-type" content="text/html; charset=utf-8">
    </p>
    <p>
      <title></title>
      <meta name="generator" content="LibreOffice 5.1.4.2 (Linux)">
      <style type="text/css">
		@page { margin: 2cm }
		p { margin-bottom: 0.25cm; line-height: 120% }</style>
      <p style="margin-bottom: 0cm; line-height: 100%"><br>
      </p>
      <p style="margin-bottom: 0cm; line-height: 100%">Hi,<br>
      </p>
      <p style="margin-bottom: 0cm; line-height: 100%">i have
        created an image for genericx86 from the krogoth branch and
        would
        like to integrate a build appliance. I used
        build-appliance-image.bb
        as a template.<br>
      </p>
      <p style="margin-bottom: 0cm; line-height: 100%" lang="en-US">
        However, there is still something missing. When I
        run bitbake, i’m getting a loop.</p>
      <p style="margin-bottom: 0cm; line-height: 100%" lang="en-US"><br>
      </p>
      <p style="margin-bottom: 0cm; line-height: 100%" lang="en-US">After
        aborting by [strg + c] I get this output and also have the same
        behavior when cloning poky and my meta layer in the running
        image,
        instead of building it into</p>
      <p style="margin-bottom: 0cm; line-height: 100%" lang="en-US"><br>
      </p>
    </p>
    <font face="FreeMono">builder ~ $ cd
      poky/git/</font><br>
    <font face="FreeMono">
    </font><br>
    <font face="FreeMono">builder ~/poky/git $ . ./oe-init-build-env</font><br>
    <font face="FreeMono">
    </font><br>
    <font face="FreeMono">
    </font><br>
    <font face="FreeMono">### Shell
      environment set up for builds. ###</font><br>
    <font face="FreeMono">
    </font><br>
    <br>
    <font face="FreeMono">You can now run
      'bitbake &lt;target&gt;'</font><br>
    <font face="FreeMono">
    </font><br>
    <br>
    <font face="FreeMono">Common targets are:</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">core-image-minimal</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">core-image-sato</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">meta-toolchain</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">meta-ide-support</font><br>
    <font face="FreeMono">
    </font><br>
    <font face="FreeMono">You can also run
      generated qemu images with a command like 'runqemu qemux86'</font><br>
    <font face="FreeMono">
    </font><br>
    <font face="FreeMono">builder
      ~/poky/git/build $ bitbake -e</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">^CError in
      atexit._run_exitfuncs:</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">Traceback (most
      recent call last):</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">File
      "/usr/lib/python3.5/multiprocessing/popen_fork.py", line
      29, in poll</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">pid, sts =
      os.waitpid(self.pid, flag)</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">KeyboardInterrupt</font><br>
    <font face="FreeMono">
    </font><br>
    <font face="FreeMono">WARNING: Timeout
      while attempting to communicate with bitbake server</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">WARNING: Timeout
      while attempting to communicate with bitbake server</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">WARNING: Timeout
      while attempting to communicate with bitbake server</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">WARNING: Timeout
      while attempting to communicate with bitbake server</font><br>
    <font face="FreeMono">
    </font><br>
    <font face="FreeMono">ERROR: Gave up; Too
      many tries: timeout while attempting to communicate with bitbake
      server</font><br>
    <font face="FreeMono">
    </font><font face="FreeMono">ERROR: Could not
      connect to server None: </font><br>
    <p style="margin-bottom: 0cm; line-height: 100%" lang="en-US"><br>
    </p>
    <p style="margin-bottom: 0cm; line-height: 100%" lang="en-US">I have
      no idea what i am missing here. </p>
    <p style="margin-bottom: 0cm; line-height: 100%" lang="en-US">Who
      can
      give me a tip?</p>
  </body>
</html>

--------------359896153C805DCC80786336--
