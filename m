Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17285E0056E; Sun, 15 Mar 2015 01:50:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85E84E0052B;
	Sun, 15 Mar 2015 01:50:41 -0700 (PDT)
Received: by ieclw3 with SMTP id lw3so149824043iec.2;
	Sun, 15 Mar 2015 01:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=SePZHqTYklPN+J5F/lGZfDPrTvmgIuomyIG6JJRzPvo=;
	b=spjTplxRqphLZH3CWVPzv0a82ndXVRxJR2eOp2fLrdenY5uXO31LDmpjsAXnJjor7j
	Vw1musdxdEhowIuHg7ToGHY4oYe98LzqH61OQR9uOe/OdzRfIiV7TZ5azkSqqsJ8Yi0c
	dMsLY3Gy06ddAEq0g4NBqkCLUHE+sh3NML8zpVCbhn/7lSv6FSqlz724ThHjKYVnQ5BA
	cG8GCZ+edj4iO6FkAVGXaY9yXa9C6HCjakGLgrVzr6OQq8WpQRAtWReZ/2tfvJMLBffD
	ZCvWkjLAzdLhKazObsYl0zJo7Rjoa957PjAPUb9BetnneyiSIRGVdVCUnFe9GuvKQHGF
	InjA==
X-Received: by 10.50.137.99 with SMTP id qh3mr98676206igb.7.1426409441154;
	Sun, 15 Mar 2015 01:50:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Sun, 15 Mar 2015 01:50:10 -0700 (PDT)
In-Reply-To: <CALTPfpGB_fJPEiXvBzhV+QqzVhMRxuQFfRDoXJntfSjfQcTXPA@mail.gmail.com>
References: <CALTPfpHK3-q9Xdv-ff_vgP7suRXuSzXEQVNq2wnbPj6hrosvdg@mail.gmail.com>
	<1426175606.12716.5.camel@besquive-mobl.amr.corp.intel.com>
	<CALTPfpGvW3mkeMq0ncWot-8LiUyf+c3xbi2TPfkh0CJLCzfiAQ@mail.gmail.com>
	<CALTPfpHo8gStEcBYzjTe_+x1ihxJ7HPDyDBe_ZyLh5GyvH9U-g@mail.gmail.com>
	<CALTPfpGB_fJPEiXvBzhV+QqzVhMRxuQFfRDoXJntfSjfQcTXPA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 15 Mar 2015 01:50:10 -0700
Message-ID: <CAMKF1srYz3YXeo0dJii2H5SrT6GG4inFyPw13VYAymwjSaLO+w@mail.gmail.com>
To: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
Cc: "yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Linking of external libraries in the recipe
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
X-List-Received-Date: Sun, 15 Mar 2015 08:50:44 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 14, 2015 at 11:23 PM, Priya Agarwal
<priya_agarwal@students.iitmandi.ac.in> wrote:
> I wrote the following in squid_3.4.7.bbappend:
>
> DPENDS_append = "usdpaa"

DEPENDS += "usdpaa" should be better here.

> EXTRA_OECONF_append = "
> LDFLAGS=-L/media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/usr/lib/
> \

This is not ok. you are hardcoding sysroot. You should rather use
LDFLAGS='-L=/usr/lib'

>             LIBS=-lusdpaa_dma -lusdpaa_dma_mem -lusdpaa_of -lusdpaa_fman
> -lusdpaa_qbman -lusdpaa_syscfg \

may be you should include LIBS in quotes ?

>
> CXXFLAGS=-I/media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/usr/include/"
>
> So the error is that it is not able to recognize the option
> -lusdpaa_dma_mem. ( I tried linking only 1 linrary, then it worked but when
> I link more than 1 the 2nd one is unrecognized). oe_runconf is failing
> basically. How to link all the libraries successfully?
>
> Basically I have many static libraries in
> /media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/usr/lib/
> and I want to link all of them while building squid code. To do that I need
> to run ./configure with these extra parameters LDFLAGS,LIBS,CXXFLAGS.
>
>
>
> On Thu, Mar 12, 2015 at 10:39 PM, Priya Agarwal
> <priya_agarwal@students.iitmandi.ac.in> wrote:
>>
>> Okay I think I understood. It has to be DEPENDS = "usdpaa" . Basically the
>> recipe which is building the libraries is
>> /meta-fsl-ppc/recipe-tools/usdpaa/usdpaa_git.bb.
>> Thanks.
>>
>> On Thu, Mar 12, 2015 at 9:58 PM, Priya Agarwal
>> <priya_agarwal@students.iitmandi.ac.in> wrote:
>>>>
>>>> If the libraries are already generated during the build it might be a
>>>> case where you just DEPENDS_append = " <libraryproviderpackage>" at
>>>>
>>>> he .bbappend file
>>>
>>>
>>> I know where the libraries are but how do I make out which is the
>>> package.
>>> (The needed '.a' files are in ..../usdpaa/git-r5/git/lib_powerpc/*)
>>>
>>>
>>>
>>>
>>>
>>> On Thu, Mar 12, 2015 at 9:23 PM, Benjamin Esquivel
>>> <benjamin.esquivel@linux.intel.com> wrote:
>>>>
>>>> On Thu, 2015-03-12 at 18:00 +0530, Priya Agarwal wrote:
>>>> > Hello,
>>>> >
>>>> >
>>>> > I have taken a recipe for the package squid from OpenEmbedded.org and
>>>> > have built it along with the kernel image.
>>>> >
>>>> >
>>>> > Now I want to edit its recipe so that it will include some external
>>>> > libraries.
>>>> > But these libraries are the ones that are generated during the build.
>>>> > So how do I edit the recipe to include those libraries?
>>>> >
>>>> Hi Priya, if you want to use a recipe and make some modifications to
>>>> it's behavior it is recommended that you do it via a .bbappend file
>>>>
>>>>
>>>> http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#using-bbappend-files
>>>>
>>>> If the libraries are already generated during the build it might be a
>>>> case where you just DEPENDS_append = " <libraryproviderpackage>" at
>>>> the .bbappend file. When the dependiencies are resolved prior your
>>>> recipe is built, the headers and libraries are placed in a special part
>>>> of the working directory that the recipes know where to look for (if
>>>> they don't deviate of the standard, of course).
>>>>
>>>> >
>>>> > Location of
>>>> > library:  ../yocto/<build-directory>/............/libusdpaa.a
>>>> >
>>>> >
>>>> >
>>>> > currently the do_compile task is failing as I have used an extra
>>>> > function whose library I haven't included. Snippet of the error:
>>>> >
>>>> > | main.cc: In function 'int SquidMainSafe(int, char**)':
>>>> > | main.cc:1259:10: error: 'of_init' was not declared in this scope
>>>> > | make[3]: *** [main.o] Error 1
>>>> > | make[3]: *** Waiting for unfinished jobs....
>>>> > | make[3]: Leaving directory
>>>> >
>>>> > `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
>>>> > | make[2]: *** [all-recursive] Error 1
>>>> > | make[2]: Leaving directory
>>>> >
>>>> > `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
>>>> > | make[1]: *** [all] Error 2
>>>> > | make[1]: Leaving directory
>>>> >
>>>> > `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
>>>> > | make: *** [all-recursive] Error 1
>>>> > | ERROR: oe_runmake failed
>>>> > | ERROR: Function failed: do_compile
>>>> > (see
>>>> > /media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/temp/log.do_compile.28810
>>>> > for further information)
>>>> > ERROR: Task 799
>>>> >
>>>> > (/media/NewVolume/yocto/meta-oe/meta-networking/recipes-daemons/squid/squid_3.4.7.bb,
>>>> > do_compile) failed with exit code '1'
>>>> >
>>>> >
>>>> > I have attached my recipe.
>>>> >
>>>> >
>>>> >
>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

