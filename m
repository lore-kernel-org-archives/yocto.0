Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 453ECE00BEA; Tue,  5 Dec 2017 10:47:04 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36CE9E00AD7
	for <yocto@yoctoproject.org>; Tue,  5 Dec 2017 10:47:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vB5Il1ao025383
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 5 Dec 2017 10:47:01 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.234) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 5 Dec 2017 10:47:01 -0800
To: <yocto@yoctoproject.org>
References: <CS1PR8401MB084040DA37F13966FC9A27DBED3D0@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <86007500-61d5-0bc4-9dbe-7546faacbd1d@windriver.com>
Date: Tue, 5 Dec 2017 12:46:57 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB084040DA37F13966FC9A27DBED3D0@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: Removing /usr/src/debug from image
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
X-List-Received-Date: Tue, 05 Dec 2017 18:47:04 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/5/17 12:40 PM, Koehler, Yannick wrote:
> Hi,
> 
> I have edited my local.conf to remove the debug related EXTRA_IMAGE_FEATURES.  My rootfs still contains a /usr/src/debug folder, which I would like to get rid of.  This likely come from -dbg package inclusion, which I would like to understand how to control/remove.  We are using Yocto 1.9/2.0, and the only thing I found related to this is 
> 
> 	INHIBIT_PACKAGE_DEBUG_SPLIT = "1"

The above is definitely not what you want.  It will keep debug symbols in all of
your binaries, increasing the size of the eventual image.

The base-files recipe created a set of directories.  If this directory is empty
on your resulting image, I would assume it is created from there.  If this is a
concern, create a bbappend and remove that directory in a do_install_append.

Is there any particular reason you want it removed?  It should only be taking 1
inode, assuming it is empty.

> Yet, from documentation this appears to be about generating the -dbg packages which I do not mind, but I do not want them install in my image.  I am trying to understand what pulls them in.  My image recipe pulls the packagegroup-core-boot, ROOTFS_PKGMANAGE_BOOTSTRAP, CORE_IMAGE_EXTRA_INSTALL, ca-certificates, package-management and some other private package but none of those include -dbg...
> 
> Any help appreciated.
> 
> --
> Yannick Koehler
> 


