Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD404E0030B
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 10:17:03 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so10951597pbb.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 10:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=kKOSLh9OsYK54Vgj5gTPLlMO/VDf0HnAwVxb2oVOm2E=;
	b=I8+oga5vOfK3SmzUjtiJohFVx6c3rMnMploWcjJNClN34oLrCQ3HRfmgPU6oj6guNl
	H9cnmteg/yQE2uSx09NSGQym3ygzaeH254SJKPK465WbopiJQTFiAZKGBIf2yTIlhzj3
	BryJXFYSU6E8fNclaMRjyP2BHzVQwqjICcVNZoCvl0sI/UmQDmWfMo+2MWV7oOZ6RyGh
	+d1a6IW60Bvu9prOYZ4a1OUYaL/SEj6y70i8wYuPYZRTZYC1kshidNpT21E4vCSOt7Tm
	JS0HY6CAwtWjfcowNRZ6uDbaKdX/Ka/PCxhxJl0Hpy0WFbJP2qMxpsix9/siwVKIKnU6
	w2qA==
MIME-Version: 1.0
Received: by 10.68.136.69 with SMTP id py5mr10329264pbb.115.1336497423374;
	Tue, 08 May 2012 10:17:03 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 8 May 2012 10:17:03 -0700 (PDT)
In-Reply-To: <4FA94BE4.1040503@linux.intel.com>
References: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
	<CACW_hTaroQeLuPDF5LbhfLCuB=-qpLFPFLP1eDAGZmWAqdkHJg@mail.gmail.com>
	<CACW_hTaeANMD271GeoU0hP8aacDd-8AhyrvXZ185LJoXLxqoqw@mail.gmail.com>
	<4FA94BE4.1040503@linux.intel.com>
Date: Tue, 8 May 2012 19:17:03 +0200
Message-ID: <CACW_hTY_wtMa4ZLwRXMdeiJyouKkG0TTSe6PdO+m8Gt02-LM=w@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
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
X-List-Received-Date: Tue, 08 May 2012 17:17:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2012/5/8 Saul Wold <sgw@linux.intel.com>:
> On 05/08/2012 03:29 AM, Frans Meulenbroeks wrote:
>>
>> 2012/5/8 Frans Meulenbroeks<fransmeulenbroeks@gmail.com>:
>>>
>>> 2012/5/8 Frans Meulenbroeks<fransmeulenbroeks@gmail.com>:
>>>>
>>>> Dear all,
>>>>
>>>> A next question/issue wrt my denzil experiment:
>>>>
>>>> I wanted to know what licenses are used in my image.
>>>> I found tmp/deploy/licenses but this is package oriented and does not
>>>> really give a quick overview.
>>>>
>>>> The manual gave me this section:
>>>>
>>>> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manu=
al.html#ref-classes-src-distribute
>>>>
>>>> I tried to inherit src_distribute and src_distribute_local, but to no
>>>> avail
>>>> Running a find on the source tree did not reveal these classes:
>>>>
>>>> frans@frans-desktop:~/poky-denzil-7.0$ find | grep distribute
>>>> ./meta/classes/pkg_distribute.bbclass
>>>> frans@frans-desktop:~/poky-denzil-7.0$
>>>>
>>>> Something missing?
>>>> And what is the best way to find out what licenses are used?
>>>>
>>>> Thanks, (and keep up the good work!)
>>>> Frans.
>>>
>>>
>>> Googled a little bit further.
>>> Guess this is a documentation issue as the classes have been
>>> deliberatly removed.
>>> See http://patches.openembedded.org/patch/23171/
>>>
>>> Frans
>>
>>
>> One more thing:
>> I've added the archiver class. I also have rm_work (not sure if that is
>> related)
>> Now when running a build I get errors like this:
>>
>> NOTE: Running task 1029 of 1279 (ID: 1167,
>> /home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.b=
b,
>> do_package_write_rpm)
>> NOTE: package gettext-0.18.1.1-r11: task do_package_write_rpm: Started
>> ERROR: Error executing a python function in
>> /home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.b=
b:
>> AttributeError: 'NoneType' object has no attribute 'upper'
>>
>> ERROR: The stack trace of python calls that resulted in this
>> exception/failure was:
>> ERROR: =A0 File "do_remove_tarball", line 14, in<module>
>> ERROR:
>> ERROR: =A0 File "do_remove_tarball", line 3, in do_remove_tarball
>> ERROR:
>> ERROR: The code that was being executed was:
>> ERROR: =A0 =A0 =A00010: =A0 =A0 =A0 =A0 =A0 =A0 =A0 except (TypeError,OS=
Error):
>> ERROR: =A0 =A0 =A00011: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 pass
>> ERROR: =A0 =A0 =A00012:
>> ERROR: =A0 =A0 =A00013:
>> ERROR: =A0*** 0014:do_remove_tarball(d)
>> ERROR: =A0 =A0 =A00015:
>> ERROR: (file: 'do_remove_tarball', lineno: 14, function:<module>)
>> ERROR: =A0 =A0 =A00001:
>> ERROR: =A0 =A0 =A00002:def do_remove_tarball(d):
>> ERROR: =A0*** 0003: =A0 =A0 =A0 if d.getVar('SOURCE_ARCHIVE_PACKAGE_TYPE=
',
>> True).upper() =3D=3D 'SRPM':
>> ERROR: =A0 =A0 =A00004: =A0 =A0 =A0 =A0 =A0 =A0 =A0 work_dir =3D d.getVa=
r('WORKDIR', True)
>> ERROR: =A0 =A0 =A00005: =A0 =A0 =A0 =A0 =A0 =A0 =A0 try:
>> ERROR: =A0 =A0 =A00006: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 for =
file in
>> os.listdir(os.getcwd()):
>> ERROR: =A0 =A0 =A00007: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 if file in get_package(d):
>> ERROR: (file: 'do_remove_tarball', lineno: 3, function: do_remove_tarbal=
l)
>> ERROR: Function failed: do_remove_tarball
>> ERROR: Logfile of failure stored in:
>>
>> /home/frans/poky-denzil-7.0-build/tmp/work/ppce300c3-poky-linux-uclibc/g=
ettext-0.18.1.1-r11/temp/log.do_package_write_rpm.11248
>> NOTE: package gettext-0.18.1.1-r11: task do_package_write_rpm: Failed
>> ERROR: Task 1167
>>
>> (/home/frans/poky-denzil-7.0/meta/recipes-core/gettext/gettext_0.18.1.1.=
bb,
>> do_package_write_rpm) failed with exit code '1'
>>
>> And still no deploy/sources dir
>>
> Frans Please file a bug against this and the src-distrubute class
> documentation.
>
> Yes, we did rework the source archiving and I guess it was not tested as
> fully as it could have been.
>
> Did you set SOURCE_ARCHIVE_PACKAGE_TYPE?
>
> Sau!
>

Elizabeth, thhanks for the reference

Saul, I did not set  SOURCE_ARCHIVE_PACKAGE_TYPE. I assume that is the prob=
lem.
Maybe this should get a sensible default or a warning if not set or it
could skip the source tarball

Best regards, Frans

