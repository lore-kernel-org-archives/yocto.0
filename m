Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C366E00830; Fri, 24 Oct 2014 01:31:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6226E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 01:31:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9O8V465010695; Fri, 24 Oct 2014 09:31:04 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id yclWRSk2RsLJ; Fri, 24 Oct 2014 09:31:04 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s9O8V0c2010692
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 24 Oct 2014 09:31:02 +0100
Message-ID: <1414139495.30118.2.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Fri, 24 Oct 2014 09:31:35 +0100
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984114712F@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984114712F@AZ-US1EXMB03.global.avaya.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autotools-brokensep.bbclass not working
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
X-List-Received-Date: Fri, 24 Oct 2014 08:31:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2014-10-24 at 00:08 +0000, Vuille, Martin (Martin) wrote:
> #
> set /home/platform/Workspace/dvf99_gitlab/poky/meta/conf/bitbake.conf:348
> #     "${S}"
> #
> set /home/platform/Workspace/dvf99_gitlab/poky/meta/conf/documentation.conf:77
> #     [doc] "The Build Directory. The OpenEmbedded build system places
> generated objects into the Build Directory during a recipe's build
> process."
> #
> set /home/platform/Workspace/dvf99_gitlab/poky/meta/classes/autotools-brokensep.bbclass:5
> #     "${S}"
> #   finalize ast.py:323 [finalize]
> #     "was: ${S}"
> #
> override[pn-dhcp]:set /home/platform/Workspace/dvf99_gitlab/poky/meta/conf/distro/include/seperatebuilddir.inc:105
> #     "${SEPB}"
> #   finalize override[pn-dhcp]:
> #     "${SEPB}"
> # computed:
> #   "${SEPB}"
>  
> so seperatebuilddir.inc is overriding the use of autotools-brokensep.
>  
> How can I override the override? What’s the point of
> autotools-brokensep?

The brokensep class was in its initial stages of development in 1.6 so
there are two mechanisms in action and dhcp is being controlled by
that .inc file which no longer exists in 1.7.

You can probably override it by Setting SEPB = "${S}" in the recipe (or
SEPB_pn-dhcp = "${S}" in local.conf). 

Cheers,

Richard


