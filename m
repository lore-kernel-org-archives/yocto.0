Return-Path: <jc@vtkloud.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88C10E003BF
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 09:39:48 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id l10so316296eei.21
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 09:39:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=sNuTzamvsaozNMsFoDDGnmO4tHIV5cbJjUmxQiw4bCA=;
	b=Ai/Bji0hw6HDXYxZwo5T2oVbVK30NoUPSf1eFB0Z9EWNDa0usIQn4cr18sg0UGj7ZP
	vkjk13S7W/FkhXjpYuVAwmhVUcYl0AI2DZTDB0GuXbnmE/S1oWgCPSFurt1qRLj1Kqgv
	JDo3v6NbTnO56Fmu3gQh/3VEgRDyG9KBi9rb0iijQwleFavRbhyEU96B9zKKcGxG2vBE
	vVdFY9NtDrWm4BLi0WQC33nAIpGq6jMJUzRqDX3HaqIGgCl80EfitoZ/wXoQvgnC9spf
	JxJVO5A6gciVQ63wFG+VeNjNJDDFzEI8ms74fkKoZuVv01tgE5eAFTfkRcAX6eQHr7dB
	Zr5Q==
X-Gm-Message-State: ALoCoQnmvgjL5TyssRReEx5kp7WxX+jEwggIjG24AYqqKIHRS15TRWJHiMUXKElozzz+epRNDlAa
X-Received: by 10.15.101.195 with SMTP id bp43mr3998699eeb.70.1378312788071;
	Wed, 04 Sep 2013 09:39:48 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94]) by mx.google.com with ESMTPSA id
	n48sm41392727eeg.17.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Sep 2013 09:39:46 -0700 (PDT)
Message-ID: <52276250.2040609@vtkloud.com>
Date: Wed, 04 Sep 2013 18:39:44 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
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
X-List-Received-Date: Wed, 04 Sep 2013 16:39:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2013 14:21, Thomas Page wrote:
> Hi
>
> Having installed the Yocto required packages and created a git branch 
> of the project in a new installation of Ubuntu 12.04 LTS I have tried 
> building the core-image-minimal image but continually have the process 
> fail. Having gone through the installation process several times not I 
> simply cannot seem to get this solved.
>
> i must add that after a fresh install of the yocto project and set up 
> of my host i find that Bitbake will not execute on first attempt and 
> must be installed. I do not remember this having to be done in my 
> previous use of the Yocto Project to successfully build an image.
>
> The error i get is as follows:
>
> tpage@ubuntu:~/poky/batmel$ bitbake core-image-minimal
> Traceback (most recent call last):
>   File "/usr/bin/bitbake", line 234, in <module>
>     ret = main()
>   File "/usr/bin/bitbake", line 197, in main
>     server = ProcessServer(server_channel, event_queue, configuration)
>   File "/usr/lib/pymodules/python2.7/bb/server/process.py", line 78, 
> in __init__
>     self.cooker = BBCooker(configuration, self.register_idle_function)
>   File "/usr/lib/pymodules/python2.7/bb/cooker.py", line 76, in __init__
>     self.parseConfigurationFiles(self.configuration.file)
>   File "/usr/lib/pymodules/python2.7/bb/cooker.py", line 510, in 
> parseConfigurationFiles
>     data = _parse(os.path.join("conf", "bitbake.conf"), data)
> TypeError: getVar() takes exactly 3 arguments (2 given)
> ERROR: Error evaluating 
> '${TARGET_OS}:${TRANSLATED_TARGET_ARCH}:build-${BUILD_OS}:pn-${PN}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}:${CLASSOVERRIDE}:forcevariable'
> Traceback (most recent call last):
>   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 116, in 
> expandWithRefs
>     s = __expand_var_regexp__.sub(varparse.var_sub, s)
>   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 60, in 
> var_sub
>     var = self.d.getVar(key, 1)
>   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 260, in 
> getVar
>     return self.expand(value, var)
>   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 132, in 
> expand
>     return self.expandWithRefs(s, varname).value
>   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 117, in 
> expandWithRefs
>     s = __expand_python_regexp__.sub(varparse.python_sub, s)
> TypeError: getVar() takes exactly 3 arguments (2 given)
>
> ERROR: Error evaluating 
> '${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[0] or 
> 'defaultpkgname'}'
> Traceback (most recent call last):
>   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 117, in 
> expandWithRefs
>     s = __expand_python_regexp__.sub(varparse.python_sub, s)
>   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 76, in 
> python_sub
>     value = utils.better_eval(codeobj, DataContext(self.d))
>   File "/usr/lib/pymodules/python2.7/bb/utils.py", line 387, in 
> better_eval
>     return eval(source, _context, locals)
>   File "PN", line 1, in <module>
> TypeError: getVar() takes exactly 3 arguments (2 given)
>
> Any feedback will be appreciated even as to where I should look for 
> the problem
>


Hi Thomas

Make sure you installed all the required packages in ubuntu.

Try running with -DDD to have additional feedback or input to the list

Regards
Jay

