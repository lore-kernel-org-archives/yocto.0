Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96CD4E00C74; Fri, 16 Mar 2018 11:26:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f50.google.com (mail-pl0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A902E0073D
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:26:26 -0700 (PDT)
Received: by mail-pl0-f50.google.com with SMTP id 61-v6so6417276plf.3
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=FohPsoVo2om/alWB3dtxy6SI+BauI+Ov1RALDAt9ZuM=;
	b=pPPobK79d/jvXqwI/IF/YEo35S0Q0re51yEImqjkhkkSUpFCuGTDZwpzNvL/Suw5in
	uXK2pjJdoFxynFsOVBDBJ0IG2JXQ07iquILFT74Yq2UvHzr7r3+HWEgK66Jh+FVRb1qd
	6JasFpzsUO31LKJ2v/cGS5uBWzS4BPfeT7hn14katulbD8q91yWqv4d1kR8wS2n0fKAM
	fmI8BIJgeOjFyC9VF/Aoge34V5OSrQSSPaF/2GWB7+NvyLhxA8vDFd1Sywhq+0UocsMB
	2J8eUMcviKd6UMUpqbHdo2w1B4LDQGYWVUJeF6xxZQYLpCbmT7BAA2NZbNxn18PsiwK6
	4epA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=FohPsoVo2om/alWB3dtxy6SI+BauI+Ov1RALDAt9ZuM=;
	b=nLL63zGz3nA8uSCSuoEGwMuYmRSxWQlwvrE6QvRCL30KGLMlLeHcE8SrWnpQY6Gpnp
	iaibLGlwzQsC5eh+AzCBi04LTzeukC3c4Jl47AD71PuMtBJed2YscsSOCV99oPvw8qMS
	bspnGMH8D1svzVdY7Sn+twfPP25dlU8U/leD/Ko5szGOR9PdOLUlmqdpKMoSM7Xxk0cH
	7VUkD+uGy/n6LBm9wGZ21LCmuMl+nJqJ8tbm2YHBfzAfVchws+x5IDtHWBiz0ec5x6MU
	nrbjv7uq8Xu+vrO5LWQ7B4CHuL1w4XrQR6hRyI6QuZyZ8iPqJnUdXSXBNHhnCSBt0dei
	sOCQ==
X-Gm-Message-State: AElRT7FIFlMoSoA0lDn9uXO2NJVN7CycUD+vbyvupZAj9z0983j1f+kC
	9rIbeuOdvl/mavdh6FcRndIsBb/RjdOx5VW8M88bZQ==
X-Google-Smtp-Source: AG47ELt9ucO1Q8fHP1k9kRkd7VRhHw2TObwnw0eWhHz0rn4JkRcmgG+7hDBV9dYInxJbRmPxn2VK6kplpZ6Apx+hwnk=
X-Received: by 2002:a17:902:8bc2:: with SMTP id
	r2-v6mr3151010plo.213.1521224786133; 
	Fri, 16 Mar 2018 11:26:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.184.9 with HTTP; Fri, 16 Mar 2018 11:26:25 -0700 (PDT)
In-Reply-To: <CAJTo0LaDQjiTosCtAqBnL0ZZ2aMpDXxdX7kP_SDDqoVobqdi0g@mail.gmail.com>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
	<CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
	<CAJTo0Lbwybvs404=Xs-vx4Vtj6+znf6gpTi0QvBFR1j-w=e0Qw@mail.gmail.com>
	<CAFq4t4gZDQQat_H-HeYAJWdYCvLMt9rGyunr1BRQXn3dkeAYGQ@mail.gmail.com>
	<CAJTo0LaDQjiTosCtAqBnL0ZZ2aMpDXxdX7kP_SDDqoVobqdi0g@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Fri, 16 Mar 2018 19:26:25 +0100
Message-ID: <CAFq4t4hgxQkgMQ8Z5-hvVyTWQKn3bAUSgD57gRF+tuXE4UTdWg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: scipy recipe
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
X-List-Received-Date: Fri, 16 Mar 2018 18:26:28 -0000
Content-Type: multipart/alternative; boundary="000000000000004dee05678bbfbb"

--000000000000004dee05678bbfbb
Content-Type: text/plain; charset="UTF-8"

Seems OpenBLAS is missing, is there recipe for it?

ERROR: scipy-1.0.0-r0 do_compile: python setup.py build execution failed.
ERROR: scipy-1.0.0-r0 do_compile: Function failed: do_compile (log file is
located at /log.do_compile.8708)
ERROR: Logfile of failure stored in: /1.0.0-r0/temp/log.do_compile.8708
Log data follows:
| DEBUG: Executing shell function do_compile
| ERROR: python setup.py build execution failed.
| /usr/lib/python2.7/distutils/dist.py:267: UserWarning: Unknown
distribution option: 'python_requires'
|   warnings.warn(msg)
| lapack_opt_info:
| openblas_lapack_info:
|   libraries openblas not found in ['/usr/lib']
|   NOT AVAILABLE
|
| lapack_mkl_info:
| mkl_info:
|   libraries mkl,vml,guide not found in ['/usr/lib']
|   NOT AVAILABLE
|
|   NOT AVAILABLE
|
| atlas_3_10_threads_info:
| Setting PTATLAS=ATLAS
|   libraries tatlas,tatlas not found in /usr/lib
|   libraries lapack_atlas not found in /usr/lib
| <class 'numpy.distutils.system_info.atlas_3_10_threads_info'>
|   NOT AVAILABLE
|
| atlas_3_10_info:
|   libraries satlas,satlas not found in /usr/lib
|   libraries lapack_atlas not found in /usr/lib
| <class 'numpy.distutils.system_info.atlas_3_10_info'>
|   NOT AVAILABLE
|
| atlas_threads_info:
| Setting PTATLAS=ATLAS
|   libraries ptf77blas,ptcblas,atlas not found in /usr/lib
|   libraries lapack_atlas not found in /usr/lib
| <class 'numpy.distutils.system_info.atlas_threads_info'>
|   NOT AVAILABLE
|
| atlas_info:
|   libraries f77blas,cblas,atlas not found in /usr/lib
|   libraries lapack_atlas not found in /usr/lib
| <class 'numpy.distutils.system_info.atlas_info'>
|   NOT AVAILABLE
|
|  /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1510:
UserWarning:
|     Atlas (http://math-atlas.sourceforge.net/) libraries not found.
|     Directories to search for the libraries can be specified in the
|     numpy/distutils/site.cfg file (section [atlas]) or by setting
|     the ATLAS environment variable.
|   warnings.warn(AtlasNotFoundError.__doc__)
| lapack_info:
|   libraries lapack not found in ['/usr/lib']
|   NOT AVAILABLE
|
| /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1521:
UserWarning:
|     Lapack (http://www.netlib.org/lapack/) libraries not found.
|     Directories to search for the libraries can be specified in the
|     numpy/distutils/site.cfg file (section [lapack]) or by setting
|     the LAPACK environment variable.
|   warnings.warn(LapackNotFoundError.__doc__)
| lapack_src_info:
|   NOT AVAILABLE
|
| /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1524:
UserWarning:
|     Lapack (http://www.netlib.org/lapack/) sources not found.
|     Directories to search for the sources can be specified in the
|     numpy/distutils/site.cfg file (section [lapack_src]) or by setting
|     the LAPACK_SRC environment variable.
|   warnings.warn(LapackSrcNotFoundError.__doc__)
|   NOT AVAILABLE
|
| Running from scipy source directory.
| Traceback (most recent call last):
|   File "setup.py", line 418, in <module>
|     setup_package()
|   File "setup.py", line 414, in setup_package
|     setup(**metadata)
|   File "/usr/lib/python2.7/site-packages/numpy/distutils/core.py", line
135, in setup
|     config = configuration()
|   File "setup.py", line 336, in configuration
|     config.add_subpackage('scipy')
|   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
line 1003, in add_subpackage
|     caller_level = 2)
|   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
line 972, in get_subpackage
|     caller_level = caller_level + 1)
|   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
line 909, in _get_configuration_from_setup_py
|     config = setup_module.configuration(*args)
|   File "scipy/setup.py", line 15, in configuration
|     config.add_subpackage('linalg')
|   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
line 1003, in add_subpackage
|     caller_level = 2)
|   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
line 972, in get_subpackage
|     caller_level = caller_level + 1)
|   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
line 909, in _get_configuration_from_setup_py
|     config = setup_module.configuration(*args)
|   File "scipy/linalg/setup.py", line 19, in configuration
|     raise NotFoundError('no lapack/blas resources found')
| numpy.distutils.system_info.NotFoundError: no lapack/blas resources found
| ERROR: Function failed: do_compile (log file is located at
/scipy/1.0.0-r0/temp/log.do_compile.8708)
ERROR: Task
(/sources/meta-openembedded/meta-python/recipes-devtools/python/scipy_1.0.0.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 8394 tasks of which 8382 didn't need to be
rerun and 1 failed.


On Fri, Mar 16, 2018 at 6:36 PM, Burton, Ross <ross.burton@intel.com> wrote:

> To change the version, change the filename of the recipe.
>
> Also, please remember the CC the list.
>
> Ross
>
> On 16 March 2018 at 17:30, Peter Balazovic <balazovic.peter@gmail.com>
> wrote:
>
>> I did download from https://github.com/scipy/scipy/archive/v1.0.0.tar.gz
>> and cc to /downloads and same still issue ...
>> as mentioned  should be version is 1.0.0
>> where to change it to point to correct version & file?
>>
>> On Fri, Mar 16, 2018 at 5:57 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> You're getting a "file not found" for the URL it is looking for.
>>> According to https://pypi.python.org/pypi/scipy, the version is 1.0.0
>>> not 1.0.
>>>
>>> Ross
>>>
>>> On 16 March 2018 at 16:50, Peter Balazovic <balazovic.peter@gmail.com>
>>> wrote:
>>>
>>>> per using recipe https://github.com/scipy/scipy/issues/8226
>>>>
>>>>
>>>> SUMMARY = "Scientific Library for Python"
>>>> SECTION = "devel/python"
>>>> HOMEPAGE = "https://pypi.python.org/pypi/scipy"
>>>>
>>>> LICENSE = "BSD-3-Clause"
>>>> LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=d0db8f4148a3d5534cfb93be78f9287c"
>>>>
>>>> PYPI_PACKAGE="scipy"
>>>>
>>>> SRC_URI[md5sum] = "53fa34bd3733a9a4216842b6000f7316"
>>>> SRC_URI[sha256sum] = "87ea1f11a0e9ec08c264dc64551d501fa307289460705f6fccd84cbfc7926d10"
>>>>
>>>> inherit pypi setuptools distutils
>>>>
>>>> RDEPENDS_${PN} += "python-core python-numpy-native python-distutils"
>>>> DEPENDS += "python-numpy"
>>>>
>>>>
>>>> I am getting error to fetch scipy do_fetch error
>>>>
>>>>
>>>> WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL
>>>> https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz,
>>>> attempting MIRRORS if available
>>>> ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch command export
>>>> DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-idNNJsmT3C"; export
>>>> SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export ftp_proxy=
>>>> --progress=dot -v failed with exit code 8, output:
>>>> --2018-03-16 17:43:34--  https://files.pythonhosted.org
>>>> /packages/source/s/scipy/scipy-1.0.tar.gz
>>>> Resolving files.pythonhosted.org (files.pythonhosted.org)...
>>>> 151.101.17.63, 2a04:4e42:4::319
>>>> Connecting to files.pythonhosted.org (files.pythonhosted.org)|151.101.17.63|:443...
>>>> connected.
>>>> HTTP request sent, awaiting response... 404 Not Found
>>>> 2018-03-16 17:43:35 ERROR 404: Not Found.
>>>>
>>>> Any help?
>>>>
>>>>
>>>> On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod <
>>>> randy.macleod@windriver.com> wrote:
>>>>
>>>>> On 2018-03-15 01:56 PM, Peter Balazovic wrote:
>>>>>
>>>>>> Hello all,
>>>>>>
>>>>>> I wonder if there is scipy recipe available?
>>>>>>
>>>>>
>>>>> Not yet:
>>>>>
>>>>> https://layers.openembedded.org/layerindex/branch/master/rec
>>>>> ipes/?q=scipy
>>>>>
>>>>> It appears to be blocked by:
>>>>>    https://github.com/scipy/scipy/issues/8226
>>>>> but apparently that's a bitbake issue, not a spip one.
>>>>> Care to take a look?
>>>>>
>>>>>
>>>>>> Thanks.
>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>> --
>>>>> # Randy MacLeod.  WR Linux
>>>>> # Wind River an Intel Company
>>>>>
>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>
>

--000000000000004dee05678bbfbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Seems OpenBLAS is missing, is there recipe for it?<br><br>=
ERROR: scipy-1.0.0-r0 do_compile: python setup.py build execution failed.<b=
r>ERROR: scipy-1.0.0-r0 do_compile: Function failed: do_compile (log file i=
s located at /log.do_compile.8708)<br>ERROR: Logfile of failure stored in: =
/1.0.0-r0/temp/log.do_compile.8708<br>Log data follows:<br>| DEBUG: Executi=
ng shell function do_compile<br>| ERROR: python setup.py build execution fa=
iled.<br>| /usr/lib/python2.7/distutils/dist.py:267: UserWarning: Unknown d=
istribution option: &#39;python_requires&#39;<br>|=C2=A0=C2=A0 warnings.war=
n(msg)<br>| lapack_opt_info:<br>| openblas_lapack_info:<br>|=C2=A0=C2=A0 li=
braries openblas not found in [&#39;/usr/lib&#39;]<br>|=C2=A0=C2=A0 NOT AVA=
ILABLE<br>| <br>| lapack_mkl_info:<br>| mkl_info:<br>|=C2=A0=C2=A0 librarie=
s mkl,vml,guide not found in [&#39;/usr/lib&#39;]<br>|=C2=A0=C2=A0 NOT AVAI=
LABLE<br>| <br>|=C2=A0=C2=A0 NOT AVAILABLE<br>| <br>| atlas_3_10_threads_in=
fo:<br>| Setting PTATLAS=3DATLAS<br>|=C2=A0=C2=A0 libraries tatlas,tatlas n=
ot found in /usr/lib<br>|=C2=A0=C2=A0 libraries lapack_atlas not found in /=
usr/lib<br>| &lt;class &#39;numpy.distutils.system_info.atlas_3_10_threads_=
info&#39;&gt;<br>|=C2=A0=C2=A0 NOT AVAILABLE<br>| <br>| atlas_3_10_info:<br=
>|=C2=A0=C2=A0 libraries satlas,satlas not found in /usr/lib<br>|=C2=A0=C2=
=A0 libraries lapack_atlas not found in /usr/lib<br>| &lt;class &#39;numpy.=
distutils.system_info.atlas_3_10_info&#39;&gt;<br>|=C2=A0=C2=A0 NOT AVAILAB=
LE<br>| <br>| atlas_threads_info:<br>| Setting PTATLAS=3DATLAS<br>|=C2=A0=
=C2=A0 libraries ptf77blas,ptcblas,atlas not found in /usr/lib<br>|=C2=A0=
=C2=A0 libraries lapack_atlas not found in /usr/lib<br>| &lt;class &#39;num=
py.distutils.system_info.atlas_threads_info&#39;&gt;<br>|=C2=A0=C2=A0 NOT A=
VAILABLE<br>| <br>| atlas_info:<br>|=C2=A0=C2=A0 libraries f77blas,cblas,at=
las not found in /usr/lib<br>|=C2=A0=C2=A0 libraries lapack_atlas not found=
 in /usr/lib<br>| &lt;class &#39;numpy.distutils.system_info.atlas_info&#39=
;&gt;<br>|=C2=A0=C2=A0 NOT AVAILABLE<br>| <br>|=C2=A0 /usr/lib/python2.7/si=
te-packages/numpy/distutils/system_info.py:1510: UserWarning:<br>|=C2=A0=C2=
=A0=C2=A0=C2=A0 Atlas (<a href=3D"http://math-atlas.sourceforge.net/">http:=
//math-atlas.sourceforge.net/</a>) libraries not found.<br>|=C2=A0=C2=A0=C2=
=A0=C2=A0 Directories to search for the libraries can be specified in the<b=
r>|=C2=A0=C2=A0=C2=A0=C2=A0 numpy/distutils/site.cfg file (section [atlas])=
 or by setting<br>|=C2=A0=C2=A0=C2=A0=C2=A0 the ATLAS environment variable.=
<br>|=C2=A0=C2=A0 warnings.warn(AtlasNotFoundError.__doc__)<br>| lapack_inf=
o:<br>|=C2=A0=C2=A0 libraries lapack not found in [&#39;/usr/lib&#39;]<br>|=
=C2=A0=C2=A0 NOT AVAILABLE<br>| <br>| /usr/lib/python2.7/site-packages/nump=
y/distutils/system_info.py:1521: UserWarning:<br>|=C2=A0=C2=A0=C2=A0=C2=A0 =
Lapack (<a href=3D"http://www.netlib.org/lapack/">http://www.netlib.org/lap=
ack/</a>) libraries not found.<br>|=C2=A0=C2=A0=C2=A0=C2=A0 Directories to =
search for the libraries can be specified in the<br>|=C2=A0=C2=A0=C2=A0=C2=
=A0 numpy/distutils/site.cfg file (section [lapack]) or by setting<br>|=C2=
=A0=C2=A0=C2=A0=C2=A0 the LAPACK environment variable.<br>|=C2=A0=C2=A0 war=
nings.warn(LapackNotFoundError.__doc__)<br>| lapack_src_info:<br>|=C2=A0=C2=
=A0 NOT AVAILABLE<br>| <br>| /usr/lib/python2.7/site-packages/numpy/distuti=
ls/system_info.py:1524: UserWarning:<br>|=C2=A0=C2=A0=C2=A0=C2=A0 Lapack (<=
a href=3D"http://www.netlib.org/lapack/">http://www.netlib.org/lapack/</a>)=
 sources not found.<br>|=C2=A0=C2=A0=C2=A0=C2=A0 Directories to search for =
the sources can be specified in the<br>|=C2=A0=C2=A0=C2=A0=C2=A0 numpy/dist=
utils/site.cfg file (section [lapack_src]) or by setting<br>|=C2=A0=C2=A0=
=C2=A0=C2=A0 the LAPACK_SRC environment variable.<br>|=C2=A0=C2=A0 warnings=
.warn(LapackSrcNotFoundError.__doc__)<br>|=C2=A0=C2=A0 NOT AVAILABLE<br>| <=
br>| Running from scipy source directory.<br>| Traceback (most recent call =
last):<br>|=C2=A0=C2=A0 File &quot;setup.py&quot;, line 418, in &lt;module&=
gt;<br>|=C2=A0=C2=A0=C2=A0=C2=A0 setup_package()<br>|=C2=A0=C2=A0 File &quo=
t;setup.py&quot;, line 414, in setup_package<br>|=C2=A0=C2=A0=C2=A0=C2=A0 s=
etup(**metadata)<br>|=C2=A0=C2=A0 File &quot;/usr/lib/python2.7/site-packag=
es/numpy/distutils/core.py&quot;, line 135, in setup<br>|=C2=A0=C2=A0=C2=A0=
=C2=A0 config =3D configuration()<br>|=C2=A0=C2=A0 File &quot;setup.py&quot=
;, line 336, in configuration<br>|=C2=A0=C2=A0=C2=A0=C2=A0 config.add_subpa=
ckage(&#39;scipy&#39;)<br>|=C2=A0=C2=A0 File &quot;/usr/lib/python2.7/site-=
packages/numpy/distutils/misc_util.py&quot;, line 1003, in add_subpackage<b=
r>|=C2=A0=C2=A0=C2=A0=C2=A0 caller_level =3D 2)<br>|=C2=A0=C2=A0 File &quot=
;/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py&quot;, line =
972, in get_subpackage<br>|=C2=A0=C2=A0=C2=A0=C2=A0 caller_level =3D caller=
_level + 1)<br>|=C2=A0=C2=A0 File &quot;/usr/lib/python2.7/site-packages/nu=
mpy/distutils/misc_util.py&quot;, line 909, in _get_configuration_from_setu=
p_py<br>|=C2=A0=C2=A0=C2=A0=C2=A0 config =3D setup_module.configuration(*ar=
gs)<br>|=C2=A0=C2=A0 File &quot;scipy/setup.py&quot;, line 15, in configura=
tion<br>|=C2=A0=C2=A0=C2=A0=C2=A0 config.add_subpackage(&#39;linalg&#39;)<b=
r>|=C2=A0=C2=A0 File &quot;/usr/lib/python2.7/site-packages/numpy/distutils=
/misc_util.py&quot;, line 1003, in add_subpackage<br>|=C2=A0=C2=A0=C2=A0=C2=
=A0 caller_level =3D 2)<br>|=C2=A0=C2=A0 File &quot;/usr/lib/python2.7/site=
-packages/numpy/distutils/misc_util.py&quot;, line 972, in get_subpackage<b=
r>|=C2=A0=C2=A0=C2=A0=C2=A0 caller_level =3D caller_level + 1)<br>|=C2=A0=
=C2=A0 File &quot;/usr/lib/python2.7/site-packages/numpy/distutils/misc_uti=
l.py&quot;, line 909, in _get_configuration_from_setup_py<br>|=C2=A0=C2=A0=
=C2=A0=C2=A0 config =3D setup_module.configuration(*args)<br>|=C2=A0=C2=A0 =
File &quot;scipy/linalg/setup.py&quot;, line 19, in configuration<br>|=C2=
=A0=C2=A0=C2=A0=C2=A0 raise NotFoundError(&#39;no lapack/blas resources fou=
nd&#39;)<br>| numpy.distutils.system_info.NotFoundError: no lapack/blas res=
ources found<br>| ERROR: Function failed: do_compile (log file is located a=
t /scipy/1.0.0-r0/temp/log.do_compile.8708)<br>ERROR: Task (/sources/meta-o=
penembedded/meta-python/recipes-devtools/python/scipy_1.0.0.bb:do_compile) =
failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 8394 ta=
sks of which 8382 didn&#39;t need to be rerun and 1 failed.<br><br></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 16, 201=
8 at 6:36 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">To change the version,=
 change the filename of the recipe.<div><br></div><div>Also, please remembe=
r the CC the list.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div=
><br></div><div>Ross</div></font></span></div><div class=3D"HOEnZb"><div cl=
ass=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 16 =
March 2018 at 17:30, Peter Balazovic <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div=
><div>I did download from <a href=3D"https://github.com/scipy/scipy/archive=
/v1.0.0.tar.gz" target=3D"_blank">https://github.com/scipy/scipy<wbr>/archi=
ve/v1.0.0.tar.gz</a> and cc to /downloads and same still issue ...<br></div=
>as mentioned=C2=A0 should be=C2=A0version is 1.0.0 <br></div>where to chan=
ge it to point to correct version &amp; file? <br></div><div class=3D"m_-45=
11592469061984950HOEnZb"><div class=3D"m_-4511592469061984950h5"><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 16, 2018 at 5:5=
7 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@inte=
l.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr">You&#39;re getting a &quot;fil=
e not found&quot; for the URL it is looking for.=C2=A0 According to <a href=
=3D"https://pypi.python.org/pypi/scipy" target=3D"_blank">https://pypi.pyth=
on.org/pypi/s<wbr>cipy</a>, the version is 1.0.0 not 1.0.<span class=3D"m_-=
4511592469061984950m_2741193929227170611HOEnZb"><font color=3D"#888888"><di=
v><br></div><div>Ross</div></font></span></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote"><div><div class=3D"m_-4511592469061984950m_27=
41193929227170611h5">On 16 March 2018 at 16:50, Peter Balazovic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:balazovic.peter@gmail.com" target=3D"_blank"=
>balazovic.peter@gmail.com</a>&gt;</span> wrote:<br></div></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div><div class=3D"m_-4511592469061984950m_274119392922=
7170611h5"><div dir=3D"ltr">per using recipe=C2=A0<a href=3D"https://github=
.com/scipy/scipy/issues/8226" target=3D"_blank">https://github.com/scip<wbr=
>y/scipy/issues/8226</a>=C2=A0<div><br><div><br></div><div><pre style=3D"bo=
x-sizing:border-box;font-family:SFMono-Regular,Consolas,&quot;Liberation Mo=
no&quot;,Menlo,Courier,monospace;font-size:11.9px;margin-top:0px;margin-bot=
tom:16px;padding:16px;overflow:auto;line-height:1.45;background-color:rgb(2=
46,248,250);border-radius:3px;color:rgb(36,41,46);font-style:normal;font-va=
riant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;word-spacin=
g:0px;text-decoration-style:initial;text-decoration-color:initial"><code st=
yle=3D"box-sizing:border-box;font-family:SFMono-Regular,Consolas,&quot;Libe=
ration Mono&quot;,Menlo,Courier,monospace;font-size:11.9px;padding:0px;marg=
in:0px;background:transparent none repeat scroll 0% 0%;border-radius:3px;wo=
rd-break:normal;white-space:pre-wrap;border:0px none;display:inline;overflo=
w:visible;line-height:inherit">SUMMARY =3D &quot;Scientific Library for Pyt=
hon&quot;
SECTION =3D &quot;devel/python&quot;
HOMEPAGE =3D &quot;<a href=3D"https://pypi.python.org/pypi/scipy" target=3D=
"_blank">https://pypi.python.org/pypi/<wbr>scipy</a>&quot;

LICENSE =3D &quot;BSD-3-Clause&quot;
LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3Dd0db8f<wbr>4148a3d5534c=
fb93be78f9287c&quot;

PYPI_PACKAGE=3D&quot;scipy&quot;

SRC_URI[md5sum] =3D &quot;53fa34bd3733a9a4216842b6000f7<wbr>316&quot;
SRC_URI[sha256sum] =3D &quot;87ea1f11a0e9ec08c264dc64551d5<wbr>01fa30728946=
0705f6fccd84cbfc79<wbr>26d10&quot;

inherit pypi setuptools distutils

RDEPENDS_${PN} +=3D &quot;python-core python-numpy-native python-distutils&=
quot;
DEPENDS +=3D &quot;python-numpy&quot;</code></pre><br></div><div>I am getti=
ng error to fetch scipy do_fetch error</div></div><div><br><br>WARNING: sci=
py-1.0-r0 do_fetch: Failed to fetch URL <a href=3D"https://files.pythonhost=
ed.org/packages/source/s/scipy/scipy-1.0.tar.gz" target=3D"_blank">https://=
files.pythonhosted.org<wbr>/packages/source/s/scipy/scipy<wbr>-1.0.tar.gz</=
a>, attempting MIRRORS if available<br>ERROR: scipy-1.0-r0 do_fetch: Fetche=
r failure: Fetch command export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix<wbr>:=
abstract=3D/tmp/dbus-idNNJsmT3C<wbr>&quot;; export SSH_AUTH_SOCK=3D&quot;/r=
un/user/1000/<wbr>keyring/ssh&quot;; export ftp_proxy=3D<br>--progress=3Ddo=
t -v failed with exit code 8, output:<br>--2018-03-16 17:43:34--=C2=A0 <a h=
ref=3D"https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar=
.gz" target=3D"_blank">https://files.pythonhosted.org<wbr>/packages/source/=
s/scipy/scipy<wbr>-1.0.tar.gz</a><br>Resolving <a href=3D"http://files.pyth=
onhosted.org" target=3D"_blank">files.pythonhosted.org</a> (<a href=3D"http=
://files.pythonhosted.org" target=3D"_blank">files.pythonhosted.org</a>)...=
 151.101.17.63, 2a04:4e42:4::319<br>Connecting to <a href=3D"http://files.p=
ythonhosted.org" target=3D"_blank">files.pythonhosted.org</a> (<a href=3D"h=
ttp://files.pythonhosted.org" target=3D"_blank">files.pythonhosted.org</a>)=
|151.1<wbr>01.17.63|:443... connected.<br>HTTP request sent, awaiting respo=
nse... 404 Not Found<br>2018-03-16 17:43:35 ERROR 404: Not Found.<br><br></=
div><div>Any help?<br></div><div><br></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Thu, Mar 15, 2018 at 9:35 PM, Randy MacL=
eod <span dir=3D"ltr">&lt;<a href=3D"mailto:randy.macleod@windriver.com" ta=
rget=3D"_blank">randy.macleod@windriver.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><span>On 2018-03-15 01:56 PM, Peter Balazovic wrot=
e:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello all,<br>
<br>
I wonder if there is scipy recipe available?<br>
</blockquote>
<br></span>
Not yet:<br>
<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/recipes=
/?q=3Dscipy" rel=3D"noreferrer" target=3D"_blank">https://layers.openembedd=
ed.or<wbr>g/layerindex/branch/master/rec<wbr>ipes/?q=3Dscipy</a><br>
<br>
It appears to be blocked by:<br>
=C2=A0 =C2=A0<a href=3D"https://github.com/scipy/scipy/issues/8226" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/scipy/scip<wbr>y/issues/82=
26</a><br>
but apparently that&#39;s a bitbake issue, not a spip one.<br>
Care to take a look?<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Thanks.<br>
<br>
<br><span class=3D"m_-4511592469061984950m_2741193929227170611m_79311388834=
46710130m_-6603492087161229101HOEnZb"><font color=3D"#888888">
</font></span></blockquote><span class=3D"m_-4511592469061984950m_274119392=
9227170611m_7931138883446710130m_-6603492087161229101HOEnZb"><font color=3D=
"#888888">
<br><span class=3D"m_-4511592469061984950m_2741193929227170611m_79311388834=
46710130HOEnZb"><font color=3D"#888888">
<br>
-- <br>
# Randy MacLeod.=C2=A0 WR Linux<br>
# Wind River an Intel Company<br>
</font></span></font></span></blockquote></div><br></div>
<br></div></div><span>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></span></blockquote></div><br></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--000000000000004dee05678bbfbb--
