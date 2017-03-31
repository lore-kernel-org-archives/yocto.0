Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DB48E00A71; Fri, 31 Mar 2017 00:31:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.173 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6907E009DA
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 00:31:44 -0700 (PDT)
Received: by mail-yw0-f173.google.com with SMTP id v76so34786059ywg.0
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 00:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ECFnnrB+nuHMJxqtgFsaZniJTs3DFYRId8ouLcfT07M=;
	b=MXLZ4sR3PitEtovqGpmUzuv73ZcljhksQBAEjmIrgcNOWYmxXjhXUh/YU7bOPhUIfh
	1pten944XRblwS2cxrYOff+axoe4NEXsFqQ593N+iShKLWHzcPJWDBXK1p56XkQ+NEeU
	IvJMS8oQWP8RFLCzGPUe2WIHQN4dp/+ny0dLhWkO8hm8qPO3LXB9R3Tsb/DfVpBEow/A
	JXISFtjOJURe6TDZfLOUzF+SmEHy1aTEqr1SUSugJP18WAufgULkrRuV7utQRvJQlmNF
	3C+HS968KFTzaX0zV76v0QuRiHAx9WFVx0xnvnxngWkodTCaLUrmlzmCZxUUnLXJapT/
	unbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ECFnnrB+nuHMJxqtgFsaZniJTs3DFYRId8ouLcfT07M=;
	b=ZQkwB8tFoH4QiJGJgLXYzZkt44WdyfY5GYWnXs/X8EW1colbtTTCMlb4yMmUm2aKWZ
	0BC5DMLgWDo0B+zoBR3mLz4ijbc8VtX6cmV8od53M9eBVZBPKCNsCx4Q+0elZk7t4f66
	hsyNr9IyGh2QQLX+55TUO7G+Z+fMMzya4uEcN3Jj6HmZqi/hOf+Yl8DC1KxJ9AC8TIux
	J61nPv9zlu6rpzvoi9vRyHIiwLJrCTz6v2LEBKNqs/USaynENI16L3Apk6brnWMeQ7aX
	xv2IpQWl2YP5Zt8Iz5BTN9DL3k+za5NJgHtrQ/8BMRN1zMindwEA1nr+IoZequbMrcOY
	2aaQ==
X-Gm-Message-State: AFeK/H0sViHb5Yx8XQsBfSs8XNmPcuCSbs5k89qGIUH5iacuiA/pLM3+hzkqebBGOhti0V5mKcxpMWrgHJOoOs/V
X-Received: by 10.129.182.101 with SMTP id h37mr1017975ywk.177.1490945503435; 
	Fri, 31 Mar 2017 00:31:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.81.136 with HTTP; Fri, 31 Mar 2017 00:31:13 -0700 (PDT)
In-Reply-To: <061b01d2a9e4$f065d990$d1318cb0$@ln-systems.com>
References: <061b01d2a9e4$f065d990$d1318cb0$@ln-systems.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 31 Mar 2017 10:31:13 +0300
Message-ID: <CAHiDW_FuJyjm0qsfs7Ykzr1fK5_zjksY0CXsn1kseBMDfOmYHg@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gobject introspection needing pygobject (cross-compilation)
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
X-List-Received-Date: Fri, 31 Mar 2017 07:31:48 -0000
Content-Type: multipart/alternative; boundary=f403045d20ca1cbdfe054c01cd86

--f403045d20ca1cbdfe054c01cd86
Content-Type: text/plain; charset=UTF-8

On 31 March 2017 at 09:06, <colin.helliwell@ln-systems.com> wrote:

> I've got a few packages in my image which need gobject introspection.
> (x86-64 host, ARM target)
> One is building fine, but the other - NetworkManager - is failing to
> generate the introspection data because it can't analyse the cross-compiled
> library. Apparently it uses pygobject in doing this, and thus needs a
> version of that for the target architecture.
> Are there steps I can take to achieve this? I guess it needs some 'qemu'
> technique as with other the G-I support mechanisms?
>

It's unlikely that python (or anything other than target versions of
gi-ir-compiler/g-ir-scanner) is needed for generating introspection data.
A quick look at configure.ac seems to imply it's actually trying to build
some documentation with python using the generated GIR data...

Maybe check if the pregenerated docs contain thes documentation bits and
try to disable that docs generation as first solution?

Jussi

--f403045d20ca1cbdfe054c01cd86
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 3=
1 March 2017 at 09:06,  <span dir=3D"ltr">&lt;<a href=3D"mailto:colin.helli=
well@ln-systems.com" target=3D"_blank">colin.helliwell@ln-systems.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I&#39=
;ve got a few packages in my image which need gobject introspection.<br>
(x86-64 host, ARM target)<br>
One is building fine, but the other - NetworkManager - is failing to<br>
generate the introspection data because it can&#39;t analyse the cross-comp=
iled<br>
library. Apparently it uses pygobject in doing this, and thus needs a<br>
version of that for the target architecture.<br>
Are there steps I can take to achieve this? I guess it needs some &#39;qemu=
&#39;<br>
technique as with other the G-I support mechanisms?<br></blockquote><div><b=
r></div><div>It&#39;s unlikely that python (or anything other than target v=
ersions of gi-ir-compiler/g-ir-scanner) is needed for generating introspect=
ion data.=C2=A0 A quick look at <a href=3D"http://configure.ac">configure.a=
c</a> seems to imply it&#39;s actually trying to build some documentation w=
ith python using the generated GIR data...=C2=A0</div><div><br></div><div>M=
aybe check if the pregenerated docs contain thes documentation bits and try=
 to disable that docs generation as first solution?</div><div><br></div><di=
v>Jussi</div></div></div></div>

--f403045d20ca1cbdfe054c01cd86--
