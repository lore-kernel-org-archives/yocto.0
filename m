Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49D39E00DFD; Thu,  5 May 2016 11:36:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D36B5E00DF7
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 11:36:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u45IaaJf009952
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 May 2016 11:36:36 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 5 May 2016 11:36:36 -0700
To: "Mihaylov, Emil" <emilmih@gmail.com>, <yocto@yoctoproject.org>
References: <ccfc2b5b-74fa-ed1e-37b6-6dc0ed7ecb27@gmail.com>
	<fb5c7b87-82bd-f1cd-9070-d99aa4046146@windriver.com>
	<e83997e2-d496-eaa7-0921-64ef4d669f36@gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <bff7e85c-a2e4-5049-3840-48a4b1c344d9@windriver.com>
Date: Thu, 5 May 2016 13:36:35 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <e83997e2-d496-eaa7-0921-64ef4d669f36@gmail.com>
Subject: Re: oracle-jse-jdk
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
X-List-Received-Date: Thu, 05 May 2016 18:36:39 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 5/5/16 12:43 PM, Mihaylov, Emil wrote:
> hi Mark,
> 
> my oracle-jse-jdk_1.7.0.bb
> 
> looks like this
> 
> -----------------------------------------------
> 
> # Automatically choose java package based on target architecture
> DEPENDS += "libav gtk+ libxslt libxtst"

DEPENDS says it needs to be there before the package builds.

RDEPENDS_<package> says it needs to be to install.

The dependency error indicates that there was no package anywhere in the system
providing that specific provide.  You should look at libav and see if it has a
matching provide.  If it does not, then you are still lacking whatever is
necessary for this to work.

--Mark

> def get_java_pkg(d):
>        TA = d.getVar('TARGET_ARCH', True)
>        if TA == "i586":
>                javaPkg = "oracle-jse-jdk-i586"
>        elif TA == "x86_64":
>                javaPkg = "oracle-jse-jdk-x86-64"
>        else:
>                raise bb.parse.SkipPackage("The target architecture '%s' is not
> supported by the meta-oracle-java layer" %TA)
>       
>        return javaPkg
> 
> JAVA_PKG = "${@get_java_pkg(d)}"
> 
> require ${JAVA_PKG}.inc
> 
> -----------------------------------------
> 
> still error
> 
> thanks Emil
> 
> 
> 
> On 5/5/2016 10:11 AM, Mark Hatle wrote:
>> DEPENDS' and the packages associated RDEPENDS.
> 


