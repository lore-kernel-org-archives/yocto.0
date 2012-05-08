Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D794E0030B
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 09:37:57 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 08 May 2012 09:37:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="97716289"
Received: from unknown (HELO [10.255.12.218]) ([10.255.12.218])
	by AZSMGA002.ch.intel.com with ESMTP; 08 May 2012 09:37:56 -0700
Message-ID: <4FA94BE4.1040503@linux.intel.com>
Date: Tue, 08 May 2012 09:37:56 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
	<CACW_hTaroQeLuPDF5LbhfLCuB=-qpLFPFLP1eDAGZmWAqdkHJg@mail.gmail.com>
	<CACW_hTaeANMD271GeoU0hP8aacDd-8AhyrvXZ185LJoXLxqoqw@mail.gmail.com>
In-Reply-To: <CACW_hTaeANMD271GeoU0hP8aacDd-8AhyrvXZ185LJoXLxqoqw@mail.gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 08 May 2012 16:37:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/08/2012 03:29 AM, Frans Meulenbroeks wrote:
> 2012/5/8 Frans Meulenbroeks<fransmeulenbroeks@gmail.com>:
>> 2012/5/8 Frans Meulenbroeks<fransmeulenbroeks@gmail.com>:
>>> Dear all,
>>>
>>> A next question/issue wrt my denzil experiment:
>>>
>>> I wanted to know what licenses are used in my image.
>>> I found tmp/deploy/licenses but this is package oriented and does not
>>> really give a quick overview.
>>>
>>> The manual gave me this section:
>>> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-src-distribute
>>>
>>> I tried to inherit src_distribute and src_distribute_local, but to no avail
>>> Running a find on the source tree did not reveal these classes:
>>>
>>> frans@frans-desktop:~/poky-denzil-7.0$ find | grep distribute
>>> ./meta/classes/pkg_distribute.bbclass
>>> frans@frans-desktop:~/poky-denzil-7.0$
>>>
>>> Something missing?
>>> And what is the best way to find out what licenses are used?
>>>
>>> Thanks, (and keep up the good work!)
>>> Frans.
>>
>> Googled a little bit further.
>> Guess this is a documentation issue as the classes have been
>> deliberatly removed.
>> See http://patches.openembedded.org/patch/23171/
>>
>> Frans
>
> One more thing:
> I've added the archiver class. I also have rm_work (not sure if that is related)
> Now when running a build I get errors like this:
>
> NOTE: Running task 1029 of 1279 (ID: 1167,
> /home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.bb,
> do_package_write_rpm)
> NOTE: package gettext-0.18.1.1-r11: task do_package_write_rpm: Started
> ERROR: Error executing a python function in
> /home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.bb:
> AttributeError: 'NoneType' object has no attribute 'upper'
>
> ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> ERROR:   File "do_remove_tarball", line 14, in<module>
> ERROR:
> ERROR:   File "do_remove_tarball", line 3, in do_remove_tarball
> ERROR:
> ERROR: The code that was being executed was:
> ERROR:      0010:		except (TypeError,OSError):
> ERROR:      0011:				pass
> ERROR:      0012:
> ERROR:      0013:
> ERROR:  *** 0014:do_remove_tarball(d)
> ERROR:      0015:
> ERROR: (file: 'do_remove_tarball', lineno: 14, function:<module>)
> ERROR:      0001:
> ERROR:      0002:def do_remove_tarball(d):
> ERROR:  *** 0003:	if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE',
> True).upper() == 'SRPM':
> ERROR:      0004:		work_dir = d.getVar('WORKDIR', True)
> ERROR:      0005:		try:
> ERROR:      0006:			for file in os.listdir(os.getcwd()):
> ERROR:      0007:				if file in get_package(d):
> ERROR: (file: 'do_remove_tarball', lineno: 3, function: do_remove_tarball)
> ERROR: Function failed: do_remove_tarball
> ERROR: Logfile of failure stored in:
> /home/frans/poky-denzil-7.0-build/tmp/work/ppce300c3-poky-linux-uclibc/gettext-0.18.1.1-r11/temp/log.do_package_write_rpm.11248
> NOTE: package gettext-0.18.1.1-r11: task do_package_write_rpm: Failed
> ERROR: Task 1167
> (/home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.bb,
> do_package_write_rpm) failed with exit code '1'
>
> And still no deploy/sources dir
>
Frans Please file a bug against this and the src-distrubute class 
documentation.

Yes, we did rework the source archiving and I guess it was not tested as 
fully as it could have been.

Did you set SOURCE_ARCHIVE_PACKAGE_TYPE?

Sau!

> Best regards, Frans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

