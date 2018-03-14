Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66022E00DFD; Wed, 14 Mar 2018 08:15:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f52.google.com (mail-pg0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30DB3E00823
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 08:15:40 -0700 (PDT)
Received: by mail-pg0-f52.google.com with SMTP id m15so1489381pgc.1
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 08:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DZKhXSwYLuZJwR+G4ZwAFjG6P93D2ojGgLHpCaCxVs0=;
	b=MIddvzrLTJvbIfPs8DUSV9mqLq5H7llLmeFfk6m+uJM3TpgjSR9raiGAVYxq4B9QE5
	r/0tt1y05c4dhaJsXWZ5ipSHvrSyFAJhkWzIhxczdco6KgX8YNBfTujoLr1PJqQ0mBSq
	UEWeGbRbP4tG5LC4OOCNRSW2Oo9+9qkRUmiCWQW9VmnJhb94YRRUy0SoIwOZUMENYS5C
	g5qsMXUnyubCBjf0r4y6aqH85Gvkw70XD5jaf6WOGyYuibLq2VM56tZnmoa5YHzrIY0Q
	8ZLGkq6YswK/HcrIPDwm+SsvN9+OS8gJPhUtCE11sZ/erDZL0JAQ4uR82uDIpxl+7Ro1
	ruSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DZKhXSwYLuZJwR+G4ZwAFjG6P93D2ojGgLHpCaCxVs0=;
	b=hu4pjUD8h5GuTiugAG2SA16zKpDtTi123j+yCH2m1JCCDK25ejruq9QAPk0Y4N7yYz
	l1FBEzGG0SiaDYaod/C4AnsaarTdDGfyPQASrMRbYtpG3HCC+QVz24RuX7WkUfJPKZQT
	3P8nz8mYaIrnmBIU5UmIT07bhSu8YmrMRZBuaw9R4LEEN0/wbw+yic0l6yYEeuEn7r2d
	1PcBeuix52deMIv4Qbd5pWLmPF2ANd4FzVQLlYjFv4mNOQ6UOb86hGKxSsxmlNG9MWpf
	e1VNZ6V7Ct2DAHKrJzVybchqRje84o3VM8JorbC4ughqqd7lafBEwPrUDXwsRCQCRyGi
	lrwg==
X-Gm-Message-State: AElRT7E0kSV05Rkwdl9emZb4JMWEK2whrLlDqVAz/Bm9FjyPDhYS1l30
	Lphf4Bsw9mev5eTAE92+WVg7IpVMr9Kbx01P+h3+Kg==
X-Google-Smtp-Source: AG47ELvPZUtgqxfNN0kB0xhI8mxZAqv/IrSZRGLAeWfKPhF5uGN09tsqlN3p2+H1leBk0I+cHTGCTJkwx8jMPYuht0k=
X-Received: by 10.99.95.144 with SMTP id t138mr3923832pgb.94.1521040540399;
	Wed, 14 Mar 2018 08:15:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.184.9 with HTTP; Wed, 14 Mar 2018 08:15:40 -0700 (PDT)
In-Reply-To: <CAOT_U5Zsz7nw-fNojfHzSM3aRaJGfr8A0X6_CzhyR8QMO6O7LA@mail.gmail.com>
References: <CAFq4t4gHeuROOaP3q7k3_i2BthqH2GQtf93OCTOcb6XhA1ANvw@mail.gmail.com>
	<CAOT_U5Z_Oph_QdPy3XsG-0Wi-e8AYU=BJv4TX+UYjX-F87WdmQ@mail.gmail.com>
	<CAFq4t4j-4B1T4k2fq31eZA0mTYx=kZ1iZFGnUc+kJ6FazmmRGA@mail.gmail.com>
	<CAFq4t4iDwYGcV-Zx03+9Xu09KfZRRRUN+-FWQHTsN=YciKMeSg@mail.gmail.com>
	<CAOT_U5Zsz7nw-fNojfHzSM3aRaJGfr8A0X6_CzhyR8QMO6O7LA@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Wed, 14 Mar 2018 16:15:40 +0100
Message-ID: <CAFq4t4i=Y1Et8Q4K_YHn4u+XjYC9mfRLj7moqsYjWCbQzEN-Bw@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: python-pyqt
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
X-List-Received-Date: Wed, 14 Mar 2018 15:15:42 -0000
Content-Type: multipart/alternative; boundary="94eb2c061de6197c88056760d959"

--94eb2c061de6197c88056760d959
Content-Type: text/plain; charset="UTF-8"

got compiling it - pyqt5
actually NXP Yocto sources does not contain

sip:
https://github.com/openembedded/meta-openembedded/tree/master/meta-oe/recipes-devtools/sip
pyqt5: https://github.com/meta-qt5/meta-qt5/tree/master/recipes-python/pyqt5

so added to that surces and now it compiles with "IMAGE_INSTALL_append +=
"python-pyqt5""


On Mon, Mar 12, 2018 at 11:26 AM, Alan Martinovic <alan.martinovic@senic.com
> wrote:

> Don't know if I can help you with that, sorry.
> Seems to be a promise of a nest of snakes :)
>
> Perhaps a suggestion before you go down that rabbit hole...
> Try getting the whole `meta-qt5` that has the required python packages in
> it already.
> Perhaps you'll have more luck with that than porting a recipe.
>
> Be Well,
> Alan
>
>
>
>
>
> On Sat, Mar 10, 2018 at 7:28 PM, Peter Balazovic
> <balazovic.peter@gmail.com> wrote:
> > i've added "sip" package to my build and mow by using
> python-pyqt5_5.8.2.bb
> >
> >
> > ERROR: python-pyqt5-5.8.2-r0 do_patch: Command Error: 'quilt --quiltrc
> > /home/ubuntu/work/morty/fsl-release-bsp-imx6/build/tmp/
> sysroots/x86_64-linux/etc/quiltrc
> > push' exited with 0  Output:
> > Applying patch fix-sm.patch
> > patch: **** Only garbage was found in the patch input.
> > Patch fix-sm.patch does not apply (enforce with -f)
> > ERROR: python-pyqt5-5.8.2-r0 do_patch: Function failed: patch_do_patch
> > ERROR: Logfile of failure stored in:
> > /home/ubuntu/work/morty/fsl-release-bsp-imx6/build/tmp/
> work/cortexa9hf-neon-poky-linux-gnueabi/python-pyqt5/5.
> 8.2-r0/temp/log.do_patch.6327
> > ERROR: Task
> > (/home/ubuntu/work/morty/fsl-release-bsp-imx6/sources/meta-
> qt5/recipes-python/pyqt5/python-pyqt5_5.8.2.bb:do_patch)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 7479 tasks of which 7474 didn't need to be
> > rerun and 1 failed.
> >
> >
> >
> >
> > On Sat, Mar 10, 2018 at 6:14 PM, Peter Balazovic <
> balazovic.peter@gmail.com>
> > wrote:
> >>
> >> I have repo from
> >> http://git.freescale.com/git/cgit.cgi/imx/fsl-arm-yocto-bsp.git/ branch
> >> imx-morty
> >> there is layer "meta-qt5" but does not contain "python-pyqt" or
> >> ""python-pyqt5" recipes.
> >>
> >> I copied python-pyqt5_5.8.2.bb recipe from
> >> https://layers.openembedded.org/layerindex/recipe/60914/
> >>
> >>
> >> On Sat, Mar 10, 2018 at 3:41 PM, Alan Martinovic
> >> <alan.martinovic@senic.com> wrote:
> >>>
> >>> Seems like the name of the package is: python-pyqt5
> >>>
> >>> A recipe with that name does exist in meta-qt5:
> >>> https://layers.openembedded.org/layerindex/recipe/60914/
> >>>
> >>> As on why bitbake didn't automatically set the recipe for execution
> >>> (based on RDEPENDS) but you would need to manually add it to
> >>> IMAGE_INSTALL_append
> >>> I don't know.
> >>>
> >>> Do you have meta-qt5 in your layers?
> >>>
> >>>
> >>> On Sat, Mar 10, 2018 at 1:53 PM, Peter Balazovic
> >>> <balazovic.peter@gmail.com> wrote:
> >>> > Dears,
> >>> >
> >>> >
> >>> >
> >>> > per Yocto build from fsl-arm-yocto-bsp.git - i.MX Linux BSP Release
> >>> > Yocto
> >>> > Project manifests of imx-morty branch I have built fsl-image-qt5
> image,
> >>> > I
> >>> > need to add qt5 python support, how to add to the image?
> >>> >
> >>> >
> >>> >
> >>> > Modifying local.conf not works
> >>> >
> >>> > IMAGE_INSTALL_append += "python-pyqt"
> >>> >
> >>> >
> >>> > I end up with errors...
> >>> >
> >>> >
> >>> > ERROR: Nothing RPROVIDES 'python-pyqt5' (but
> >>> >
> >>> > /home/ubuntu/work/morty/fsl-release-bsp-imx6/sources/meta-
> fsl-bsp-release/imx/meta-sdk/recipes-fsl/images/fsl-image-qt5.bb
> >>> > RDEPENDS on or otherwise requires it)
> >>> >
> >>> > NOTE: Runtime target 'python-pyqt5' is unbuildable, removing...
> >>> >
> >>> > Missing or unbuildable dependency chain was: ['python-pyqt5']
> >>> >
> >>> > ERROR: Required build target 'fsl-image-qt5' has no buildable
> >>> > providers.
> >>> >
> >>> > Missing or unbuildable dependency chain was: ['fsl-image-qt5',
> >>> > 'python-pyqt5']
> >>> >
> >>> >
> >>> >
> >>> > How to add python QT5 support to Yocto image build?
> >>> >
> >>> >
> >>> > Thank you.
> >>> >
> >>> > --
> >>> > _______________________________________________
> >>> > yocto mailing list
> >>> > yocto@yoctoproject.org
> >>> > https://lists.yoctoproject.org/listinfo/yocto
> >>> >
> >>
> >>
> >
>

--94eb2c061de6197c88056760d959
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">got compiling it - pyqt5<div>actually NXP Yocto sources do=
es not contain=C2=A0</div><div><br></div><div>sip:=C2=A0<a href=3D"https://=
github.com/openembedded/meta-openembedded/tree/master/meta-oe/recipes-devto=
ols/sip">https://github.com/openembedded/meta-openembedded/tree/master/meta=
-oe/recipes-devtools/sip</a></div><div>pyqt5:=C2=A0<a href=3D"https://githu=
b.com/meta-qt5/meta-qt5/tree/master/recipes-python/pyqt5">https://github.co=
m/meta-qt5/meta-qt5/tree/master/recipes-python/pyqt5</a></div><div><br></di=
v><div>so added to that surces and now it compiles with &quot;<span style=
=3D"color:rgb(81,98,111);font-family:&quot;Helvetica Neue&quot;,Helvetica,A=
rial,&quot;Lucida Grande&quot;,sans-serif;font-size:15px">IMAGE_INSTALL_app=
end +=3D &quot;python-pyqt5&quot;</span>&quot;</div><div><br></div></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Mar 12, 201=
8 at 11:26 AM, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan=
.martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">Don&#39;t know if I can hel=
p you with that, sorry.<br>
Seems to be a promise of a nest of snakes :)<br>
<br>
Perhaps a suggestion before you go down that rabbit hole...<br>
Try getting the whole `meta-qt5` that has the required python packages in<b=
r>
it already.<br>
Perhaps you&#39;ll have more luck with that than porting a recipe.<br>
<br>
Be Well,<br>
Alan<br>
<br>
<br>
<br>
<br>
<br>
On Sat, Mar 10, 2018 at 7:28 PM, Peter Balazovic<br>
<div class=3D"HOEnZb"><div class=3D"h5">&lt;<a href=3D"mailto:balazovic.pet=
er@gmail.com">balazovic.peter@gmail.com</a>&gt; wrote:<br>
&gt; i&#39;ve added &quot;sip&quot; package to my build and mow by using <a=
 href=3D"http://python-pyqt5_5.8.2.bb" rel=3D"noreferrer" target=3D"_blank"=
>python-pyqt5_5.8.2.bb</a><br>
&gt;<br>
&gt;<br>
&gt; ERROR: python-pyqt5-5.8.2-r0 do_patch: Command Error: &#39;quilt --qui=
ltrc<br>
&gt; /home/ubuntu/work/morty/fsl-<wbr>release-bsp-imx6/build/tmp/<wbr>sysro=
ots/x86_64-linux/etc/<wbr>quiltrc<br>
&gt; push&#39; exited with 0=C2=A0 Output:<br>
&gt; Applying patch fix-sm.patch<br>
&gt; patch: **** Only garbage was found in the patch input.<br>
&gt; Patch fix-sm.patch does not apply (enforce with -f)<br>
&gt; ERROR: python-pyqt5-5.8.2-r0 do_patch: Function failed: patch_do_patch=
<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/ubuntu/work/morty/fsl-<wbr>release-bsp-imx6/build/tmp/<wbr>work/=
cortexa9hf-neon-poky-<wbr>linux-gnueabi/python-pyqt5/5.<wbr>8.2-r0/temp/log=
.do_patch.6327<br>
&gt; ERROR: Task<br>
&gt; (/home/ubuntu/work/morty/fsl-<wbr>release-bsp-imx6/sources/meta-<wbr>q=
t5/recipes-python/pyqt5/<wbr>python-pyqt5_5.8.2.bb:do_<wbr>patch)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 7479 tasks of which 7474 didn&#39;t nee=
d to be<br>
&gt; rerun and 1 failed.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Sat, Mar 10, 2018 at 6:14 PM, Peter Balazovic &lt;<a href=3D"mailto=
:balazovic.peter@gmail.com">balazovic.peter@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I have repo from<br>
&gt;&gt; <a href=3D"http://git.freescale.com/git/cgit.cgi/imx/fsl-arm-yocto=
-bsp.git/" rel=3D"noreferrer" target=3D"_blank">http://git.freescale.com/gi=
t/<wbr>cgit.cgi/imx/fsl-arm-yocto-<wbr>bsp.git/</a> branch<br>
&gt;&gt; imx-morty<br>
&gt;&gt; there is layer &quot;meta-qt5&quot; but does not contain &quot;pyt=
hon-pyqt&quot; or<br>
&gt;&gt; &quot;&quot;python-pyqt5&quot; recipes.<br>
&gt;&gt;<br>
&gt;&gt; I copied <a href=3D"http://python-pyqt5_5.8.2.bb" rel=3D"noreferre=
r" target=3D"_blank">python-pyqt5_5.8.2.bb</a> recipe from<br>
&gt;&gt; <a href=3D"https://layers.openembedded.org/layerindex/recipe/60914=
/" rel=3D"noreferrer" target=3D"_blank">https://layers.openembedded.<wbr>or=
g/layerindex/recipe/60914/</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Sat, Mar 10, 2018 at 3:41 PM, Alan Martinovic<br>
&gt;&gt; &lt;<a href=3D"mailto:alan.martinovic@senic.com">alan.martinovic@s=
enic.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Seems like the name of the package is: python-pyqt5<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; A recipe with that name does exist in meta-qt5:<br>
&gt;&gt;&gt; <a href=3D"https://layers.openembedded.org/layerindex/recipe/6=
0914/" rel=3D"noreferrer" target=3D"_blank">https://layers.openembedded.<wb=
r>org/layerindex/recipe/60914/</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; As on why bitbake didn&#39;t automatically set the recipe for =
execution<br>
&gt;&gt;&gt; (based on RDEPENDS) but you would need to manually add it to<b=
r>
&gt;&gt;&gt; IMAGE_INSTALL_append<br>
&gt;&gt;&gt; I don&#39;t know.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Do you have meta-qt5 in your layers?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Sat, Mar 10, 2018 at 1:53 PM, Peter Balazovic<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:balazovic.peter@gmail.com">balazovic.pet=
er@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt; Dears,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; per Yocto build from fsl-arm-yocto-bsp.git - i.MX Linux B=
SP Release<br>
&gt;&gt;&gt; &gt; Yocto<br>
&gt;&gt;&gt; &gt; Project manifests of imx-morty branch I have built fsl-im=
age-qt5 image,<br>
&gt;&gt;&gt; &gt; I<br>
&gt;&gt;&gt; &gt; need to add qt5 python support, how to add to the image?<=
br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Modifying local.conf not works<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; IMAGE_INSTALL_append +=3D &quot;python-pyqt&quot;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; I end up with errors...<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; ERROR: Nothing RPROVIDES &#39;python-pyqt5&#39; (but<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; /home/ubuntu/work/morty/fsl-<wbr>release-bsp-imx6/sources=
/meta-<wbr>fsl-bsp-release/imx/meta-sdk/<wbr>recipes-fsl/images/<a href=3D"=
http://fsl-image-qt5.bb" rel=3D"noreferrer" target=3D"_blank">fsl-image-<wb=
r>qt5.bb</a><br>
&gt;&gt;&gt; &gt; RDEPENDS on or otherwise requires it)<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; NOTE: Runtime target &#39;python-pyqt5&#39; is unbuildabl=
e, removing...<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Missing or unbuildable dependency chain was: [&#39;python=
-pyqt5&#39;]<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; ERROR: Required build target &#39;fsl-image-qt5&#39; has =
no buildable<br>
&gt;&gt;&gt; &gt; providers.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Missing or unbuildable dependency chain was: [&#39;fsl-im=
age-qt5&#39;,<br>
&gt;&gt;&gt; &gt; &#39;python-pyqt5&#39;]<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; How to add python QT5 support to Yocto image build?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Thank you.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt; ______________________________<wbr>_________________<br>
&gt;&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
&gt;&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/l=
istinfo/yocto</a><br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--94eb2c061de6197c88056760d959--
