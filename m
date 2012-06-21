Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 004EBE01426
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 08:55:48 -0700 (PDT)
Received: from [192.168.0.46] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 0AA466005E
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 15:43:42 +0100 (BST)
Message-ID: <4FE34436.1040208@communistcode.co.uk>
Date: Thu, 21 Jun 2012 16:56:38 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120616 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org >> \"yocto@yoctoproject.org\""
	<yocto@yoctoproject.org>
References: <A932C833-018B-430E-874B-2281A3B80E64@gmail.com>
	<4FE34097.7090709@windriver.com>
In-Reply-To: <4FE34097.7090709@windriver.com>
Subject: Re: Error: PATH contains '.' or '', which will break the build, please remove this.
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
X-List-Received-Date: Thu, 21 Jun 2012 15:55:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 21/06/12 16:41, Mark Hatle wrote:
> On 6/21/12 10:25 AM, Elvis Dowson wrote:
>> Hi,
>>       I just updated my yocto repos and tried a fresh build.
>
> There are two errors, see below:
>
>> My bblayers.conf file looks like this:
>>
>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>> # changes incompatibly
>> LCONF_VERSION = "4"
>>
>> BBFILES ?= ""
>> BBLAYERS ?= " \
>>    /tool/yocto/poky/meta \
>>    /tool/yocto/poky/meta-yocto \
>>    /tool/yocto/meta-openembedded/meta-oe \
>>    /tool/yocto/meta-xilinx \
>>    "
>>
>> And when I run the bitake core-image-minimal;bitbake meta-toolchain  
>> I get the following errors:
>>
>> $ bitbake core-image-minimal;bitbake meta-toolchain;
>> Pseudo is not present but is required, building this first before the 
>> main build
>> WARNING: Unable to get checksum for python-numpy SRC_URI entry 
>> config.h: file could not be found           | ETA:  00:00:49
>> WARNING: Unable to get checksum for python-numpy SRC_URI entry 
>> numpyconfig.h: file could not be found
>> WARNING: 
>> /tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bb: 
>> it is recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd
>> WARNING: 
>> /tool/yocto/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb: 
>> it is recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd
>> Parsing recipes: 100% 
>> |####################################################################################| 
>> Time: 00:00:37
>> Parsing of 1186 .bb files complete (0 cached, 1186 parsed). 1524 
>> targets, 40 skipped, 0 masked, 0 errors.
>> WARNING: BBPATH references the current directory, either through an 
>> empty entry, or a '.'.
>>      This is unsafe and means your layer configuration is adding 
>> empty elements to BBPATH.
>>      Please check your layer.conf files and other BBPATH settings to 
>> remove the current working directory references.
>
> The above is a warning, it is a configuration problem with one or more 
> layer.conf file within a layer.  But it's a warning, the build will 
> continue.
>
>> ERROR:  OE-core's config sanity checker detected a potential 
>> misconfiguration.
>>      Either fix the cause of this error or at your own risk disable 
>> the checker (see sanity.conf).
>>      Following is the list of potential problems / advisories:
>>
>>      PATH contains '.' or '', which will break the build, please 
>> remove this.
>
> The above is an error.  Your shell environment's "PATH" is broken.  
> You have either '' (blank) or '.' within your path.
>
> Run the following in your shell: echo "${PATH}"
>
> If you see something like:
>
> /usr/bin:/bin:~/bin:.
>
> It's the '.' that is the problem.  Rewrite your path by removing the 
> '.' item.. (similarly if it contains '::' or ends with ':' that is the 
> blank problem)
>
> --Mark
>
>> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>> ERROR: Command execution failed: Exited with 1
>>
>> Summary: There were 5 WARNING messages shown.
>> Summary: There were 3 ERROR messages shown, returning a non-zero exit 
>> code.
>> Pseudo is not present but is required, building this first before the 
>> main build
>> Loading cache: 100% 
>> |######################################################################################| 
>> ETA:  00:00:00
>> Loaded 1523 entries from dependency cache.
>> Parsing recipes: 100% 
>> |####################################################################################| 
>> Time: 00:00:07
>> Parsing of 1186 .bb files complete (1184 cached, 2 parsed). 1524 
>> targets, 40 skipped, 0 masked, 0 errors.
>> WARNING: BBPATH references the current directory, either through an 
>> empty entry, or a '.'.
>>      This is unsafe and means your layer configuration is adding 
>> empty elements to BBPATH.
>>      Please check your layer.conf files and other BBPATH settings to 
>> remove the current working directory references.
>> ERROR:  OE-core's config sanity checker detected a potential 
>> misconfiguration.
>>      Either fix the cause of this error or at your own risk disable 
>> the checker (see sanity.conf).
>>      Following is the list of potential problems / advisories:
>>
>>      PATH contains '.' or '', which will break the build, please 
>> remove this.
>> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>> ERROR: Command execution failed: Exited with 1
>>
>> Summary: There was 1 WARNING message shown.
>> Summary: There were 3 ERROR messages shown, returning a non-zero exit 
>> code.
>>
>>
>> Best regards,
>>
>> Elvis Dowson
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I also started receiving this error about a week ago, my path is as follows:

[jack@archHP r0005]$ echo "${PATH}"
/home/jack/Projects/poky-denzil.git/scripts:/home/jack/Projects/poky-denzil.git/bitbake/bin/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl

However (from what I can see) this doesn't feature the issue mentioned?

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


