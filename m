Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15835E0140F
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 16:04:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q49N4Rh5000723
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 May 2012 16:04:28 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.174) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 9 May 2012 16:04:27 -0700
Message-ID: <4FAAF7FA.8060205@windriver.com>
Date: Wed, 9 May 2012 19:04:26 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20ACA749B@ORSMSX105.amr.corp.intel.com>
	<4FAAF15E.3090007@windriver.com>
	<D956029D25CF204F948EA0FB515E1EE20ACA969A@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20ACA969A@ORSMSX105.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: KERNEL build failure for Master
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
X-List-Received-Date: Wed, 09 May 2012 23:04:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-09 7:01 PM, Bodke, Kishore K wrote:
> Is this error also proxy setup issue?

Nope. I sent a fix for it today, and Richard merged it to master
a few hours ago. An update should fix your issue.

Bruce

>
> ERROR: Function failed: do_patch (see /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.7982 for further information)
> ERROR: Logfile of failure stored in: /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.7982
> Log data follows:
> | ERROR: Function failed: do_patch (see /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4/temp/log.do_patch.7982 for further information)
> | WARNING: addon feature "features/netfilter" was not found
> | WARNING: addon feature "features/taskstats" was not found
> | WARNING: addon feature "cfg/smp" was not found
> | WARNING: addon feature "cfg/drm-cdvpvr" was not found
> | WARNING: addon feature "bsp/cedartrail/cedartrail-pvr-merge" was not found
> | WARNING: addon feature "cfg/efi-ext" was not found
> | WARNING: addon feature "features/power/intel" was not found
> | ERROR: required features were not found. aborting
> | ERROR. Could not update yocto/standard/base
> NOTE: package linux-yocto-3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37916828dc8b4ef72f5d35a94-r4: task do_patch: Failed
>
> Thanks
> Kishore.
>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Wednesday, May 09, 2012 3:36 PM
>> To: Bodke, Kishore K
>> Cc: yocto@yoctoproject.org
>> Subject: Re: KERNEL build failure for Master
>>
>> On 12-05-09 4:37 PM, Bodke, Kishore K wrote:
>>> Hi,
>>>
>>> Linux-yocto build is failing for Cedartrail for the Master and denzil
>>> branch.
>>>
>>> Is it failing for any other BSPs?
>>
>> Everything is fine here, this looks to be something specific with your
>> proxy setup injecting bad commands into the subshell.
>>
>> Bruce
>>
>>>
>>> Below is the error.
>>>
>>> ERROR: Function failed: Fetcher failure: Fetch command export
>>> HOME="/home/kishore"; export
>>> https_proxy="https://proxy.sc.intel.com:911/"; export
>>> ftp_proxy="http://proxy.sc.intel.com:911/"; export
>>> http_proxy="http://proxy.sc.intel.com:911/"; export
>>> GIT_CONFIG="/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/etc/gitconfig";
>>> export GIT_PROXY_COMMAND="/usr/local/bin/git-proxy"; export
>>> PATH="/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/usr/bin/core2-poky-
>> linux:/usr/local/src/may_9/build/tmp/sysroots/cedartrail/usr/bin/crosssc
>> ripts:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/usr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux//bin:/usr/local/src/may_9/scripts:/usr/local/src/may_9/bitbake/bin
>> /:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/game
>> s:/usr/local/src/may_9/scripts";
>>> git clone -s -n --mirror
>>> /usr/local/src/may_9/build/downloads/git2/git.yoctoproject.org.linux-
>> yocto-3.0/
>>> /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-
>> 3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>> 916828dc8b4ef72f5d35a94-r4/git/
>>> could not be run:
>>>
>>> None
>>>
>>> ERROR: Logfile of failure stored in:
>>> /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-
>> 3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>> 916828dc8b4ef72f5d35a94-r4/temp/log.do_unpack.4250
>>>
>>> Log data follows:
>>>
>>> | DEBUG: Running export HOME="/home/kishore"; export
>>> https_proxy="https://proxy.sc.intel.com:911/"; export
>>> ftp_proxy="http://proxy.sc.intel.com:911/"; export
>>> http_proxy="http://proxy.sc.intel.com:911/"; export
>>> GIT_CONFIG="/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/etc/gitconfig";
>>> export GIT_PROXY_COMMAND="/usr/local/bin/git-proxy"; export
>>> PATH="/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/usr/bin/core2-poky-
>> linux:/usr/local/src/may_9/build/tmp/sysroots/cedartrail/usr/bin/crosssc
>> ripts:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/usr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux//bin:/usr/local/src/may_9/scripts:/usr/local/src/may_9/bitbake/bin
>> /:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/game
>> s:/usr/local/src/may_9/scripts";
>>> git clone -s -n --mirror
>>> /usr/local/src/may_9/build/downloads/git2/git.yoctoproject.org.linux-
>> yocto-3.0/
>>> /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-
>> 3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>> 916828dc8b4ef72f5d35a94-r4/git/
>>>
>>> | ERROR: Function failed: Fetcher failure: Fetch command export
>>> HOME="/home/kishore"; export
>>> https_proxy="https://proxy.sc.intel.com:911/"; export
>>> ftp_proxy="http://proxy.sc.intel.com:911/"; export
>>> http_proxy="http://proxy.sc.intel.com:911/"; export
>>> GIT_CONFIG="/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/etc/gitconfig";
>>> export GIT_PROXY_COMMAND="/usr/local/bin/git-proxy"; export
>>> PATH="/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/usr/bin/core2-poky-
>> linux:/usr/local/src/may_9/build/tmp/sysroots/cedartrail/usr/bin/crosssc
>> ripts:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/usr/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/usr/bin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux/sbin:/usr/local/src/may_9/build/tmp/sysroots/x86_64-
>> linux//bin:/usr/local/src/may_9/scripts:/usr/local/src/may_9/bitbake/bin
>> /:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/game
>> s:/usr/local/src/may_9/scripts";
>>> git clone -s -n --mirror
>>> /usr/local/src/may_9/build/downloads/git2/git.yoctoproject.org.linux-
>> yocto-3.0/
>>> /usr/local/src/may_9/build/tmp/work/cedartrail-poky-linux/linux-yocto-
>> 3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>> 916828dc8b4ef72f5d35a94-r4/git/
>>> could not be run:
>>>
>>> | None
>>>
>>> NOTE: package
>>> linux-yocto-
>> 3.0.24+git1+a4ac64fe873f08ef718e2849b88914725dc99c1c_1+81fd8c307997aff37
>> 916828dc8b4ef72f5d35a94-r4:
>>> task do_unpack: Failed
>>>
>>> ERROR: Task 858
>>> (/usr/local/src/may_9/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
>>> do_unpack) failed with exit code '1'
>>>
>>> Thanks
>>>
>>> Kishore.
>>>
>


