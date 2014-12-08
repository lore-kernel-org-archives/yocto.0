Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47681E00953; Mon,  8 Dec 2014 01:41:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E550E0091D
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 01:41:16 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2014 01:41:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,537,1413270000"; d="scan'208";a="634338276"
Received: from apwitke-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.30.33])
	by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2014 01:41:15 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ulf Winberg <ulfwin@gmail.com>
Date: Mon, 08 Dec 2014 09:41:14 +0000
Message-ID: <1426837.Z6YLN2FboT@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.4-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <CAP9QVgA8bD6oro2rxut4sceWr7qXjD4A5QGWz4BU6UXGCWZvEg@mail.gmail.com>
References: <CAP9QVgA8bD6oro2rxut4sceWr7qXjD4A5QGWz4BU6UXGCWZvEg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Using anonymous python function to define variables
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
X-List-Received-Date: Mon, 08 Dec 2014 09:41:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ulf,

On Sunday 07 December 2014 12:22:06 Ulf Winberg wrote:
> I'm struggling with trying to dynamically set a file name, to be used with
> "require". See code below:
> 
> python () {
>        TA = d.getVar('TARGET_ARCH', True)
>        if TA == "arm":
>                javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
>        elif TA == "i586":
>                javaPkg = "oracle-jse-jre-i586"
>        elif TA == "x86_64":
>                javaPkg = "oracle-jse-jre-x86-64"
>        else:
>                raise Exception("Target architecture '%s' is not supported
> by the meta-oracle-java layer" %TA)
>        d.setVar('JAVA_PKG', javaPkg)
> }
> 
> require ${JAVA_PKG}.inc
> 
> The python function executes properly (if I print javaPkg, it shows up
> correctly) but the "JAVA_PKG" variable does not become available for
> "require". From what I can read in section 3.4.4 in this link
> <http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manua
> l.html>, it seems to me it should work. Could someone please explain to me
> why it doesn't?

I'm pretty sure this is because anonymous functions don't get executed until 
finalize() is called, which is towards the end of parsing; the "require" 
statement must be handled immediately. Try this instead:

---------------- snip ----------------

def get_java_package(d):
    TA = d.getVar('TARGET_ARCH', True)
    if TA == "arm":
        javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
    elif TA == "i586":
        javaPkg = "oracle-jse-jre-i586"
    elif TA == "x86_64":
        javaPkg = "oracle-jse-jre-x86-64"
    else:
        raise bb.parse.SkipPackage("Target architecture '%s' is not supported 
by the meta-oracle-java layer" % TA)
    return javaPkg

JAVA_PKG = "${@get_java_package(d)}"

require ${JAVA_PKG}.inc

---------------- snip ----------------

The question is though, do you really need a separate inc file for each 
architecture? You can use overrides for this sort of thing e.g.:

---------------- snip ----------------

SOMEVAR = "default value"
SOMEVAR_arm = "value if arm"
SOMEVAR_x86-64 = "value if x86-64"

---------------- snip ----------------

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

