Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46000E009EB
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 08:55:49 -0800 (PST)
Received: by mail-vc0-f181.google.com with SMTP id lg15so3839282vcb.12
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 08:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EfDW/sweSMINIBl7aGjdMbEP/VLskH5ABLP1LTJ3cXM=;
	b=bim5n5JZy3s7XP/1bVzPWFjDNr8d62PpbhA1ehy8Y3BP2EUplEAaOewPxgWFW0W+qH
	VoOpFPz54dvY25Oti3vRvudI+mDAkMorC40UITxqfpz6nPX6JQq+HpBJ5ePqfQCjWHLx
	08xZJByMgRp1xx0xonDhKiPeRek1xde6cFL/H7Eu3hQ+Kose9pwXwd304De6cveNtwCh
	qOUg8kw4IBJlz4J3a7E4+GyOWG+cQMFjAvykq9dZDO+rfinq/21mr9B2Gp+ZeYmRIXBL
	oy7aRKfzJd9DcgKhFCyGGaDm5bdyCQ11HeSlbQaICzEuxAELKQ/8cDhY26ozwylz2bGI
	budw==
MIME-Version: 1.0
X-Received: by 10.58.37.232 with SMTP id b8mr18478477vek.27.1393865749529;
	Mon, 03 Mar 2014 08:55:49 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Mon, 3 Mar 2014 08:55:49 -0800 (PST)
In-Reply-To: <1583886.umgNPlo09z@peggleto-mobl5.ger.corp.intel.com>
References: <CAA7h+EqtOE2spfgtXi2CiogUFsytGxyb4EgqSAoanwTximA-+w@mail.gmail.com>
	<1461290.cFV4RBsgra@peggleto-mobl5.ger.corp.intel.com>
	<CAA7h+EoPfLcMW3SF9SkUKai5KPe9RJpEJu8+Nz+akUYX9TNZfw@mail.gmail.com>
	<1583886.umgNPlo09z@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 3 Mar 2014 09:55:49 -0700
Message-ID: <CAA7h+EogdaLsVOCbVv3W_qaEicfJs-WtKMPdCeKbDUubZVakkA@mail.gmail.com>
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
X-List-Received-Date: Mon, 03 Mar 2014 16:55:53 -0000
Content-Type: multipart/alternative; boundary=089e01176de5dd89a504f3b6a886

--089e01176de5dd89a504f3b6a886
Content-Type: text/plain; charset=ISO-8859-1

| jade: symbol lookup error:
/home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
| jade: symbol lookup error:
/home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
| make[2]: *** [api.html] Error 127
| make[2]: *** Waiting for unfinished jobs....
| make[2]: *** [docbook2man.html] Error 127
| jade: symbol lookup error:
/home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
| make[2]: *** [backend-spec.html] Error 127
| jade: symbol lookup error:
/home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
| make[2]: *** [docbook2texi.html] Error 127
| make[2]: Leaving directory
`/home/infinitezero/yoctousbip/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc/HTML'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/infinitezero/yoctousbip/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/build/doc'
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see
/home/infinitezero/yoctousbip/build/tmp/work/x86_64-linux/docbook-utils-native/0.6.14-r3/temp/log.do_compile.21796
for further information)
ERROR: Task 1503
(/home/infinitezero/yoctousbip/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1862 tasks of which 1858 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
/home/infinitezero/yoctousbip/poky/meta/recipes-devtools/docbook-utils/
docbook-utils-native_0.6.14.bb, do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.



On Mon, Mar 3, 2014 at 9:49 AM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Monday 03 March 2014 09:47:16 Rick Bianchi wrote:
> > No, I have not made any changes to the yoctousbip/build/conf/local.conf.
> >
> > The only change I made was to the file:
> > yoctousbip/poky/meta/recipes-devtools/docbook-utils/
> > docbook-utils-native_0.6.14.bb
>
> Ah - that explains it. This is not the right value of SRC_URI for this
> recipe.
>
> > It was throwing an error and I understood that it needed to be patched.
>
> What error was it throwing?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e01176de5dd89a504f3b6a886
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">| jade: symbol lookup error: /home/infinitezero/yoctousbip=
/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0: un=
defined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE<br>| jade: symb=
ol lookup error: /home/infinitezero/yoctousbip/build/tmp/sysroots/x86_64-li=
nux/usr/bin/../../usr/lib/libospgrove.so.0: undefined symbol: _ZN14OpenJade=
_Grove8ClassDef12sgmlDocumentE<br>
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
docbook-utils/<a href=3D"http://docbook-utils-native_0.6.14.bb">docbook-uti=
ls-native_0.6.14.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 1862 tasks of which 1858 didn&#39;t need to =
be rerun and 1 failed.<br>Waiting for 0 running tasks to finish:<br><br>Sum=
mary: 1 task failed:<br>  /home/infinitezero/yoctousbip/poky/meta/recipes-d=
evtools/docbook-utils/<a href=3D"http://docbook-utils-native_0.6.14.bb">doc=
book-utils-native_0.6.14.bb</a>, do_compile<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r><br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Mon, Mar 3, 2014 at 9:49 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=
=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@l=
inux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Monday 03 March 2014 09:4=
7:16 Rick Bianchi wrote:<br>
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
<div class=3D""><br>
&gt; It was throwing an error and I understood that it needed to be patched=
.<br>
<br>
</div>What error was it throwing?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--089e01176de5dd89a504f3b6a886--
