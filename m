Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E14E2E013EB
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 08:41:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5LFfCD4014303
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 08:41:12 -0700 (PDT)
Received: from msp-dhcp2.wrs.com (172.25.34.2) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 21 Jun 2012 08:41:11 -0700
Message-ID: <4FE34097.7090709@windriver.com>
Date: Thu, 21 Jun 2012 10:41:11 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:13.0) Gecko/20120614 Thunderbird/13.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <A932C833-018B-430E-874B-2281A3B80E64@gmail.com>
In-Reply-To: <A932C833-018B-430E-874B-2281A3B80E64@gmail.com>
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
X-List-Received-Date: Thu, 21 Jun 2012 15:41:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 6/21/12 10:25 AM, Elvis Dowson wrote:
> Hi,
>       I just updated my yocto repos and tried a fresh build.

There are two errors, see below:

> My bblayers.conf file looks like this:
>
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION = "4"
>
> BBFILES ?= ""
> BBLAYERS ?= " \
>    /tool/yocto/poky/meta \
>    /tool/yocto/poky/meta-yocto \
>    /tool/yocto/meta-openembedded/meta-oe \
>    /tool/yocto/meta-xilinx \
>    "
>
> And when I run the bitake core-image-minimal;bitbake meta-toolchain  I get the following errors:
>
> $ bitbake core-image-minimal;bitbake meta-toolchain;
> Pseudo is not present but is required, building this first before the main build
> WARNING: Unable to get checksum for python-numpy SRC_URI entry config.h: file could not be found           | ETA:  00:00:49
> WARNING: Unable to get checksum for python-numpy SRC_URI entry numpyconfig.h: file could not be found
> WARNING: /tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bb: it is recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd
> WARNING: /tool/yocto/poky/meta/recipes-extended/lighttpd/lighttpd_1.4.30.bb: it is recommended to set SYSTEMD_PACKAGES as <existing-package>-systemd
> Parsing recipes: 100% |####################################################################################| Time: 00:00:37
> Parsing of 1186 .bb files complete (0 cached, 1186 parsed). 1524 targets, 40 skipped, 0 masked, 0 errors.
> WARNING: BBPATH references the current directory, either through an empty entry, or a '.'.
> 	 This is unsafe and means your layer configuration is adding empty elements to BBPATH.
> 	 Please check your layer.conf files and other BBPATH settings to remove the current working directory references.

The above is a warning, it is a configuration problem with one or more 
layer.conf file within a layer.  But it's a warning, the build will continue.

> ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
>      Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
>
>      PATH contains '.' or '', which will break the build, please remove this.

The above is an error.  Your shell environment's "PATH" is broken.  You have 
either '' (blank) or '.' within your path.

Run the following in your shell: echo "${PATH}"

If you see something like:

/usr/bin:/bin:~/bin:.

It's the '.' that is the problem.  Rewrite your path by removing the '.' item.. 
(similarly if it contains '::' or ends with ':' that is the blank problem)

--Mark

> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> ERROR: Command execution failed: Exited with 1
>
> Summary: There were 5 WARNING messages shown.
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
> Pseudo is not present but is required, building this first before the main build
> Loading cache: 100% |######################################################################################| ETA:  00:00:00
> Loaded 1523 entries from dependency cache.
> Parsing recipes: 100% |####################################################################################| Time: 00:00:07
> Parsing of 1186 .bb files complete (1184 cached, 2 parsed). 1524 targets, 40 skipped, 0 masked, 0 errors.
> WARNING: BBPATH references the current directory, either through an empty entry, or a '.'.
> 	 This is unsafe and means your layer configuration is adding empty elements to BBPATH.
> 	 Please check your layer.conf files and other BBPATH settings to remove the current working directory references.
> ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
>      Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
>
>      PATH contains '.' or '', which will break the build, please remove this.
> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> ERROR: Command execution failed: Exited with 1
>
> Summary: There was 1 WARNING message shown.
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
>
>
> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



