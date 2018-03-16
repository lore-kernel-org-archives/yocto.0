Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 485CCE00CD2; Fri, 16 Mar 2018 11:29:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE30BE00CA9
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:29:51 -0700 (PDT)
Received: (qmail 1380 invoked by uid 1003); 16 Mar 2018 18:29:53 -0000
Received: from unknown (HELO ?192.168.1.140?)
	(philip@opensdr.com@71.237.182.170)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	16 Mar 2018 18:29:53 -0000
To: Peter Balazovic <balazovic.peter@gmail.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
	<CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
	<CAJTo0Lbwybvs404=Xs-vx4Vtj6+znf6gpTi0QvBFR1j-w=e0Qw@mail.gmail.com>
	<CAFq4t4gZDQQat_H-HeYAJWdYCvLMt9rGyunr1BRQXn3dkeAYGQ@mail.gmail.com>
	<CAJTo0LaDQjiTosCtAqBnL0ZZ2aMpDXxdX7kP_SDDqoVobqdi0g@mail.gmail.com>
	<CAFq4t4hgxQkgMQ8Z5-hvVyTWQKn3bAUSgD57gRF+tuXE4UTdWg@mail.gmail.com>
From: Philip Balister <philip@balister.org>
Message-ID: <d9887f4a-61f9-4c51-95f3-66c52f9a3b1f@balister.org>
Date: Fri, 16 Mar 2018 11:29:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <CAFq4t4hgxQkgMQ8Z5-hvVyTWQKn3bAUSgD57gRF+tuXE4UTdWg@mail.gmail.com>
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
X-List-Received-Date: Fri, 16 Mar 2018 18:29:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit

You'll get to Atlas soon, and that is another source of pain :)

Philip

On 03/16/2018 11:26 AM, Peter Balazovic wrote:
> Seems OpenBLAS is missing, is there recipe for it?
> 
> ERROR: scipy-1.0.0-r0 do_compile: python setup.py build execution failed.
> ERROR: scipy-1.0.0-r0 do_compile: Function failed: do_compile (log file is
> located at /log.do_compile.8708)
> ERROR: Logfile of failure stored in: /1.0.0-r0/temp/log.do_compile.8708
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | ERROR: python setup.py build execution failed.
> | /usr/lib/python2.7/distutils/dist.py:267: UserWarning: Unknown
> distribution option: 'python_requires'
> |   warnings.warn(msg)
> | lapack_opt_info:
> | openblas_lapack_info:
> |   libraries openblas not found in ['/usr/lib']
> |   NOT AVAILABLE
> |
> | lapack_mkl_info:
> | mkl_info:
> |   libraries mkl,vml,guide not found in ['/usr/lib']
> |   NOT AVAILABLE
> |
> |   NOT AVAILABLE
> |
> | atlas_3_10_threads_info:
> | Setting PTATLAS=ATLAS
> |   libraries tatlas,tatlas not found in /usr/lib
> |   libraries lapack_atlas not found in /usr/lib
> | <class 'numpy.distutils.system_info.atlas_3_10_threads_info'>
> |   NOT AVAILABLE
> |
> | atlas_3_10_info:
> |   libraries satlas,satlas not found in /usr/lib
> |   libraries lapack_atlas not found in /usr/lib
> | <class 'numpy.distutils.system_info.atlas_3_10_info'>
> |   NOT AVAILABLE
> |
> | atlas_threads_info:
> | Setting PTATLAS=ATLAS
> |   libraries ptf77blas,ptcblas,atlas not found in /usr/lib
> |   libraries lapack_atlas not found in /usr/lib
> | <class 'numpy.distutils.system_info.atlas_threads_info'>
> |   NOT AVAILABLE
> |
> | atlas_info:
> |   libraries f77blas,cblas,atlas not found in /usr/lib
> |   libraries lapack_atlas not found in /usr/lib
> | <class 'numpy.distutils.system_info.atlas_info'>
> |   NOT AVAILABLE
> |
> |  /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1510:
> UserWarning:
> |     Atlas (http://math-atlas.sourceforge.net/) libraries not found.
> |     Directories to search for the libraries can be specified in the
> |     numpy/distutils/site.cfg file (section [atlas]) or by setting
> |     the ATLAS environment variable.
> |   warnings.warn(AtlasNotFoundError.__doc__)
> | lapack_info:
> |   libraries lapack not found in ['/usr/lib']
> |   NOT AVAILABLE
> |
> | /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1521:
> UserWarning:
> |     Lapack (http://www.netlib.org/lapack/) libraries not found.
> |     Directories to search for the libraries can be specified in the
> |     numpy/distutils/site.cfg file (section [lapack]) or by setting
> |     the LAPACK environment variable.
> |   warnings.warn(LapackNotFoundError.__doc__)
> | lapack_src_info:
> |   NOT AVAILABLE
> |
> | /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1524:
> UserWarning:
> |     Lapack (http://www.netlib.org/lapack/) sources not found.
> |     Directories to search for the sources can be specified in the
> |     numpy/distutils/site.cfg file (section [lapack_src]) or by setting
> |     the LAPACK_SRC environment variable.
> |   warnings.warn(LapackSrcNotFoundError.__doc__)
> |   NOT AVAILABLE
> |
> | Running from scipy source directory.
> | Traceback (most recent call last):
> |   File "setup.py", line 418, in <module>
> |     setup_package()
> |   File "setup.py", line 414, in setup_package
> |     setup(**metadata)
> |   File "/usr/lib/python2.7/site-packages/numpy/distutils/core.py", line
> 135, in setup
> |     config = configuration()
> |   File "setup.py", line 336, in configuration
> |     config.add_subpackage('scipy')
> |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> line 1003, in add_subpackage
> |     caller_level = 2)
> |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> line 972, in get_subpackage
> |     caller_level = caller_level + 1)
> |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> line 909, in _get_configuration_from_setup_py
> |     config = setup_module.configuration(*args)
> |   File "scipy/setup.py", line 15, in configuration
> |     config.add_subpackage('linalg')
> |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> line 1003, in add_subpackage
> |     caller_level = 2)
> |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> line 972, in get_subpackage
> |     caller_level = caller_level + 1)
> |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> line 909, in _get_configuration_from_setup_py
> |     config = setup_module.configuration(*args)
> |   File "scipy/linalg/setup.py", line 19, in configuration
> |     raise NotFoundError('no lapack/blas resources found')
> | numpy.distutils.system_info.NotFoundError: no lapack/blas resources found
> | ERROR: Function failed: do_compile (log file is located at
> /scipy/1.0.0-r0/temp/log.do_compile.8708)
> ERROR: Task
> (/sources/meta-openembedded/meta-python/recipes-devtools/python/scipy_1.0.0.bb:do_compile)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 8394 tasks of which 8382 didn't need to be
> rerun and 1 failed.
> 
> 
> On Fri, Mar 16, 2018 at 6:36 PM, Burton, Ross <ross.burton@intel.com> wrote:
> 
>> To change the version, change the filename of the recipe.
>>
>> Also, please remember the CC the list.
>>
>> Ross
>>
>> On 16 March 2018 at 17:30, Peter Balazovic <balazovic.peter@gmail.com>
>> wrote:
>>
>>> I did download from https://github.com/scipy/scipy/archive/v1.0.0.tar.gz
>>> and cc to /downloads and same still issue ...
>>> as mentioned  should be version is 1.0.0
>>> where to change it to point to correct version & file?
>>>
>>> On Fri, Mar 16, 2018 at 5:57 PM, Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>>
>>>> You're getting a "file not found" for the URL it is looking for.
>>>> According to https://pypi.python.org/pypi/scipy, the version is 1.0.0
>>>> not 1.0.
>>>>
>>>> Ross
>>>>
>>>> On 16 March 2018 at 16:50, Peter Balazovic <balazovic.peter@gmail.com>
>>>> wrote:
>>>>
>>>>> per using recipe https://github.com/scipy/scipy/issues/8226
>>>>>
>>>>>
>>>>> SUMMARY = "Scientific Library for Python"
>>>>> SECTION = "devel/python"
>>>>> HOMEPAGE = "https://pypi.python.org/pypi/scipy"
>>>>>
>>>>> LICENSE = "BSD-3-Clause"
>>>>> LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=d0db8f4148a3d5534cfb93be78f9287c"
>>>>>
>>>>> PYPI_PACKAGE="scipy"
>>>>>
>>>>> SRC_URI[md5sum] = "53fa34bd3733a9a4216842b6000f7316"
>>>>> SRC_URI[sha256sum] = "87ea1f11a0e9ec08c264dc64551d501fa307289460705f6fccd84cbfc7926d10"
>>>>>
>>>>> inherit pypi setuptools distutils
>>>>>
>>>>> RDEPENDS_${PN} += "python-core python-numpy-native python-distutils"
>>>>> DEPENDS += "python-numpy"
>>>>>
>>>>>
>>>>> I am getting error to fetch scipy do_fetch error
>>>>>
>>>>>
>>>>> WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL
>>>>> https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz,
>>>>> attempting MIRRORS if available
>>>>> ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch command export
>>>>> DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-idNNJsmT3C"; export
>>>>> SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export ftp_proxy=
>>>>> --progress=dot -v failed with exit code 8, output:
>>>>> --2018-03-16 17:43:34--  https://files.pythonhosted.org
>>>>> /packages/source/s/scipy/scipy-1.0.tar.gz
>>>>> Resolving files.pythonhosted.org (files.pythonhosted.org)...
>>>>> 151.101.17.63, 2a04:4e42:4::319
>>>>> Connecting to files.pythonhosted.org (files.pythonhosted.org)|151.101.17.63|:443...
>>>>> connected.
>>>>> HTTP request sent, awaiting response... 404 Not Found
>>>>> 2018-03-16 17:43:35 ERROR 404: Not Found.
>>>>>
>>>>> Any help?
>>>>>
>>>>>
>>>>> On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod <
>>>>> randy.macleod@windriver.com> wrote:
>>>>>
>>>>>> On 2018-03-15 01:56 PM, Peter Balazovic wrote:
>>>>>>
>>>>>>> Hello all,
>>>>>>>
>>>>>>> I wonder if there is scipy recipe available?
>>>>>>>
>>>>>>
>>>>>> Not yet:
>>>>>>
>>>>>> https://layers.openembedded.org/layerindex/branch/master/rec
>>>>>> ipes/?q=scipy
>>>>>>
>>>>>> It appears to be blocked by:
>>>>>>    https://github.com/scipy/scipy/issues/8226
>>>>>> but apparently that's a bitbake issue, not a spip one.
>>>>>> Care to take a look?
>>>>>>
>>>>>>
>>>>>>> Thanks.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>
>>>>>> --
>>>>>> # Randy MacLeod.  WR Linux
>>>>>> # Wind River an Intel Company
>>>>>>
>>>>>
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>>
>>>>
>>>
>>
> 
> 
> 

