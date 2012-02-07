Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAF62E01353
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 08:06:10 -0800 (PST)
Received: by vcbfl13 with SMTP id fl13so6924723vcb.35
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2012 08:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VYJrgwCJgbU4mD/2lGNUXH8DwtDqOOAJx7nm+I/ln/c=;
	b=QvU8an/YSORhx8xMsdz1T5eo+dafFAremJ25KGTsqSaKUDphBhl/R7pdY19QsKzLcQ
	ShgHQcTXCGNVTxLPsVBBys4bYskCKR0qjnn8U9abx1CeazUOfSZytQfSTrTJgFc4357j
	0vBFQiBG3bnqBzCASwzTBTqmQsLcJRpLFFASQ=
MIME-Version: 1.0
Received: by 10.52.73.169 with SMTP id m9mr10691620vdv.95.1328630769962; Tue,
	07 Feb 2012 08:06:09 -0800 (PST)
Received: by 10.52.24.203 with HTTP; Tue, 7 Feb 2012 08:06:09 -0800 (PST)
In-Reply-To: <1328629778.2670.7.camel@elmorro>
References: <CADzUK1L76iErCF25c3jqSaz_040gzRHcXEb7fKBhr5HMtCYkAg@mail.gmail.com>
	<1328629778.2670.7.camel@elmorro>
Date: Tue, 7 Feb 2012 11:06:09 -0500
Message-ID: <CANFv2EmHChy+MB-Bnd01QTotUk86s-17XZy=7wOfXRY_cWg-KA@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Unable to fetch file://lib for package emgd in yoctyo 1.2 (aka M2)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Feb 2012 16:06:11 -0000
Content-Type: multipart/alternative; boundary=bcaec501640914cebc04b861f52d

--bcaec501640914cebc04b861f52d
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Feb 7, 2012 at 10:49 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:

> On Tue, 2012-02-07 at 10:12 -0500, autif khan wrote:
> > I am bitbaking core image sato for machine corwnbay (with the emgd
> > driver) and the emgd-driver-bin recipe seems to fail.
> >
> > Here is the error. I searched the archives, but could not find anything.
> >
> > Please advise.
>
> It looks like the problem may be forgetting to carry out the steps in
> section 'II. Special notes for building the meta-crownbay BSP layer' in
> the README.
>
> Note that this is no longer necessary if you use master - the
> emgd-driver-bin recipe has been upgraded to do the steps there
> automatically, which is now possible because it uses the LICENSE_FLAGS,
> but which does mean you need to set the LICENSE_FLAGS_WHITELIST as
> mentioned in the new README for crownbay in master.
>
I can confirm that using the master branch is the way to go to make this
easy.
I documented my test of it at :
https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_setup_Intel.C2.AE_Atom.E2.84.A2_Processor_E6xx_based_system_for_media_playback.3F

Jim

> Tom
>
> >
> > Here is the output for bitbake -b
> > /data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/
> emgd-driver-bin_1.8.bb
> >
> > NOTE: Running task 1 of 12 (ID: 4,
> > /data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/
> emgd-driver-bin_1.8.bb,
> > do_fetch)
> > NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Started
> > ERROR: Function 'Fetcher failure for URL: 'file://lib'. Unable to
> > fetch URL file://lib from any source.' failed
> > ERROR: Logfile of failure stored in:
> >
> /ssd/autif/M2/crb/tmp/work/core2-poky-linux/emgd-driver-bin-1.8-r8/temp/log.do_fetch.31621
> > Log data follows:
> > | DEBUG: Trying PREMIRRORS
> > | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['bzr',
> > '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> > '/sources/', '', '', {}]
> > | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['cvs',
> > '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> > '/sources/', '', '', {}]
> > | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['git',
> > '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> > '/sources/', '', '', {}]
> > | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['hg',
> > '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> > '/sources/', '', '', {}]
> > | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['osc',
> > '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> > '/sources/', '', '', {}]
> > | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['p4',
> > '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> > '/sources/', '', '', {}]
> > | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['svk',
> > '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> > '/sources/', '', '', {}]
> > | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['svn',
> > '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> > '/sources/', '', '', {}]
> > | DEBUG: Trying Upstream
> > | ERROR: Function 'Fetcher failure for URL: 'file://lib'. Unable to
> > fetch URL file://lib from any source.' failed
> > NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Failed
> > ERROR: Task 4
> (/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/
> emgd-driver-bin_1.8.bb,
> > do_fetch) failed with exit code '1'
> > ERROR:
> '/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/
> emgd-driver-bin_1.8.bb'
> > failed
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec501640914cebc04b861f52d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br>
<div class=3D"gmail_quote">On Tue, Feb 7, 2012 at 10:49 AM, Tom Zanussi <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@int=
el.com</a>&gt;</span> wrote:<br>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote">
<div class=3D"im">On Tue, 2012-02-07 at 10:12 -0500, autif khan wrote:<br>&=
gt; I am bitbaking core image sato for machine corwnbay (with the emgd<br>&=
gt; driver) and the emgd-driver-bin recipe seems to fail.<br>&gt;<br>&gt; H=
ere is the error. I searched the archives, but could not find anything.<br>
&gt;<br>&gt; Please advise.<br><br></div>It looks like the problem may be f=
orgetting to carry out the steps in<br>section &#39;II. Special notes for b=
uilding the meta-crownbay BSP layer&#39; in<br>the README.<br><br>Note that=
 this is no longer necessary if you use master - the<br>
emgd-driver-bin recipe has been upgraded to do the steps there<br>automatic=
ally, which is now possible because it uses the LICENSE_FLAGS,<br>but which=
 does mean you need to set the LICENSE_FLAGS_WHITELIST as<br>mentioned in t=
he new README for crownbay in master.<br>
</blockquote>
<div>I can confirm that using the master branch is the way to go to make th=
is easy.</div>
<div>I documented my test of it at :</div>
<div><a href=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_set=
up_Intel.C2.AE_Atom.E2.84.A2_Processor_E6xx_based_system_for_media_playback=
.3F">https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_setup_Intel.C2=
.AE_Atom.E2.84.A2_Processor_E6xx_based_system_for_media_playback.3F</a></di=
v>

<div>=A0</div>
<div>Jim <br></div>
<blockquote style=3D"BORDER-LEFT:#ccc 1px solid;MARGIN:0px 0px 0px 0.8ex;PA=
DDING-LEFT:1ex" class=3D"gmail_quote"><span class=3D"HOEnZb"><font color=3D=
"#888888">Tom<br></font></span>
<div class=3D"HOEnZb">
<div class=3D"h5"><br>&gt;<br>&gt; Here is the output for bitbake -b<br>&gt=
; /data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/<a=
 href=3D"http://emgd-driver-bin_1.8.bb/" target=3D"_blank">emgd-driver-bin_=
1.8.bb</a><br>
&gt;<br>&gt; NOTE: Running task 1 of 12 (ID: 4,<br>&gt; /data/autif/yocto/p=
oky/meta-intel/common/recipes-graphics/xorg-xserver/<a href=3D"http://emgd-=
driver-bin_1.8.bb/" target=3D"_blank">emgd-driver-bin_1.8.bb</a>,<br>&gt; d=
o_fetch)<br>
&gt; NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Started<br>&gt; E=
RROR: Function &#39;Fetcher failure for URL: &#39;file://lib&#39;. Unable t=
o<br>&gt; fetch URL file://lib from any source.&#39; failed<br>&gt; ERROR: =
Logfile of failure stored in:<br>
&gt; /ssd/autif/M2/crb/tmp/work/core2-poky-linux/emgd-driver-bin-1.8-r8/tem=
p/log.do_fetch.31621<br>&gt; Log data follows:<br>&gt; | DEBUG: Trying PREM=
IRRORS<br>&gt; | DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;lib&#39;,=
 &#39;&#39;, &#39;&#39;, {}] comparing [&#39;bzr&#39;,<br>
&gt; &#39;.*&#39;, &#39;/.*&#39;, &#39;&#39;, &#39;&#39;, {}] to [&#39;http=
&#39;, &#39;<a href=3D"http://autobuilder.yoctoproject.org/" target=3D"_bla=
nk">autobuilder.yoctoproject.org</a>&#39;,<br>&gt; &#39;/sources/&#39;, &#3=
9;&#39;, &#39;&#39;, {}]<br>
&gt; | DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#39;lib&#39;, &#39;&#39=
;, &#39;&#39;, {}] comparing [&#39;cvs&#39;,<br>&gt; &#39;.*&#39;, &#39;/.*=
&#39;, &#39;&#39;, &#39;&#39;, {}] to [&#39;http&#39;, &#39;<a href=3D"http=
://autobuilder.yoctoproject.org/" target=3D"_blank">autobuilder.yoctoprojec=
t.org</a>&#39;,<br>
&gt; &#39;/sources/&#39;, &#39;&#39;, &#39;&#39;, {}]<br>&gt; | DEBUG: For =
url [&#39;file&#39;, &#39;&#39;, &#39;lib&#39;, &#39;&#39;, &#39;&#39;, {}]=
 comparing [&#39;git&#39;,<br>&gt; &#39;.*&#39;, &#39;/.*&#39;, &#39;&#39;,=
 &#39;&#39;, {}] to [&#39;http&#39;, &#39;<a href=3D"http://autobuilder.yoc=
toproject.org/" target=3D"_blank">autobuilder.yoctoproject.org</a>&#39;,<br=
>
&gt; &#39;/sources/&#39;, &#39;&#39;, &#39;&#39;, {}]<br>&gt; | DEBUG: For =
url [&#39;file&#39;, &#39;&#39;, &#39;lib&#39;, &#39;&#39;, &#39;&#39;, {}]=
 comparing [&#39;hg&#39;,<br>&gt; &#39;.*&#39;, &#39;/.*&#39;, &#39;&#39;, =
&#39;&#39;, {}] to [&#39;http&#39;, &#39;<a href=3D"http://autobuilder.yoct=
oproject.org/" target=3D"_blank">autobuilder.yoctoproject.org</a>&#39;,<br>
&gt; &#39;/sources/&#39;, &#39;&#39;, &#39;&#39;, {}]<br>&gt; | DEBUG: For =
url [&#39;file&#39;, &#39;&#39;, &#39;lib&#39;, &#39;&#39;, &#39;&#39;, {}]=
 comparing [&#39;osc&#39;,<br>&gt; &#39;.*&#39;, &#39;/.*&#39;, &#39;&#39;,=
 &#39;&#39;, {}] to [&#39;http&#39;, &#39;<a href=3D"http://autobuilder.yoc=
toproject.org/" target=3D"_blank">autobuilder.yoctoproject.org</a>&#39;,<br=
>
&gt; &#39;/sources/&#39;, &#39;&#39;, &#39;&#39;, {}]<br>&gt; | DEBUG: For =
url [&#39;file&#39;, &#39;&#39;, &#39;lib&#39;, &#39;&#39;, &#39;&#39;, {}]=
 comparing [&#39;p4&#39;,<br>&gt; &#39;.*&#39;, &#39;/.*&#39;, &#39;&#39;, =
&#39;&#39;, {}] to [&#39;http&#39;, &#39;<a href=3D"http://autobuilder.yoct=
oproject.org/" target=3D"_blank">autobuilder.yoctoproject.org</a>&#39;,<br>
&gt; &#39;/sources/&#39;, &#39;&#39;, &#39;&#39;, {}]<br>&gt; | DEBUG: For =
url [&#39;file&#39;, &#39;&#39;, &#39;lib&#39;, &#39;&#39;, &#39;&#39;, {}]=
 comparing [&#39;svk&#39;,<br>&gt; &#39;.*&#39;, &#39;/.*&#39;, &#39;&#39;,=
 &#39;&#39;, {}] to [&#39;http&#39;, &#39;<a href=3D"http://autobuilder.yoc=
toproject.org/" target=3D"_blank">autobuilder.yoctoproject.org</a>&#39;,<br=
>
&gt; &#39;/sources/&#39;, &#39;&#39;, &#39;&#39;, {}]<br>&gt; | DEBUG: For =
url [&#39;file&#39;, &#39;&#39;, &#39;lib&#39;, &#39;&#39;, &#39;&#39;, {}]=
 comparing [&#39;svn&#39;,<br>&gt; &#39;.*&#39;, &#39;/.*&#39;, &#39;&#39;,=
 &#39;&#39;, {}] to [&#39;http&#39;, &#39;<a href=3D"http://autobuilder.yoc=
toproject.org/" target=3D"_blank">autobuilder.yoctoproject.org</a>&#39;,<br=
>
&gt; &#39;/sources/&#39;, &#39;&#39;, &#39;&#39;, {}]<br>&gt; | DEBUG: Tryi=
ng Upstream<br>&gt; | ERROR: Function &#39;Fetcher failure for URL: &#39;fi=
le://lib&#39;. Unable to<br>&gt; fetch URL file://lib from any source.&#39;=
 failed<br>
&gt; NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Failed<br>&gt; ER=
ROR: Task 4 (/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg=
-xserver/<a href=3D"http://emgd-driver-bin_1.8.bb/" target=3D"_blank">emgd-=
driver-bin_1.8.bb</a>,<br>
&gt; do_fetch) failed with exit code &#39;1&#39;<br>&gt; ERROR: &#39;/data/=
autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/<a href=3D=
"http://emgd-driver-bin_1.8.bb/" target=3D"_blank">emgd-driver-bin_1.8.bb</=
a>&#39;<br>
&gt; failed<br>&gt; _______________________________________________<br>&gt;=
 yocto mailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto=
@yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoctoproject.org/lis=
tinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
<br><br>_______________________________________________<br>yocto mailing li=
st<br><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><=
br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bla=
nk">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br>

--bcaec501640914cebc04b861f52d--
