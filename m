Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1225E00B20; Tue,  3 Jun 2014 10:20:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95DF1E0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 10:19:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jun 2014 10:15:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,966,1392192000"; d="scan'208";a="522124011"
Received: from kmaligas-mobl1.gar.corp.intel.com (HELO [10.255.12.167])
	([10.255.12.167])
	by orsmga001.jf.intel.com with ESMTP; 03 Jun 2014 10:14:53 -0700
Message-ID: <538E028D.2090200@linux.intel.com>
Date: Tue, 03 Jun 2014 10:14:53 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Kashyap Gada <gada.kashyap@gmail.com>, 
	"Burton, Ross" <ross.burton@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>	<CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>	<CANJXcUaZm=4XeG4PDZwbaX+DtCo-fh+-aWWD49EsjOVmOuiN0Q@mail.gmail.com>	<CANJXcUZOwrAuMjkt_RfBuSU3fyyDbay024qvf1KEfuPkOuJBew@mail.gmail.com>	<CAJTo0Lbd257SN_SmwD=2MKYrw0LYODnhJoPhCPCSpdhxf7Nixw@mail.gmail.com>	<CANJXcUYEdbSf1Fo5kZAw5GE+36fnz=EgzZojXxr44WdnCtC1Qg@mail.gmail.com>	<CAJTo0LbKNeujMacRb-O3RHq5LfWZ01axS-TYTwhScjFnm-uu8g@mail.gmail.com>
	<CANJXcUasi1Pf3T4Zq5Fz7ExKq7Zm9FKCYERRLuaaLODuEZR0Hg@mail.gmail.com>
In-Reply-To: <CANJXcUasi1Pf3T4Zq5Fz7ExKq7Zm9FKCYERRLuaaLODuEZR0Hg@mail.gmail.com>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Tue, 03 Jun 2014 17:20:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/03/2014 09:20 AM, Kashyap Gada wrote:
> Thank you Ross.
>
> I actually ran into another problem in bitbaking core-image-sato from the
> getting started guide at the yocto site which led me into changing to a
> setup which doesnot include mounting of any drive to my ubuntu
> distribution. the problem is as follows.
>
> While compiling of e2fsprogs-1.42.9-r0 do_compile (pid 5276)
>
> the details of the error log generated is as follows
>

<SNIP>

> chmod: cannot operate on dangling symlink 'prof_err.h'
> chmod: prof_err.h: new permissions are r-xrwxrwx, not r-xr-xr-x
> chmod: prof_err.c: new permissions are r-xrwxrwx, not r-xr-xr-x

Looks like your still having some sort of permissions issue. Where 
exactly are you doing your build?  What type of filesystem?

Sau!


> make[2]: *** [prof_err.h] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[2]: Leaving directory
> `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build/misc'
> make[1]: *** [all-progs-recursive] Error 1
> make[1]: Leaving directory
> `/mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/build'
> make: *** [all] Error 2
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_compile (log file is located at
> /mnt/kashyap/hda/yocto/poky/build/tmp/work/i586-poky-linux/e2fsprogs/1.42.9-r0/temp/log.do_compile.5276)
>
>
>
>
> Sorry for attaching this to this list.
>
>
>
> On Tue, Jun 3, 2014 at 9:20 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
>> So you probably lost every executable mode when you did that.  Make a
>> fresh clone and reapply your changes, that will be easier than finding
>> every file that isn't executable when it should be.
>>
>> Ross
>>
>> On 3 June 2014 16:49, Kashyap Gada <gada.kashyap@gmail.com> wrote:
>>> its copied!
>>>
>>>
>>> On Tue, Jun 3, 2014 at 9:16 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>>>
>>>> On 3 June 2014 16:39, Kashyap Gada <gada.kashyap@gmail.com> wrote:
>>>>> bash: /home/kashyap/yocto/poky/scripts/oe-setup-builddir: Permission
>>>>> denied
>>>>
>>>> The permissions on that file don't involve +x.  Is that a fresh
>>>> checkout of poky or copied from the removable media?
>>>>
>>>> Ross
>>>
>>>
>>
>
>
>

