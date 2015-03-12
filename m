Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 626D8E0085D; Thu, 12 Mar 2015 14:05:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45D2E00854
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 14:05:42 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 67CAAF811DA; Thu, 12 Mar 2015 15:05:41 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id F3A84F811DA;
	Thu, 12 Mar 2015 15:05:40 -0600 (MDT)
Message-ID: <5501FFB7.2010201@mlbassoc.com>
Date: Thu, 12 Mar 2015 15:05:59 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1971127177.6184446.1426193925543.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1971127177.6184446.1426193925543.JavaMail.yahoo@mail.yahoo.com>
Subject: Re: File in append recipe not installed
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
X-List-Received-Date: Thu, 12 Mar 2015 21:05:44 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-03-12 14:58, p_j_r_m wrote:
> Hello
>
> I'd like to add an append recipe for base-files in order to install a custom fstab.
>
> In my system I already have this base-files recipes:
>
>      layers/openembedded-core-1.4/meta/recipes-core/base-files/base-files_3.0.14.bb
>      layers/meta-montavista-1.4/recipes-core/base-files/base-files_3.0.14.bbappend
>
> So I in my layer I have:
>
> layers/meta-mylayer/recipes/base-files
> ├── base-files_3.0.14.bbappend
> └── files
>      └── fstab
>
> and I add this base-files_3.0.14.bbappend content:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> SRC_URI_append = "file://fstab"
>
> do_install_append() {
>          echo "======= ${PN}-${PV} INSTALLING fstab ========"
>          install -m 644 ${WORKDIR}/fstab ${D}${sysconfdir}
> }
>
> but no matter how I put FILESEXTRAPATHS_prepend or how I name my bbappend when I build the recipe with bitbake base-files it never gets called and my fstab file is not installed.
> If the original recipe is base-files_3.0.14.bb, why append is base-files_3.0.14.bbappend instead of base-files_3.bbappend only? How should i name and put FILESEXTRAPATHS

Instead of putting your fstab in 'files', put it in a directory
called 'base-files-3.0.14' which is where your FILESEXTRAPATHS
is looking.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

