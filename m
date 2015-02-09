Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E799E00945; Sun,  8 Feb 2015 21:13:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D63C3E008CD
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 21:13:47 -0800 (PST)
Received: by mail-wg0-f43.google.com with SMTP id n12so2979252wgh.2
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 21:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FAvAn2UPVvNXw99GDQFqOhrN82As67Q/+4CsbnUWIlc=;
	b=wbk+bzP2nT/VMah4ufZ5tINjtFUHeKWWgxnjfIBduKqakAkPLKDAynqGjY4XQgKr4Y
	b2G7iBixShqq/2hiGtWKmXbMaoRngG1p1j571RekGra5zypq9xp8EK3VmHgM868bI0Gm
	BKWGsKpJVkaVCCGig12exvwDjAEZVxKuud6zcA/AFeR9jbUSyYogN5dQFxzN++Ak3gjj
	WVrwcn2poxrF5EBcjEVlr3qtOh06t50gfM3emio9r2egrNR32gQpRftG4KT/M1fnN6A5
	qAHOE3DMG+g9sQBJz3Eyu/Rl+usOwWOI1B2bjFPtgCST/gcrQx8aQbPO9DQerbUdaJSy
	ra4g==
MIME-Version: 1.0
X-Received: by 10.180.221.73 with SMTP id qc9mr12061856wic.8.1423458826685;
	Sun, 08 Feb 2015 21:13:46 -0800 (PST)
Received: by 10.217.8.9 with HTTP; Sun, 8 Feb 2015 21:13:46 -0800 (PST)
In-Reply-To: <787655431.1106380.1423004249653.JavaMail.yahoo@mail.yahoo.com>
References: <CAK5mtewiDEH9eg8BovSiLuZK14vOyTLsZ48k08FheX8=+pZ42Q@mail.gmail.com>
	<787655431.1106380.1423004249653.JavaMail.yahoo@mail.yahoo.com>
Date: Sun, 8 Feb 2015 23:13:46 -0600
Message-ID: <CAK5mtezKvzhbZ-Hf9WNqFLyzaQTsnq3siR-p2BFBcmijQ-4F6Q@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MPI support on Yocto
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
X-List-Received-Date: Mon, 09 Feb 2015 05:13:55 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 3, 2015 at 4:57 PM, Alexandru Vaduva
<vaduvajanalexandru@yahoo.com> wrote:
> I would suggest a layer under meta-openembeded:
> meta-openembedded/meta-oe/recipes-devtools/ caould be a start.

Hi Alex

This is the first version that I have:

diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
new file mode 100644
index 0000000..bf94714
--- /dev/null
+++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
@@ -0,0 +1,18 @@
+SUMMARY = "Message Passing Interface(MPI) implementation"
+HOMEPAGE = "http://git.mpich.org/mpich.git/"
+SECTION = "devel"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=673935943"
+SRC_URI = "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz"
+SRC_URI[md5sum] = "40dc408b1e03cc36d80209baaa2d32b7"
+
+
+EXTRA_OECONF = "--enable-debuginfo \
+                --enable-fast \
+                --enable-shared  \
+                --disable-f77 \
+                --disable-fc \
+                --disable-fortran \
+                --disable-cxx"
+
+inherit autotools gettext

However is failing in do_configure

autoreconf: configure.ac: tracing
autoreconf: configure.ac: adding subdirectory test/mpi to autoreconf
autoreconf: Entering directory `test/mpi'
aclocal: error:
/home/vrodri3/poky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/mpich-3.1.1/subsys_include.m4:5:
file 'src/mpid/pamid/subconfigure.m4' does not exist
autoreconf: aclocal failed with exit status: 1
ERROR: autoreconf execution failed.

Any idea ?

BTW. I am adding those extra configures from upstream spec files

All the help is more than welcome

Regards

Victor Rodriguez



>
> Alex Vaduva
>
>
> On Wednesday, February 4, 2015 12:21 AM, Victor Rodriguez
> <vm.rod25@gmail.com> wrote:
>
>
> On Tue, Feb 3, 2015 at 12:14 PM, Alexandru Vaduva
> <vaduvajanalexandru@yahoo.com> wrote:
>> I will be more then happy to help you with this.
>>
>>
>> Alex Vaduva
>>
>>
>> On Tuesday, February 3, 2015 5:41 PM, Victor Rodriguez
>> <vm.rod25@gmail.com>
>> wrote:
>>
>>
>> HI team
>>
>> I wonder if there is any project or efforts to implement Message
>> Passing Interface (MPICH ) support on Yocto ?
>>
>> If no I am more than happy to work on it , I just will need a little
>> bit of guidance
>>
>> Thanks a lot
>>
>> Regards
>>
>> Victor Rodriguez
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
> Thanks Alex
>
> Does anybody knows under which meta - list should we send the patch to
> review?
>
>
> Regards
>
> Victor Rodriguez
>
>

