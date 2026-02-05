Return-Path: <xerofoify@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F270AEA7954
	for <webhook@archiver.kernel.org>; Thu,  5 Feb 2026 02:37:36 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.12310.1770259053551408017
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Feb 2026 18:37:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=df4BUSI5;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: xerofoify@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-894638da330so5492946d6.1
        for <yocto@lists.yoctoproject.org>; Wed, 04 Feb 2026 18:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770259052; x=1770863852; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tyw74X3F+Xx02mgW6QntweciEYUZZ9ezNAmjpZQs2V4=;
        b=df4BUSI5hYjV5hwr/+LxB76b/KvB8vqVrFhZJnYIMrZOxjQIHE7EJPyiddGElPqQoX
         NkKWcx0Ymw63ngvd6lk9akrQHq/0R/vtFXC9nkYgWiAlz91AGsojPfC++Iwcg/kRPVga
         6Clghnp8r10QCcLAfnqjqoEbnnCxEJluJwy1lC1yT1c8ejgtULKksTzfI9vFRxHqXBDG
         D/2mzcFZMYoddPypxm4DV7Y5MDVPufQDMzaLbagWEfx1PZpzXL4uWOUO2yK0IlZ5KRIm
         qrPH8fqfhLDinkxwNJYJQtRwA65e/7E/x5IqQwOteO9h4DTPnFxPSK5n1o0Bg8+5qJIS
         5SdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770259052; x=1770863852;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tyw74X3F+Xx02mgW6QntweciEYUZZ9ezNAmjpZQs2V4=;
        b=HqZyHZ0p39/M5+1dRy7MiQf1dMRr4gtYUBcbl87/6QLHubj1BjnNxs5TxP8qte17me
         tBz/T2cA3PA4brUPLp1DswewV/ltTKK+9+cLojVTtp/USVwZr5M6KP8x2Gsc5emxWOwC
         PuurQF6HW2s3xF8avXs42bqknxTv5/iBXz83UsG6MLsh9gYmwFRIARmy1IODT5rkHu2X
         AuguHqE8PB2HhrSqBI8+K628bJhnr4TzxDIz01cTIfewZinvi92CF5CDKY6pFMeQNxRW
         oqTY0pzx8lZ56Snbr26wDLstCrpRSnF3r47URP2KRaO1623KVrBQXmX6qGnBgbfRw3zA
         Vtmg==
X-Gm-Message-State: AOJu0YwCU5SeTXFG78NEITBwZ8qZiPQfo53wwmioBDbgq1mXvxlfr0Mc
	+cm+izzKy2/s084P+kY2T9ZTlxqZAv04nzlH7z4RBG8U8os+wl8dYkHG+1L4hQ==
X-Gm-Gg: AZuq6aIfyyzq4d3alX1aEFzpJ7Lnf3FaRgFI0Mpw1Cy7qyZlWTuq9GiZHAn/7YoIGP0
	JevcUBQVPOA8puPVpZ2sW2sm5Ogsl4VcmEVBo0MkjpgF8OCsKD94RAfP8SUmUoQwrDLkt8AWdVY
	a8OYb+uf4JEWTaKhhRJxvODU4xhU8a3WBA6PlqAaCU48B7M8rO69cA28vXYe5uS7jyvfJOQe+F+
	XxY+XhHysv0AieSApkYYL4QIxw37vrEpE1VW3lxGWNyDVvF0Wcai1O30To2t1BlHCZQOyTcuRZX
	nF0qrzJCQagTbTDpPI1Jfkd8QE2/uEE5P2bo667YduGgsQALRXiMsIFWw4jjuO1bRBjpYcusKC7
	W1s8DhVklwSIvSURYJjtbavymx79VvkqLrcJZJL5i6OaJelIvvtgRdQJ7S7MvFg//dacZLnG7cC
	u5X3+8PAFAusO21xuR6mDbGmqQQODTfG89vlakKo7mdfglRbfctPfeWQ==
X-Received: by 2002:a05:6214:29ec:b0:888:6227:3e57 with SMTP id 6a1803df08f44-8952210a2d7mr80567916d6.16.1770259051962;
        Wed, 04 Feb 2026 18:37:31 -0800 (PST)
Received: from [192.168.0.78] (173-230-162-209.cable.teksavvy.com. [173.230.162.209])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89521cf87fcsm35014266d6.30.2026.02.04.18.37.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 18:37:31 -0800 (PST)
Message-ID: <bebf26e4-234b-40c8-af17-1582d733cae2@gmail.com>
Date: Wed, 4 Feb 2026 21:39:15 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: yocto@lists.yoctoproject.org
From: Nicholas Krause <xerofoify@gmail.com>
Subject: Arch Linux - Python Newer than Recommend i.e. post 3.12
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Feb 2026 02:37:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66220

Greetings,
I'm getting this on Arch:
bitbake core-image-full-cmdline
Traceback (most recent call last):
   File "/home/npkrause/poky/bitbake/bin/bitbake", line 36, in <module>
     sys.exit(bitbake_main(BitBakeConfigParameters(sys.argv),
              ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                           cookerdata.CookerConfiguration()))
                           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   File "/home/npkrause/poky/bitbake/lib/bb/main.py", line 378, in 
bitbake_main
     return ui_module.main(server_connection.connection, 
server_connection.events,
  
~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
                           configParams)
                           ^^^^^^^^^^^^^
   File "/home/npkrause/poky/bitbake/lib/bb/ui/knotty.py", line 415, in main
     params.updateToServer(server, os.environ.copy())
     ~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^
   File "/home/npkrause/poky/bitbake/lib/bb/cookerdata.py", line 75, in 
updateToServer
     raise Exception("Unable to update the server configuration with 
local parameters: %s" % error)
Exception: Unable to update the server configuration with local 
parameters: Traceback (most recent call last):
   File "/home/npkrause/poky/bitbake/lib/bb/command.py", line 90, in 
runCommand
     result = command_method(self, commandline)
   File "/home/npkrause/poky/bitbake/lib/bb/command.py", line 286, in 
updateConfig
     command.cooker.updateConfigOpts(options, environment, cmdline)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   File "/home/npkrause/poky/bitbake/lib/bb/cooker.py", line 535, in 
updateConfigOpts
     self.reset()
     ~~~~~~~~~~^^
   File "/home/npkrause/poky/bitbake/lib/bb/cooker.py", line 1775, in reset
     self.handlePRServ()
     ~~~~~~~~~~~~~~~~~^^
   File "/home/npkrause/poky/bitbake/lib/bb/cooker.py", line 437, in 
handlePRServ
     self.hashserv.serve_as_process()
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
   File "/home/npkrause/poky/bitbake/lib/bb/asyncrpc/serv.py", line 280, 
in serve_as_process
     self.process.start()
     ~~~~~~~~~~~~~~~~~~^^
   File "/usr/lib/python3.14/multiprocessing/process.py", line 121, in start
     self._popen = self._Popen(self)
                   ~~~~~~~~~~~^^^^^^
   File "/usr/lib/python3.14/multiprocessing/context.py", line 224, in 
_Popen
     return _default_context.get_context().Process._Popen(process_obj)
            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^
   File "/usr/lib/python3.14/multiprocessing/context.py", line 300, in 
_Popen
     return Popen(process_obj)
   File "/usr/lib/python3.14/multiprocessing/popen_forkserver.py", line 
35, in __init__
     super().__init__(process_obj)
     ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^
   File "/usr/lib/python3.14/multiprocessing/popen_fork.py", line 20, in 
__init__
     self._launch(process_obj)
     ~~~~~~~~~~~~^^^^^^^^^^^^^
   File "/usr/lib/python3.14/multiprocessing/popen_forkserver.py", line 
47, in _launch
     reduction.dump(process_obj, buf)
     ~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
   File "/usr/lib/python3.14/multiprocessing/reduction.py", line 60, in dump
     ForkingPickler(file, protocol).dump(obj)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^
_pickle.PicklingError: Can't pickle local object <function 
AsyncServer.serve_as_process.<locals>.run at 0x7fea88598a90>
when serializing dict item '_target'
when serializing multiprocessing.context.Process state

Due to being on Python 3.14. I would prefer not to have to use a 
backwards supported penv for Yocto alone. Does anyone have any 
experience with working on Arch and how to avoid these issues without 
either dealing with penv or yay for getting a older version of python, 
pre 3.12 I believe.
Thanks,
Nick

