Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23FA0E00D25; Thu,  1 Sep 2016 06:10:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDE67E00D1E
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 06:10:54 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bfRla-00034e-AU
	for yocto@yoctoproject.org; Thu, 01 Sep 2016 15:10:50 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Pietro <pulsarpietro@posteo.net>
Date: Thu, 01 Sep 2016 13:10:55 +0000
Message-ID: <87bn07bw9s.fsf@posteo.net>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
	<CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
	<87fupkarqt.fsf@posteo.net>
	<85bd928a2ecb47663d9a90ca24756f16@herrie.org>
	<CAHiDW_GBefiLcDQOgEEPVXeKTQGun8w6n62H33V6W4bvCv6sSA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:z58gkIom3vy1t33vn5xJ8dc+j4I=
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Thu, 01 Sep 2016 13:10:59 -0000
Content-Type: text/plain

Jussi Kukkonen <jussi.kukkonen@intel.com>
writes:

> On 1 September 2016 at 13:21, Herman van Hazendonk
> <me@herrie.org> wrote:
>
>     Hi Pietro,
>     
>     You can override the recipe by adding a recipe for version 3.0.0+
>     in your own layer and making sure your layer has a higher priority
>     in bblayers.conf. See for example what we do in our project:
>     
>     https://github.com/webOS-ports/webos-ports-setup/blob/testing/conf/bblayers.conf
>    
>     
>     openembedded-core provides ofono 1.1.7 for example with
>     https://github.com/openembedded/openembedded-core/tree/krogoth/meta/recipes-
>    connectivity/ofono
>     
>     However we want to use ANOTHER version of ofono (1.1.7 based, but
>     from a different repo/project).
>     
>     So we have our own .bbappend at
>     https://github.com/webOS-ports/meta-webos-ports/blob/krogoth/meta-luneos/recipes-connectiv
>    ity/ofono/ofono_git.bbappend where we specify the different repo
>     etc to use.
>     
>     This doesn't apply 1:1 in your case, but you could simply add a
>     protobuf_3.0.0.bb in your own layer and it should build that
>     instead. Just make sure you have your layer at a higher position
>     compared to meta-openembedded in your bblayers.conf

Thanks a lot.
I have written my own repice and added it into my own layer, it
does not compile though :

|
| autoreconf: configure.ac: tracing
|
| autoreconf: configure.ac: subdirectory gmock not present
| autoreconf: configure.ac: not using Libtool
| autoreconf: running:
| /export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/x86_64-linux/usr/bin/autoconf
| --include=/export/arm/pietro/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/proto
buf/3.0.0-r0/git/m4/ --force
|
| configure.ac:93: error: possibly undefined macro: AC_PROG_LIBTOOL
|
|       If this token and others are legitimate, please use
|       m4_pattern_allow.
|       See the Autoconf documentation.
|
| autoreconf:
| /export/arm/pietro/PD15.1/build/tmp-glibc/sysroots/x86_64-linux/usr/bin/autoconf
| failed with exit status: 1
|
| + bbfatal autoreconf execution failed.

I understand this is a completely different matter now, but has
anybody else seen this before ? I have tried to compile the same
revision on my local machine "natively" and it's built fine.

That library should be a dependency for another package/recipe I am
working on, is it allowed to specify a version inside the DEPENDS
recipe's clause ? I have tried to google the problem but I haven't found
a working example as yet.

Cheers,
P.




  


