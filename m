Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96EEEE00CAC; Tue, 22 Aug 2017 12:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.50 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD9A5E00C44
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 12:18:36 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id x187so422470ite.1
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 12:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7S8BxpB5e/GDDMElXSOmrEnQizHnYZAldpg/njPkOPA=;
	b=O4eIpG5Yrf9dmyrmhLDxJ9Tgo4njHFc6E1GvdxRAWNMX0Wi7U1n/0mmwv/mmvX/VIF
	BzyvN7h3uwxUaTzAGKNmJMoH0bW5+AODsMFwPNjFZs85NFfJ4ymasd8vgx23sq+h85zs
	PF5o3m+uxOvq0L//RUbjuJ1/hI1ZjZLpmDdUUAGna6uAnXxWxu+Zet+T8DJakNPJVOYc
	9BcElCF7/yYLyfUQJgEVbD53MgQZfUwrS+t4RrdRWmvOHGu+MYEFJZLR6QszKE7kPik3
	mvkAfPngA6HP9x5k9cfnIrXPFx4OYpt+oLFFNM9HdGyxuDhDT9Kj8e7YGws0VuBvGHSW
	d8IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7S8BxpB5e/GDDMElXSOmrEnQizHnYZAldpg/njPkOPA=;
	b=UWMiIlzxor1mdLpCWdPG4HOWHaJXzLU68kPTbpUiqyNnAP5LDOI/TyVO5Y9CwSoOUw
	OB0wBiSrzQ3oyddzI1pUYWsow6X02HV651/WXlRNPKmUsjS3UE5dv2JDJE2lkfN30aG3
	QELxn4NaA8vnu0DGu7SrsvjYdU2d03ncoOOSP/q6fZYFM2BTyKkTdZJIbQNX0PHIil1U
	++y8sZJv9iuHwxYvndvnafGJLgP2EUcBGxhTFkYHKY8sMlbjxIFqBUW3ClAW8ZGHSZao
	HZa/8u3MVUJ3SRgheEWS1uadGxYIqHxIDpobnlV+eN6b8fKR8Fw+glY9EmpgwAuohn3r
	5HXQ==
X-Gm-Message-State: AHYfb5j/OAlIRxT+rSnpfmp8cnOoG+aetnLvsbc9gAkKQKbXj7J8wiWB
	b3cbqDGsGGfZIsfBXW9+xgpEhSBEQgVm
X-Received: by 10.36.165.5 with SMTP id k5mr1123958itf.64.1503429515891; Tue,
	22 Aug 2017 12:18:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.200.71 with HTTP; Tue, 22 Aug 2017 12:18:05 -0700 (PDT)
In-Reply-To: <1860092135.29844.1503412987767@email.1and1.co.uk>
References: <0fe401d31b4c$ad25dac0$07719040$@ln-systems.com>
	<CAHiDW_H+OPiekHXkoU2yxSbOXcuFoLKVvEG6U5XxQ8Htsu=K0Q@mail.gmail.com>
	<1860092135.29844.1503412987767@email.1and1.co.uk>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 22 Aug 2017 22:18:05 +0300
Message-ID: <CAHiDW_FtVmiKcFqwH9vedxrEdB1YnLDQROypCuiRyapt_uu01w@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Custom recipe - resolving "do_package_qa: QA Issue: -dev package contains non-symlink .so"
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
X-List-Received-Date: Tue, 22 Aug 2017 19:18:37 -0000
Content-Type: multipart/alternative; boundary="f403045fc38a3d6f5205575c7638"

--f403045fc38a3d6f5205575c7638
Content-Type: text/plain; charset="UTF-8"

On 22 August 2017 at 17:43, Colin Helliwell <colin.helliwell@ln-systems.com>
wrote:

>
> > On 22 August 2017 at 15:13 Jussi Kukkonen <jussi.kukkonen@intel.com>
> wrote:
> >
> > On 22 August 2017 at 16:43, <colin.helliwell@ln-systems.com> wrote:
> > >
> > > I have a custom recipe (for the AWS SDK), which is failing at the
> package_qa
> > > stage.
> > > The recipe is a very basic cmake styley, and on its own seems to begin
> with:
> > > 'bitbake -f -c package aws-sdk'  completes without errors.
> > >
> > > But for 'bitbake -c package_qa aws-sdk) I get:
> > >
> > > ERROR: aws-sdk-1.1.31-r0 do_package_qa: QA Issue: -dev package contains
> > > non-symlink .so: aws-sdk-dev path
> > > '/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/
> packages-split/aws-s
> > > dk-dev/usr/lib/libaws-cpp-sdk-core.so'
> > > -dev package contains non-symlink .so: aws-sdk-dev path
> > > '/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/
> packages-split/aws-s
> > > dk-dev/usr/lib/libaws-cpp-sdk-s3.so' [dev-elf]
> > >
> > > I'd appreciate help with resolving this. Thanks.>
> > >
> >
> > It looks like aws-sdk installs .so files that are actual libraries (and
> not symlinks to the versioned libraries as would be the usual case). The
> best solution would be to get aws to install versioned libraries but if
> that's not an option, you probably want to package the .so files in the
> actual library package, not the -dev package (which is the default since
> usually .so are symlinks for development and the actually versioned ).
> >
> > You may have to set both FILES_${PN}-dev and FILES_${PN} (so the former
> doesn't grab the so files, and the latter does)
> >
> > HTH,
> >   Jussi
>
> Thanks for the tips, Jussi.
> I'm managing to get a little further, added
> INSANE_SKIP_${PN}-dev += "dev-elf"
>

I suggest not doing this. It seems the warning is valid so you should fix
the issue, not silence the warning.

FILES_${PN}-dev += "${libdir}/libaws-cpp-sdk-core.so
> ${libdir}/libaws-cpp-sdk-s3.so"
>

${PN}-dev should _not_ contain so files (in your special case). The issue
is that the default value contains "${libdir}/lib*.so" already (it's not
quite so simple but see meta/conf/bitbake.conf for details if interested).
You should be able to just redefine the variable completely:
    FILES_${PN}-dev = "${includedir}"


> FILES_${PN} += "${libdir}/libaws-cpp-sdk-core.so
> ${libdir}/libaws-cpp-sdk-s3.so"
>

This looks correct to me.

Jussi

--f403045fc38a3d6f5205575c7638
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 22 August 2017 at 17:43, Colin Helliwell <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:colin.helliwell@ln-systems.com" target=3D"_blank">colin.helliw=
ell@ln-systems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5"><br>
&gt; On 22 August 2017 at 15:13 Jussi Kukkonen &lt;<a href=3D"mailto:jussi.=
kukkonen@intel.com">jussi.kukkonen@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 22 August 2017 at 16:43, &lt;<a href=3D"mailto:colin.helliwell@ln-s=
ystems.com">colin.helliwell@ln-systems.<wbr>com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; I have a custom recipe (for the AWS SDK), which is failing at the=
 package_qa<br>
&gt; &gt; stage.<br>
&gt; &gt; The recipe is a very basic cmake styley, and on its own seems to =
begin with:<br>
&gt; &gt; &#39;bitbake -f -c package aws-sdk&#39; =C2=A0completes without e=
rrors.<br>
&gt; &gt;<br>
&gt; &gt; But for &#39;bitbake -c package_qa aws-sdk) I get:<br>
&gt; &gt;<br>
&gt; &gt; ERROR: aws-sdk-1.1.31-r0 do_package_qa: QA Issue: -dev package co=
ntains<br>
&gt; &gt; non-symlink .so: aws-sdk-dev path<br>
&gt; &gt; &#39;/work/armv7a-neon-poky-linux-<wbr>gnueabi/aws-sdk/1.1.31-r0/=
<wbr>packages-split/aws-s<br>
&gt; &gt; dk-dev/usr/lib/libaws-cpp-sdk-<wbr>core.so&#39;<br>
&gt; &gt; -dev package contains non-symlink .so: aws-sdk-dev path<br>
&gt; &gt; &#39;/work/armv7a-neon-poky-linux-<wbr>gnueabi/aws-sdk/1.1.31-r0/=
<wbr>packages-split/aws-s<br>
&gt; &gt; dk-dev/usr/lib/libaws-cpp-sdk-<wbr>s3.so&#39; [dev-elf]<br>
&gt; &gt;<br>
&gt; &gt; I&#39;d appreciate help with resolving this. Thanks.&gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt; It looks like aws-sdk installs .so files that are actual libraries (an=
d not symlinks to the versioned libraries as would be the usual case). The =
best solution would be to get aws to install versioned libraries but if tha=
t&#39;s not an option, you probably want to package the .so files in the ac=
tual library package, not the -dev package (which is the default since usua=
lly .so are symlinks for development and the actually versioned ).<br>
&gt;<br>
&gt; You may have to set both FILES_${PN}-dev and FILES_${PN} (so the forme=
r doesn&#39;t grab the so files, and the latter does)<br>
&gt;<br>
&gt; HTH,<br>
&gt; =C2=A0 Jussi<br>
<br>
</div></div>Thanks for the tips, Jussi.<br>
I&#39;m managing to get a little further, added<br>
INSANE_SKIP_${PN}-dev +=3D &quot;dev-elf&quot;<br></blockquote><div><br></d=
iv><div>I suggest not doing this. It seems the warning is valid so you shou=
ld fix the issue, not silence the warning.</div><div><br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
FILES_${PN}-dev +=3D &quot;${libdir}/libaws-cpp-sdk-<wbr>core.so ${libdir}/=
libaws-cpp-sdk-s3.<wbr>so&quot;<br></blockquote><div><br></div><div>${PN}-d=
ev should _not_ contain so files (in your special case). The issue is that =
the default value contains &quot;${libdir}/lib*.so&quot; already (it&#39;s =
not quite so simple but see meta/conf/bitbake.conf for details if intereste=
d). You should be able to just redefine the variable completely:</div><div>=
=C2=A0 =C2=A0 FILES_${PN}-dev =3D &quot;${includedir}&quot;</div><div>=C2=
=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
FILES_${PN} +=3D &quot;${libdir}/libaws-cpp-sdk-<wbr>core.so ${libdir}/liba=
ws-cpp-sdk-s3.<wbr>so&quot;<br></blockquote><div><br></div><div>This looks =
correct to me.</div><div><br></div><div>Jussi</div></div></div></div>

--f403045fc38a3d6f5205575c7638--
