Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7385E008C1; Sat,  5 Mar 2016 13:41:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 173A0E00863
	for <yocto@yoctoproject.org>; Sat,  5 Mar 2016 13:41:07 -0800 (PST)
Received: by mail-ig0-f170.google.com with SMTP id qc2so91045igb.1
	for <yocto@yoctoproject.org>; Sat, 05 Mar 2016 13:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UiCRxc59CmgS6tarvnTkBdTTjhaAxGmX9K+1yRuPNEo=;
	b=fu2E2S4IrY01eNpiuP1L1H4Gh6Cx+c4ivgvdUCdW7x121Gnk9RdGX/uLphM9qKYxe/
	pqSctS8yfMitg8Q1PCVReVUHGYePJUEU1urv/5MMhcAeLIiKv+z3XEnDbuYgNhEdaqRG
	owtmk9Nkib206Q0I4sJHBsiVMwfaDTm4KHGsY6Qzm4zlva2lvcbYFNPex5olYa5pUOrm
	nMUxdfkaO8nOX4M1JcDjxkblTNfbsNVr7hWWmVMJxcwr5imbyxcfBqPmcHkmv3hnxzBC
	oNwnwfDrrv0EjMM88afnB5oRhbMduM2UNIuCl4Lpt1xyJAVolmu3X5lv5489u6i+3paz
	ovLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UiCRxc59CmgS6tarvnTkBdTTjhaAxGmX9K+1yRuPNEo=;
	b=OvbjPCaMjpyoKCgjxWsy/S9tbI8JPN1MqFWwIPZjV3wUtkaoKDuy7iKCGy1dkmoy4h
	uPZHxSLqzM5ruLQ79WFZtY0qKWYrM/BhZXe6OKhanOptJRBdL88GjgZHmF/nMM1tu2Py
	T4L3Rt46Z6P0US58YE5zzxgLqY+wOgp+vUhJzJHmfFcLpuatAJVHgAKjucxwMXZ+t3M9
	lmsP6UgvaqrSU6PAXwJG9gvpnazWAxmJONSdcXrq1kgpKUQF9uaI8GGPUKLCkwR9D6Cu
	M6uyp2YXq0KSacNgzO52m58PmsjQS34G9mBkOrdnOo4trR++ITux8g89mhM2McPlqdJJ
	y6Qw==
X-Gm-Message-State: AD7BkJKfuDWlyJv1UQ0Ezsf6UzleyEq2iQnhcG+F+rlstVTYCrEIC90CUuWnC8s10iysufdPPybtgQC6TJhIUE3B
X-Received: by 10.50.126.8 with SMTP id mu8mr5038964igb.52.1457214067453; Sat,
	05 Mar 2016 13:41:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Sat, 5 Mar 2016 13:40:48 -0800 (PST)
In-Reply-To: <18448427.V3ACvxT67R@rjs-zotac.streifs.net>
References: <18448427.V3ACvxT67R@rjs-zotac.streifs.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 5 Mar 2016 21:40:48 +0000
Message-ID: <CAJTo0La2CZAKw0Cd4_NpPLt=qXy3x3Arv36huhUMmCH3tV14YA@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building gdb-7.10 for arm with master
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
X-List-Received-Date: Sat, 05 Mar 2016 21:41:08 -0000
Content-Type: multipart/alternative; boundary=047d7b1635bfda559a052d5416ff

--047d7b1635bfda559a052d5416ff
Content-Type: text/plain; charset=UTF-8

On 5 March 2016 at 21:19, Rudolf J Streif <rudolf.streif@gmail.com> wrote:

> compile fails with the following error message:
>
> | make[2]: *** No rule to make target '../readline/libreadline.a', needed
> by 'gdb'.  Stop.
> | make[2]: *** Waiting for unfinished jobs....
>
> The reason seems to be a broken path to the built-in readline in the
> makefile as the default configuration is
> --without-system-readline. Enabling
>
> PACKAGECONFIG_append_pn-dbg = " readline"
>

The default is with system readline...

gdb-common.inc:PACKAGECONFIG ??= "readline"

However if you do have PACKAGECONFIG set to "" for gdb for some reason then
you'll want to cherry-pick ce2542057d877044a7548f2884d192f4f672c75a
(master-next) to fix builds with the internal readline if you've got
no-static-libs enabled (which is true for Poky).

Ross

--047d7b1635bfda559a052d5416ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 March 2016 at 21:19, Rudolf J Streif <span dir=3D"ltr">&lt;<a href=3D"=
mailto:rudolf.streif@gmail.com" target=3D"_blank">rudolf.streif@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);b=
order-left-style:solid;padding-left:1ex"><div id=3D":1wf" class=3D"" style=
=3D"overflow:hidden">compile fails with the following error message:<br>
<br>
| make[2]: *** No rule to make target &#39;../readline/libreadline.a&#39;, =
needed by &#39;gdb&#39;.=C2=A0 Stop.<br>
| make[2]: *** Waiting for unfinished jobs....<br>
<br>
The reason seems to be a broken path to the built-in readline in the makefi=
le as the default configuration is<br>
--without-system-readline. Enabling<br>
<br>
PACKAGECONFIG_append_pn-dbg =3D &quot; readline&quot;</div></blockquote></d=
iv><br>The default is with system readline...</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">gdb-common.inc:PACKAGECONFIG ??=3D =
&quot;readline&quot;<br></div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">However if you do have PACKAGECONFIG set to &quot;&quot;=
 for gdb for some reason then you&#39;ll want to cherry-pick ce2542057d8770=
44a7548f2884d192f4f672c75a (master-next) to fix builds with the internal re=
adline if you&#39;ve got no-static-libs enabled (which is true for Poky).</=
div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</d=
iv></div>

--047d7b1635bfda559a052d5416ff--
