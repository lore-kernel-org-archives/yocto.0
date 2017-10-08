Return-Path: <eliya.mir@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C275E00CCC; Sun,  8 Oct 2017 08:00:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eliya.mir[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 547EDE00B83
	for <yocto@yoctoproject.org>; Sun,  8 Oct 2017 08:00:14 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id a132so16718824lfa.7
	for <yocto@yoctoproject.org>; Sun, 08 Oct 2017 08:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=G1cTkln771DHw8K2D69CJaKclRaTUGom9C5i+e8e0vc=;
	b=BFCsdkiKZ3mu5N8ZuEp6pFk8eNp5gPl+fs3k2vz9CGznOmBsNcNDqDghvjXNncOaTS
	rbCjJ3dvLJddoyLmuRDwu55RlZB2ujgKJedgLcEETCJ4p+qWk+if38SpWzNx/ibQIwo/
	3ZttcqjYfXefO7f6bSBJDn6xKWc0of6Qa0EZnVWyudtj+3cXGxpeIrI/xmiV5sjeyGxr
	MLAp+MWsSrm8fjgk8VZeT/QzcDjyFpC1oz+eoL50EBsROGAIJPblKK41kLscgFAdEvCg
	UT4daTJy5qU3zO1zcE2o9v2jT8/ERKpHugx5C0ChbcwVrnLRlL2El64ZhiF6SdGa5AIv
	KTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=G1cTkln771DHw8K2D69CJaKclRaTUGom9C5i+e8e0vc=;
	b=UkydZWiDDtZkRU+RLaxJP0L+X5DYFN2rBpifudXrUHED78n+cp4isTdvktVh7mq1lJ
	YYLF5cryvDKi2g/Lko+YO+w0ngoQyNcwSR2zAjei+hPjCZKBPJ9KC83Wlx2Xvktnqrq+
	AVt6qnPFh6wXVyRRImeZDrOUT/f+yzh68kfxFcZhL6s28TIfqM/MtC9BNjZOpAfnLFoC
	yfLRUfgEondrSo0gz9c6JpSwlNJDRQSrxI5FYuNQSCGPuzOuLO6xWd1YrYVmEbNHOW/l
	HUIa2hVzZHJIdQAOhPtrsbBgll8InK6MUuBpMEGmxtVjPmfnxuyeSi4modqiQyWiikMO
	/MNQ==
X-Gm-Message-State: AMCzsaUDh3F3XXuWdJp/GFdSRNmenpaouK5d4+gCqkHl6BwMv2E2gVMv
	+wiQ7SBrdCbrMZWKJojDS1CMRlg2T7VARUC+92s=
X-Google-Smtp-Source: AOwi7QB2FF51d0InMzISVyS4P7H4iwk0CfnXk34vYTd5C2raXEiJFmkavQS94jCHuF5cHhhc1REOg6kiRZugqhZVKhA=
X-Received: by 10.25.234.195 with SMTP id y64mr2714191lfi.36.1507474813991;
	Sun, 08 Oct 2017 08:00:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.41.17 with HTTP; Sun, 8 Oct 2017 08:00:13 -0700 (PDT)
In-Reply-To: <CAJTo0La6bfnz28+LWCHnVixYiQ4muFOQ_BhvBxVghKkKB6N1sg@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
	<CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
	<CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
	<CAJTo0LZfoa1yA9kcsC4rnBMmOfB0QB1fU3eqVUg+EayTAwjZVQ@mail.gmail.com>
	<CADS9r7=vrThVxzq5uvy19C4eH+mGvG52V9cz3FwKvvBeOdkbLQ@mail.gmail.com>
	<CAJTo0Lb2p7BwAkheq1Cuh2kkfjNuFoi7Dhj7_opLGa5Th-VaXA@mail.gmail.com>
	<CADS9r7=SVFvLh_ato9mR74Jr_BMUMrqAOAd+5vsDk2GMXCfaOw@mail.gmail.com>
	<CAJTo0La6bfnz28+LWCHnVixYiQ4muFOQ_BhvBxVghKkKB6N1sg@mail.gmail.com>
From: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Date: Sun, 8 Oct 2017 18:00:13 +0300
Message-ID: <CADS9r7mnOeMHoQfVxv4D08-_t1rcPSP8-1RjufNW9bqeRaoevQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailman-Approved-At: Tue, 10 Oct 2017 11:53:50 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pkg-config search directories
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
X-List-Received-Date: Sun, 08 Oct 2017 15:00:16 -0000
Content-Type: multipart/alternative; boundary="94eb2c0dbf16cbbf6c055b0a548e"

--94eb2c0dbf16cbbf6c055b0a548e
Content-Type: text/plain; charset="UTF-8"

Hi Ross,
I am still trying to configure pkg-config.

Running bitbake glmark2 recipe results with an error :
Checking for 'gl'                        : not found.

looking into the log file :
Checking for 'gl'
['/home/wzbwjj/vpm/GR_Yocto/build/tmp/sysroots/x86_64-linux/usr/bin/pkg-config',
'gl', '--cflags', '--libs']
err: Package gl was not found in the pkg-config search path.
Perhaps you should add the directory containing `gl.pc'
to the PKG_CONFIG_PATH environment variable
No package 'gl' found

not found
from
/home/wzbwjj/vpm/GR_Yocto/build/tmp/work/corei7-64-poky-linux/glmark2/2014.03+AUTOINC+fa71af2dfa-r0/git:
The configuration failed


Thanks!



On Tue, Oct 3, 2017 at 6:40 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 3 October 2017 at 16:36, eliya.mir@gmail.com <eliya.mir@gmail.com>
> wrote:
>
>> Thanks Ross,
>> That is the issue : default pkg-config does not search host paths - How
>> to edit its search paths ?
>>
>
> "If you *really* want to link against host binaries and not building your
> own native recipes for it then see qemu.inc for an example of how to steal
> the host pkg-config path and use it at configure time."
>
> Ross
>

--94eb2c0dbf16cbbf6c055b0a548e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,=C2=A0<br>I am still trying to configure pkg-confi=
g.=C2=A0<div><br></div><div>Running bitbake glmark2 recipe results with an =
error :=C2=A0=C2=A0</div><div>Checking for &#39;gl&#39;=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : not found=
.</div><div><br></div><div>looking into the log file :=C2=A0</div><div><div=
>Checking for &#39;gl&#39;</div><div>[&#39;/home/wzbwjj/vpm/GR_Yocto/build/=
tmp/sysroots/x86_64-linux/usr/bin/pkg-config&#39;, &#39;gl&#39;, &#39;--cfl=
ags&#39;, &#39;--libs&#39;]</div><div>err: Package gl was not found in the =
pkg-config search path.</div><div>Perhaps you should add the directory cont=
aining `gl.pc&#39;</div><div>to the PKG_CONFIG_PATH environment variable</d=
iv><div>No package &#39;gl&#39; found</div><div><br></div><div>not found</d=
iv><div>from /home/wzbwjj/vpm/GR_Yocto/build/tmp/work/corei7-64-poky-linux/=
glmark2/2014.03+AUTOINC+fa71af2dfa-r0/git: The configuration failed</div></=
div><div><br></div><div><br></div><div>Thanks!</div><div><br></div><div><br=
></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On T=
ue, Oct 3, 2017 at 6:40 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span cl=
ass=3D"">On 3 October 2017 at 16:36, <a href=3D"mailto:eliya.mir@gmail.com"=
 target=3D"_blank">eliya.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D=
"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya.mir@gmail.com</a>&gt;<=
/span> wrote:<br></span><div class=3D"gmail_extra"><div class=3D"gmail_quot=
e"><span class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-colo=
r:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks Ross,=C2=A0<br=
><div>That is the issue : default pkg-config does not search host paths - H=
ow to edit its search paths ?=C2=A0</div></div></blockquote><div><br></div>=
</span><span class=3D""><div>&quot;<span style=3D"font-size:12.800000190734=
863px">If you *really* want to link against host binaries and not building =
your own native recipes for it then see qemu.inc for an example of how to s=
teal the host pkg-config path and use it at configure time.&quot;</span></d=
iv><div><span style=3D"font-size:12.800000190734863px"><br></span></div><di=
v><span style=3D"font-size:12.800000190734863px">Ross</span></div></span></=
div></div></div>
</blockquote></div><br></div>

--94eb2c0dbf16cbbf6c055b0a548e--
