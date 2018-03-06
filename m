Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 428B2E00E79; Tue,  6 Mar 2018 12:46:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70ED1E00E66
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 12:46:31 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id f1so495682iob.0
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 12:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zANmYOZmlezDCeO7EeWQwbCRzBHA1N8/Rq+GNHPMPsc=;
	b=PrtsNRYYYJfYDCPW2EjeUzOwTMZpxG4sh6woRgYskwqGywl6Qsg8WgRHSX3o58O86Y
	jj3BdxGwiBY+MBPgqzsfvJzOCbt3D5+LI+kEc1YUtj37Q0j8FX3Lmh8zZDa4BcTD3xbs
	PwJ16JQTGNG8jyeTN0ATBF9XzpynOSZY4St91rBh8tFRHoweM/9o+MDql6mtENsiDqVf
	ddP3b7RjNfK2bMDbZIbh2kIeFQtRbrMcy9XzI5eZJ+lOfctMJ1MHlNw82/LwiAZmDwst
	Cc/Coh5RYNhcY/VZ10Y1G5prekW0fkMDSLZdO/S1ZByO1HjVjpCULCTAQj6TsxC3O1mT
	mlMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zANmYOZmlezDCeO7EeWQwbCRzBHA1N8/Rq+GNHPMPsc=;
	b=k87UqBxvf29cDXNdOamU+hrTP7j03nmZrjPlw9W7GztCoZMFZlqmA5V21OwIcwLILP
	IzHmBtVpXDWww7a+TRwZOF+VMRN2iKr2gSC3ovI55Qu5ZvhOYy64JLX7QLPHtqsi7OVN
	JHs9/6mYYJMZBUunf2kOT1xCrU6MzSsETSnYIEn5iFk7Z31l3A/M411hv8akEtLe77o6
	15CqwCbkoFGwV6e50su+KZLJxyXxDkInvm4OzD89MLeaJpesEYDfVPLFkpaWkzQ4yOm+
	lt5KvmdrvBugydUO/Brsk6hp/d7y6g0JrrZoAbmBjBTO52+kl6/j/N2DyYpyMl1HbNcj
	TS5g==
X-Gm-Message-State: APf1xPDrjxV3fGHxqWGROHxtpcy/marhLwdKY9/4ZkQDnuA7N/wramcD
	Y4vJr4NYkP2kkjkjDMITYIRKofAQy8X5a8Ib8k8=
X-Google-Smtp-Source: AG47ELtF+tHdVnC/a6ANFD/IGnDLTWL083vZGRUJ5YndcpCgrTMazVmLVkL73DxYgBH0Oit4+vGFgwSOqPF/r9DBSXQ=
X-Received: by 10.107.133.42 with SMTP id h42mr22836923iod.227.1520369191419; 
	Tue, 06 Mar 2018 12:46:31 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
	<CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 20:46:19 +0000
Message-ID: <CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 20:46:33 -0000
Content-Type: multipart/alternative; boundary="001a113ffde09504e80566c48907"

--001a113ffde09504e80566c48907
Content-Type: text/plain; charset="UTF-8"

Great. So when I have this recipe set up -- how do I make sure, or tell
other people who write a recipe depending on this -- how to find a header
file built by it?

Specifically, I see this header file in a (non-standard?) location which is
normally linked by others:

|  #include <open62541.h>

and this header file is at ${B}/open62541.h
(tmp/work/aarch64-poky-linux/open62541/0.3-r0/build/open62541.h). Is this
something that I just handle with a `do_install_append()` line? The
documentation here
https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html isn't
very clear to me.

e.g. for another recipe that just adds "open62541" in it's DEPENDS.

Giordon

On Tue, Mar 6, 2018 at 2:32 PM Burton, Ross <ross.burton@intel.com> wrote:

> On 6 March 2018 at 20:24, Giordon Stark <kratsg@gmail.com> wrote:
>
>> You can drop the S assignment as that is the default value.
>>>
>>
>> Didn't realize, neat. I knew I needed to set it for `git` clones since it
>> always throws it into a ${WORKDIR}/git folder.
>>
>
> Yes, for git clones you need to override it.
>
>
>>
>>> Github /archive/ tarballs can and do change over time, which gets very
>>> annoying when you need to go and change the checksums.
>>>
>>
>> Really? Dang...
>>
>
> Yeah. :/  Took us ages to verify this happens but it definitely does.
>
>
>> My hunch without reading the upstream CMake files is that they don't
>>> support out-of-tree builds.  If it worked from git then that's another
>>> reason to switch back.
>>>
>>
>> It seems like this is the case here. I'm ok using git clones for now.
>> Thanks.
>>
>
> It *shouldn't* matter here as the /archive/ tarball should have identical
> contents to a clone of the same tag, but it's possible that the build
> system looks for a .git/ directory and changes how it builds.  That's kind
> of stupid but it wouldn't be the first time I've seen it break builds.
>
> Ross
>
-- 
Giordon Stark

--001a113ffde09504e80566c48907
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Great. So when I have this recipe set up -- how do I make =
sure, or tell other people who write a recipe depending on this -- how to f=
ind a header file built by it?<div><br></div><div>Specifically, I see this =
header file in a (non-standard?) location which is normally linked by other=
s:</div><div><br></div><div><div>|=C2=A0 #include &lt;open62541.h&gt;</div>=
</div><div><br></div><div>and this header file is at <font face=3D"monospac=
e">${B}/open62541.h (tmp/work/aarch64-poky-linux/open62541/0.3-r0/build/ope=
n62541.h)</font>. Is this something that I just handle with a `do_install_a=
ppend()` line? The documentation here=C2=A0<a href=3D"https://www.yoctoproj=
ect.org/docs/current/dev-manual/dev-manual.html">https://www.yoctoproject.o=
rg/docs/current/dev-manual/dev-manual.html</a>=C2=A0isn&#39;t very clear to=
 me.</div><div><br></div><div>e.g. for another recipe that just adds &quot;=
<font face=3D"monospace">open62541</font>&quot; in it&#39;s <font face=3D"m=
onospace">DEPENDS</font>.</div><div><br></div><div>Giordon</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, Mar 6, 2018 at 2:32 PM B=
urton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>On 6 March 2018 at 20:24, Giordon Stark <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt;</span> w=
rote:<br></div><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gm=
ail_quote"><span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><div>You can drop the S assignm=
ent as that is the default value.</div></div></div></div></blockquote><div>=
<br></div></span><div>Didn&#39;t realize, neat. I knew I needed to set it f=
or `git` clones since it always throws it into a ${WORKDIR}/git folder.</di=
v></div></div></blockquote><div><br></div></div></div></div><div dir=3D"ltr=
"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div>Yes, for git c=
lones you need to override it.</div></div></div></div><div dir=3D"ltr"><div=
 class=3D"gmail_extra"><div class=3D"gmail_quote"><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><span><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote"><div><br></div><div>Github /archive/ tarballs can =
and do change over time, which gets very annoying when you need to go and c=
hange the checksums.</div></div></div></div></blockquote><div><br></div></s=
pan><div>Really? Dang...</div></div></div></blockquote><div><br></div></div=
></div></div><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmai=
l_quote"><div>Yeah. :/ =C2=A0Took us ages to verify this happens but it def=
initely does.</div></div></div></div><div dir=3D"ltr"><div class=3D"gmail_e=
xtra"><div class=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><span><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><div>My hunch without reading the upstream CMake files is that th=
ey don&#39;t support out-of-tree builds.=C2=A0 If it worked from git then t=
hat&#39;s another reason to switch back.=C2=A0</div></div></div></div></blo=
ckquote><div><br></div></span><div>It seems like this is the case here. I&#=
39;m ok using git clones for now. Thanks.</div></div></div></blockquote><di=
v><br></div></div></div></div><div dir=3D"ltr"><div class=3D"gmail_extra"><=
div class=3D"gmail_quote"><div>It *shouldn&#39;t* matter here as the /archi=
ve/ tarball should have identical contents to a clone of the same tag, but =
it&#39;s possible that the build system looks for a .git/ directory and cha=
nges how it builds.=C2=A0 That&#39;s kind of stupid but it wouldn&#39;t be =
the first time I&#39;ve seen it break builds.</div></div></div></div><div d=
ir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div><br><=
/div><div>Ross</div></div></div></div></blockquote></div>-- <br><div dir=3D=
"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">Giordon Stark</div></div>

--001a113ffde09504e80566c48907--
