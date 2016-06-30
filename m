Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28CC4E00E6E; Thu, 30 Jun 2016 02:34:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8631FE00D53
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 02:34:06 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 249C668A01C; Thu, 30 Jun 2016 10:34:06 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id EE54868A019;
	Thu, 30 Jun 2016 10:34:01 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id A62656740346;
	Thu, 30 Jun 2016 11:34:01 +0200 (CEST)
To: yocto@yoctoproject.org
References: <DB5PR06MB157369E58A396E97FE19504FCF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
	<CAEjjRe+E3-yR1dbg2tRn1JF1KNPFqk9q7vL+WVj42-JOiJm8Pg@mail.gmail.com>
	<DB5PR06MB1573FF041E808C44AD4C8417CF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5774E789.3060301@mlbassoc.com>
Date: Thu, 30 Jun 2016 11:34:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <DB5PR06MB1573FF041E808C44AD4C8417CF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
Subject: Re: Package build files not getting copied to sysroots directory
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
X-List-Received-Date: Thu, 30 Jun 2016 09:34:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-30 11:24, Gujulan Elango, Hari Prasath (H.) wrote:
> Hi,
>
>
> I am looking into the files you have suggested. Meanwhile I forgot to mention in my original post that when I build the
> dependent package(dlt-daemon), I have been getting this QA warning. I have not done any changes in the original .bb file
> that comes with the meta-ivi.
>
>
> ERROR: QA Issue: dlt-daemon: Files/directories were installed but not shipped in any package:
>    /usr/lib
>    /usr/lib/libdlt.so
>    /usr/lib/libdlt.so.2.11.1
>    /usr/lib/libdlt.so.2
>    /usr/lib/pkgconfig
>    /usr/lib/.debug
>    /usr/lib/pkgconfig/automotive-dlt.pc
>    /usr/lib/.debug/libdlt.so.2.11.1
> Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete
> them within do_install.
> dlt-daemon: 8 installed and not shipped files. [installed-vs-shipped]
> WARNING: QA Issue: /usr/bin/dlt-example-user-func_dlt-daemon contained in package dlt-daemon requires
> libdlt.so.2()(64bit), but no providers found in its RDEPENDS [file-rdeps]
>

Odd, those files are normally packaged correctly.

Maybe you could send the recipe or a URL to it so [better eyes than mine] can give it a look?

> ------------------------------------------------------------------------------------------------------------------------
> *From:* Chris Z. <winotu.email@gmail.com>
> *Sent:* Thursday, June 30, 2016 2:34 PM
> *To:* Gujulan Elango, Hari Prasath (H.)
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Package build files not getting copied to sysroots directory
> Hi,
>
> Check what files are added to the package of your distribution (deb, ipk )
> Variable FILES_ defines what files should be added to the packages ( -dev, -dbg, -doc ) which are installed in sysroot.
>
> bitbake.conf specify default files which should be packed.
>
> You can check bitbake -e <you_package> &> output.log , for FILES_  variable and check what files are search and where.
>
> Probably FILES_${PN} +=  would help. But that would be mi first try to find root cause.
>
> Also check temp/ log.do_   files
>
>
> On Thu, Jun 30, 2016 at 9:51 AM, Gujulan Elango, Hari Prasath (H.) <hgujulan@visteon.com <mailto:hgujulan@visteon.com>>
> wrote:
>
>     Hello
>
>
>     I am trying to integrate the meta-ivi layer into my distribution. When I am trying to build the audiomanager, some
>     dependent package do_configure() fails. It looks for some packageconfig files(.pc) file in the
>     tmp/sysroots/<machine_specifid_directory>, but this file is not there.
>
>
>     When I look into the dependent package build directory in tmp/work/<arch-specific_dir>/<package_name>/, I am able to
>     see the files in the build output(libraries and .pc files). Any reason why it is not getting copied into
>     tmp/sysroots/ directory ? Do I need specify it somewhere explicitly do get this done ?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

