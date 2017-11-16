Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E858E00CE2; Thu, 16 Nov 2017 07:18:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC3E5E00AD7
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 07:18:04 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Nov 2017 07:18:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,404,1505804400"; d="scan'208";a="176522476"
Received: from $_hostname.zpn.intel.com (HELO lsandov1-mobl2.zpn.intel.com)
	([10.219.128.134])
	by fmsmga005.fm.intel.com with ESMTP; 16 Nov 2017 07:18:03 -0800
Date: Thu, 16 Nov 2017 09:27:17 -0600
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Paul Knopf <pauldotknopf@gmail.com>
Message-ID: <20171116092717.4125ec08@lsandov1-mobl2.zpn.intel.com>
In-Reply-To: <CAKmWj-0jdV2UR3VTsw8w3=98CdH5_x7_e1Equ-GfFn8TzX3OOw@mail.gmail.com>
References: <CAKmWj-0jdV2UR3VTsw8w3=98CdH5_x7_e1Equ-GfFn8TzX3OOw@mail.gmail.com>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Detecting all AUTOREV usages in a build, for reproducible stable production builds.
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
X-List-Received-Date: Thu, 16 Nov 2017 15:18:07 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 16 Nov 2017 05:06:30 -0500
Paul Knopf <pauldotknopf@gmail.com> wrote:

> I want to store/fix AUTOREV values for production builds. I saw
> BB_CACHE_POLICY, but the format (sqllite) isn't something that can be
> checked in.
> 
> Let's say I have an image:
> 
> bitbake my-image
> 
> How do I detect any dependency that is using AUTOREV?
>


would this tool be useful for your needs? I do not fully grasp what you want to do.


----
You can use the buildhistory-collect-srcrevs command with the -a option to collect the stored SRCREV values from build history and report them in a format suitable for use in global
configuration (e.g., local.conf or a distro include file) to override floating AUTOREV values to a fixed set of revisions. Here is some example output from this command: 


     $ buildhistory-collect-srcrevs -a
     # i586-poky-linux
     SRCREV_pn-glibc = "b8079dd0d360648e4e8de48656c5c38972621072"
     SRCREV_pn-glibc-initial = "b8079dd0d360648e4e8de48656c5c38972621072"
     SRCREV_pn-opkg-utils = "53274f087565fd45d8452c5367997ba6a682a37a"
     SRCREV_pn-kmod = "fd56638aed3fe147015bfa10ed4a5f7491303cb4"
     # x86_64-linux
     SRCREV_pn-gtk-doc-stub-native = "1dea266593edb766d6d898c79451ef193eb17cfa"
     SRCREV_pn-dtc-native = "65cc4d2748a2c2e6f27f1cf39e07a5dbabd80ebf"
     SRCREV_pn-update-rc.d-native = "eca680ddf28d024954895f59a241a622dd575c11"
     SRCREV_glibc_pn-cross-localedef-native = "b8079dd0d360648e4e8de48656c5c38972621072"
     SRCREV_localedef_pn-cross-localedef-native = "c833367348d39dad7ba018990bfdaffaec8e9ed3"
     SRCREV_pn-prelink-native = "faa069deec99bf61418d0bab831c83d7c1b797ca"
     SRCREV_pn-opkg-utils-native = "53274f087565fd45d8452c5367997ba6a682a37a"
     SRCREV_pn-kern-tools-native = "23345b8846fe4bd167efdf1bd8a1224b2ba9a5ff"
     SRCREV_pn-kmod-native = "fd56638aed3fe147015bfa10ed4a5f7491303cb4"
     # qemux86-poky-linux
     SRCREV_machine_pn-linux-yocto = "38cd560d5022ed2dbd1ab0dca9642e47c98a0aa1"
     SRCREV_meta_pn-linux-yocto = "a227f20eff056e511d504b2e490f3774ab260d6f"
     # all-poky-linux
     SRCREV_pn-update-rc.d = "eca680ddf28d024954895f59a241a622dd575c11"

Note
-----




> I'd like to generate a dynamic.conf file that fixes the SRCREV values for
> relevant packages.
> 
> I guess I could do a normal build, then read the sqllite database, and
> generate a .conf from it. Does this sound feasible?
> 
> Any other strategies?

