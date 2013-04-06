Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2056E01536
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2013 04:30:56 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id e53so1701841eek.37
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2013 04:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=9/WosIFIF7P5pGPTmaPOr3J+x4iNvsE/STQrdU43l9w=;
	b=b3HEd8yWUQeWS8gPM7ER/Vx+iXkWD+k9J3Y+vwDD6qZFvYUXWefBKQKgipQUw7tjhw
	hW0uDhsLcjcepBI6dPPBSXOyndgSUsCBLsUU3vrPQv3BtRPqQT+MgLTg6PupZX+k1E82
	p9sVtoO9fceQJjUqiyDg2yUghCelILfY/nwh5qPEj6qBOjfCQu/TyCbIRBq1Y/JPZQ9I
	l7rnkG5sEKTfbZVZjPc5YlR4mqpsOYQvUbGcheFAM0FCBS5YRbLyv8nZDva9yQbRmAzl
	M4t43DR7woCmL0dXJC6VwlolQjzCUgSMHK4yEOr47TAdwzxQ+gsYejyFtaj4IgRdlaUG
	uyPg==
MIME-Version: 1.0
X-Received: by 10.15.34.199 with SMTP id e47mr18966600eev.35.1365247855267;
	Sat, 06 Apr 2013 04:30:55 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Sat, 6 Apr 2013 04:30:54 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Sat, 6 Apr 2013 04:30:54 -0700 (PDT)
In-Reply-To: <CANwz6nybr1j-K=JgfOdhCTyefQ-4FnEYkm-KOMUVZWtapRJSOg@mail.gmail.com>
References: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
	<DAE1825C-DECF-40F1-8C62-EBA1ADC46B7B@gmail.com>
	<CANwz6nwE14Fmnh2sV3wp9OCqzTEVotC4OLssA3fSRthQLqb6BQ@mail.gmail.com>
	<6B996A59-7914-4BEE-BEF4-FCC782E5B28F@gmail.com>
	<CANwz6nxDTHJzbctFwKE9o8PDDwsz8SxsSSOiRNaDdc8abN77hw@mail.gmail.com>
	<EC024295-DFE9-4D1A-9EE5-DD7A02EACB5D@gmail.com>
	<CANwz6nyFgN_e_JfSKKm-8_teQkvETkFAsBxpo3HS5nUFeyfp4A@mail.gmail.com>
	<CANwz6nybr1j-K=JgfOdhCTyefQ-4FnEYkm-KOMUVZWtapRJSOg@mail.gmail.com>
Date: Sat, 6 Apr 2013 05:30:54 -0600
Message-ID: <CANwz6nyhqnu4JZjsW2m4+pqTwH1mtexXKynJcEZ3=BdjSL+NDQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Sat, 06 Apr 2013 11:30:57 -0000
Content-Type: multipart/alternative; boundary=089e016351a671b4f404d9af895d

--089e016351a671b4f404d9af895d
Content-Type: text/plain; charset=ISO-8859-1

If I don't set libgfortran my image completes okay. When libgfortran in
gcc-config-runtime.inc I get do_compile error
On Apr 5, 2013 5:49 PM, "Edward Vidal" <vidal.develone@gmail.com> wrote:

>
>  diff gcc-configure-common.inc gcc-configure-common.inc.orig
> 14c14
> < FORTRAN ?= ",fortran"
> ---
> > FORTRAN ?= ",f77"
>
> | ERROR: Function failed: do_compile (see
> /home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/temp/log.do_compile.4820
> for further information)
> ERROR: Task 736
> (/home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/
> gcc-runtime_4.7.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3543 tasks of which 3542 didn't need to be
> rerun and 1 failed.
> No currently running tasks (426 of 6877)
>
> Summary: 1 task failed:
>   /home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/
> gcc-runtime_4.7.bb, do_compile
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> /home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/temp
>
> less log.do_compile.4820
>
> home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran/../libgcc/unwind.h:68:54:
> warning: unused parameter 'data' [-Wunused-parameter]
> /home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran/../libgcc/unwind.h:68:64:
> warning: unused parameter 'compact' [-Wunused-parameter]
> make[1]: *** [error.lo] Error 1
>
> make[1]: *** [error.lo] Error 1
> libtool: link: ( cd ".libs" && rm -f "libcaf_single.la" && ln -s "../
> libcaf_single.la" "libcaf_single.la" )
>
> libtool: link: ( cd ".libs" && rm -f "libcaf_single.la" && ln -s "../
> libcaf_single.la" "libcaf_single.la" )
> make[1]: *** [backtrace.lo] Error 1
>
> make[1]: *** [backtrace.lo] Error 1
> make[1]: Leaving directory
> `/home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran'
>
> make[1]: Leaving directory
> `/home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran'
> make: *** [all] Error 2
>
> make: *** [all] Error 2
> + die 'oe_runmake failed'
>
> + die 'oe_runmake failed'
> ERROR: Function failed: do_compile (see
> /home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/temp/log.do_compile.4820
> for further information)
>
>
>
> On Fri, Apr 5, 2013 at 5:07 PM, Edward Vidal <vidal.develone@gmail.com>wrote:
>
>> I went back to fortran but also changed FORTRAN ?= fortran
>> 14,15c14,15
>> < FORTRAN ?= ",fortran"
>>
>> < LANGUAGES ?= "c,c++,fortran${JAVA}"
>> ---
>> > FORTRAN ?= ",f77"
>>
>> > LANGUAGES ?= "c,c++${FORTRAN}${JAVA}"
>>
>>
>> On Fri, Apr 5, 2013 at 5:00 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>>
>>> On Apr 5, 2013, at 3:35 PM, Edward Vidal <vidal.develone@gmail.com>
>>> wrote:
>>>
>>> I believe that the error was in gcc-configure-common.inc it should of
>>> been f95 not fortran. I am do a clean build  now for beagleboard and
>>> beaglebone.
>>>
>>>
>>> No, f95 is old and deprecated 'fortran' is right
>>>
>>
>>
>

--089e016351a671b4f404d9af895d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>If I don&#39;t set libgfortran my image completes okay. When libgfortran=
 in gcc-config-runtime.inc I get do_compile error</p>
<div class=3D"gmail_quote">On Apr 5, 2013 5:49 PM, &quot;Edward Vidal&quot;=
 &lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</=
a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr"><br>=A0diff gcc-configure-common.inc gcc-configure-common.=
inc.orig <br>14c14<br>&lt; FORTRAN ?=3D &quot;,fortran&quot;<br>---<br>&gt;=
 FORTRAN ?=3D &quot;,f77&quot;<br><br>| ERROR: Function failed: do_compile =
(see /home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon=
-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/temp/log.do_compile.4820 for furt=
her information)<br>

ERROR: Task 736 (/home/vidal/POKY/build032813_panda/poky/meta/recipes-devto=
ols/gcc/<a href=3D"http://gcc-runtime_4.7.bb" target=3D"_blank">gcc-runtime=
_4.7.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks S=
ummary: Attempted 3543 tasks of which 3542 didn&#39;t need to be rerun and =
1 failed.<br>

No currently running tasks (426 of 6877)<br><br>Summary: 1 task failed:<br>=
=A0 /home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/<a hr=
ef=3D"http://gcc-runtime_4.7.bb" target=3D"_blank">gcc-runtime_4.7.bb</a>, =
do_compile<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
/home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon-poky=
-linux-gnueabi/gcc-runtime/4.7.2-r19/temp<br><br>less log.do_compile.4820<b=
r><br>home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon=
-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gn=
ueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran/../libgcc/u=
nwind.h:68:54: warning: unused parameter &#39;data&#39; [-Wunused-parameter=
]<br>

/home/vidal/POKY/build032813_panda/poky/build/tmp/work/armv7a-vfp-neon-poky=
-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.7.2/build.arm-poky-linux-gnueabi=
.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libgfortran/../libgcc/unwind=
.h:68:64: warning: unused parameter &#39;compact&#39; [-Wunused-parameter]<=
br>

make[1]: *** [error.lo] Error 1<br><br>make[1]: *** [error.lo] Error 1<br>l=
ibtool: link: ( cd &quot;.libs&quot; &amp;&amp; rm -f &quot;<a href=3D"http=
://libcaf_single.la" target=3D"_blank">libcaf_single.la</a>&quot; &amp;&amp=
; ln -s &quot;../<a href=3D"http://libcaf_single.la" target=3D"_blank">libc=
af_single.la</a>&quot; &quot;<a href=3D"http://libcaf_single.la" target=3D"=
_blank">libcaf_single.la</a>&quot; )<br>

<br>libtool: link: ( cd &quot;.libs&quot; &amp;&amp; rm -f &quot;<a href=3D=
"http://libcaf_single.la" target=3D"_blank">libcaf_single.la</a>&quot; &amp=
;&amp; ln -s &quot;../<a href=3D"http://libcaf_single.la" target=3D"_blank"=
>libcaf_single.la</a>&quot; &quot;<a href=3D"http://libcaf_single.la" targe=
t=3D"_blank">libcaf_single.la</a>&quot; )<br>

make[1]: *** [backtrace.lo] Error 1<br><br>make[1]: *** [backtrace.lo] Erro=
r 1<br>make[1]: Leaving directory `/home/vidal/POKY/build032813_panda/poky/=
build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc=
-4.7.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-g=
nueabi/libgfortran&#39;<br>

<br>make[1]: Leaving directory `/home/vidal/POKY/build032813_panda/poky/bui=
ld/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/gcc-4.=
7.2/build.arm-poky-linux-gnueabi.arm-poky-linux-gnueabi/arm-poky-linux-gnue=
abi/libgfortran&#39;<br>

make: *** [all] Error 2<br><br>make: *** [all] Error 2<br>+ die &#39;oe_run=
make failed&#39;<br><br>+ die &#39;oe_runmake failed&#39;<br>ERROR: Functio=
n failed: do_compile (see /home/vidal/POKY/build032813_panda/poky/build/tmp=
/work/armv7a-vfp-neon-poky-linux-gnueabi/gcc-runtime/4.7.2-r19/temp/log.do_=
compile.4820 for further information)<br>

<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On =
Fri, Apr 5, 2013 at 5:07 PM, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"=
mailto:vidal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail.com=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I went back to fortran but =
also changed FORTRAN ?=3D fortran<br>14,15c14,15<br>&lt; FORTRAN ?=3D &quot=
;,fortran&quot;<div>

<br>&lt; LANGUAGES ?=3D &quot;c,c++,fortran${JAVA}&quot;<br>---<br></div>&g=
t; FORTRAN ?=3D &quot;,f77&quot;<div><br>
&gt; LANGUAGES ?=3D &quot;c,c++${FORTRAN}${JAVA}&quot;<br></div></div><div>=
<div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Fri, =
Apr 5, 2013 at 5:00 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:ra=
j.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote=
:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><div><br=
><div><div>On Apr 5, 2013, at 3:35 PM, Edward Vidal &lt;<a href=3D"mailto:v=
idal.develone@gmail.com" target=3D"_blank">vidal.develone@gmail.com</a>&gt;=
 wrote:</div>


<br><blockquote type=3D"cite"><span style=3D"font-family:Helvetica;font-siz=
e:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-sp=
acing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;display:inline!importa=
nt;float:none">I believe that the error was in gcc-configure-common.inc it =
should of been f95 not fortran. I am do a clean build=A0 now for beagleboar=
d and beaglebone.</span><br style=3D"font-family:Helvetica;font-size:medium=
;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:no=
rmal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px">


</blockquote></div><br></div><div>No, f95 is old and deprecated &#39;fortra=
n&#39; is right</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</blockquote></div>

--089e016351a671b4f404d9af895d--
