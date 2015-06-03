Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56D3FE00A08; Wed,  3 Jun 2015 02:08:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03E15E009E5
	for <yocto@yoctoproject.org>; Wed,  3 Jun 2015 02:08:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 03 Jun 2015 02:08:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,546,1427785200"; d="scan'208";a="736205758"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.4.158])
	by fmsmga002.fm.intel.com with ESMTP; 03 Jun 2015 02:08:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Erik Bolton <EBolton@agjunction.com>
Date: Wed, 03 Jun 2015 10:08:04 +0100
Message-ID: <1735906.ADXU4BdX5j@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <DM2PR0201MB108780BAEC93C124DE88B1D0CCFC0@DM2PR0201MB1087.namprd02.prod.outlook.com>
References: <1428389040815.28148@agjunction.com>
	<1488754.2yFrWuZha4@peggleto-mobl.ger.corp.intel.com>
	<DM2PR0201MB108780BAEC93C124DE88B1D0CCFC0@DM2PR0201MB1087.namprd02.prod.outlook.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 03 Jun 2015 09:08:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Erik,

I'm really not sure what to advise, other than debugging it by checking 
variable values with bitbake -e, adding print/bb.warn statements at various 
points, etc.

Sorry, this message was sitting in my inbox for some time - I don't suppose 
you have found anything since April?

Cheers,
Paul

On Wednesday 08 April 2015 17:39:52 Erik Bolton wrote:
> Hey Paul:
> 
> Thanks very much for the help.
> 
> I already have a meta-toolchain.bbappend in our project so I added
> nativesdk-python-modules to the TOOLCHAIN_HOST_TASK append line in there.
> 
> The system doesn't seem to detect the change, though. If I "bitbake
> meta-toolchain" no tasks are performed. If I "bitbake meta-toolchain -c
> cleanall" and rebuild it just repackages the toolchain...no new packages
> are added and there's no nativesdk-python-modules dir in the work dir for
> the SDK.
> 
> This is really odd, because I added some jibberish to meta-toolchain.append
> and tried again. It fails with a parsing error on the lines I added, so I
> know the file is being re-parsed.
> 
> Any thoughts?
> 
> Thanks again.
> -Erik
> 
> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Wednesday, April 08, 2015 9:22 AM
> To: Erik Bolton
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Python Error in SDK
> 
> Hi Erik,
> 
> On Tuesday 07 April 2015 06:44:01 Erik Bolton wrote:
> > This has been brought up before (although I think the error was
> > different), but I'm having a lot of issues with the version of Python
> > included with the SDK.
> > 
> > We use Python for code generation as part of our project. If I source
> > the environment script and try to run our Python scripts I get this:
> > 
> > Traceback (most recent call last):
> >   File
> > 
> > "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> > py",
> > line 569, in <module> main()
> > 
> >   File
> > 
> > "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> > py", line 551, in main known_paths = addusersitepackages(known_paths)
> > 
> >   File
> > 
> > "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> > py", line 278, in addusersitepackages user_site =
> > getusersitepackages()
> > 
> >   File
> > 
> > "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> > py", line 253, in getusersitepackages user_base = getuserbase() # this
> > will also set USER_BASE
> > 
> >   File
> > 
> > "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> > py", line 242, in getuserbase from sysconfig import get_config_var
> > 
> >   File
> > 
> > "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/sysconfig
> > .
> > py", line 10, in <module> 'stdlib':
> > '{base}/'+sys.lib+'/python{py_version_short}',
> > AttributeError: 'module' object has no attribute 'lib'
> > 
> > If I try running something that doesn't exist I get this:
> > 
> > Fatal Python error: Py_Initialize: Unable to get the locale encoding
> > ImportError: No module named 'encodings'
> > Aborted (core dumped)
> > 
> > I've tried using update-alternatives to point the SDK python to my
> > local python (Ubuntu 14.10, Python 2.7.8), but the errors persist.
> > 
> > I know a few people have simply deleted the python binary from the
> > SDK, but I don't think that will help in my case.
> > 
> > I would try to remove it from the SDK in the actual package groups,
> > but smartpm and a few other programs depend on it. I'm not sure they
> > would play nice with my local version.
> > 
> > Any suggestions on how to fix this "correctly"?
> 
> Basically when python (technically, "nativesdk-python" when talking about
> the SDK) gets pulled in, that's the minimal python core and not all of the
> modules in the normal Python distribution, resulting in failures such as
> these. You can add those however by adding the following either in your
> image recipe (if using -c populate_sdk) or in your configuration:
> 
>   TOOLCHAIN_HOST_TASK_append = " nativesdk-python-modules"
> 
> Rebuild and re-install the SDK and things should work a bit better after
> that.
> 
> Cheers,
> Paul
> 
> --
> 
> Paul Eggleton
> Intel Open Source Technology Centre
> Disclaimer: This message contains information that may be privileged or
> confidential and is the property of AgJunction Inc and its subsidiaries. It
> is intended only for the person to whom it is addressed. If you are not the
> intended recipient, you are not authorized to read, print, retain, copy,
> disseminate, distribute, or use this message or any part thereof. If you
> receive this message in error, please notify the sender immediately and
> delete all copies of this message.

-- 

Paul Eggleton
Intel Open Source Technology Centre

