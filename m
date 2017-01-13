Return-Path: <markus.lehtonen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1FC1E003C1; Fri, 13 Jan 2017 03:25:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC2DEE0030B
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 03:25:13 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga105.jf.intel.com with ESMTP; 13 Jan 2017 03:25:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,221,1477983600"; d="scan'208";a="1093625266"
Received: from hessakys-mobl1.ger.corp.intel.com (HELO [10.252.14.44])
	([10.252.14.44])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jan 2017 03:25:09 -0800
User-Agent: Microsoft-MacOutlook/14.7.1.161129
Date: Fri, 13 Jan 2017 13:25:05 +0200
From: Markus Lehtonen <markus.lehtonen@linux.intel.com>
To: Chris Trobridge <christrobridge@hotmail.com>, Khem Raj <raj.khem@gmail.com>
Message-ID: <D49E85B1.6F055%markus.lehtonen@linux.intel.com>
Thread-Topic: [yocto] Failure Inheriting rpm_sign
References: <MMXP123MB0125B632BF3BE563B71B6EA1DA630@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
	<CAMKF1sqAb+CStmPbEcTNb15kUBgj-HTdjCiY89CTwdVmjA-DPQ@mail.gmail.com>
	<718C63C6-EC5D-474D-8FC2-18573E1B7DBA@hotmail.com>
In-Reply-To: <718C63C6-EC5D-474D-8FC2-18573E1B7DBA@hotmail.com>
Mime-version: 1.0
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Failure Inheriting rpm_sign
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
X-List-Received-Date: Fri, 13 Jan 2017 11:25:14 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

On 11/01/2017, 14.33, "Chris Trobridge" <yocto-bounces@yoctoproject.org on
behalf of christrobridge@hotmail.com> wrote:

>On Mon, 2017-01-09 at 10:47 -0800, Khem Raj wrote:
>> On Fri, Jan 6, 2017 at 3:52 AM, Chris Trobridge
>> <christrobridge@hotmail.com> wrote:
>> > I am getting "Exception: OSError: [Errno 7] Argument list too long"
>> > for sign_rpm in the do_package_write_rpm tasks for the
>> > linux-yocto and glibc-locale recipes.
>> > 
>> > This is building core-image-minimal (and also my own image) with
>> > morty (5aa481d) on Fedora 25.
>> > 
>> > I have enabled the rpm signing with:
>> > 
>> > INHERIT += " sign_rpm"
>> > RPM_GPG_NAME = "{name}"
>> > RPM_GPG_PASSPHRASE = "{passphrase}"
>> > IMAGE_INSTALL_append = " signing-keys-rpm"
>> > 
>> > The error message makes some sense in as much as these recipes
>> > produce a lot of packages (for example, glibc-locale produces 1791
>> > packages) and the command line in the log is pretty big, although
>> > reading around I didn't find a consensus on what the max command
>> > line should be.
>> > 
>> > The code to sign rpms is in meta/lib/oe/gpg_sign.py
>> > b/meta/lib/oe/gpg_sign.py and it builds up one command line with
>> > all the packages.
>> > 
>> > I changed the code (patch appended) to sign each rpm in a separate
>> > command and the build completed successfully.  The signing
>> > operations take a large amount of time so I think this might be a
>> > reasonable change but you may have other concerns.
>> 
>> This certainly is useful, perhaps the signing bits can be moved to
>> individual
>> recipe packaging tasks that way it may be parallelized a bit
>> 
>
>Thanks Raj,
>
>Something needs to be done as, unless I've messed up somewhere, you
>cannot build even core-image-minimal with rpm signing enabled so the
>sign_rpm class is effectively broken.

Signing should not break this way. Could you create a bug about this.



>The change I made works, but it's true is less efficient than signing
>rpms individually.  The expense of the signature generation meant it
>wasn't inefficient to sign each package in a recipe with a separate
>command.
>
>However, looking in package_rpm.bbclass, the end of do_package_rpm()
>has:
>
>if d.getVar('RPM_SIGN_PACKAGES', True) == '1':
>    bb.build.exec_func("sign_rpm", d)
>
>So, to avoid confusion, all the rpms in one recipe are packaged in
>task, and then that task calls the function  sign all the packages.  I
>don't know if there's a way for do_package_rpm() to spawn tasks to sign
>each package individually.

Probably an easy solution would be to sign packages in batches of, say,
100 packages. That way almost all recipes would be signed in one go. Few
packages would require multiple invocations of rpm but that shouldn't be
significant total overhead.



>I also found I needed 'IMAGE_INSTALL_append = " signing-keys-rpm"'
>local.conf, to deploy the public key but in sign_rpms.bbclass there is:

Yes, you need to add that package if you want to get the signing keys
installed in the image.



>
>do_package_index[depends] += "signing-keys:do_deploy"
>do_rootfs[depends] += "signing-keys:do_populate_sysroot"
>
>It may be this isn't quite what is required.

These are needed at build time and they do not install anything in the
final image. The first one is needed for creating rpm package feeds (or
repositories). The second one is needed needed for rpm-native to have the
correct keys when it is installing packages to create the rootfs.



Thanks,
   Markus



