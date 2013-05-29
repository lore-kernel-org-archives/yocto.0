Return-Path: <su@mycable.de>
Received: from serv07.server-center.de (serv07.server-center.de
	[87.119.209.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C3B3E01482
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 02:27:00 -0700 (PDT)
Received: (qmail 31813 invoked from network); 29 May 2013 09:26:59 -0000
Received: by simscan 1.1.0 ppid: 31799, pid: 31810, t: 0.1886s
	scanners: regex: 1.1.0 spam: 3.2.1
Received: from p578b3905.dip0.t-ipconnect.de (HELO ?10.27.1.138?)
	(sumycaba@87.139.57.5)
	by serv07.server-center.de with ESMTPA; 29 May 2013 09:26:59 -0000
Message-ID: <51A5C9E2.7080008@mycable.de>
Date: Wed, 29 May 2013 11:26:58 +0200
From: =?UTF-8?B?U2ViYXN0aWFuIFPDvHNlbnM=?= <su@mycable.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51A5C7A0.2000908@mycable.de>
	<CAJTo0LbU2qs5gpzxZiu3bhBO3O83Lcxks17EyqKtucOT32h0Cw@mail.gmail.com>
In-Reply-To: <CAJTo0LbU2qs5gpzxZiu3bhBO3O83Lcxks17EyqKtucOT32h0Cw@mail.gmail.com>
X-Enigmail-Version: 1.4.6
Cc: yocto@yoctoproject.org
Subject: Re: How can I change the install path of the rootfs?
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
X-List-Received-Date: Wed, 29 May 2013 09:27:01 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 05/29/2013 11:24 AM, Burton, Ross wrote:
> On 29 May 2013 10:17, Sebastian Süsens <su@mycable.de> wrote:
>> I want to install scripts in a folder names can. My bitbake file looks
>> following:
>>
>> DESCRIPTION = "Test scripts for testing xxsq701 interfaces"
>> SECTION = "test_applications"
>> PR = "r0"
>> PN = "test-scripts"
>> LICENSE = "${MYC_LICENSE}"
>> LIC_FILES_CHKSUM = "file://${MYC_LICENSFILE};md5=${MYCMD5_LICENSFILE}"
>>
>> S="${TOPDIR}/../applications/meta-testapps/test-scripts/src"
>>
>> do_install() {
>>     echo "DO_INSTALL: install test-scripts to ${D}/can"
>>     install -d ${D}/can
>>     install -m 0777 ${S}/can/init_can.sh ${D}/can
>> }
>>
>> When I run bitbake I get following error:
>> WARNING: QA Issue: test-scripts: Files/directories were installed but
>> not shipped
>>   /can
>>   /can/init_can.sh
>>
>>
>> And bitbakes break off with this message:
>> Unable to resolve package test-scripts
>>
>>
>> When I replace can with ${bindir} it works.
>>
>> How can I change the install path of the rootfs?
> If you want to install stuff into a non-standard path then you'll need
> to redefine the FILES_ variables (which defaults to $bindir and so on,
> for convenience).  In this case, FILES_${PN} = "/can" will be
> sufficient.
>
> http://www.yoctoproject.org/docs/1.4/ref-manual/ref-manual.html#var-FILES
> is the relevant section in the reference documentation.
>
> Ross
Thank you.

-- 
------------------------------------------------------------------------
   Sebastian Süsens               Tel.   +49 4321 559 56-27
   mycable GmbH                   Fax    +49 4321 559 56-10
   Gartenstrasse 10
   24534 Neumuenster, Germany     Email  su@mycable.de
------------------------------------------------------------------------
   mycable GmbH, Managing Director: Michael Carstens-Behrens
   USt-IdNr: DE 214 231 199, Amtsgericht Kiel, HRB 1797 NM
------------------------------------------------------------------------
   This e-mail and any files transmitted with it are confidential and
   intended solely for the use of the individual or entity to whom
   they are addressed. If you have received this e-mail in error,
   please notify the sender and delete all copies from your system.
------------------------------------------------------------------------ 


