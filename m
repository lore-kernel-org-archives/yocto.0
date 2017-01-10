Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9ED59E003E4; Tue, 10 Jan 2017 12:58:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D69FCE0034A
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 12:58:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v0AKwBLo024701
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 10 Jan 2017 12:58:11 -0800
Received: from server.local (128.224.20.250) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 10 Jan 2017 12:58:10 -0800
To: "Schmitt, Richard" <Richard.Schmitt@commscope.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <BLUPR0601MB16491766FFC1CA176DBA4533E6670@BLUPR0601MB1649.namprd06.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <06e6b60b-4efe-de7e-0b69-b683b2f2cda7@windriver.com>
Date: Tue, 10 Jan 2017 15:58:10 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <BLUPR0601MB16491766FFC1CA176DBA4533E6670@BLUPR0601MB1649.namprd06.prod.outlook.com>
Subject: Re: kernel config fragments not applied
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
X-List-Received-Date: Tue, 10 Jan 2017 20:58:14 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2017-01-10 1:05 PM, Schmitt, Richard wrote:
> I am having a heck of a hard time getting a minor kernel config fragment
> applied.
>
>
>
> In order to minimize all variables, I am simply trying to build
> linux-yocto for a qemux86 MACHINE target.
>
>
>

What release ? Everything is working here, but I can switch to
whatever release you are using and run the test there (I'm using
master).

Bruce

> There had been some discussion on the mailing list previously that
> suggested making sure linux-yocto.inc was included within the recipes.
> The ones being used are standard poky recipes and they do include the
> linux-yocto.inc file.
>
>
>
> My configuration is very simple.  I have my own layer and linux-yocto
> bbappend:
>
>
>
> meta-mylayer/recipes-kernel/linux/linux-yocto_4.4.bbappend
>
>
>
> Whose contents are:
>
>
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
>
>
> SRC_URI += " \
>
>         file://overlayfs.cfg \
>
>         "
>
>
>
> With the config fragment in:
>
>
>
> meta-mylayer/recipes-kernel/linux/linux-yocto/overlayfs.cfg
>
>
>
> whose contents is:
>
>
>
> CONFIG_OVERLAY_FS=y
>
>
>
> If I do a “bitbake linux-yocto” I would expect it to generate a config
> file that includes CONFIG_OVERLAY_FS=y and a kernel that includes this
> filesystem.  I don’t.
>
>
>
> My layer is parsed correctly and the bbappend is found and parsed.  I
> know this because in the tmp directory:
>
>
>
> tmp/work/qemux86-poky-linux/linux-yocto/4.4.26+gitAUTOINC+3030330b06_ca6a08bd7f-r0/
>
>
>
> the file overlayfs.cfg exists.
>
>
>
> Searching the log files, the only one that references this file though
> is log.do_unpack.  I do not see any reference to it in
> log.do_kernel_configme or log.do_configure.    I’m not sure how kernel
> fragments are applied, but looking through the classes and recipes for
> linux-yocto in poky/meta, I do not see any code that would apply kernel
> fragments.  So I’m not sure if I’m missing some piece.
>
>
>
> Searching through the files in poky/meta, I find meta-config.sh only in
> recipes-core/uclibc and recipes-core/busybox.  That’s why I think I’m
> missing something.
>
>
>
> I’m using the krogoth branch of poky.
>
>
>
> What am I missing?
>
>
>
> Thanks,
>
> Rich
>
>
>
>
>
>
>


