Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95BB7E00D33; Tue,  1 Oct 2019 02:29:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com
	[209.85.221.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7920E00D33
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 02:29:14 -0700 (PDT)
Received: by mail-vk1-f196.google.com with SMTP id w3so3337705vkm.3
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2019 02:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RZwGzmZawc1bkSETGHOXeKDydvX/JQ079B7Egqi1W+c=;
	b=KOrOAA7ZwmxtUL1bZDEsbiLTmhciQ9b7QKsR9aottDmwuMqa1F49x+HARsrKVtzrJr
	duUHBUscydvkOJoLy+HGyoj19kBrJlPPLrEsy6rpSjyGT6fcKa6R1SGuX1nNvaFWykBG
	W7VSRLHFNtoxjESQc7IfwttveQaQYwolpC3v9SpLGZnscW2/Hgw0jAdpPDMEcaxOsp1H
	iNcaTcUk13ZfdC25V4Hz3rIqypWNI6BZv0mSafaeGFy6SGsr2CuqmwZ1E6WokGbyqqHI
	kN3eG6/nMAYSp/r2O7ArvjZL+CJmg+7CUNS5nOec42h4Wx3konl4sxGFaN6XkRssN7r7
	Sjbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RZwGzmZawc1bkSETGHOXeKDydvX/JQ079B7Egqi1W+c=;
	b=recHo2HNF62mI1nG9v9PBvxl3ZYHDoBrB64Mv3fBXn++Auz+aCEmwvXnPhtzdyiXo9
	xKnpu5KcnccH+00/xoryDLwNXZXckkMq4/H/dYhExIBMhNi7j6GkZ0zJ98fL4C8b/LM8
	cI9cm2UuV6QrcNkfoj1flZ5gg7NTGrwxtlLOC+p2cSGcOVbCTiXwjRlJBt7/oyd2KOlx
	NcDCeWppU7LeFhe2DbaPz/orgP4H/9E3fUIq02uZB5+C49KMcrAvFzhYkEqEvla6Py4V
	ZPL/yfFdeG9NM2e+xCpYAwzBN8f6wF2fdBc5wmgiuxl8pwnp9Kn9KpiX6tDDo5cYV1RO
	jgRg==
X-Gm-Message-State: APjAAAVcc4Qm1LgHPFYFf3OHNjROWXI3iY1L44hCHl3OfrvQ1eIJMeYY
	kZNRzxqf3vQCYTgOdXglHgkzi/0SP64p3uGxa5g=
X-Google-Smtp-Source: APXvYqy9TNcM5/soZI+4j//k3ABLVXCn28noPQJlTzKi2sNvzN/vk7g6yscQqjgM9s5Q/UIpED9ACD8kt7V7SKiwzhE=
X-Received: by 2002:a1f:f445:: with SMTP id s66mr13208857vkh.62.1569922153809; 
	Tue, 01 Oct 2019 02:29:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAKRytNy3XoG8H1R4uZqGFC3Az5WGsE5+zYKRgUepgjBDYxvgXw@mail.gmail.com>
	<35712e36-d517-2665-fd80-50f4b089b16b@gmail.com>
In-Reply-To: <35712e36-d517-2665-fd80-50f4b089b16b@gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Tue, 1 Oct 2019 11:29:03 +0200
Message-ID: <CAKRytNxGZ02wOuydLdS_pE0MtDRtQi=DSuSsaK0WTtfOqToukw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Cannot use "LICENSE_CREATE_PACKAGE = 1" when building the image with mdns
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
X-List-Received-Date: Tue, 01 Oct 2019 09:29:16 -0000
Content-Type: multipart/alternative; boundary="0000000000004d8c5d0593d5fc13"

--0000000000004d8c5d0593d5fc13
Content-Type: text/plain; charset="UTF-8"

Hi thank you for the answer.

In my rootfs I have this nsswitch.conf:
-------------------------------------------------------
# /etc/nsswitch.conf
#
# Example configuration of GNU Name Service Switch functionality.
# If you have the `glibc-doc' and `info' packages installed, try:
# `info libc "Name Service Switch"' for information about this file.

passwd:         compat
group:          compat
shadow:         compat

hosts:          files myhostname  mdns dns
networks:       files

protocols:      db files
services:       db files
ethers:         db files
rpc:            db files

netgroup:       nis
-------------------------------------------------------

I'm not familiar with this file.
Also changing "hosts: files myhostname  mdns dns" to "hosts: files
mdns4_minimal [NOTFOUND=return] dns" (copied from a raspberry pi 3) I'm
still having the same problem.

What should I change to fix this issue?


Il lun 30 set 2019, 22:45 Khem Raj <raj.khem@gmail.com> ha scritto:

>
>
> On 9/30/19 8:17 AM, Stefano Cappa wrote:
> > I saw your last patch to upgrade mdns, so I'm sending this email also to
> > you to try to get help.
> >
> > mdns is working correctly, however, when I try to build my image with
> > "LICENSE_CREATE_PACKAGE = "1"" in my local.conf as described
> > here
> https://www.yoctoproject.org/docs/2.8/dev-manual/dev-manual.html#providing-license-text
>  I
> > get this error message:
> >
> > ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of
> > ['mdns'] have failed. If the intention is to defer them to first boot,
> > then please place them into pkg_postinst_ontarget_${PN} ().
> > Deferring to first boot via 'exit 1' is no longer supported.
> > Details of the failure are in
> >
> /home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.
> > ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> >
> /home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevice-image/1.0-r0/temp/log.do_rootfs.14586
> > ERROR: Task (MY CUSTOM LAYER
> > PATH/recipes-core/images/mydevice-image.bb:do_rootfs) failed with exit
> > code '1'
> > NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn't need to
> > be rerun and 1 failed.
> >
> > Do you have a solution? Why is it happening?
> >
>
> see mdns recipe especially
>
> pkg_postinst_${PN} (), that function is not able to execute offline
> during build. It could be that nsswitch.conf does not exist in your
> image rootfs
>
> > thank u.
>

--0000000000004d8c5d0593d5fc13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi thank you for the answer.<div dir=3D"=
auto"><br></div><div dir=3D"auto">In my rootfs I have this nsswitch.conf:</=
div><div dir=3D"auto">-----------------------------------------------------=
--</div><div dir=3D"auto"># /etc/nsswitch.conf<br>#<br># Example configurat=
ion of GNU Name Service Switch functionality.<br># If you have the `glibc-d=
oc&#39; and `info&#39; packages installed, try:<br># `info libc &quot;Name =
Service Switch&quot;&#39; for information about this file.<br><br>passwd: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br>group: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0compat<br>shadow: =C2=A0 =C2=A0 =C2=A0 =C2=A0 compat<br><br>hosts: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0files myhostname =C2=A0mdns dns<br>networ=
ks: =C2=A0 =C2=A0 =C2=A0 files<br><br>protocols: =C2=A0 =C2=A0 =C2=A0db fil=
es<br>services: =C2=A0 =C2=A0 =C2=A0 db files<br>ethers: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 db files<br>rpc: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0db fil=
es<br><br>netgroup: =C2=A0 =C2=A0 =C2=A0 nis<br></div><div dir=3D"auto">---=
----------------------------------------------------<br></div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">I&#39;m not familiar with this file.</div>=
<div dir=3D"auto">Also changing &quot;hosts: files myhostname =C2=A0mdns dn=
s&quot; to &quot;hosts: files mdns4_minimal [NOTFOUND=3Dreturn] dns&quot; (=
copied from a raspberry pi 3) I&#39;m still having the same=C2=A0problem.<b=
r></div><div dir=3D"auto"><br></div><div dir=3D"auto">What should I change =
to fix this issue?</div><div dir=3D"auto"><br></div><div></div></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il lun=
 30 set 2019, 22:45 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt; ha scritto:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><br>
<br>
On 9/30/19 8:17 AM, Stefano Cappa wrote:<br>
&gt; I saw your last patch to upgrade mdns, so I&#39;m sending this email a=
lso to<br>
&gt; you to try to get help.<br>
&gt; <br>
&gt; mdns is working correctly, however, when I try to build my image with<=
br>
&gt; &quot;LICENSE_CREATE_PACKAGE =3D &quot;1&quot;&quot; in my local.conf =
as described<br>
&gt; here=C2=A0<a href=3D"https://www.yoctoproject.org/docs/2.8/dev-manual/=
dev-manual.html#providing-license-text" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">https://www.yoctoproject.org/docs/2.8/dev-manual/dev-manual.ht=
ml#providing-license-text</a>=C2=A0I<br>
&gt; get this error=C2=A0message:<br>
&gt; <br>
&gt; ERROR: mydevice-image-1.0-r0 do_rootfs: Postinstall scriptlets of<br>
&gt; [&#39;mdns&#39;] have failed. If the intention is to defer them to fir=
st boot,<br>
&gt; then please place them into pkg_postinst_ontarget_${PN} ().<br>
&gt; Deferring to first boot via &#39;exit 1&#39; is no longer supported.<b=
r>
&gt; Details of the failure are in<br>
&gt; /home/user/git/poky/build/tmp/work/mydevice1-image-poky-linux-gnueabi/=
mydevice-image/1.0-r0/temp/log.do_rootfs.<br>
&gt; ERROR: mydevice-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/user/git/poky/build/tmp/work/mydevice1-poky-linux-gnueabi/mydevi=
ce-image/1.0-r0/temp/log.do_rootfs.14586<br>
&gt; ERROR: Task (MY CUSTOM LAYER<br>
&gt; PATH/recipes-core/images/mydevice-image.bb:do_rootfs) failed with exit=
<br>
&gt; code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 4871 tasks of which 4654 didn&#39;t nee=
d to<br>
&gt; be rerun and 1 failed.<br>
&gt; <br>
&gt; Do you have a solution? Why is it happening?=C2=A0<br>
&gt; <br>
<br>
see mdns recipe especially<br>
<br>
pkg_postinst_${PN} (), that function is not able to execute offline<br>
during build. It could be that nsswitch.conf does not exist in your<br>
image rootfs<br>
<br>
&gt; thank u.<br>
</blockquote></div>

--0000000000004d8c5d0593d5fc13--
