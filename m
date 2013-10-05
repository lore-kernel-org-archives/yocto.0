Return-Path: <amansh.sharma5@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE554E01621
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 23:02:28 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id tp5so11602259ieb.28
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2013 23:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=zXFP7dmVQPPc5+6dZIuWYj9WKXPy64Es/8zOsACS/lI=;
	b=ANqLy7sQabeZOl78fh+O3w1z9SrmoEeYOM4fRm/X71fnBz++Er0G7c+7Z3lyBLVQx4
	mhNOJU9y5XdELaTBKwRpK6Dfgf7UuBFCMAzWdCdzMYOA4j25nHkntJzNhNA+V9TUCZEn
	Ex6oAMkoJjl5ehY4X6YY8IuyJSWc8ta0dwoBPPvv67iXQ5kr7G3qLTPTd6t/7u2JVMBx
	tgu7Srd5yMb56xFM9kIkGw9uwTVu37asXNYFjLcmjxJvris92D9m5Xlr3o3O+LDEfzIi
	Zxf7+7LTJx0NyH3LOQ9HlxCxDm3cc7p6rZOoDyLB7L8GJYisL6uu80U7UmVMdKu0LJUr
	n5cg==
MIME-Version: 1.0
X-Received: by 10.50.111.48 with SMTP id if16mr9383566igb.23.1380952947267;
	Fri, 04 Oct 2013 23:02:27 -0700 (PDT)
Received: by 10.64.129.33 with HTTP; Fri, 4 Oct 2013 23:02:27 -0700 (PDT)
In-Reply-To: <CAMKF1sqR82aeyHTDQH77zj5XPYUG0XeCEdOjDYskU6r0Mrk71w@mail.gmail.com>
References: <CAPMH7-8xAYe1T=xsF4WGxbnWLYy6tejzTbVuxrgqvQXmYcWEAg@mail.gmail.com>
	<CAMKF1sqR82aeyHTDQH77zj5XPYUG0XeCEdOjDYskU6r0Mrk71w@mail.gmail.com>
Date: Sat, 5 Oct 2013 11:32:27 +0530
Message-ID: <CAPMH7-9FzkaPzaEzc+QjQOxdxa9Y0S-n-Rb0wp_H_A=TCWpgpg@mail.gmail.com>
From: Aman Sharma <amansh.sharma5@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error In java cross compilation using Yocto
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
X-List-Received-Date: Sat, 05 Oct 2013 06:02:32 -0000
Content-Type: multipart/alternative; boundary=089e013a2d80df9f7704e7f829c7

--089e013a2d80df9f7704e7f829c7
Content-Type: text/plain; charset=ISO-8859-1

Hello Raj,

Thanks for your reply.
Same error message is coming again after applying the above patch.

Regards
Aman


On Sat, Oct 5, 2013 at 10:58 AM, Khem Raj <raj.khem@gmail.com> wrote:

> Apply
> https://github.com/kraj/meta-java/commit/22983b1ab80b3393ecc27e5c3d3a9b52e3b8e692
>
>
> On Friday, October 4, 2013, Aman Sharma wrote:
>
>> Hi All,
>>
>> I need to cross compile openjdk-7-jre in ppc64 platform using Yocto.
>>
>> After setting the environment i am running "bitbake openjdok-7-jre"
>> command but i am getting following error message:
>>
>> | Checking patches/icedtea-zero-hotspotfix.patch
>> | Applying patches/icedtea-zero-hotspotfix.patch
>> | patching file openjdk/hotspot/make/linux/makefiles/zeroshark.make
>> *| Checking patches/icedtea-jdk-nio-use-host-cc.patch*
>> *| 3 out of 6 hunks FAILED -- saving rejects to file
>> openjdk/jdk/make/java/nio/Makefile.rej*
>> *| 2 out of 2 hunks FAILED -- saving rejects to file
>> openjdk/jdk/make/sun/Makefile.rej*
>> *| ERROR patch patches/icedtea-jdk-nio-use-host-cc.patch FAILED!*
>> *| WARNING make clean-patch before retrying a fix*
>> *| make: *** [stamps/patch.stamp] Error 2*
>> *| ERROR: oe_runmake failed*
>> *| ERROR: Function failed: do_configure (see
>> /home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/ppce6500-fsl_networking-linux/openjdk-7-jre/25b30-2.3.12-r5.1/temp/log.do_configure.19910
>> for further information)*
>> ERROR: Task 6
>> (/home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openjdk/
>> openjdk-7_25b30-2.3.12.bb, do_configure) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 2674 tasks of which 2664 didn't need to be
>> rerun and 1 failed.
>> No currently running tasks (2674 of 2684)
>>
>> Summary: 1 task failed:
>>
>> /home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openjdk/
>> openjdk-7_25b30-2.3.12.bb, do_configure
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>>
>> Please help me on fixing this issue.
>>
>> Thanks
>> Aman Sharma
>>
>>

--089e013a2d80df9f7704e7f829c7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Raj,<div><br></div><div>Thanks for your reply.</div>=
<div>Same error message is coming again after applying the above patch.</di=
v><div><br></div><div>Regards</div><div>Aman</div></div><div class=3D"gmail=
_extra">
<br><br><div class=3D"gmail_quote">On Sat, Oct 5, 2013 at 10:58 AM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
Apply=A0<a href=3D"https://github.com/kraj/meta-java/commit/22983b1ab80b339=
3ecc27e5c3d3a9b52e3b8e692" target=3D"_blank">https://github.com/kraj/meta-j=
ava/commit/22983b1ab80b3393ecc27e5c3d3a9b52e3b8e692</a><div class=3D"HOEnZb=
"><div class=3D"h5">
<br><br>On Friday, October 4, 2013, Aman Sharma  wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi All,<div><br></div><div>=
I need to cross compile openjdk-7-jre in ppc64 platform using Yocto.</div><=
div>

<br></div><div>After setting the environment i am running &quot;bitbake ope=
njdok-7-jre&quot; command but i am getting following error message:</div>
<div><br></div><div><div>| Checking patches/icedtea-zero-hotspotfix.patch</=
div><div>| Applying patches/icedtea-zero-hotspotfix.patch</div><div>| patch=
ing file openjdk/hotspot/make/linux/makefiles/zeroshark.make</div><div>


<b>| Checking patches/icedtea-jdk-nio-use-host-cc.patch</b></div><div><b>| =
3 out of 6 hunks FAILED -- saving rejects to file openjdk/jdk/make/java/nio=
/Makefile.rej</b></div><div><b>| 2 out of 2 hunks FAILED -- saving rejects =
to file openjdk/jdk/make/sun/Makefile.rej</b></div>


<div><b>| ERROR patch patches/icedtea-jdk-nio-use-host-cc.patch FAILED!</b>=
</div><div><b>| WARNING make clean-patch before retrying a fix</b></div><di=
v><b>| make: *** [stamps/patch.stamp] Error 2</b></div><div><b>| ERROR: oe_=
runmake failed</b></div>


<div><b>| ERROR: Function failed: do_configure (see /home/vvdn/yocto_1.4/Qo=
rIQ-SDK-V1.4-20130814-yocto/build_t4240rdb_release/tmp/work/ppce6500-fsl_ne=
tworking-linux/openjdk-7-jre/25b30-2.3.12-r5.1/temp/log.do_configure.19910 =
for further information)</b></div>


<div>ERROR: Task 6 (/home/vvdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta=
-java/recipes-core/openjdk/<a href=3D"http://openjdk-7_25b30-2.3.12.bb" tar=
get=3D"_blank">openjdk-7_25b30-2.3.12.bb</a>, do_configure) failed with exi=
t code &#39;1&#39;</div>


<div>NOTE: Tasks Summary: Attempted 2674 tasks of which 2664 didn&#39;t nee=
d to be rerun and 1 failed.</div><div>No currently running tasks (2674 of 2=
684)</div><div><br></div><div>Summary: 1 task failed:</div><div>=A0 /home/v=
vdn/yocto_1.4/QorIQ-SDK-V1.4-20130814-yocto/meta-java/recipes-core/openjdk/=
<a href=3D"http://openjdk-7_25b30-2.3.12.bb" target=3D"_blank">openjdk-7_25=
b30-2.3.12.bb</a>, do_configure</div>


<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div></div><div><br></div><div><br></div><div>Please help me on fixing =
this issue.</div><div><br></div><div>Thanks</div><div>Aman Sharma</div>


<div><br></div></div>
</blockquote>
</div></div></blockquote></div><br></div>

--089e013a2d80df9f7704e7f829c7--
