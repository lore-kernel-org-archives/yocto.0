Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 944D7E004AB
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 15:46:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r28Nk0HF004333
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 8 Mar 2013 15:46:00 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.21.250) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Fri, 8 Mar 2013 15:45:59 -0800
Message-ID: <513A7836.2050908@windriver.com>
Date: Fri, 8 Mar 2013 18:45:58 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Hans Beckerus <hans.beckerus@gmail.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
	<20130308191213.102258ca@e6520eb> <513A3557.10405@gmail.com>
In-Reply-To: <513A3557.10405@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Fri, 08 Mar 2013 23:46:03 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-03-08 2:00 PM, Hans Beckerus wrote:
> On 2013-03-08 7:12, Eric Bénard wrote:
>> Hi Hans,
>>
>> Le Fri, 8 Mar 2013 13:08:21 +0100,
>> Hans Beckérus <hans.beckerus@gmail.com> a écrit :
>>
>>> Hi. I have built some custom kernel modules (.ko) using a .bb that
>>> inherits from the module.bbclass. There is one main kernel module and
>>> the rest are dependent on the first. Building and installing the
>>> modules to the rootfs works fine. Next question is how do I control
>>> what actual modules are loaded at boot, or actually how do I control
>>> this through Yocto? To my surprise one of the kernel module loaded
>>> automatically!? How could this happen? I did not have an entry for it
>>> in /etc/modules. And what do I need to do to actually add entries to
>>> /etc/modules? Or is there some other mechanism that I should use. I
>>> tried going through the module.bbclass but must admit I lost it
>>> somewhere in the middle ;) Any guidance would be appreciated.
>>>
>> when the module is built by the kernel recipe you can use :
>> module_autoload and you can see somme usage examples here :
>> http://cgit.openembedded.org/meta-handheld/tree/conf/machine/palmtx.conf
>> http://cgit.openembedded.org/meta-handheld/tree/conf/machine/include/palm.inc
>>
>>
>> maybe you could get inspiration from kernel.bbclass to do the same
>> thing in your recipe.
>>
>> Eric
> Thanks guys for your quick feedback. I can see that using
> module_autoload_${PN} seems like a good approach, if a package maps 1:1
> to a module.
> In my case that is not so. The package/recipe builds six (or even more)
> .ko files using one makefile.
> I guess one option could be to split each module build in its own
> recipe, but that is not supported by the makefile and thus would require
> patching from my side in the source tree. I think the only option I have
> left is to try to use /etc/modules and add the modules there in a
> do_install_append().
> But the problem then is, what happens if some other package also add a
> /etc/modules.conf to the image folder? Will it be merged or only copied?
> In the latter case last package wins which would not work out very well :(
>
> Out of curiosity, what will module_autoload do? Will it add the .ko to
> /etc/modules or does it implement some other mechanism to make a module
> load automatically at boot?

It depends on what release you are using. In yocto 1.3 and before the
autoload variables translated to mod-util loading, using just what you'd
think. In yocto 1.4 and kmod in the picture:

         # If autoloading is requested, output 
/etc/modules-load.d/<name>.conf and append
         # appropriate modprobe commands to the postinst
         autoload = d.getVar('module_autoload_%s' % basename, True)
         if autoload:
             name = '%s/etc/modules-load.d/%s.conf' % (dvar, basename)
             f = open(name, 'w')
             for m in autoload.split():
                 f.write('%s\n' % m)
             f.close()
             postinst = d.getVar('pkg_postinst_%s' % pkg, True)
             if not postinst:
                 bb.fatal("pkg_postinst_%s not defined" % pkg)
             postinst += d.getVar('autoload_postinst_fragment', True) % 
autoload
             d.setVar('pkg_postinst_%s' % pkg, postinst)

         # Write out any modconf fragment
         modconf = d.getVar('module_conf_%s' % basename, True)
         if modconf:
             name = '%s/etc/modprobe.d/%s.conf' % (dvar, basename)
             f = open(name, 'w')
             f.write("%s\n" % modconf)
             f.close()

Cheers,

Bruce


>
> I do not think that the mandatory module that is loaded originates from
> udev. This is a network CM driver that basically hooks into the Linux
> network stack. I do not think that udev will ever make this driver load
> automatically. But I can not say for sure of course.
>
> Hans
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


