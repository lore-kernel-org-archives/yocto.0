Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EF3AE0137A
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 03:29:18 -0700 (PDT)
Received: by dakp5 with SMTP id p5so20897715dak.28
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 03:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=8XF2q8s2DwJC2S3jI52QIVz80XdD7e08Mq1XPGIPx2g=;
	b=S4AlrhWZFCv2ZZdb/i7NojleBh9V+ZhtBSl9R51AjUvbBfzBolM3L8+pQ+LUnMgSyu
	IQZnB0vN/T2C6XNCVdRXS63qHftGCXHB0AO3SxGGCguRdcmuqIewL/+imcmMulvcDVeA
	Ls4ZLuNaHwdnlQNP7Sj2iQgokK+UXGCVMgMXwQ65h6lVsrdLgfL/DEgKxkmr3YnKg8h7
	/zYW5Km4tiN1J0FQ3VXYMuRpnPiaeF50ho4yFTR66sFbc4yng0nzV/S8pCaN+fnvZYSh
	Nud+0wEGAFrdq4M/DXsiX3J64jeryvr5pOw2wDSMK6tmq/ZbK6ZELFgJCFi7OYslMMYE
	4+rA==
MIME-Version: 1.0
Received: by 10.68.242.1 with SMTP id wm1mr6501852pbc.73.1336472958065; Tue,
	08 May 2012 03:29:18 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 8 May 2012 03:29:18 -0700 (PDT)
In-Reply-To: <CACW_hTaroQeLuPDF5LbhfLCuB=-qpLFPFLP1eDAGZmWAqdkHJg@mail.gmail.com>
References: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
	<CACW_hTaroQeLuPDF5LbhfLCuB=-qpLFPFLP1eDAGZmWAqdkHJg@mail.gmail.com>
Date: Tue, 8 May 2012 12:29:18 +0200
Message-ID: <CACW_hTaeANMD271GeoU0hP8aacDd-8AhyrvXZ185LJoXLxqoqw@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Subject: Re: [denzil] Licenses, source distribution etc
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
X-List-Received-Date: Tue, 08 May 2012 10:29:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/5/8 Frans Meulenbroeks <fransmeulenbroeks@gmail.com>:
> 2012/5/8 Frans Meulenbroeks <fransmeulenbroeks@gmail.com>:
>> Dear all,
>>
>> A next question/issue wrt my denzil experiment:
>>
>> I wanted to know what licenses are used in my image.
>> I found tmp/deploy/licenses but this is package oriented and does not
>> really give a quick overview.
>>
>> The manual gave me this section:
>> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-src-distribute
>>
>> I tried to inherit src_distribute and src_distribute_local, but to no avail
>> Running a find on the source tree did not reveal these classes:
>>
>> frans@frans-desktop:~/poky-denzil-7.0$ find | grep distribute
>> ./meta/classes/pkg_distribute.bbclass
>> frans@frans-desktop:~/poky-denzil-7.0$
>>
>> Something missing?
>> And what is the best way to find out what licenses are used?
>>
>> Thanks, (and keep up the good work!)
>> Frans.
>
> Googled a little bit further.
> Guess this is a documentation issue as the classes have been
> deliberatly removed.
> See http://patches.openembedded.org/patch/23171/
>
> Frans

One more thing:
I've added the archiver class. I also have rm_work (not sure if that is related)
Now when running a build I get errors like this:

NOTE: Running task 1029 of 1279 (ID: 1167,
/home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.bb,
do_package_write_rpm)
NOTE: package gettext-0.18.1.1-r11: task do_package_write_rpm: Started
ERROR: Error executing a python function in
/home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.bb:
AttributeError: 'NoneType' object has no attribute 'upper'

ERROR: The stack trace of python calls that resulted in this
exception/failure was:
ERROR:   File "do_remove_tarball", line 14, in <module>
ERROR:
ERROR:   File "do_remove_tarball", line 3, in do_remove_tarball
ERROR:
ERROR: The code that was being executed was:
ERROR:      0010:		except (TypeError,OSError):
ERROR:      0011:				pass
ERROR:      0012:
ERROR:      0013:
ERROR:  *** 0014:do_remove_tarball(d)
ERROR:      0015:
ERROR: (file: 'do_remove_tarball', lineno: 14, function: <module>)
ERROR:      0001:
ERROR:      0002:def do_remove_tarball(d):
ERROR:  *** 0003:	if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE',
True).upper() == 'SRPM':
ERROR:      0004:		work_dir = d.getVar('WORKDIR', True)
ERROR:      0005:		try:
ERROR:      0006:			for file in os.listdir(os.getcwd()):
ERROR:      0007:				if file in get_package(d):
ERROR: (file: 'do_remove_tarball', lineno: 3, function: do_remove_tarball)
ERROR: Function failed: do_remove_tarball
ERROR: Logfile of failure stored in:
/home/frans/poky-denzil-7.0-build/tmp/work/ppce300c3-poky-linux-uclibc/gettext-0.18.1.1-r11/temp/log.do_package_write_rpm.11248
NOTE: package gettext-0.18.1.1-r11: task do_package_write_rpm: Failed
ERROR: Task 1167
(/home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.bb,
do_package_write_rpm) failed with exit code '1'

And still no deploy/sources dir

Best regards, Frans

