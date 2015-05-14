Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A003E009BB; Thu, 14 May 2015 08:36:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 432C8E00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 08:36:12 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 91CF5F811E0; Thu, 14 May 2015 09:36:12 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4DFA9F811DC;
	Thu, 14 May 2015 09:36:12 -0600 (MDT)
Message-ID: <5554C0EF.7030300@mlbassoc.com>
Date: Thu, 14 May 2015 09:36:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <641241749.3202512.1431617240967.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <641241749.3202512.1431617240967.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: recipe removing (some)contents of /etc
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
X-List-Received-Date: Thu, 14 May 2015 15:36:16 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-05-14 09:27, Oliver wrote:
> Hello
>
> I have the below's simple recipe(starting a script in sysV runlevel 2), but when I add it to the image with
> IMAGE_INSTALL += "canlogger"
> in my local.conf, most of the contents of /etc gets removed/overwritten making the system unbootable.

What image are you building?

You should probably use this line instead
   CORE_IMAGE_EXTRA_INSTALL = "canlogger"

>
> Does someone sees something wrong?
>
> #####
> DESCRIPTION = "Start CAN services logging"
> SECTION = "examples"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> PR = "r0"
>
> SRC_URI += "file://canlogger"
>
> INITSCRIPT_NAME = "canlogger"
> INITSCRIPT_PARAMS = "start 98 2 ."
>
> do_install() {
>      install -d ${D}${sysconfdir}/init.d/
>      install -m 0755 ${WORKDIR}/canlogger ${D}${sysconfdir}/init.d/canlogger
> }
>
> inherit update-rc.d
> #####
>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

