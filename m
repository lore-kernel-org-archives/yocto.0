Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCA09E0076B; Wed,  8 Apr 2015 09:21:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8782E003A8
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 09:21:42 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 08 Apr 2015 09:21:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,545,1422950400"; d="scan'208";a="478416447"
Received: from joeholla-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.10.65])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Apr 2015 09:21:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Erik Bolton <EBolton@agjunction.com>
Date: Wed, 08 Apr 2015 17:21:40 +0100
Message-ID: <1488754.2yFrWuZha4@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <1428389040815.28148@agjunction.com>
References: <1428389040815.28148@agjunction.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Python Error in SDK
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
X-List-Received-Date: Wed, 08 Apr 2015 16:21:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Erik,

On Tuesday 07 April 2015 06:44:01 Erik Bolton wrote:
> This has been brought up before (although I think the error was different),
> but I'm having a lot of issues with the version of Python included with the
> SDK.
> 
> We use Python for code generation as part of our project. If I source the
> environment script and try to run our Python scripts I get this:
> 
> Traceback (most recent call last):
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.py",
> line 569, in <module> main()
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.py",
> line 551, in main known_paths = addusersitepackages(known_paths)
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.py",
> line 278, in addusersitepackages user_site = getusersitepackages()
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.py",
> line 253, in getusersitepackages user_base = getuserbase() # this will also
> set USER_BASE
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.py",
> line 242, in getuserbase from sysconfig import get_config_var
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/sysconfig.
> py", line 10, in <module> 'stdlib':
> '{base}/'+sys.lib+'/python{py_version_short}',
> AttributeError: 'module' object has no attribute 'lib'
> 
> If I try running something that doesn't exist I get this:
> 
> Fatal Python error: Py_Initialize: Unable to get the locale encoding
> ImportError: No module named 'encodings'
> Aborted (core dumped)
> 
> I've tried using update-alternatives to point the SDK python to my local
> python (Ubuntu 14.10, Python 2.7.8), but the errors persist.
> 
> I know a few people have simply deleted the python binary from the SDK, but
> I don't think that will help in my case.
> 
> I would try to remove it from the SDK in the actual package groups, but
> smartpm and a few other programs depend on it. I'm not sure they would play
> nice with my local version.
> 
> Any suggestions on how to fix this "correctly"?

Basically when python (technically, "nativesdk-python" when talking about the 
SDK) gets pulled in, that's the minimal python core and not all of the modules 
in the normal Python distribution, resulting in failures such as these. You 
can add those however by adding the following either in your image recipe (if 
using -c populate_sdk) or in your configuration:

  TOOLCHAIN_HOST_TASK_append = " nativesdk-python-modules"

Rebuild and re-install the SDK and things should work a bit better after that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

