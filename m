Return-Path: <Yi.Zhao@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB386E00895
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 23:10:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2K6AWGM011227
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 19 Mar 2014 23:10:32 -0700 (PDT)
Received: from [128.224.158.183] (128.224.158.183) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.169.1;
	Wed, 19 Mar 2014 23:10:31 -0700
Message-ID: <532A8653.7050300@windriver.com>
Date: Thu, 20 Mar 2014 14:10:27 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
X-Originating-IP: [128.224.158.183]
Cc: "Eggleton, Paul" <paul.eggleton@intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Hob still can not launch in build-appliance with 1.4.3 rc4
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
X-List-Received-Date: Thu, 20 Mar 2014 06:10:36 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 7bit

Hi all,

With 1.4.3 rc4 build, the hob still can not launch in build-appliance.
Looks it still miss python module. I already reopened bug 5941 .
Here is the error message:

** (process:672): WARNING **: Trying to register gtype 'GMountMountFlags' as enum when in fact it is of type 'GFlags'

** (process:672): WARNING **: Trying to register gtype 'GDriveStartFlags' as enum when in fact it is of type 'GFlags'

** (process:672): WARNING **: Trying to register gtype 'GSocketMsgFlags' as enum when in fact it is of type 'GFlags'
Traceback (most recent call last):
  File "/home/builder/poky/bitbake/bin/bitbake", line 352, in <module>
    ret = main()
  File "/home/builder/poky/bitbake/bin/bitbake", line 301, in main
    server = start_server(servermodule, configParams, configuration)
  File "/home/builder/poky/bitbake/bin/bitbake", line 213, in start_server
    server.initServer()
  File "/home/builder/poky/bitbake/lib/bb/server/process.py", line 221, in initServer
    self.serverImpl = ProcessServer(self.server_channel, self.event_queue, None)
  File "/home/builder/poky/bitbake/lib/bb/server/process.py", line 91, in __init__
    self.event_handle = multiprocessing.Value("i")
  File "/usr/lib/python2.7/multiprocessing/__init__.py", line 252, in Value
    from multiprocessing.sharedctypes import Value
  File "/usr/lib/python2.7/multiprocessing/sharedctypes.py", line 39, in <module>
    from multiprocessing import heap, RLock
  File "/usr/lib/python2.7/multiprocessing/heap.py", line 36, in <module>
    import mmap
ImportError: No module named mmap
DEBUG: Removed the following variables from the environment: USERNAME, SUDO_COMMAND, SUDO_GID, TZ, BUILDDIR, PSEUDO_LOCALSTATEDIR, SHLVL, SUDO_UID, PSEUDO_PREFIX, PSEUDO_LIBDIR, MAIL, SUDO_USER, DISPLAY, _




Yi

