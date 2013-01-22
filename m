Return-Path: <chege@cybertux.de>
Received: from server02.mc0.hosteurope.de (server02.mc0.hosteurope.de
	[92.51.170.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BEDEE014CB
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 13:26:41 -0800 (PST)
Received: from server06.webmailer.hosteurope.de ([10.9.0.185]); 
	by mailout.hosteurope.de (server02.mc0.hosteurope.de) running
	EXperimental Internet Mailer with esmtps (TLSv1:AES256-SHA:256)
	id 1TxlMe-0007Ag-2g
	for yocto@yoctoproject.org; Tue, 22 Jan 2013 22:26:40 +0100
Received: from nobody by server06.webmailer.hosteurope.de with local (Exim
	4.72) (envelope-from <chege@cybertux.de>) id 1TxlMe-0007cR-0t
	for yocto@yoctoproject.org; Tue, 22 Jan 2013 22:26:40 +0100
To: Yocto discussion list <yocto@yoctoproject.org>
MIME-Version: 1.0
Date: Tue, 22 Jan 2013 22:26:39 +0100
From: Christian Ege <chege@cybertux.de>
In-Reply-To: <50FEE506.1020002@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D27592@ORSMSX101.amr.corp.intel.com>
	<8389da1c972242f1c69900ba7f48db4e-EhVcXlhFQwBWRwoYGgwbZ1dfaANWUkNeXENbAF9TNkFcVEYOV0F1AUtXXl8wQEYHV1JdRVlTWw==-webmailer2@server04.webmailer.hosteurope.de>
	<50FEE506.1020002@intel.com>
Message-ID: <4d7691c8692507c98805d5169b4c7e15-EhVcXlhFQwBWRwoYGgwbZ1dfaANWUkNeXENbAF9TNkFYXEYJVl1oA1RTQ15eQioDXF9RSFFVWAhf-webmailer2@server06.webmailer.hosteurope.de>
X-Sender: chege@cybertux.de
User-Agent: Host Europe Webmailer/2.0
X-HE-Access: Yes
X-bounce-key: webpack.hosteurope.de;chege@cybertux.de;1358890000;0e00001b;
Subject: Re: FW: YP Linux Kernel Development Manual
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
X-List-Received-Date: Tue, 22 Jan 2013 21:26:41 -0000
Content-Type: text/plain;
 charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

 Am Dienstag, den 22.01.2013, 11:14 +0100 schrieb Darren Hart 
 <darren.hart@intel.com>:
> On 01/22/2013 12:59 AM, Christian Ege wrote:
>>  Hi,
>>  I am not sure if this is the problem you are struggling with.
>>  I am wondering why class module.bbclass behaves completely 
>> different
>>  than kernel.bbclacc
>>
>>>  hi, I follow the kernel development manual "2.5. Incorporating
>>> Out-of-Tree Modules",
>>>  copy the "hello-mod_0.1.bb" and "files" folder into my taget layer
>>> "meta-intel/meta-jasperforest/recipe-kernel", then add
>>> "MACHINE_EXTRA_
>>> RDEPENDS += "kernel-module-hello" in the conf/local.conf
>>>  after build and boot, there's no "hello.ko" found in the binary
>>> image
>>>  also there's no hello.ko in the "tmp/work/..." folder
>>
>>  If you hello-mod_0.1.bb inherits module class there is no mechanism
>>  to create the kernel-module package. This only applies to the
>>  kernel.bbclass
>>
>>  
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/module.bbclass
>>  
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/module-base.bbclass
>>
>>  Have a look at kernel.bbclass instead shows some pathon code which
>>  handles the module package creation:
>>  
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/kernel.bbclass#n301
>>
>>  I've fixed this in my layer by stealing the code from 
>> kernel.bbclass
>>  
>> https://github.com/project-magpie/meta-stlinux/blob/master/recipes-bsp/tdt-driver/tdt-driver.inc
>>
>>  With this you can also use the following extends with your module:
>>  module_autoload_aotom = "aotom"
>>  and
>>  module_conf_stmfb = "options stmfb
>>  display0=1280x720-32@50:8m:pal:yuv:yuv"
>
> Christian, this is a really good point I hadn't considered. Would you
> care to take a stab at adding this to module.bbclass and sending the
> patch to the oe-core list for review? CC'ing myself?

 I'll try to write a patch. Maybe tomorrow or by end of the week. I'll 
 send it to oe-core and
 to you in CC.

 regrads,

 Christian

>
> Thanks,


