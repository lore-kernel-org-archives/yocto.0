Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2F70E00CB3; Thu, 31 Aug 2017 20:26:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8826FE00C99
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 20:26:26 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id g16so2591288uah.3
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 20:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4Ob8Ixois/oHs5jUfK/Yk2iLppxvBuNHVzASmKjHX/c=;
	b=h5NTUlmS5V7vdMtR2nawYFhAourmwLdsvJo6Wa+ookoKgQnCZ4TpCIEiW/z/TjWO+s
	h+r2ljg7HhyVOunAYjnf4LXQHLiTeuVIQcGusz1O9gtOFf5TF+VZgPE6D5cCESZlpyIR
	a18k6rZAT0JGCTlv4/mZcaj6U41f+WP39v6PgmLHPfk1jbz22/32P6J/EVX+P2a2pEAc
	Qj3aCfx+S6cuWAN9BC4C4QOMi3xMz2DMffFEnhcDTD1m/XWbhIaTmjUuY8Xx4XdHOSWs
	h2MNWjN4pbTckJEfy0u2ES6fFS9mIhD7UVyqUIoPZVKFs0C6MoaPDx2imLAfe7ErhBE9
	rKGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4Ob8Ixois/oHs5jUfK/Yk2iLppxvBuNHVzASmKjHX/c=;
	b=IeP+vDgyBOj3AlpINNNTgnOs4OrRMJAqsurverbi6NYfvvbPJukWvtk4zgKhV1M5yT
	2OseUKz07wgjsjx2nrfUHX3dkCcDnCXX/d1YrguCoHKRRTJDrkeODmxsGdBX91EaSxzq
	nfl1WIU4It3ZMgZI4vr3TYop1n4JZQdB/Ah/b66jV2wrxG0uKlthZYstuyeWxUNgSWFw
	A+SHHs0d6SQmLljzPwnxv4upr0CabbGr5j7hUxiDcylMVwkspmW2PXSqTCWILL7pSwFG
	nkN5HK26NKvpcHWdola097/DdmaiBS/HRmvH1SiykGq3jh/3AXux2FBo+5yNxyT3CjBn
	uCSw==
X-Gm-Message-State: AHPjjUgSDb9hv+ILp7GCSBtV112V69xEHMqsyGwjLe35ABJ1pgj2Oa6u
	BTBcgw4uH07FwwOjRQniHEfYTVOGD/NG0sI=
X-Google-Smtp-Source: ADKCNb6uN8eD+eC3lJngEspnqP27ZFvUT6NYeM/M2MJ8XinYh0hj4kwoJFu2a2EFseYjx2KIXDJxZZ9Cf9LHmthwA/s=
X-Received: by 10.176.23.38 with SMTP id j38mr347238uaf.76.1504236385422; Thu,
	31 Aug 2017 20:26:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.52.11 with HTTP; Thu, 31 Aug 2017 20:26:24 -0700 (PDT)
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F086424C@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F086424C@IR-CENTRAL.corp.innerrange.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 31 Aug 2017 20:26:24 -0700
Message-ID: <CANx9H-AME-2wFTm5A52K4qKO=ztx0BoOBVYe1mtk0rCeDQoe=g@mail.gmail.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python recipes wanted?
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
X-List-Received-Date: Fri, 01 Sep 2017 03:26:27 -0000
Content-Type: multipart/alternative; boundary="f40304361f0c6951c7055818533f"

--f40304361f0c6951c7055818533f
Content-Type: text/plain; charset="UTF-8"

When you say "meta-oe", I assume you mean "meta-openembedded/meta-python"
[1]. That layer is where they belong.

There is no rule as to what is "wanted", but since you took the trouble to
write recipes, we can all benefit from your effort. But, I would add some
general guidelines:

1. Make sure the python package is the latest release and the patch applies
on top of "master".
2. Use the pypi.bbclass [2] with  "inherit pypi" to simplify the recipe (no
SRC_URI for pythonhosted is needed)
3. Many folks are still using Python 2 as well, so many recipes put the
heart of the metadata in an ".inc" file and the ${PYTHON_PN} (expands to
python or python3) version specific things (e.g. "inherit setuptools3") in
the .bb file. There are many examples in meta-python. This is not a
requirement, but is strongly encouraged.
4. Help maintain the recipes in meta-python. Don't just send your recipe
and never look at it again. The amount of metadata in meta-openembedded is
a challenge to maintain [3]. Maintenance is aided by, for instance, adding
INHERIT += "distrodata" [4] to your local.conf and running "bitbake
python-foo -c check_pkg" to check for new upstream versions [5]. You can
also run "distrodata" on your entire image [6]. This can be automated.

Also, looking at your python*-uvloop issue on Github [7], if upstream does
not want the patches that is OK, just include them with your recipe for
meta-python and put "Upstream-Status: Inappropriate (embedded specific)" or
similar in the patch itself. See the commit patch message guidelines [8].
You should also follow the README in meta-python [9] and the OpenEmbedded
patch submission guidelines [10].

[1] http://git.openembedded.org/meta-openembedded/tree/meta-python
[2]
http://git.openembedded.org/meta-openembedded/tree/meta-python/classes/pypi.bbclass
[3]
http://www.openembedded.org/wiki/Bitbake_World_Status_Rocko#Failed_tasks_2017-08-31
[4]
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-classes-distrodata
[5]
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#structure-build-tmp-log
[6]
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-tasks-distrodata
[7] https://github.com/MagicStack/uvloop/issues/104
[8] http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
[9] http://git.openembedded.org/meta-openembedded/tree/meta-python/README
[10] http://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

On Thu, Aug 31, 2017 at 6:40 PM, Craig McQueen <craig.mcqueen@innerrange.com
> wrote:

> I have made a number of recipes for Python packages, for my own use. Does
> meta-oe have an interest in any/all Python package recipe contributions, or
> ones that are considered more popular?
>
> I have:
>
> python3-aiohttp_2.2.3.bb
> python3-aiohttp-jinja2_0.13.0.bb
> python3-aiohttp-session_1.0.0.bb
> python3-async-timeout_1.2.1.bb
> python3-cobs_1.1.3.bb
> python3-colorlog_2.10.0.bb
> python3-configargparse_0.12.0.bb
> python3-lru-dict_1.1.6.bb
> python3-pycrypto_2.6.1.bb
> python3-pyserial-asyncio_0.4.bb
> python3-uvloop_0.8.0.bb
> python3-yarl_0.11.0.bb
>
> python-cobs_1.1.3.bb
> python-lru-dict_1.1.6.bb
>
> --
> Craig McQueen
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f40304361f0c6951c7055818533f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When you say &quot;meta-oe&quot;, I assume you mean &quot;=
meta-openembedded/meta-python&quot; [1]. That layer is where they belong.<d=
iv><br></div><div>There is no rule as to what is &quot;wanted&quot;, but si=
nce you took the trouble to write recipes, we can all benefit from your eff=
ort. But, I would add some general guidelines:<div><br></div><div>1. Make s=
ure the python package is the latest release and the patch applies on top o=
f &quot;master&quot;.</div><div>2. Use the pypi.bbclass [2] with =C2=A0&quo=
t;inherit pypi&quot; to simplify the recipe (no SRC_URI for pythonhosted is=
 needed)</div><div>3. Many folks are still using Python 2 as well, so many =
recipes put the heart of the metadata in an &quot;.inc&quot; file and the $=
{PYTHON_PN} (expands to python or python3) version specific things (e.g. &q=
uot;inherit setuptools3&quot;) in the .bb file. There are many examples in =
meta-python. This is not a requirement, but is strongly encouraged.</div></=
div><div>4. Help maintain the recipes in meta-python. Don&#39;t just send y=
our recipe and never look at it again. The amount of metadata in meta-opene=
mbedded is a challenge to maintain [3]. Maintenance is aided by, for instan=
ce, adding INHERIT +=3D &quot;distrodata&quot; [4] to your local.conf and r=
unning &quot;bitbake python-foo -c check_pkg&quot; to check for new upstrea=
m versions [5]. You can also run &quot;distrodata&quot; on your entire imag=
e [6]. This can be automated.</div><div><br></div><div>Also, looking at you=
r python*-uvloop issue on Github [7], if upstream does not want the patches=
 that is OK, just include them with your recipe for meta-python and put &qu=
ot;Upstream-Status: Inappropriate (<span style=3D"color:rgb(0,0,0);font-fam=
ily:monospace,Courier;font-size:14px;white-space:pre-wrap;background-color:=
rgb(248,249,250)">embedded specific</span>)&quot; or similar in the patch i=
tself. See the commit patch message guidelines [8]. You should also follow =
the README in meta-python [9] and the OpenEmbedded patch submission guideli=
nes [10].<br></div><div><br></div><div>[1]=C2=A0<a href=3D"http://git.opene=
mbedded.org/meta-openembedded/tree/meta-python">http://git.openembedded.org=
/meta-openembedded/tree/meta-python</a></div><div>[2]=C2=A0<a href=3D"http:=
//git.openembedded.org/meta-openembedded/tree/meta-python/classes/pypi.bbcl=
ass">http://git.openembedded.org/meta-openembedded/tree/meta-python/classes=
/pypi.bbclass</a></div><div>[3]=C2=A0<a href=3D"http://www.openembedded.org=
/wiki/Bitbake_World_Status_Rocko#Failed_tasks_2017-08-31">http://www.openem=
bedded.org/wiki/Bitbake_World_Status_Rocko#Failed_tasks_2017-08-31</a></div=
><div>[4]=C2=A0<a href=3D"http://www.yoctoproject.org/docs/latest/mega-manu=
al/mega-manual.html#ref-classes-distrodata">http://www.yoctoproject.org/doc=
s/latest/mega-manual/mega-manual.html#ref-classes-distrodata</a></div><div>=
[5]=C2=A0<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-=
manual.html#structure-build-tmp-log">http://www.yoctoproject.org/docs/lates=
t/ref-manual/ref-manual.html#structure-build-tmp-log</a></div><div>[6]=C2=
=A0<a href=3D"http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual=
.html#ref-tasks-distrodata">http://www.yoctoproject.org/docs/latest/ref-man=
ual/ref-manual.html#ref-tasks-distrodata</a></div><div>[7]=C2=A0<a href=3D"=
https://github.com/MagicStack/uvloop/issues/104">https://github.com/MagicSt=
ack/uvloop/issues/104</a></div><div>[8]=C2=A0<a href=3D"http://www.openembe=
dded.org/wiki/Commit_Patch_Message_Guidelines">http://www.openembedded.org/=
wiki/Commit_Patch_Message_Guidelines</a></div><div>[9]=C2=A0<a href=3D"http=
://git.openembedded.org/meta-openembedded/tree/meta-python/README">http://g=
it.openembedded.org/meta-openembedded/tree/meta-python/README</a></div><div=
>[10]=C2=A0<a href=3D"http://www.openembedded.org/wiki/How_to_submit_a_patc=
h_to_OpenEmbedded">http://www.openembedded.org/wiki/How_to_submit_a_patch_t=
o_OpenEmbedded</a></div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Thu, Aug 31, 2017 at 6:40 PM, Craig McQueen <span dir=3D"lt=
r">&lt;<a href=3D"mailto:craig.mcqueen@innerrange.com" target=3D"_blank">cr=
aig.mcqueen@innerrange.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">I have made a number of recipes for Python packages, for my own use=
. Does meta-oe have an interest in any/all Python package recipe contributi=
ons, or ones that are considered more popular?<br>
<br>
I have:<br>
<br>
<a href=3D"http://python3-aiohttp_2.2.3.bb" rel=3D"noreferrer" target=3D"_b=
lank">python3-aiohttp_2.2.3.bb</a><br>
<a href=3D"http://python3-aiohttp-jinja2_0.13.0.bb" rel=3D"noreferrer" targ=
et=3D"_blank">python3-aiohttp-jinja2_0.13.0.<wbr>bb</a><br>
<a href=3D"http://python3-aiohttp-session_1.0.0.bb" rel=3D"noreferrer" targ=
et=3D"_blank">python3-aiohttp-session_1.0.0.<wbr>bb</a><br>
<a href=3D"http://python3-async-timeout_1.2.1.bb" rel=3D"noreferrer" target=
=3D"_blank">python3-async-timeout_1.2.1.bb</a><br>
<a href=3D"http://python3-cobs_1.1.3.bb" rel=3D"noreferrer" target=3D"_blan=
k">python3-cobs_1.1.3.bb</a><br>
<a href=3D"http://python3-colorlog_2.10.0.bb" rel=3D"noreferrer" target=3D"=
_blank">python3-colorlog_2.10.0.bb</a><br>
<a href=3D"http://python3-configargparse_0.12.0.bb" rel=3D"noreferrer" targ=
et=3D"_blank">python3-configargparse_0.12.0.<wbr>bb</a><br>
<a href=3D"http://python3-lru-dict_1.1.6.bb" rel=3D"noreferrer" target=3D"_=
blank">python3-lru-dict_1.1.6.bb</a><br>
<a href=3D"http://python3-pycrypto_2.6.1.bb" rel=3D"noreferrer" target=3D"_=
blank">python3-pycrypto_2.6.1.bb</a><br>
<a href=3D"http://python3-pyserial-asyncio_0.4.bb" rel=3D"noreferrer" targe=
t=3D"_blank">python3-pyserial-asyncio_0.4.<wbr>bb</a><br>
<a href=3D"http://python3-uvloop_0.8.0.bb" rel=3D"noreferrer" target=3D"_bl=
ank">python3-uvloop_0.8.0.bb</a><br>
<a href=3D"http://python3-yarl_0.11.0.bb" rel=3D"noreferrer" target=3D"_bla=
nk">python3-yarl_0.11.0.bb</a><br>
<br>
<a href=3D"http://python-cobs_1.1.3.bb" rel=3D"noreferrer" target=3D"_blank=
">python-cobs_1.1.3.bb</a><br>
<a href=3D"http://python-lru-dict_1.1.6.bb" rel=3D"noreferrer" target=3D"_b=
lank">python-lru-dict_1.1.6.bb</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Craig McQueen<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--f40304361f0c6951c7055818533f--
