Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41652E003BF
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 09:51:15 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A9EADF81211; Wed,  4 Sep 2013 10:51:15 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4E331F81205;
	Wed,  4 Sep 2013 10:51:14 -0600 (MDT)
Message-ID: <52276526.6070700@mlbassoc.com>
Date: Wed, 04 Sep 2013 10:51:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <522725DD.4080509@thepagefamily.co.za>
In-Reply-To: <522725DD.4080509@thepagefamily.co.za>
Subject: Re: BitBake errors when building core-image-minimal
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
X-List-Received-Date: Wed, 04 Sep 2013 16:51:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-09-04 06:21, Thomas Page wrote:
> Hi
>
> Having installed the Yocto required packages and created a git branch of the project in a new installation of Ubuntu 12.04 LTS I have tried building the core-image-minimal image
> but continually have the process fail. Having gone through the installation process several times not I simply cannot seem to get this solved.
>
> i must add that after a fresh install of the yocto project and set up of my host i find that Bitbake will not execute on first attempt and must be installed. I do not remember this
> having to be done in my previous use of the Yocto Project to successfully build an image.
>
> The error i get is as follows:
>
> tpage@ubuntu:~/poky/batmel$ bitbake core-image-minimal
> Traceback (most recent call last):
>    File "/usr/bin/bitbake", line 234, in <module>
>      ret = main()
>    File "/usr/bin/bitbake", line 197, in main
>      server = ProcessServer(server_channel, event_queue, configuration)
>    File "/usr/lib/pymodules/python2.7/bb/server/process.py", line 78, in __init__
>      self.cooker = BBCooker(configuration, self.register_idle_function)
>    File "/usr/lib/pymodules/python2.7/bb/cooker.py", line 76, in __init__
>      self.parseConfigurationFiles(self.configuration.file)
>    File "/usr/lib/pymodules/python2.7/bb/cooker.py", line 510, in parseConfigurationFiles
>      data = _parse(os.path.join("conf", "bitbake.conf"), data)
> TypeError: getVar() takes exactly 3 arguments (2 given)
> ERROR: Error evaluating '${TARGET_OS}:${TRANSLATED_TARGET_ARCH}:build-${BUILD_OS}:pn-${PN}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}:${CLASSOVERRIDE}:forcevariable'
> Traceback (most recent call last):
>    File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 116, in expandWithRefs
>      s = __expand_var_regexp__.sub(varparse.var_sub, s)
>    File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 60, in var_sub
>      var = self.d.getVar(key, 1)
>    File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 260, in getVar
>      return self.expand(value, var)
>    File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 132, in expand
>      return self.expandWithRefs(s, varname).value
>    File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 117, in expandWithRefs
>      s = __expand_python_regexp__.sub(varparse.python_sub, s)
> TypeError: getVar() takes exactly 3 arguments (2 given)
>
> ERROR: Error evaluating '${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[0] or 'defaultpkgname'}'
> Traceback (most recent call last):
>    File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 117, in expandWithRefs
>      s = __expand_python_regexp__.sub(varparse.python_sub, s)
>    File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 76, in python_sub
>      value = utils.better_eval(codeobj, DataContext(self.d))
>    File "/usr/lib/pymodules/python2.7/bb/utils.py", line 387, in better_eval
>      return eval(source, _context, locals)
>    File "PN", line 1, in <module>
> TypeError: getVar() takes exactly 3 arguments (2 given)
>
> Any feedback will be appreciated even as to where I should look for the problem

How did you start this project?  It looks to me like your bitbake/Yocto
environment hasn't been set up completely.

These steps can get you started:
   % . <YOCTO>/oe-init-build-env my_yocto_build
This will create a build tree called `pwd`/my_yocto_build.  You can put the name
of any directory here.  After the above step, your shell will change to that directory.
Now, edit 'conf/local.conf' to match your needs.  Then you can build your image:
   % bitbake core-image-minimal

Please try exactly these steps and see if it helps.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

