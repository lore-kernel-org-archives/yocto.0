Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0690E00831; Thu, 19 Feb 2015 11:54:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F900E00827
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 11:54:23 -0800 (PST)
Received: by labpn19 with SMTP id pn19so1906781lab.4
	for <yocto@yoctoproject.org>; Thu, 19 Feb 2015 11:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PAGH6hHarPn4FJY5Nl22fKkdy3G7NeeCS0BW6FIAHXQ=;
	b=X5MZCA4cQGSTR8+EUBGx5RPXl20Zn2hTeIp7eJcHWpnLOC60vdra07O70svDec4PLN
	NAVv8VW5QyhCWBuGh3rE9gptcMOc0hdGFGshpNFU+D5XucVV25s8+x7o0mBPMWNRM2ef
	e0rdkS8XkWplplRp9ImN7e3JYMRPuCXet1Au9x6VpQRuAgIjRAtWEifsaR1Lbg6C6x26
	0q4+GbZAxTs34uanF+4h+QfxMfCTdMBr1H6PvakXps6/mOy5UfhC89XNactUox7Mkb4d
	XkbPXBHYbjpuSZcUcioE9MHlq3sQxe3WUqy7mknGPeof29Y0zgHY8f+EJFsWi3ZBQKpQ
	OlRQ==
MIME-Version: 1.0
X-Received: by 10.112.54.228 with SMTP id m4mr5638732lbp.20.1424375661967;
	Thu, 19 Feb 2015 11:54:21 -0800 (PST)
Received: by 10.25.152.15 with HTTP; Thu, 19 Feb 2015 11:54:21 -0800 (PST)
In-Reply-To: <1068292349.1957305.1424373662027.JavaMail.yahoo@mail.yahoo.com>
References: <CAK5mtezKvzhbZ-Hf9WNqFLyzaQTsnq3siR-p2BFBcmijQ-4F6Q@mail.gmail.com>
	<2134770160.1079054.1423464302468.JavaMail.yahoo@mail.yahoo.com>
	<1068292349.1957305.1424373662027.JavaMail.yahoo@mail.yahoo.com>
Date: Thu, 19 Feb 2015 13:54:21 -0600
Message-ID: <CAK5mtew5ka8G4xF3uFEDnbUpbj8LbkvhHZu0LDxj06EzQRYjgg@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>,
	alejandro.hernandez@linux.intel.com
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
X-List-Received-Date: Thu, 19 Feb 2015 19:54:32 -0000
Content-Type: text/plain; charset=UTF-8

No problem Alex, here is the second version


Thanks a lot to Alex Hernandez

From 7ef5b510333c1eac535484881beddf2604d7ed6a Mon Sep 17 00:00:00 2001
From: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
Date: Thu, 19 Feb 2015 11:00:22 -0600
Subject: [PATCH] Add mpich suppor

This patch add mpich support to yocto in order to run MPI framework on embedded
systems.

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Signed-off-by: Victor Rodriguez <victor.rodriguez.bahena@intel.com>
---
 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb | 33 +++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb

diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
new file mode 100644
index 0000000..ac87e04
--- /dev/null
+++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
@@ -0,0 +1,33 @@
+SUMMARY = "Message Passing Interface(MPI) implementation"
+HOMEPAGE = "http://git.mpich.org/mpich.git/"
+SECTION = "devel"
+LICENSE = "BSD-2-Clause"
+LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=2106f0435056f3dd9349747a766e5816"
+SRC_URI = "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz"
+SRC_URI[md5sum] = "40dc408b1e03cc36d80209baaa2d32b7"
+
+RDEPENDS_${PN} += "bash perl"
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
+
+do_configure_prepend() {
+    cd ../mpich-3.1.1
+    autoreconf --verbose --install --force -I . -I confdb/ -I maint/
+    oe_runconf
+    exit
+}
+do_compile_prepend() {
+    cd ../mpich-3.1.1
+}
+do_install_prepend() {
+    cd ../mpich-3.1.1
+}
-- 
1.9.3

This is creating a problem with QA , nothing too hard to fix , Working on it

Regards

Victor Rodriguez



On Thu, Feb 19, 2015 at 1:21 PM, Alexandru Vaduva
<vaduvajanalexandru@yahoo.com> wrote:
> Hello Victor,
>
> Sorry for this late reply. I took a look at the mpich recipe error, but was
> not able to find a solution.
> I admit that I only looked at it for a few moments(around 2 hours), my
> schedule did not permit more.
>
> If I`ll have any progress on this I will try to keep you posted.
>
>
> Alex Vaduva
>
>
> On Monday, February 9, 2015 8:45 AM, Alexandru Vaduva
> <vaduvajanalexandru@yahoo.com> wrote:
>
>
> I will try to take a look at it ;)
>
>
> On Monday, February 9, 2015 7:13 AM, Victor Rodriguez <vm.rod25@gmail.com>
> wrote:
>
>
> On Tue, Feb 3, 2015 at 4:57 PM, Alexandru Vaduva
> <vaduvajanalexandru@yahoo.com> wrote:
>> I would suggest a layer under meta-openembeded:
>> meta-openembedded/meta-oe/recipes-devtools/ caould be a start.
>
> Hi Alex
>
> This is the first version that I have:
>
> diff --git a/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
> b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
> new file mode 100644
> index 0000000..bf94714
> --- /dev/null
> +++ b/meta-oe/recipes-devtools/mpich/mpich_3.1.1.bb
> @@ -0,0 +1,18 @@
> +SUMMARY = "Message Passing Interface(MPI) implementation"
> +HOMEPAGE = "http://git.mpich.org/mpich.git/"
> +SECTION = "devel"
> +LICENSE = "BSD-2-Clause"
> +LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=673935943"
> +SRC_URI = "http://www.mpich.org/static/downloads/${PV}/mpich-${PV}.tar.gz"
> +SRC_URI[md5sum] = "40dc408b1e03cc36d80209baaa2d32b7"
> +
> +
> +EXTRA_OECONF = "--enable-debuginfo \
> +                --enable-fast \
> +                --enable-shared  \
> +                --disable-f77 \
> +                --disable-fc \
> +                --disable-fortran \
> +                --disable-cxx"
> +
> +inherit autotools gettext
>
> However is failing in do_configure
>
> autoreconf: configure.ac: tracing
> autoreconf: configure.ac: adding subdirectory test/mpi to autoreconf
> autoreconf: Entering directory `test/mpi'
> aclocal: error:
> /home/vrodri3/poky/build/tmp/work/i586-poky-linux/mpich/3.1.1-r0/mpich-3.1.1/subsys_include.m4:5:
> file 'src/mpid/pamid/subconfigure.m4' does not exist
> autoreconf: aclocal failed with exit status: 1
> ERROR: autoreconf execution failed.
>
> Any idea ?
>
> BTW. I am adding those extra configures from upstream spec files
>
> All the help is more than welcome
>
> Regards
>
> Victor Rodriguez
>
>
>
>
>>
>> Alex Vaduva
>>
>>
>> On Wednesday, February 4, 2015 12:21 AM, Victor Rodriguez
>> <vm.rod25@gmail.com> wrote:
>>
>>
>> On Tue, Feb 3, 2015 at 12:14 PM, Alexandru Vaduva
>> <vaduvajanalexandru@yahoo.com> wrote:
>>> I will be more then happy to help you with this.
>>>
>>>
>>> Alex Vaduva
>>>
>>>
>>> On Tuesday, February 3, 2015 5:41 PM, Victor Rodriguez
>>> <vm.rod25@gmail.com>
>>> wrote:
>>>
>>>
>>> HI team
>>>
>>> I wonder if there is any project or efforts to implement Message
>>> Passing Interface (MPICH ) support on Yocto ?
>>>
>>> If no I am more than happy to work on it , I just will need a little
>>> bit of guidance
>>>
>>> Thanks a lot
>>>
>>> Regards
>>>
>>> Victor Rodriguez
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>> Thanks Alex
>>
>> Does anybody knows under which meta - list should we send the patch to
>> review?
>>
>>
>> Regards
>>
>> Victor Rodriguez
>>
>>
>
>
>
>

