Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CEE8E009EB
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:56:59 -0800 (PST)
Received: by mail-ve0-f173.google.com with SMTP id oy12so1804191veb.4
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 08:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Onfy4w7/5Z6D1+zTl7hVEakYTJ4w+a04n8dZfbsMg0w=;
	b=mU/rHVP/zgD8AiN9hKNcOxg5XJeR9591wDRB2Os8uODS5ozdoSOD++HNQ7VodlgOAj
	SQ/FRg6GxPdPn8IMWKnmB1baOl9TERGyB6C2AdDHjYiX01J89jFqmCdHfGX5u3rw34tD
	e9kVKkt7GwlGas4jtfADRyNm2xnkhXMXFa+1AdyI2Q7w+JfH41QAar9Pf1DiAs9K9TDf
	XcPHjgsCiZzoqS53d5DDQ5VeaR7Nqfb+t+0paGJ+mx/3aT+0M1VBGiVsMP/v+yIkwZ0b
	yszr3fNYLcUkxZoMtNpQ2EkRgIX5ZOrUS15qvdBT3CcM/eGi9wI6uERoNMHJ6bgKLN2h
	18/A==
MIME-Version: 1.0
X-Received: by 10.58.168.142 with SMTP id zw14mr3397790veb.33.1393865819101;
	Mon, 03 Mar 2014 08:56:59 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Mon, 3 Mar 2014 08:56:59 -0800 (PST)
In-Reply-To: <CAA7h+EogdaLsVOCbVv3W_qaEicfJs-WtKMPdCeKbDUubZVakkA@mail.gmail.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<1461290.cFV4RBsgra@peggleto-mobl5.ger.corp.intel.com>
	<CAA7h+EoPfLcMW3SF9SkUKai5KPe9RJpEJu8+Nz+akUYX9TNZfw@mail.gmail.com>
	<1583886.umgNPlo09z@peggleto-mobl5.ger.corp.intel.com>
	<CAA7h+EogdaLsVOCbVv3W_qaEicfJs-WtKMPdCeKbDUubZVakkA@mail.gmail.com>
Date: Mon, 3 Mar 2014 09:56:59 -0700
Message-ID: <CAA7h+ErXKX-M=VsC2GDqe5DGNE-y_VtEPv0YdO+ws+HHGTa9FA@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: WARNING: Failed to fetch URL http://downloads.sourceforge.net/openjade/openjade-0.6.14.tar.gz, attempting MIRRORS if available
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
X-List-Received-Date: Mon, 03 Mar 2014 16:57:02 -0000
Content-Type: multipart/alternative; boundary=047d7b6da02803205404f3b6ad60

--047d7b6da02803205404f3b6ad60
Content-Type: text/plain; charset=ISO-8859-1

Any help you can give me on patching it would be greatly appreciated.


On Mon, Mar 3, 2014 at 9:55 AM, Rick Bianchi <bianchirickkutta@gmail.com>wrote:

> | jade: symbol lookup error:
> /home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
> undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> | jade: symbol lookup error:
> /home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
> undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> | make[2]: *** [api.html] Error 127
> | make[2]: *** Waiting for unfinished jobs....
> | make[2]: *** [docbook2man.html] Error 127
> | jade: symbol lookup error:
> /home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
> undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> | make[2]: *** [backend-spec.html] Error 127
> | jade: symbol lookup error:
> /home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
> undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
> | make[2]: *** [docbook2texi.html] Error 127
> | make[2]: Leaving directory
> `/home/infinitezero/yoctousbip/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/HTML'
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory
> `/home/infinitezero/yoctousbip/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc'
> | make: *** [all-recursive] Error 1
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (see
> /home/infinitezero/yoctousbip/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/temp/log.do_compile.21796
> for further information)
> ERROR: Task 1503
> (/home/infinitezero/yoctousbip/poky/meta/recipes-devtools/docbook-utils/
> docbook-utils-native_0.6.14.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1862 tasks of which 1858 didn't need to be
> rerun and 1 failed.
>
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
> /home/infinitezero/yoctousbip/poky/meta/recipes-devtools/docbook-utils/
> docbook-utils-native_0.6.14.bb, do_compile
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>
> On Mon, Mar 3, 2014 at 9:49 AM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
>> On Monday 03 March 2014 09:47:16 Rick Bianchi wrote:
>> > No, I have not made any changes to the yoctousbip/build/conf/local.conf.
>> >
>> > The only change I made was to the file:
>> > yoctousbip/poky/meta/recipes-devtools/docbook-utils/
>> > docbook-utils-native_0.6.14.bb
>>
>> Ah - that explains it. This is not the right value of SRC_URI for this
>> recipe.
>>
>> > It was throwing an error and I understood that it needed to be patched.
>>
>> What error was it throwing?
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
>>
>
>

--047d7b6da02803205404f3b6ad60
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Any help you can give me on patching it would be greatly a=
ppreciated.<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Mar 3, 2014 at 9:55 AM, Rick Bianchi <span dir=3D"ltr">&lt;=
<a href=3D"mailto:bianchirickkutta@gmail.com" target=3D"_blank">bianchirick=
kutta@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">| jade: symbol lookup error=
: /home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../=
../usr/lib/libospgrove.so.0: undefined symbol: _ZN14OpenJade_Grove8ClassDef=
12sgmlDocumentE<br>
| jade: symbol lookup error: /home/infinitezero/yoctousbip/build/tmp/sysroo=
ts/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0: undefined symbol: _=
ZN14OpenJade_Grove8ClassDef12sgmlDocumentE<br>
| make[2]: *** [api.html] Error 127<br>| make[2]: *** Waiting for unfinishe=
d jobs....<br>| make[2]: *** [docbook2man.html] Error 127<br>| jade: symbol=
 lookup error: /home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linu=
x/usr/bin/../../usr/lib/libospgrove.so.0: undefined symbol: _ZN14OpenJade_G=
rove8ClassDef12sgmlDocumentE<br>

| make[2]: *** [backend-spec.html] Error 127<br>| jade: symbol lookup error=
: /home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../=
../usr/lib/libospgrove.so.0: undefined symbol: _ZN14OpenJade_Grove8ClassDef=
12sgmlDocumentE<br>

| make[2]: *** [docbook2texi.html] Error 127<br>| make[2]: Leaving director=
y `/home/infinitezero/yoctousbip/build/tmp/work/x86_64-linux/docbook-utils-=
native/0.6.14-r3/build/doc/HTML&#39;<br>| make[1]: *** [all-recursive] Erro=
r 1<br>

| make[1]: Leaving directory `/home/infinitezero/yoctousbip/build/tmp/work/=
x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc&#39;<br>| make: *** [=
all-recursive] Error 1<br>| ERROR: oe_runmake failed<br>| ERROR: Function f=
ailed: do_compile (see /home/infinitezero/yoctousbip/build/tmp/work/x86_64-=
linux/docbook-utils-native/0.6.14-r3/temp/log.do_compile.21796 for further =
information)<br>

ERROR: Task 1503 (/home/infinitezero/yoctousbip/poky/meta/recipes-devtools/=
docbook-utils/<a href=3D"http://docbook-utils-native_0.6.14.bb" target=3D"_=
blank">docbook-utils-native_0.6.14.bb</a>, do_compile) failed with exit cod=
e &#39;1&#39;<br>

NOTE: Tasks Summary: Attempted 1862 tasks of which 1858 didn&#39;t need to =
be rerun and 1 failed.<div class=3D""><br>Waiting for 0 running tasks to fi=
nish:<br><br>Summary: 1 task failed:<br></div>  /home/infinitezero/yoctousb=
ip/poky/meta/recipes-devtools/docbook-utils/<a href=3D"http://docbook-utils=
-native_0.6.14.bb" target=3D"_blank">docbook-utils-native_0.6.14.bb</a>, do=
_compile<br>

Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r><br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Mon, Mar 3, 2014 at 9:49 AM, Paul=
 Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel=
.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:=
<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Monday 03 March 2014 09:47:16 Rick B=
ianchi wrote:<br>
&gt; No, I have not made any changes to the yoctousbip/build/conf/local.con=
f.<br>
&gt;<br>
&gt; The only change I made was to the file:<br>
&gt; yoctousbip/poky/meta/recipes-devtools/docbook-utils/<br>
&gt; <a href=3D"http://docbook-utils-native_0.6.14.bb" target=3D"_blank">do=
cbook-utils-native_0.6.14.bb</a><br>
<br>
</div>Ah - that explains it. This is not the right value of SRC_URI for thi=
s recipe.<br>
<div><br>
&gt; It was throwing an error and I understood that it needed to be patched=
.<br>
<br>
</div>What error was it throwing?<br>
<div><div><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7b6da02803205404f3b6ad60--
