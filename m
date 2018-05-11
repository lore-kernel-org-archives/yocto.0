Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D63AE013B5; Fri, 11 May 2018 09:51:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.142.5.107 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emh01.mail.saunalahti.fi (emh01.mail.saunalahti.fi
	[62.142.5.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F801E010F5
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 09:51:48 -0700 (PDT)
Received: from uwe1 (85-76-108-0-nat.elisa-mobile.fi [85.76.108.0])
	by emh01.mail.saunalahti.fi (Postfix) with ESMTP id 1428A200CC;
	Fri, 11 May 2018 19:51:46 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <9d01063271b7468f9d1b06a9b850a2c9@grupawp.pl>
References: <9d01063271b7468f9d1b06a9b850a2c9@grupawp.pl>
Date: Fri, 11 May 2018 19:51:46 +0300
Message-ID: <87603u16fx.fsf@snkmail.com>
MIME-Version: 1.0
Subject: Re: Wrong file's ownership in rootfs.
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
X-List-Received-Date: Fri, 11 May 2018 16:51:51 -0000
Content-Type: text/plain

Hi!


On Fri, May 11, 2018 at 2:42 PM, Grzegorz Mierzejewski <mierzejewskigrzegorz@o2.pl> wrote:
> Hello all,
>
> I have the following problem concerning the file's ownership.
> In my recipe I install the new file to rootfs and change it's ownership in
> do_install function:
> do_install () {
>     install -p -m 644 file1 ${D}/
>     chmod 777 ${D}/file1
>     chown ${USER_DUMMY} ${D}/file1
> }
>
> USER_DUMMY is properly created with useradd class.
> Thing is, that file1 in rootfs do not have the proper ownership - it is
> instead owned by root.
>
> I've checked the pseudo/files.db in recipe's temp folder and ownership is
> proper.
> Also, "bitbake my_package -c devshell" shows proper ownership (as it uses
> files.db).
> But, the same thing done in image's temp folder results in bad (root)
> ownership.
>
> Of course, it happens in modified Jethro delivered by vendor.
> Everything works fine on official Jethro for Wandboard.
>
> Could anyone please give me some hints on what to look for as a root-cause
> of such behavior?
> Or at least describe the process of generating the files.db for image?
> Is it generated based on each package's files.db?
>

I don't know the exact answer. I hope somebody can tell how us to debug
the problem systematically. I have debugged similar issues before
without full success and here is what I happen to remember from the top
of my head

1) Check whether the ipk contains the desired ownership

1a) An ipk is an "ar" file containing 3 files. Extract it like this

$ ar -x tmp/work/corei7-64-poky-linux/openssh/7.5p1-r0/deploy-ipks/corei7-64/openssh-foo_7.5p1-r0_corei7-64.ipk


1b) The files are contained in data.tar.gz

See their owners in textual form using

$ tar tvf data.tar.gz 

(I'm not 100% sure how this relates the checking pseudo as you mention
it. It might lead to the same result. But I feel checking the ipk
contents is less dependent on low level implementation details.)


2) Check out file  poky/meta/files/fs-perms.txt. It's documented in the
mega manual.


3) Could it be some postinst command that changes it? No detailed
   commands from the top of my head :(


4) Debug what you have in ROOTFS_POSTPROCESS_COMMAND

$ bitbake -e my-image-recipe

Maybe something there calls chown?


5) If you cannot find/fix the root cause consider some like

ROOTFS_POSTPROCESS_COMMAND_append = "; hack_protections"

hack_protections () {
  chown 42:42 /foo/bar
}

in your image recipe.

This is completely untested pseudo code, modify until it works :) I have
succcessfully used ROOTFS_POSTPROCESS_COMMANDS, but have never tried for
chown. I am not sure whether you have access to symbolic user/group
names in your recipe.  Depending on what you have done with useradd, the
numerical id might not be fixed.

I vaguely remember that I have used

DEPENDS += "my-useradd"

in a recipe. I think that should make the symbolic ids useradd has created
available to another recipe. I have not done it in an image recipe.


Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)

