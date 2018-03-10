Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02396E00E01; Sat, 10 Mar 2018 10:28:46 -0800 (PST)
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
	*      [209.85.160.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f54.google.com (mail-pl0-f54.google.com
	[209.85.160.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEE57E009D7
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 10:28:44 -0800 (PST)
Received: by mail-pl0-f54.google.com with SMTP id v9-v6so7019965plp.12
	for <yocto@yoctoproject.org>; Sat, 10 Mar 2018 10:28:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/zX6nIv//8oaR8T8tXGE7EKrzWqQXdyKGrRCYWqS0dk=;
	b=cChI27xtJB+5U95zYDyjRIpvMfKHiFEvZCmG7ACS2UTtv/OcvLW2YSh/AaY4fiA1oP
	jbzT4onldSdUZz+hhL37yaKkqxSN0yX95DvXt6JHnoTS2xGeTmS02hOu4fZxf9ABMou1
	Jf9JzjT9EHbieIh+TBicSr1EXifV1xVJ1USEKtgNeP3/NeZ6VjBRZq2BpxcC5omNU4X4
	0BmiR62KM3X4u1XvgFqFi3/PvpmCiObmU2IgaOkYCrMPacXHdOV/sqhGUZGsn/rz/No2
	GEQUUMyu+hWm0MUsKSFE2/dbtOMfWEAMU28/JV31EzibnVFSM7+1uthdXxGQRwXZE73n
	DDBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/zX6nIv//8oaR8T8tXGE7EKrzWqQXdyKGrRCYWqS0dk=;
	b=lct6BaBztVvDPWnD0dxLn5+x6GBTfTBKbNXllfFIqTUW08x4zwusWgqHX89KiIySWf
	qSbZuhN9dFX5jvZP0eBCwEEsLXhZ6Kisc35VNG1NRbP+4BDkXbVd+X9oFHwkpoSQbMV0
	pXcZeW0NlqKzW2JI2N9ElBb9jPZ2e/gHsm4oOxoZCO3XngvPOctEQ/oKhSsUaoegixmn
	8jlRUIIQQRYNvOn5fX+AurnVPG7pS3Nt92p5E+yvbFIm6o3nXhuI/J+LxPs0Wr+dzMPY
	dy7sbAjce0bs1abyk7r1N7OhAx72cSeTrr3d6HUlO/v+7iv9wCUsUq+pI3ETNr4wwExb
	+xtA==
X-Gm-Message-State: AElRT7GIJyE+0a9d/9w/P2c34U/Bpab3quEMYcmIu32cRlexd0yvdRK1
	brDr5KL2faADCHs/kVbPXiP7fCgOP0ijLhGdcwTtIQ==
X-Google-Smtp-Source: AG47ELvVzkzT4TrEFFyu+IgwpwfzxfG3s08lXC+QzYuFq5+UN/Gkm7hmXkzi2fe5JUhg3vscBUunFP7hK02biuAUn38=
X-Received: by 2002:a17:902:9a45:: with SMTP id
	x5-v6mr2736135plv.18.1520706524349; 
	Sat, 10 Mar 2018 10:28:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.166.23 with HTTP; Sat, 10 Mar 2018 10:28:43 -0800 (PST)
In-Reply-To: <CAFq4t4j-4B1T4k2fq31eZA0mTYx=kZ1iZFGnUc+kJ6FazmmRGA@mail.gmail.com>
References: <CAFq4t4gHeuROOaP3q7k3_i2BthqH2GQtf93OCTOcb6XhA1ANvw@mail.gmail.com>
	<CAOT_U5Z_Oph_QdPy3XsG-0Wi-e8AYU=BJv4TX+UYjX-F87WdmQ@mail.gmail.com>
	<CAFq4t4j-4B1T4k2fq31eZA0mTYx=kZ1iZFGnUc+kJ6FazmmRGA@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Sat, 10 Mar 2018 19:28:43 +0100
Message-ID: <CAFq4t4iDwYGcV-Zx03+9Xu09KfZRRRUN+-FWQHTsN=YciKMeSg@mail.gmail.com>
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
X-List-Received-Date: Sat, 10 Mar 2018 18:28:46 -0000
Content-Type: multipart/alternative; boundary="000000000000310810056713146c"

--000000000000310810056713146c
Content-Type: text/plain; charset="UTF-8"

i've added "sip" package to my build and mow by using python-pyqt5_5.8.2.bb


ERROR: python-pyqt5-5.8.2-r0 do_patch: Command Error: 'quilt --quiltrc
/home/ubuntu/work/morty/fsl-release-bsp-imx6/build/tmp/sysroots/x86_64-linux/etc/quiltrc
push' exited with 0  Output:
Applying patch fix-sm.patch
patch: **** Only garbage was found in the patch input.
Patch fix-sm.patch does not apply (enforce with -f)
ERROR: python-pyqt5-5.8.2-r0 do_patch: Function failed: patch_do_patch
ERROR: Logfile of failure stored in:
/home/ubuntu/work/morty/fsl-release-bsp-imx6/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/python-pyqt5/5.8.2-r0/temp/log.do_patch.6327
ERROR: Task
(/home/ubuntu/work/morty/fsl-release-bsp-imx6/sources/meta-qt5/recipes-python/pyqt5/python-pyqt5_5.8.2.bb:do_patch)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 7479 tasks of which 7474 didn't need to be
rerun and 1 failed.




On Sat, Mar 10, 2018 at 6:14 PM, Peter Balazovic <balazovic.peter@gmail.com>
wrote:

> I have repo from http://git.freescale.com/git/cgit.cgi/imx/fsl-arm-
> yocto-bsp.git/ branch imx-morty
> there is layer "meta-qt5" but does not contain "python-pyqt" or "
> "python-pyqt5" recipes.
>
> I copied python-pyqt5_5.8.2.bb recipe from https://layers.
> openembedded.org/layerindex/recipe/60914/
>
>
> On Sat, Mar 10, 2018 at 3:41 PM, Alan Martinovic <
> alan.martinovic@senic.com> wrote:
>
>> Seems like the name of the package is: python-pyqt5
>>
>> A recipe with that name does exist in meta-qt5:
>> https://layers.openembedded.org/layerindex/recipe/60914/
>>
>> As on why bitbake didn't automatically set the recipe for execution
>> (based on RDEPENDS) but you would need to manually add it to
>> IMAGE_INSTALL_append
>> I don't know.
>>
>> Do you have meta-qt5 in your layers?
>>
>>
>> On Sat, Mar 10, 2018 at 1:53 PM, Peter Balazovic
>> <balazovic.peter@gmail.com> wrote:
>> > Dears,
>> >
>> >
>> >
>> > per Yocto build from fsl-arm-yocto-bsp.git - i.MX Linux BSP Release
>> Yocto
>> > Project manifests of imx-morty branch I have built fsl-image-qt5 image,
>> I
>> > need to add qt5 python support, how to add to the image?
>> >
>> >
>> >
>> > Modifying local.conf not works
>> >
>> > IMAGE_INSTALL_append += "python-pyqt"
>> >
>> >
>> > I end up with errors...
>> >
>> >
>> > ERROR: Nothing RPROVIDES 'python-pyqt5' (but
>> > /home/ubuntu/work/morty/fsl-release-bsp-imx6/sources/meta-fs
>> l-bsp-release/imx/meta-sdk/recipes-fsl/images/fsl-image-qt5.bb
>> > RDEPENDS on or otherwise requires it)
>> >
>> > NOTE: Runtime target 'python-pyqt5' is unbuildable, removing...
>> >
>> > Missing or unbuildable dependency chain was: ['python-pyqt5']
>> >
>> > ERROR: Required build target 'fsl-image-qt5' has no buildable providers.
>> >
>> > Missing or unbuildable dependency chain was: ['fsl-image-qt5',
>> > 'python-pyqt5']
>> >
>> >
>> >
>> > How to add python QT5 support to Yocto image build?
>> >
>> >
>> > Thank you.
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>

--000000000000310810056713146c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i&#39;ve added &quot;sip&quot; package to my build and mow=
 by using=C2=A0<a href=3D"http://python-pyqt5_5.8.2.bb/" target=3D"_blank" =
style=3D"color:rgb(17,85,204);font-family:arial,sans-serif;font-size:12.8px=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255)">python-pyqt5_5.8.2.bb</a><div><br></div><div><br></div><div><div=
>ERROR: python-pyqt5-5.8.2-r0 do_patch: Command Error: &#39;quilt --quiltrc=
 /home/ubuntu/work/morty/fsl-release-bsp-imx6/build/tmp/sysroots/x86_64-lin=
ux/etc/quiltrc push&#39; exited with 0=C2=A0 Output:</div><div>Applying pat=
ch fix-sm.patch</div><div>patch: **** Only garbage was found in the patch i=
nput.</div><div>Patch fix-sm.patch does not apply (enforce with -f)</div><d=
iv>ERROR: python-pyqt5-5.8.2-r0 do_patch: Function failed: patch_do_patch</=
div><div>ERROR: Logfile of failure stored in: /home/ubuntu/work/morty/fsl-r=
elease-bsp-imx6/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/python-py=
qt5/5.8.2-r0/temp/log.do_patch.6327</div><div>ERROR: Task (/home/ubuntu/wor=
k/morty/fsl-release-bsp-imx6/sources/meta-qt5/recipes-python/pyqt5/python-p=
yqt5_5.8.2.bb:do_patch) failed with exit code &#39;1&#39;</div><div>NOTE: T=
asks Summary: Attempted 7479 tasks of which 7474 didn&#39;t need to be reru=
n and 1 failed.</div><div><br></div><div><br></div><div><br></div></div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Mar 10=
, 2018 at 6:14 PM, Peter Balazovic <span dir=3D"ltr">&lt;<a href=3D"mailto:=
balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I have=
 repo from=C2=A0<a href=3D"http://git.freescale.com/git/cgit.cgi/imx/fsl-ar=
m-yocto-bsp.git/" target=3D"_blank">http://git.freescale.com/<wbr>git/cgit.=
cgi/imx/fsl-arm-<wbr>yocto-bsp.git/</a> branch imx-morty<div>there is layer=
 &quot;meta-qt5&quot; but does not contain &quot;python-pyqt&quot; or &quot=
;<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">&quot;python-pyqt5</span>&quot; recipes.=C2=A0</=
div><div><br></div><div>I copied <a href=3D"http://python-pyqt5_5.8.2.bb" t=
arget=3D"_blank">python-pyqt5_5.8.2.bb</a>=C2=A0recipe from=C2=A0<a href=3D=
"https://layers.openembedded.org/layerindex/recipe/60914/" rel=3D"noreferre=
r" style=3D"color:rgb(17,85,204);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(2=
55,255,255)" target=3D"_blank">https://layers.<wbr>openembedded.org/layerin=
dex/<wbr>recipe/60914/</a>=C2=A0</div><div><div class=3D"h5"><div><br></div=
><div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sat, Mar=
 10, 2018 at 3:41 PM, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mail=
to:alan.martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">S=
eems like the name of the package is: python-pyqt5<br>
<br>
A recipe with that name does exist in meta-qt5:<br>
<a href=3D"https://layers.openembedded.org/layerindex/recipe/60914/" rel=3D=
"noreferrer" target=3D"_blank">https://layers.openembedded.or<wbr>g/layerin=
dex/recipe/60914/</a><br>
<br>
As on why bitbake didn&#39;t automatically set the recipe for execution<br>
(based on RDEPENDS) but you would need to manually add it to<br>
IMAGE_INSTALL_append<br>
I don&#39;t know.<br>
<br>
Do you have meta-qt5 in your layers?<br>
<div class=3D"m_4644083178388279164gmail-HOEnZb"><div class=3D"m_4644083178=
388279164gmail-h5"><br>
<br>
On Sat, Mar 10, 2018 at 1:53 PM, Peter Balazovic<br>
&lt;<a href=3D"mailto:balazovic.peter@gmail.com" target=3D"_blank">balazovi=
c.peter@gmail.com</a>&gt; wrote:<br>
&gt; Dears,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; per Yocto build from fsl-arm-yocto-bsp.git - i.MX Linux BSP Release Yo=
cto<br>
&gt; Project manifests of imx-morty branch I have built fsl-image-qt5 image=
, I<br>
&gt; need to add qt5 python support, how to add to the image?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Modifying local.conf not works<br>
&gt;<br>
&gt; IMAGE_INSTALL_append +=3D &quot;python-pyqt&quot;<br>
&gt;<br>
&gt;<br>
&gt; I end up with errors...<br>
&gt;<br>
&gt;<br>
&gt; ERROR: Nothing RPROVIDES &#39;python-pyqt5&#39; (but<br>
&gt; /home/ubuntu/work/morty/fsl-re<wbr>lease-bsp-imx6/sources/meta-fs<wbr>=
l-bsp-release/imx/meta-sdk/rec<wbr>ipes-fsl/images/<a href=3D"http://fsl-im=
age-qt5.bb" rel=3D"noreferrer" target=3D"_blank">fsl-image-qt5.<wbr>bb</a><=
br>
&gt; RDEPENDS on or otherwise requires it)<br>
&gt;<br>
&gt; NOTE: Runtime target &#39;python-pyqt5&#39; is unbuildable, removing..=
.<br>
&gt;<br>
&gt; Missing or unbuildable dependency chain was: [&#39;python-pyqt5&#39;]<=
br>
&gt;<br>
&gt; ERROR: Required build target &#39;fsl-image-qt5&#39; has no buildable =
providers.<br>
&gt;<br>
&gt; Missing or unbuildable dependency chain was: [&#39;fsl-image-qt5&#39;,=
<br>
&gt; &#39;python-pyqt5&#39;]<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; How to add python QT5 support to Yocto image build?<br>
&gt;<br>
&gt;<br>
&gt; Thank you.<br>
&gt;<br>
</div></div><span class=3D"m_4644083178388279164gmail-HOEnZb"><font color=
=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div></div></div></div></div>
</blockquote></div><br></div>

--000000000000310810056713146c--
