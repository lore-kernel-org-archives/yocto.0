Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 734F6E00D32; Tue, 26 Sep 2017 15:15:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FC21E00D2A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 15:15:38 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id 85so4549336ith.2
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 15:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=M0ZJpQgck4RIn+Fa3SP2+bn3QpAlu7ztW8AUP51kG6I=;
	b=KfEH/Nb8BPrePJWIWaoHtWTzoKNxuJXJ+fs7n3NqkucrHhx8rab5wFstrcimyeAKgX
	bxBHi0evhnxPC+ecHpFoiGn5NTefSO9PSQb78VY57BX/Tnbo2SppCvIhCAY3yrORB84+
	ZVr/3ZG50t+OX5BkI6Yp4yTBlfytf2SUTNpBx2SeThi+Dt/h/nWs5UPCKHloKIiq+TYm
	sFqq3zbF/qFBEMaqjr6Dz/9iq8B++BjSh8VCitp8vQhfSRXbqbvP/29D8fpfJIGAwneT
	3cVfn+2FmQAKOE3lIOnB3Qd1RuMV3ODm6xKwPzEDik2ib1ofNtD6bZT25eDmGyp/vvNG
	++6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=M0ZJpQgck4RIn+Fa3SP2+bn3QpAlu7ztW8AUP51kG6I=;
	b=hd+dREjibOMmkTYzI9o2M8dZWxG5WxUH53MmLMusEwswNCq97i7F1JcoW79/MUzQhB
	PCZ9Be/mYg6o5lwm61IYTv7HELQEEzvmSd31iyRWQrBS5OQ0+4icoPgw53x45uEOXStO
	AwumEoDfkZwY92Ff0gvjEmbmA+bVGgLn1p1D/+k8gBc1hTIRZUIbMygZC/PRcPDIslSQ
	Gc7lGuRp4Yvbkhyf7CPCZyfpJDTkgNRoCmNOGboNhQLE5X1xO/g9f3Qw/JAgYcRQRONL
	jYI5qaGGsrmsfUBqZAlGRLNYuiJvotl1Mr9Ze3XWboiEAA+Z9I0PknkTa8LvDzwbQD7q
	h0Iw==
X-Gm-Message-State: AHPjjUgseC/h5Cmaor/BgOopadXNkoKG0xrFXd/j5IMedReiA5WwZhfw
	e+aWEleFpif4JdxBoVuWKMjXwN9NHIs53JJ2dR3ZCA==
X-Google-Smtp-Source: AOwi7QAxcn5PlxmjEHTylsXSEKNT+21sWx255L7bMCTvN0RSc0G07bEBKlt5eacVTSEkSaxttDhlij0mwcPa/Wkv6bA=
X-Received: by 10.36.162.67 with SMTP id o3mr8973406iti.27.1506464137659; Tue,
	26 Sep 2017 15:15:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Tue, 26 Sep 2017 15:15:17 -0700 (PDT)
In-Reply-To: <DM5PR05MB29543B944CF11354749DE3C6BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAJTo0LYWJFAChPkcOeU4ESOzCZ0XkrVswRnsh7jz=4QnKZ6uWA@mail.gmail.com>
	<DM5PR05MB29543B944CF11354749DE3C6BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Sep 2017 23:15:17 +0100
Message-ID: <CAJTo0LZ3+prEXi4eJH-0qcg_mp7CShyVzGg2=nY3c3s585CQ9A@mail.gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Tue, 26 Sep 2017 22:15:39 -0000
Content-Type: multipart/alternative; boundary="f403045fb2a2caf10a055a1f0384"

--f403045fb2a2caf10a055a1f0384
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 26 September 2017 at 22:01, Bryan Evenson <bevenson@melinkcorp.com>
wrote:

> Now this *is* interesting.  Try removing the repeated slashes just in cas=
e
> the WSL ln is being incredibly pedantic (ie sstate-build-package//package=
s-split),
> but I don't seriously expect that to be the problem.  Running stat on the
> source and verifying the destination doesn't exist would be helpful.  Can
> you tell if that is the first ln that it is trying to do, or do many work
> and that one fails?  Does WSL have a working strace or similar to identif=
y
> which exact syscall is failing?
>
>
>
> I am about 60% through the full image build when it gets to glibc-locale
> with about half of the packages for the image fully complete.  I did a st=
at
> on one of the source files and verified it did exist, and it had 0644 for
> access rights and is owned by me.  I also verified that the destination
> file doesn=E2=80=99t exist.  WSL does have a working strace.  I ran strac=
e on the
> failed cp command shown above and I now have a 56MB strace output file.
> What should I be looking for in this file?
>

Feel free to compress and email it directly to me, but simply grepping for
EINVAL (invalid argument error) might be enough.

Ross

--f403045fb2a2caf10a055a1f0384
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 26 September 2017 at 22:01, Bryan Evenson <span dir=3D"=
ltr">&lt;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">beven=
son@melinkcorp.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"EN-US" l=
ink=3D"blue" vlink=3D"purple"><div class=3D"m_7882992049995054953WordSectio=
n1"><div><div><div><div><span class=3D""><div>
</div>
</span><div><span class=3D"">
<p class=3D"MsoNormal" style=3D"margin-left:.5in">Now this *is* interesting=
.=C2=A0 Try removing the repeated slashes just in case the WSL ln is being =
incredibly pedantic (ie sstate-build-package//<wbr>packages-split), but I d=
on&#39;t seriously expect that to be the problem.=C2=A0
 Running stat on the source and verifying the destination doesn&#39;t exist=
 would be helpful.=C2=A0 Can you tell if that is the first ln that it is tr=
ying to do, or do many work and that one fails?=C2=A0 Does WSL have a worki=
ng strace or similar to identify which exact syscall
 is failing?<u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
</span><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif">I am about 60% through the full image build =
when it gets to glibc-locale with about half of the packages for the image =
fully complete.=C2=A0 I did a stat on one of the source files
 and verified it did exist, and it had 0644 for access rights and is owned =
by me.=C2=A0 I also verified that the destination file doesn=E2=80=99t exis=
t.=C2=A0 WSL does have a working strace.=C2=A0 I ran strace on the failed c=
p command shown above and I now have a 56MB strace output
 file.=C2=A0 What should I be looking for in this file?</span></p></div></d=
iv></div></div></div></div></div></blockquote><div><br></div><div>Feel free=
 to compress and email it directly to me, but simply grepping for EINVAL (i=
nvalid argument error) might be enough.</div><div><br></div><div>Ross</div>=
</div></div></div>

--f403045fb2a2caf10a055a1f0384--
