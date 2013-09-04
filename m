Return-Path: <thomas@thepagefamily.co.za>
Received: from mail-bk0-f41.google.com (mail-bk0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34829E003BF
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 07:15:07 -0700 (PDT)
Received: by mail-bk0-f41.google.com with SMTP id na10so209418bkb.0
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 07:15:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=DbJ6JBpEp37ss0X6R9d9T80Ttbbk7jEX5G8eof88mcs=;
	b=JwlnK6RwHB0QHRTo8pn5SN1k+2FuWPghW0JwJHBVOP7Fy5nZ5YzeL4TGrLSyulCNpt
	q6vwlg8eIgP+kGeTlGwpPVQjWtXQZmbU2MWo4fP3oRQPlN+ZHOpmVwHD8N0/tVzwfqqh
	fPJwUdpiRorCyjp//jB6SCGqbGYH8QQih5WFFBPve53pD+3NVTpVnssQmbuIVExKC0DC
	graH5pmvGICx1UjXa+WhknewDgqI+ZrkgRERg+BhPbvvzLYyGgOLyZyhIimIgFXa8S8D
	Fsk71N3OanXhexN0IteuAykJo/NEMVBT+W/h31H9TqtAv/pz6fjK9Vhr1sPUHDsY67+B
	u1gQ==
X-Gm-Message-State: ALoCoQmeY/w5KVrFE9tcN0tNNJCftHT9MMRPqgLPLeH4MRkE99Q7k/GEt4KZZJPH2Q40mrsMbA1+
X-Received: by 10.205.99.129 with SMTP id cs1mr1837634bkc.35.1378304105962;
	Wed, 04 Sep 2013 07:15:05 -0700 (PDT)
Received: from [192.168.24.134] (ti-227-170-130.telkomadsl.co.za.
	[105.227.170.130]) by mx.google.com with ESMTPSA id
	jh13sm6669051bkb.13.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Sep 2013 07:15:05 -0700 (PDT)
Message-ID: <522725DD.4080509@thepagefamily.co.za>
Date: Wed, 04 Sep 2013 14:21:49 +0200
From: Thomas Page <thomas@thepagefamily.co.za>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 04 Sep 2013 08:43:24 -0700
Subject: BitBake errors when building core-image-minimal
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
X-List-Received-Date: Wed, 04 Sep 2013 14:15:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi

Having installed the Yocto required packages and created a git branch of 
the project in a new installation of Ubuntu 12.04 LTS I have tried 
building the core-image-minimal image but continually have the process 
fail. Having gone through the installation process several times not I 
simply cannot seem to get this solved.

i must add that after a fresh install of the yocto project and set up of 
my host i find that Bitbake will not execute on first attempt and must 
be installed. I do not remember this having to be done in my previous 
use of the Yocto Project to successfully build an image.

The error i get is as follows:

tpage@ubuntu:~/poky/batmel$ bitbake core-image-minimal
Traceback (most recent call last):
   File "/usr/bin/bitbake", line 234, in <module>
     ret = main()
   File "/usr/bin/bitbake", line 197, in main
     server = ProcessServer(server_channel, event_queue, configuration)
   File "/usr/lib/pymodules/python2.7/bb/server/process.py", line 78, in 
__init__
     self.cooker = BBCooker(configuration, self.register_idle_function)
   File "/usr/lib/pymodules/python2.7/bb/cooker.py", line 76, in __init__
     self.parseConfigurationFiles(self.configuration.file)
   File "/usr/lib/pymodules/python2.7/bb/cooker.py", line 510, in 
parseConfigurationFiles
     data = _parse(os.path.join("conf", "bitbake.conf"), data)
TypeError: getVar() takes exactly 3 arguments (2 given)
ERROR: Error evaluating 
'${TARGET_OS}:${TRANSLATED_TARGET_ARCH}:build-${BUILD_OS}:pn-${PN}:${MACHINEOVERRIDES}:${DISTROOVERRIDES}:${CLASSOVERRIDE}:forcevariable'
Traceback (most recent call last):
   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 116, in 
expandWithRefs
     s = __expand_var_regexp__.sub(varparse.var_sub, s)
   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 60, in var_sub
     var = self.d.getVar(key, 1)
   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 260, in getVar
     return self.expand(value, var)
   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 132, in expand
     return self.expandWithRefs(s, varname).value
   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 117, in 
expandWithRefs
     s = __expand_python_regexp__.sub(varparse.python_sub, s)
TypeError: getVar() takes exactly 3 arguments (2 given)

ERROR: Error evaluating 
'${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[0] or 
'defaultpkgname'}'
Traceback (most recent call last):
   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 117, in 
expandWithRefs
     s = __expand_python_regexp__.sub(varparse.python_sub, s)
   File "/usr/lib/pymodules/python2.7/bb/data_smart.py", line 76, in 
python_sub
     value = utils.better_eval(codeobj, DataContext(self.d))
   File "/usr/lib/pymodules/python2.7/bb/utils.py", line 387, in better_eval
     return eval(source, _context, locals)
   File "PN", line 1, in <module>
TypeError: getVar() takes exactly 3 arguments (2 given)

Any feedback will be appreciated even as to where I should look for the 
problem

Thomas



