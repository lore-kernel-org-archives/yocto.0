Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9699E00D95; Mon,  8 Feb 2016 08:58:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28E89E00C34
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 08:58:18 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id xg9so59960828igb.1
	for <yocto@yoctoproject.org>; Mon, 08 Feb 2016 08:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tRunz7GaJEBasPkGLp0c0caOGgIT/onMgjOMSLOdE5c=;
	b=p3BcQ2r0dz0xMmztQJo1ONjCuKS1xjEs7jh16jQT34wqB8M7XkqcO3qOabGfuWKfj0
	wj4WAr72s7cosIzw7PwpNzpiDrJXjsQzn4HHRPtG4aqG3ygWk0yGuXPyc/5Nq6dzQZsZ
	kaPJUXjWkyrrvdX1964PmGi7Qei0Uq7KzDcMiKfE52SaLQzO9A+jfV4gSI0ebgCg2AR8
	Jt1ynHf+PPtV0xYe/UlmumCPrHPo0idsnZddEzuudR8z4wvlLP3dupuHUifxcjUEm3oA
	ApQfJ1yKWprE+OH+zpuYRXgLi166uM8ziNP9zSUiQDpKcFI96WK3rywktDh85pvNVThz
	2CHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=tRunz7GaJEBasPkGLp0c0caOGgIT/onMgjOMSLOdE5c=;
	b=McFyjAhJm6Dodf3/yuBuzJOQP1bDUpAqcGgpV7iCMKhv+oyAdDCSdD9dtrlIee53hL
	l1OqmVaLzN1scR78ilDYH6A/l/ZbTR3lD7RErpOSckby3NAsOFVvGuGT8qSBK74N8P23
	gyjmVz3Lr3CnY9O68p5nTha9ArlXNvz1dOhunQKxwy3S3PkVNpXBGjVrj4E7koG7pPlj
	8EM6t1Z47dm9IZhXZA4PpdBZWDQmTjZz1KSfrudjVElzxcZJRdD2MCXywaY6ID0WV/k5
	Py8tRX/Fq1ppj/P4pLNAhlVHZ/VeHiHyDxbirfbJVpnUFc3djvBuoZRvoNQpEB60DrFy
	Afag==
X-Gm-Message-State: AG10YOQhVkjT9W+FFU8UuAhIQhWCCVJkF4sAKfOi+lDQv6QSS1WVudmxEyNh6KiAjAce/7kxauTrcKplqOgbyuoC
X-Received: by 10.50.111.111 with SMTP id ih15mr25406148igb.78.1454950698401; 
	Mon, 08 Feb 2016 08:58:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 8 Feb 2016 08:57:59 -0800 (PST)
In-Reply-To: <2236FBA76BA1254E88B949DDB74E612B41A702E2@IRSMSX102.ger.corp.intel.com>
References: <2236FBA76BA1254E88B949DDB74E612B41A6F227@IRSMSX102.ger.corp.intel.com>
	<CAJTo0LY6-=w7W6Cwx4JxmQmOLktauPhxFN+_VdT9Hj0PK0n1dQ@mail.gmail.com>
	<2236FBA76BA1254E88B949DDB74E612B41A6F30D@IRSMSX102.ger.corp.intel.com>
	<CAJTo0LZ3buNGnROT0ufhosvtpjNPS8L4QMjYq+deKb8htQSGzA@mail.gmail.com>
	<2236FBA76BA1254E88B949DDB74E612B41A702E2@IRSMSX102.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Feb 2016 16:57:59 +0000
Message-ID: <CAJTo0LYck297gJ0-yNH+xzMM3BejLO-2YK1zkw1Tp3zL9wtchg@mail.gmail.com>
To: "Reshetova, Elena" <elena.reshetova@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the correct way to get a list of package run-time dependencies during the build process?
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
X-List-Received-Date: Mon, 08 Feb 2016 16:58:20 -0000
Content-Type: multipart/alternative; boundary=089e0149be348b7fbc052b451b13

--089e0149be348b7fbc052b451b13
Content-Type: text/plain; charset=UTF-8

On 8 February 2016 at 16:20, Reshetova, Elena <elena.reshetova@intel.com>
wrote:

> >Did you mean RDEPENDS_ + package name?
>
>
>
> I have it like this:
>
>
>
> recipe.name = d.getVar('PN', True)
>
> recipe.r_deps = d.getVar('RDEPENDS_' + recipe.name, True)
>

So I wasn't quite right - I think you also need to come after
do_packagedata and also you'll need to read the subpackage metadata.
Inspired by insane.bbclass, this works:

addtask printrdeps before do_build after do_package do_packagedata
do_printrdeps[nostamp] = "1"
python do_printrdeps() {
    bb.build.exec_func("read_subpackage_metadata", d)
    for p in d.getVar("PACKAGES", True).split():
        bb.warn("Got package %s" % p)
        bb.warn("Got RDEPENDS %s" % d.getVar("RDEPENDS_" + p, True))
}

--089e0149be348b7fbc052b451b13
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 February 2016 at 16:20, Reshetova, Elena <span dir=3D=
"ltr">&lt;<a href=3D"mailto:elena.reshetova@intel.com" target=3D"_blank">el=
ena.reshetova@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex"><div lang=3D"FI" link=3D"blue"=
 vlink=3D"purple"><span class=3D""><p class=3D"MsoNormal"><span lang=3D"EN-=
GB" style=3D"color:rgb(31,73,125)">&gt;</span><span lang=3D"EN-GB">Did you =
mean RDEPENDS_ + package name?</span><br><u></u></p></span><div><p class=3D=
"MsoNormal"><span lang=3D"EN-GB" style=3D"color:rgb(31,73,125)"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"f=
ont-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">I have i=
t like this: <u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-GB" style=3D"font-size:11pt;font-family:Calibri,sans-serif;color:rgb(31,=
73,125)"><u></u>=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal"><=
span lang=3D"EN-GB" style=3D"font-size:11pt;font-family:Calibri,sans-serif;=
color:rgb(31,73,125)"><a href=3D"http://recipe.name" target=3D"_blank">reci=
pe.name</a> =3D d.getVar(&#39;PN&#39;, True)<u></u><u></u></span></p><span =
class=3D""><p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:1=
1pt;font-family:Calibri,sans-serif;color:rgb(31,73,125)">recipe.r_deps =3D =
d.getVar(&#39;RDEPENDS_&#39; + <a href=3D"http://recipe.name" target=3D"_bl=
ank"><span lang=3D"FI" style=3D"color:rgb(31,73,125);text-decoration:none">=
recipe.name</span></a>, True)</span></p></span></div></div></blockquote><di=
v><br></div><div>So I wasn&#39;t quite right - I think you also need to com=
e after do_packagedata and also you&#39;ll need to read the subpackage meta=
data.=C2=A0 Inspired by insane.bbclass, this works:<br></div><div><br></div=
><div><div>addtask printrdeps before do_build after do_package do_packageda=
ta</div><div>do_printrdeps[nostamp] =3D &quot;1&quot;</div><div>python do_p=
rintrdeps() {</div><div>=C2=A0 =C2=A0 bb.build.exec_func(&quot;read_subpack=
age_metadata&quot;, d)</div><div>=C2=A0 =C2=A0 for p in d.getVar(&quot;PACK=
AGES&quot;, True).split():</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.warn(&q=
uot;Got package %s&quot; % p)</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.warn=
(&quot;Got RDEPENDS %s&quot; % d.getVar(&quot;RDEPENDS_&quot; + p, True))</=
div><div>}</div><div><br></div></div></div></div></div>

--089e0149be348b7fbc052b451b13--
