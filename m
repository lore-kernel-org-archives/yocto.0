Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 895FAE014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:44:38 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UVLXL-00014u-N2
	for yocto@yoctoproject.org; Thu, 25 Apr 2013 14:44:31 +0200
Received: from 2-227-90-218.ip185.fastwebnet.it ([2.227.90.218])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 14:44:31 +0200
Received: from f.deldegan by 2-227-90-218.ip185.fastwebnet.it with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 14:44:31 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Francesco Del Degan <f.deldegan@pr0gg3d.net>
Date: Thu, 25 Apr 2013 14:44:25 +0200
Message-ID: <87r4hy4w5y.fsf@pr0gg3d.net>
References: <87fvyf5aj2.fsf@pr0gg3d.net>
	<20130425084125.GB5538@jama.dyndns-home.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 2-227-90-218.ip185.fastwebnet.it
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
Cancel-Lock: sha1:xeYueQBtbtArVYOSzmvuVX+o9cw=
Subject: Re: psplash_git.bb: Error when building with icecc
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
X-List-Received-Date: Thu, 25 Apr 2013 12:44:38 -0000
Content-Type: text/plain

Martin Jansa <martin.jansa@gmail.com>
writes:

> On Thu, Apr 25, 2013 at 09:34:09AM +0200, Francesco Del Degan wrote:
>> Hi all, i just found an error building core-image-basic with icecc
>> inherited:
>
> You can send patch extending blacklist defined in icecc.bbclass:
>     system_package_blacklist = [ "uclibc", "glibc", "gcc", "bind", "u-boot", "dhcp-forwarder", "enchant", "connman", "orbit2" ]
>     user_package_blacklist = (d.getVar('ICECC_USER_PACKAGE_BL') or "").split()
>
> or add psplash to ICECC_USER_PACKAGE_BL

This is not going to work, because set_icecc_env gets prepended anyhow,
so i just got the same error.

In fact, the icecc.bbclass declares:

do_compile_prepend() {
    set_icecc_env
}

and only in set_icecc_env the blacklist controls is performed.

The problem seems to be that do_compile in psplash_git.bb is written in python:

python do_compile () {
    import shutil, commands
    ....
}

so prepending just mixes the two languages.

Could be this the first case of mixing languages? Is bitbake able to
make some transformation when prepending/appending like that.

Also a some sort of conditional prepending based on languages could
works. What do you think?

>
>> NameError: global name 'set_icecc_env' is not defined
>> 
>> ERROR: The stack trace of python calls that resulted in this
>> exception/failure was:
>> ERROR:   File "do_compile", line 26, in <module>
>> ERROR: 
>> ERROR:   File "do_compile", line 3, in do_compile
>> ERROR: 
>> ERROR: The code that was being executed was:
>> ERROR:      0022:        bb.build.exec_func("oe_runmake", d)
>> ERROR:      0023:        shutil.copyfile("psplash", outputfile)
>> ERROR:      0024:
>> ERROR:      0025:
>> ERROR:  *** 0026:do_compile(d)
>> ERROR:      0027:
>> ERROR: [From file: 'do_compile', lineno: 26, function: <module>]
>> ERROR:      0001:
>> ERROR:      0002:def do_compile(d):
>> ERROR:  *** 0003:    set_icecc_env
>> ERROR:      0004:    import shutil, commands
>> ERROR:      0005:
>> ERROR:      0006:    # Build a separate executable for each splash image
>> ERROR:      0007:    convertscript = "%s/make-image-header.sh" %
>> d.getVar('S', True)
>> ERROR: [From file: 'do_compile', lineno: 3, function: do_compile]
>> ERROR: Function failed: do_compile
>> 
>> 
>> 
>> Seems that icecc compile_prepend (set_icecc_env shell function) gets prepended
>> into psplash compile that is written in python. How to deal with it, and
>> in general, is that possible to mix languages in prepend/append?
>> 
>> I'm using poky master and icecc is working great!
>> 
>> Cheers,
>>   Francesco
>> 
>> 
>> 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


