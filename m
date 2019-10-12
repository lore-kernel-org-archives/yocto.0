Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A30F1E00CB9; Fri, 11 Oct 2019 19:50:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D2AE00CB9
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 19:50:11 -0700 (PDT)
Received: by mail-lf1-f67.google.com with SMTP id u3so8308672lfl.10
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2019 19:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=aQxANm7nuSw9d3XG/qDFTAMd8csb3L33aL6UNGSKetE=;
	b=jBEaQuQrX7KsyeXCdar8jWuHi7wigqrns92TzVmyWlJo+eon0A/zU3NJFm+rkbM9ps
	g3QUxSn7DozJsF9JU7TXRkF5+fbgp45cS9qKq/FM1cGOSdQY47lxPyZxajrrMbgGcHAA
	3BaslPC0BltNQjwVLRjeTHeneNlqEE5HkUi4Tq8Mr6XlDEgHh3ZR/F3xuq98NWbkmypp
	9FznRhDp3myl2pgrVW46lpvEjU2s7COk8IEdV2++CYWc6B/xVVU7kuvwgmEukfHFZhhk
	a0rUQOVUPmcLUxbOTEbTmuwgjfgpgg0UU2TpPQaFpJo4oWgh1CPICx4iFnW6ivStSXd5
	kTnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=aQxANm7nuSw9d3XG/qDFTAMd8csb3L33aL6UNGSKetE=;
	b=glhd12B4kaXbTi4rqEqd03d19X/YSFCx97GjohNy7CLZuoTESp3dSsnKC0opDIvA/J
	q+J2mcpPefRN7cZekts4gYgJJqFTtc2g3jQupNVsQhA/Nsb0C6YzHRpt9Q7Pg97ipTxN
	e+h56vhJForfmiTLrbOm6gcY/SO8IyU7wWdozQmtY/SGlu4w4xOBz/4qbwxrKbzJmIip
	tOLwoG92YLCjC4ScDondVMmwaoe5B1U3RR/Z76WHfJU2lSleYghdcL0/Ws7NFaV8zm/I
	Juvoh1KGb+6cl4YEBaUvk5iKu339q3daQHA2PDXW8u465so5waMpalEQ/7XfPjZNXe5b
	Lt1g==
X-Gm-Message-State: APjAAAVGhjaMp+p/G7HIQ5wy4yS4XhwXEQiovf1SIbTd1DrxDluz08cl
	vBGjksTc+Y8FhCofCcnUsEHFa0uO3+ATg4SO2/M=
X-Google-Smtp-Source: APXvYqzcupffDu1jfbHDjC4jp5ntXLxxIDRDe4iNDbrF3mGWUoq1tgCQNylN6UEUI2KeUV9XWxddVx2ztVfutgGYSMg=
X-Received: by 2002:ac2:5df0:: with SMTP id z16mr2778186lfq.36.1570848610841; 
	Fri, 11 Oct 2019 19:50:10 -0700 (PDT)
MIME-Version: 1.0
References: <VI1PR01MB51679F138D5E050A2965463688950@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
	<VI1PR01MB51672CA4E502C3442E23AFD888970@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
In-Reply-To: <VI1PR01MB51672CA4E502C3442E23AFD888970@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 11 Oct 2019 22:49:59 -0400
Message-ID: <CADkTA4NXzfpVUeuDTWNeZK8vNipN_=wdzyvUTsYE1+_mwcOB1g@mail.gmail.com>
To: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel patches pulled from BSP definition file are not applied
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
X-List-Received-Date: Sat, 12 Oct 2019 02:50:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 11, 2019 at 1:11 PM Diego Santa Cruz
<Diego.SantaCruz@spinetix.com> wrote:
>
> Hi,
>
>
>
> I have not received any feedback on the below email and I am not sure I a=
m doing the right thing.
>
>
>
> Can anyone provide some advice as to what would be the recommended way to=
 apply kernel patches listed in a mybsp-patches.scc file for a BSP?
>

The way to do this, is to put your BSP definition file on the SRC_URI,
and if you are including the standard/ktype or any of the other common
kernel meta data files, you need to inhibit any included meta data
from adding patches to the patch queue (since they are already applied
to the kernel).

As an example, here's a 'myqemux86-64.scc' file that I use as a test:

---------------
define KMACHINE myqemux86-64
define KARCH x86
define KTYPE standard

include ktypes/standard.scc nopatch

patch foo.patch
-------------

When that is on the SRC_URI, it will be found as the BSP definition,
and you'll get "foo.patch" in the patch queue .. but importantly *not*
all of the patches that make up the ktypes/standard.scc (and
includes). If you aren't using linux-yocto, or you aren't building on
top of a kernel repository with integrated patches, then don't add the
'nopatch', since you'd want any found patches to be applied at build
time.

I thought we had documented the nopatch directive in the yocto mega
manual, but I just checked the kernel meta data section and I don't
see it. I'll follow up and try to figure out where that documentation
went ... and get it added if it is missing.

Out of curiosity, how were you getting your BSP definition to be
located by the do_metadata function (there are a few different ways) ?
(since you need at least one .scc file or kernel-meta structure on the
SRC_URI to get it added to the search path).  If you were adding it to
the SRC_URI directly and the patches weren't being applied, then
that's a bug.

A short description of what is happening behind the scenes. The kernel
meta-data is used in two ways: to construct a new kernel repo from
scratch (i.e. when I start a new reference kernel version, or when
building on top of a non integrated repository) and to construct a
configuration for the kernel. Patches and config data are kept
together, so everything you need for a feature is in one place. When
you are building, the meta data gathering routine is running in that
2nd mode. Hence why the BSP definition is not used for patching, but
is only used to generate the configuration queue. Only elements on the
SRC_URI are always added to the patch queue .. since those patches are
not already applied to the base repo (and if they are, you shouldn't
have them on the SRC_URI and you'll get a patch error) .. There's even
a longer winded explanation about how the original build processing
attempted to detected which patches weren't already applied ... and
was horribly complex and fragile, hence why the simpler/split
processing I described is used.

Let me know if that tweak doesn't work (and if you can, supply your
BSP definition / layer) .. since there may be a bug (see my comment on
what you had on your SRC_URI above and how your bsp definition was
being located).

Cheers,

Bruce

>
>
> Adding the =E2=80=9Cmybsp-patches.scc=E2=80=9D file to KERNEL_FEATURES wo=
rks for me, but seems a bit awkward given that there is a BSP definition sc=
c file. It feels more natural to include the mybsp-patches.scc from the BSP=
 definition scc file, but  that does not work for me, the patches are ignor=
ed.
>
>
>
> Thanks,
>
>
>
> Diego
>
> --
> Diego Santa Cruz, PhD
> Technology Architect
> T +41 21 341 15 50
> diego.santacruz@spinetix.com
> spinetix.com
>
>
>
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> On =
Behalf Of Diego Santa Cruz
> Sent: 09 October 2019 23:58
> To: yocto@yoctoproject.org
> Subject: [yocto] Kernel patches pulled from BSP definition file are not a=
pplied
>
>
>
> Hello there,
>
>
>
> I am trying to add a few BSP specific kernel patches for my BSP and I wan=
ted to pull them from the BSP definition scc file. However, I cannot get th=
ose patches applied (I am using thud). After looking around the kernel-yoct=
o.bbclass it seems that patches which get pulled from the BSP definition fi=
le are ignored. What is the rationale behind that behavior? How should I go=
 about it?
>
>
>
> To be more specific I have the following structure within my (recipe-spac=
e) kernel metadata.
>
>
>
> bsp
>
> `-- mybsp
>
>     |-- mypatch.patch
>
>     |-- mybsp.cfg
>
>     |-- msbsp.scc
>
>     `-- mybsp-standard.scc
>
>
>
> The mybsp-standard.scc is the BSP definition file, which includes mybsp.s=
cc (among other things). The mybsp.scc file looks as follows
>
>
>
> kconf hardware mybsp.cfg
>
> patch mypatch.patch
>
>
>
> The mypatch.patch file does not get applied when building the kernel, I c=
hecked and it is not added to the patch.queue file. But if I add the follow=
ing to the recipe
>
>
>
> KERNEL_FEATURES +=3D " bsp/mybsp/mybsp.scc"
>
>
>
> Then the patch is added to patch.queue and is applied.
>
>
>
> Looking into do_kernel_metadata in kernel-yocto.bbclass it parses the scc=
 files in two steps, run1 and run2.
>
>
>
> The run1 step uses elements=3D"`echo -n ${bsp_definition} ${sccs} ${patch=
es} ${KERNEL_FEATURES}`" and generates cfg, merge and meta, so that picks u=
p the mybsp.scc file contents, but this step does not generate the patch qu=
eue.
>
>
>
> The run2 step uses elements=3D"`echo -n ${sccs} ${patches} ${KERNEL_FEATU=
RES}`" and generates the patch queue, but this only includes the scc files =
in SRC_URI and KERNEL_FEATURES, but specifically leaves out the BSP definit=
ion file.
>
>
>
> Adding the mybsp.scc file to KERNEL_FEATURES to get this to work seems a =
bit odd. What is the recommended way of applying BSP specific kernel patche=
s?
>
>
>
> Thanks,
>
>
>
> Diego
>
> --
> Diego Santa Cruz, PhD
> Technology Architect
> spinetix.com
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

