Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44422EC1E85
	for <webhook@archiver.kernel.org>; Thu,  5 Feb 2026 09:46:20 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.17179.1770284772226714540
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Feb 2026 01:46:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mdmFRR/r;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-8c5384ee23fso72061985a.1
        for <yocto@lists.yoctoproject.org>; Thu, 05 Feb 2026 01:46:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770284771; cv=none;
        d=google.com; s=arc-20240605;
        b=RshBFhzDFIz6YpNXonsJ8JMIg+P6ZBNtEOh1DykBAEJwmoYwAacHATy4yrkfHop7IT
         fzqqPlgsfaFOrMZo4iwOvjx0zJc8wqPaArIl00T/O3nMEz4qQIl1oreMGcbJjd4bEMw7
         gzTQ3D3FpYL3LkAJ6TeQV+1lp0Md+RVl88aPC22Do4xItb5B5+SRkdRvJr4XJJsY1hB6
         UIRqsUUcZhfuraX1ohO5T4rczP0+65zP4fNiN0Zv1B64TraJn4HFt0Hz2KcDg1F8PHpu
         2d3fG3GUEAY2wFsOmpdV/SUzne98bXNxJZeoZ33rNmDhGOGP8Zp6YwG8kcEUWWASFjLa
         QWTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=FOsQlQ0kU9b2iwQwCYj/yMh7dBctBoT+vxYXkd4cKik=;
        fh=zNpWAh7h7iiKMpcg+9NGEROdBtI6CozM3mctu3dLojA=;
        b=C+++Cwv6sVPCN+UJieElgZUaMd3MDuTNsdvjAETw0OWIfgqBAiv+YCjgyji9wl0PzX
         ntDUI2P3xCwTyv1SkBvsyO1MZGmjM3jd1q3Iu7j+mPQwr9rdpW6Ogkn+DW4u8TP+5aE/
         m5XMumVVPk3jttoAWWVFM8XkWqPI9KH9EnWEQVm5y7dfqy3iH8yWYU7ybG45u+LeF53d
         t8rJjvSPAFpR82W3Oe8CItWblCcGuRa3POul7hcrBdQCbNGb4ctaFYkOp+q0+kINAeg4
         BheKi+914IUzroEMyg/Wo0JXJ76ggafkpRj2gXcpipXL67O/9NwcvbvcQ8thNwLaRIz9
         PJLg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770284771; x=1770889571; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FOsQlQ0kU9b2iwQwCYj/yMh7dBctBoT+vxYXkd4cKik=;
        b=mdmFRR/rrT/BYTX/Onnt9gguFHXstIlQnFkcIIN6zglx8qHmK1OgykO8Wy1ngwx5/t
         rLEEo1vPfVyO7PE+gaugBeF/VvAuhxBgJ0aZtUWqkcnLsltphsz+Hgnb5GbP+fWSSNbp
         XXX2PGay1UZplHn53sp+6uLufNa9fJfOUiW/N6SC3DC/76UlRpJrL3qN6ZPVMCfd1XPs
         xsZbBS2l3Fa4lnUJ9Hw3zq+eMRvPz8pUIZ8LVhEHgMQuCOoXUR1IyKkcqHu2BYDSvn3Z
         Rs3oHzO2V0ZnAd/SQ0bLRgRWS2GesvYjnOYsLKmDA6SzULISZeIDblwYxEltdR9w+Rm9
         Pr7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770284771; x=1770889571;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FOsQlQ0kU9b2iwQwCYj/yMh7dBctBoT+vxYXkd4cKik=;
        b=RZbzJNk/rkLsUCKVLGrE+74nTmNjRtK5an5rlj+1cvDbrbWLEsXGflDkeAYwoci260
         VRWjafRqXcJdLXZP5QrlZkCa/dxwj7WfIiwJH1bz8WHBD9eK3Yi1zKgkfnumJPnxph0Y
         /Y7gjddpJGtxEr/qdqChVVrvwj3mc6Sx4Q0X7AqOb5fApgsFiadPm3jF3MUrX9x8wOY1
         /JIeq103vO4l7gbOfbswTDslkBKqBUgXRjwZ25yZSuSN9wn7t9+POj/CHbK77yinslP3
         PrixTzFMHnk16a3yd+qqQ3r+hTXzofuvV2dqYHXMQ3WSTgrVlE5O5erjZjZg9PcjWN90
         aBjA==
X-Gm-Message-State: AOJu0Yyq8ZLGJYKvF9lk3sXTKyApaOZ1hUOhD+IZD7CRvL/CddfI1mt8
	O0ReKWtfBqvXNhypV89dVgb6lX4f8i1qy8DG3Zmbpqi6sc87XQsN5EwZkt0c49uepDzDE2RH7pf
	flma5tYC2GiD1241Vh/NOVQx25M+hZ/Y57g==
X-Gm-Gg: AZuq6aKIaXOjejocqEmHrK2fkxwZWIpIedEPgh99ZN2lahmJ95Jr+4DmG7i2yBn7gf7
	cNnSEdzcUPhR6vfZZv7gs0sc6vbqdtla9R0khxvqjYFfUihghGl3RI5wZ+BYgG7Im/p223I3em+
	T4j8P+g8ZGonT2Mx9dAN6eB96b/faJ5eD3ab6GykI/mxmUv+cKeYXLfOkUiUrBlDroYe5t/4KJG
	7mQ60tHuVImXmoyvZrYHz5yaXZWuKZRoCF9WX/HyqBGaHyrX0LUzmzJ/CcxgwykfpzUtb5Zyumm
	FoJ9+e7zSLDtaiQ0Xc0QyD78G6ZfRg==
X-Received: by 2002:a05:620a:480b:b0:8b9:dc23:89b9 with SMTP id
 af79cd13be357-8ca2f9d9875mr803915785a.58.1770284771115; Thu, 05 Feb 2026
 01:46:11 -0800 (PST)
MIME-Version: 1.0
References: <bebf26e4-234b-40c8-af17-1582d733cae2@gmail.com>
In-Reply-To: <bebf26e4-234b-40c8-af17-1582d733cae2@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 5 Feb 2026 10:46:00 +0100
X-Gm-Features: AZwV_QjvcFDmzbFBnX2ItEAc194E_hmpgTawCjLvcUQcj0UsLRkGj_kqzBvcyA8
Message-ID: <CANNYZj9hbLXOXnpj4zsG+Q=qW7cwF-X8aTWBwQ0k1oYxxpBvwQ@mail.gmail.com>
Subject: Re: [yocto] Arch Linux - Python Newer than Recommend i.e. post 3.12
To: yocto@lists.yoctoproject.org, xerofoify@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Feb 2026 09:46:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66225

Which version of yocto/bitbake are you using? Can you check if the
issue triggers on latest master of bitbake/oe-core?

Alex

On Thu, 5 Feb 2026 at 03:37, Nicholas Krause via
lists.yoctoproject.org <xerofoify=gmail.com@lists.yoctoproject.org>
wrote:
>
> Greetings,
> I'm getting this on Arch:
> bitbake core-image-full-cmdline
> Traceback (most recent call last):
>    File "/home/npkrause/poky/bitbake/bin/bitbake", line 36, in <module>
>      sys.exit(bitbake_main(BitBakeConfigParameters(sys.argv),
>               ~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>                            cookerdata.CookerConfiguration()))
>                            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>    File "/home/npkrause/poky/bitbake/lib/bb/main.py", line 378, in
> bitbake_main
>      return ui_module.main(server_connection.connection,
> server_connection.events,
>
> ~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>                            configParams)
>                            ^^^^^^^^^^^^^
>    File "/home/npkrause/poky/bitbake/lib/bb/ui/knotty.py", line 415, in main
>      params.updateToServer(server, os.environ.copy())
>      ~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^
>    File "/home/npkrause/poky/bitbake/lib/bb/cookerdata.py", line 75, in
> updateToServer
>      raise Exception("Unable to update the server configuration with
> local parameters: %s" % error)
> Exception: Unable to update the server configuration with local
> parameters: Traceback (most recent call last):
>    File "/home/npkrause/poky/bitbake/lib/bb/command.py", line 90, in
> runCommand
>      result = command_method(self, commandline)
>    File "/home/npkrause/poky/bitbake/lib/bb/command.py", line 286, in
> updateConfig
>      command.cooker.updateConfigOpts(options, environment, cmdline)
>      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>    File "/home/npkrause/poky/bitbake/lib/bb/cooker.py", line 535, in
> updateConfigOpts
>      self.reset()
>      ~~~~~~~~~~^^
>    File "/home/npkrause/poky/bitbake/lib/bb/cooker.py", line 1775, in reset
>      self.handlePRServ()
>      ~~~~~~~~~~~~~~~~~^^
>    File "/home/npkrause/poky/bitbake/lib/bb/cooker.py", line 437, in
> handlePRServ
>      self.hashserv.serve_as_process()
>      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^
>    File "/home/npkrause/poky/bitbake/lib/bb/asyncrpc/serv.py", line 280,
> in serve_as_process
>      self.process.start()
>      ~~~~~~~~~~~~~~~~~~^^
>    File "/usr/lib/python3.14/multiprocessing/process.py", line 121, in start
>      self._popen = self._Popen(self)
>                    ~~~~~~~~~~~^^^^^^
>    File "/usr/lib/python3.14/multiprocessing/context.py", line 224, in
> _Popen
>      return _default_context.get_context().Process._Popen(process_obj)
>             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^^^^^^^^^
>    File "/usr/lib/python3.14/multiprocessing/context.py", line 300, in
> _Popen
>      return Popen(process_obj)
>    File "/usr/lib/python3.14/multiprocessing/popen_forkserver.py", line
> 35, in __init__
>      super().__init__(process_obj)
>      ~~~~~~~~~~~~~~~~^^^^^^^^^^^^^
>    File "/usr/lib/python3.14/multiprocessing/popen_fork.py", line 20, in
> __init__
>      self._launch(process_obj)
>      ~~~~~~~~~~~~^^^^^^^^^^^^^
>    File "/usr/lib/python3.14/multiprocessing/popen_forkserver.py", line
> 47, in _launch
>      reduction.dump(process_obj, buf)
>      ~~~~~~~~~~~~~~^^^^^^^^^^^^^^^^^^
>    File "/usr/lib/python3.14/multiprocessing/reduction.py", line 60, in dump
>      ForkingPickler(file, protocol).dump(obj)
>      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^^^^^
> _pickle.PicklingError: Can't pickle local object <function
> AsyncServer.serve_as_process.<locals>.run at 0x7fea88598a90>
> when serializing dict item '_target'
> when serializing multiprocessing.context.Process state
>
> Due to being on Python 3.14. I would prefer not to have to use a
> backwards supported penv for Yocto alone. Does anyone have any
> experience with working on Arch and how to avoid these issues without
> either dealing with penv or yay for getting a older version of python,
> pre 3.12 I believe.
> Thanks,
> Nick
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66220): https://lists.yoctoproject.org/g/yocto/message/66220
> Mute This Topic: https://lists.yoctoproject.org/mt/117647566/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

