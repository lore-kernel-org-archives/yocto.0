Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12DC6E00814; Wed, 20 Aug 2014 13:12:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [84.234.17.171 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5124AE004F5
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 13:11:56 -0700 (PDT)
Received: from [109.224.171.0] (port=51718
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1XKCEX-0003B3-Il; Wed, 20 Aug 2014 21:11:50 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <53F40306.2080500@windriver.com>
Date: Wed, 20 Aug 2014 21:11:47 +0100
Message-Id: <728404FF-F7F0-4371-AF09-D8C73ABA784C@keylevel.com>
References: <4EAABF91-29AE-4B7D-9FEE-07C87F37197D@keylevel.com>
	<53F40306.2080500@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1878.6)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Subject: Re: Kernel driver for Turbosight TBS6285 DVB card
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
X-List-Received-Date: Wed, 20 Aug 2014 20:12:03 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

Thanks for the feedback.

On 20 Aug 2014, at 03:08, Bruce Ashfield <bruce.ashfield@windriver.com> =
wrote:

> On 2014-08-19, 5:26 PM, Chris Tapp wrote:
>> I need to include the kernel driver for the Turbosight TBS6285 DVB =
card in an image.
>>=20
>> The official bundle at =
http://www.tbsdtv.com/download/document/common/tbs-linux-drivers_v140707.z=
ip includes the drivers and a load of other "stuff" (e.g. a full V4L =
build).
>>=20
>> LinuxTV.org have the drivers extracted into a .tar.bz2 at (e.g.) =
http://linuxtv.org/downloads/drivers/linux-media-LATEST.tar.bz2, so I =
plan to use this as the download source.

This bit is wrong - I need to use the .tar.bz within the .zip.

>>=20
>> So far I have a recipe which downloads from this URL and extracts the =
files into the work area and ${WORKAREA}/drivers/media includes a =
Makefile and Kconfig.
>>=20
>> I've looked at the Yocto documentation, but this doesn't seem to be a =
good match for the "Out of tree" kernel module case.
>=20
> Hmm. At a glance, I'd say that it does sound like a typical out of
> tree module build.

Ah, ok - to my (untrained) eye the use-case looked completely different =
based on the example.

> Did you try adopting the meta-skeleton hello-mod recipe and point it
> at that source directory ?

I have now (with the above change). However, it looks as if something =
within the build is referencing the host file system when building.

I'm building for ValleyIsland 32-bit:

  1) If I configure the drivers for 32-bit there is a linker error =
complaining that elf 32 and elf 64 aren't compatible (host is 64 bit);
  2) Everything appears to build if I target 64-bit, but the installer =
tries to modify /lib/modules/3.2.0-67/..., which is also part of the =
host.

Looks like I need a patch ;-) Any pointers to where I should be looking =
would be appreciated as this isn't my normal area...

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





