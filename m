Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FCDEE00EB1; Mon, 12 Mar 2018 04:46:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCB4CE0084E
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 04:46:50 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id n128-v6so9381795ith.1
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 04:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ripr1JW1ipyHVQL8PiyxJWyIYnMxVBpnm0tuPmZE6/k=;
	b=QoCKJA2pqmbV6T8z6oYtsl5m6woKvdpsWhkbZRrXGqjmvhNSTJLwi288TOHBJ67WIA
	mIsoGJ3uq4s3WLRDIJUZ1FGWFrO3XZJUDbRPWOgp1dieYdAuSFVE+lhLdSNyoIsvCSFa
	qdccVYulCfKLGQ2nKJ9UR4cI8kQyU20cRQUPBK9A02tvIFxxPrln512X2bLjoFws2viQ
	KEtGr+fvpIZBwA6WHEwr7l8asmZ0WDfw74icnzENQmtAUgOvS0vQZEU8qoMh5aKiASg1
	pOdNq1CHNRYsxXjrDia7SkY7Z+E+eelJID2JFG8geY1z0JBtwkrrPgPviyAo3vmQkDPb
	AQwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ripr1JW1ipyHVQL8PiyxJWyIYnMxVBpnm0tuPmZE6/k=;
	b=Tcrz8dPbRw11S5l6YBowz0YITZqN/2h7Eeb540MhdD1bkgzzBwE8o5EXf5n7cFMBGp
	vAaui1ovZz4AccPb/4ZY78yKyUSHy69daFGVC6LVcb8l/ed+ga4K1OZBSGzkAFXdznxG
	6+WP3Io9KtZxqqctsKlHX7gOaW4UGInKya1cspHjizUPTz20a5LBiboyJ2n8HFoiKSrG
	khuY5tDCCg8/vxXqFPziiuU3zXsnkegEKWgR9GFTfSZvSsnQcMVjzxLMX9WMMSWVoScF
	NGIQcWzxdj6Uc2P7VBNTeLy1p0Iu2m0LQvq4N7Nmnyc1XeIjjae/qNHkbPow9jhN3YXF
	h/Dw==
X-Gm-Message-State: AElRT7HMFQTXLQ+ONqLB8ppArEC1BV2W4ebWR/gUb7eAMndMPkq34gAX
	X4XmgkB+xmJn0oEKbRdmbxt10a/KNS7yT6TkifiZ3Q==
X-Google-Smtp-Source: AG47ELt33XQYVyrR5yBXQ0Qti5iSuRIddNv+Bsppmn3iVDcTA/0V4f3m78FHBXS1vn6081IiozOeUiA0NdU15qBdL5M=
X-Received: by 10.36.36.144 with SMTP id f138mr7982096ita.131.1520855210337;
	Mon, 12 Mar 2018 04:46:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 12 Mar 2018 04:46:30 -0700 (PDT)
In-Reply-To: <trinity-c8e21961-54f9-4f14-993f-efbbd693c39e-1520854490908@3c-app-gmx-bs80>
References: <trinity-53cb1c50-6d60-491f-b325-6f30fd900d49-1520839936007@3c-app-gmx-bs80>
	<CAJTo0LaVH0xrRhEeKfb17pNzmFNnXjRxUnnPW=x7PAqBvhPd+Q@mail.gmail.com>
	<trinity-0bbdd579-574b-43bc-89e6-fd45fef799a3-1520850748905@3c-app-gmx-bs80>
	<CAJTo0Lbi8XVFboq-9j9+sKf5_MTh0-15Q=ezgnmRQCHrH+khwA@mail.gmail.com>
	<trinity-c8e21961-54f9-4f14-993f-efbbd693c39e-1520854490908@3c-app-gmx-bs80>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Mar 2018 11:46:30 +0000
Message-ID: <CAJTo0LYuU-p-Nf6WwLMu1dQvqubhoyqvxzyzSZP9Rn2PoFuSLg@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: O_RDONLY ... missed bits/fcntl.h not as expected
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
X-List-Received-Date: Mon, 12 Mar 2018 11:46:52 -0000
Content-Type: multipart/alternative; boundary="001a1147cd3091408a056735b207"

--001a1147cd3091408a056735b207
Content-Type: text/plain; charset="UTF-8"

On 12 March 2018 at 11:34, Arno Steffens <star@gmx.li> wrote:

> You are right,  the bits/fcntl-32.h at the very end has a
> #include <bits/fcntl-linux.h>
> But, all lines in <bits/fcntl.h> are greyed (not active), except these I
> noted as bold (below). So it not become active.
> I would assume __arm__ should be set by someone.
>
> It seems it is not a problem for the compiler, but for the Eclipse viewer
> to show the code.
> That is the problem here.  I try to set ARCH=arm at various places in
> eclipse. but id doesn't have an effect.
> Mhh.
>

gcc will be setting that.  If Eclipse is doing something wrong, then blame
eclipse.

gcc -dM -E - < /dev/null will list the preprocessor symbols that are
internally defined.

Ross

--001a1147cd3091408a056735b207
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 12 March 2018 at 11:34, Arno Steffens <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:star@gmx.li" target=3D"_blank">star@gmx.li</a>&gt;</=
span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-=
width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);paddin=
g-left:1ex"><div><div style=3D"font-family:Verdana;font-size:12px"><div>
<div>
<div>You are right,=C2=A0 the bits/fcntl-32.h at the very end has a</div>

<div>#include &lt;bits/fcntl-linux.h&gt;</div>
</div>

<div>But, all lines in &lt;bits/fcntl.h&gt; are greyed (not active), except=
 these I noted as bold (below). So it not become active.</div>

<div>I would assume __arm__ should be set by someone.<br>
=C2=A0</div>

<div>It seems it is not a problem for the compiler, but for the Eclipse vie=
wer to show the code.</div>

<div>
<div>That is the problem here.=C2=A0 I try to set ARCH=3Darm at various pla=
ces in eclipse. but id doesn&#39;t have an effect.</div>

<div>Mhh.</div></div></div></div></div></blockquote><div><br></div><div>gcc=
 will be setting that.=C2=A0 If Eclipse is doing something wrong, then blam=
e eclipse.</div><div><br></div><div>gcc -dM -E - &lt; /dev/null will list t=
he preprocessor symbols that are internally defined.<br></div><div><br></di=
v><div>Ross</div></div></div></div>

--001a1147cd3091408a056735b207--
