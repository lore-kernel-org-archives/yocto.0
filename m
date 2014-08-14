Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8687BE00781; Thu, 14 Aug 2014 07:02:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34B11E0074B
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 07:02:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s7EE2I3L003993
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Aug 2014 07:02:18 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Thu, 14 Aug 2014 07:02:18 -0700
Message-ID: <53ECC169.6000200@windriver.com>
Date: Thu, 14 Aug 2014 09:02:17 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: atulkumar singh <atul.singh008@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <70c818031fe4471ea683fc552b9ad1b5@HKNPR03MB354.apcprd03.prod.outlook.com>	<d83d174900974afe9e993337abf55b35@HKNPR03MB354.apcprd03.prod.outlook.com>
	<CAH21_vFThtJ6WtBzT8CMd8grdNwbXOGNAsO79cZB5f_SOx6_cw@mail.gmail.com>
In-Reply-To: <CAH21_vFThtJ6WtBzT8CMd8grdNwbXOGNAsO79cZB5f_SOx6_cw@mail.gmail.com>
Subject: Re: Building toolchain(meta-toolchain) issue for mips
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
X-List-Received-Date: Thu, 14 Aug 2014 14:02:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/14/14, 7:39 AM, atulkumar singh wrote:
> Hi Folks,
>
> I am trying to build toolchain, but while building I am getting following warning:
>
>                  WARNING: QA Issue: gcc-cross-canadian-mips64-n32: found library
> in wrong location:
> /usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so.0.0.0
>
> gcc-cross-canadian-mips64-n32: found library in wrong location:
> /usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so
>
> gcc-cross-canadian-mips64-n32: found library in wrong location:
> /usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so.0
> [libdir]

The above QA warnings indicate that a library was found at a non-standard (/lib, 
/usr/lib) location.  This is an issue if a user links to the library and it's 
not available in the standard ld.so load path.

>                  Matched in
> manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips64.populate_sysroot
>
> manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips32r2.populate_sysroot
>
>
> /data/home/asingh/Yocto/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/share/gdb/syscalls/mips-n32-linux.xml
>
>     Matched in
> manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips64.populate_sysroot
>
> manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips32r2.populate_sysroot
>
>
> /data/home/asingh/Yocto/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/share/gdb/syscalls/arm-linux.xml

The above indicates two packages, x86_64-nativesdk-gdb-cross-canadian-mips64 and 
x86_64-nativesdk-gdb-cross-canadian-mips32r2 both provided the same file at the 
same installation path.  While not always, this is often times an indication of 
a bug in the system.

As long as both packages could be used separately, and the contents of the two 
files are identical this can be ignored.

--Mark

> Thanks and Regards,
>
> ATUL KUMAR SINGH
>
> This message contains information that may be privileged or confidential and is
> the property of the KPIT Technologies Ltd. It is intended only for the person to
> whom it is addressed. If you are not the intended recipient, you are not
> authorized to read, print, retain copy, disseminate, distribute, or use this
> message or any part thereof. If you receive this message in error, please notify
> the sender immediately and delete all copies of this message. KPIT Technologies
> Ltd. does not accept any liability for virus infected mails.
>
>
>


