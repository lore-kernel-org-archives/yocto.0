Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8FA6E0080C; Tue, 17 Feb 2015 10:36:33 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7895FE00777
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 10:36:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t1HIaKFd004952
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Feb 2015 10:36:20 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 17 Feb 2015 10:36:19 -0800
Message-ID: <54E38A04.7080904@windriver.com>
Date: Tue, 17 Feb 2015 13:35:48 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>, Alexandru Vaduva
	<Alexandru.Vaduva@enea.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <54E37552.9020108@windriver.com>
	<1236436647.5527082.1424197877103.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1236436647.5527082.1424197877103.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: meta-oracle-java error when building a recipe
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
X-List-Received-Date: Tue, 17 Feb 2015 18:36:33 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-02-17 01:31 PM, Alexandru Vaduva wrote:
> I am building for an arm v7.

So I presume that you noticed in 
recipes-devtools/oracle-java/oracle-jse-jdk_1.7.0.bb

The following:

-----

# Automatically choose java package based on target architecture
def get_java_pkg(d):
        TA = d.getVar('TARGET_ARCH', True)
        if TA == "i586":
                javaPkg = "oracle-jse-jdk-i586"
        elif TA == "x86_64":
                javaPkg = "oracle-jse-jdk-x86-64"
        else:
                raise bb.parse.SkipPackage("The target architecture '%s' 
is not supported by the meta-oracle-java layer" %TA)

        return javaPkg

----

Unless someone extends arch support to ARMv7, that skip is going to
persist.

Cheers,

Bruce


>
>
> On Tuesday, February 17, 2015 7:08 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com> wrote:
>
>
> On 15-02-17 11:17 AM, Alexandru Vaduva wrote:
>  > When trying to build 'oracle-jse-jdk' from meta-oracle-java layer I
> found this errors.
>  >     ERROR: Nothing PROVIDES 'oracle-jse-jdk'
>  >     ERROR: oracle-jse-jdk was skipped: True
>  >
>  > bitbake-layers show-recipes | grep "oracle-"
>  > Parsing recipes..done.
>  > oracle-jse-jdk:
>  >    meta-oracle-java    1.7.0 (skipped)
>  > oracle-jse-jre:
>  >    meta-oracle-java    1.7.0
>  > Any idea of why this recipe is skipped?
>
> There's a built in skip based on the architecture of your build.
> What exact config are you using ?
>
> Bruce
>
>
>  >
>  >
>  > Alex Vaduva
>  >
>  >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
>
>


