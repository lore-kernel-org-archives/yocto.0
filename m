Return-Path: <ma@telensa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5364CE0084A; Tue, 27 Jun 2017 02:31:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66D60E00524
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 02:31:10 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id f127so13170017pgc.0
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 02:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telensa-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FklGUGOQsEDaicqhQgPLQTJWEnffvju0Fc+Azs3swhM=;
	b=rXCosaTF+6Oh6snzgcWQVq1O/qVgKfm9OfdyP/ZHmdbQa2Beq48DroBji7JNFAc9gl
	jcioDUsFK9/7g3Xh3+lx619RBytQmltibQehtZUHJPMk8PZr5ZZUVTjc70Uoad+sOhjC
	GtmVbQyFQKR31fNgkb+3Tu5ESbpLOt3pLOAYlL0hUYCSPOQeTQQJGd6Gqy/kPVNkBcJN
	nxRHYpLxPHESTnAM6Ul4zlnpgi3MyZYC41qgK4V/RPQkrSaBz9eoalyCsRkdxeHT5cZH
	bH8h7Rmy64nAzwR4wkX+ApMMg5zJ5WsqrsHj2z3prCZtSo7s+iJlZjnSGiSx7t1peuLY
	k13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FklGUGOQsEDaicqhQgPLQTJWEnffvju0Fc+Azs3swhM=;
	b=fT8n595UKnca7fk7wsp8Nju+RR5PBiuIEY1MRDrnoM+3cJ0jxE7qMKrp4uBUIsULcp
	jcnh8Uj5ZJfxneP9r8DXfzaVN5u6gzRp/HyMLNETxP5LVfayKnZXIxdhHNorBpr6nelL
	2Ot2TgA9IR9F24PIRs++GJ51bacvOTYVg3GGESCIITPtODr71ABOj2BD7tYI+sJJBGCR
	5LBFmat5tUxRnzdDVfl3Zs1DThpWfORapw1JP1VVT+/fK1kNRarTnvwlbELpmqVv4HSd
	1BYhKeLoIItJvWGmnlwLq2Ti4qpEdSXVPd7Jy5mpkTS0yugl8UEfgu0DyPkwjmfSOwXX
	iD6Q==
X-Gm-Message-State: AKS2vOz9aR0dq4OG9FJHtssw4ejEDsDOGAWWC6tBU/Dvf4KrcRBT2qVZ
	WRJGbLLq+VQvTdNgd4b4c+Y8q7PClvgATrs=
X-Received: by 10.84.225.5 with SMTP id t5mr4741754plj.108.1498555869725; Tue,
	27 Jun 2017 02:31:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.178.65 with HTTP; Tue, 27 Jun 2017 02:30:49 -0700 (PDT)
In-Reply-To: <CAPtqgUz4WxWWut8ZHd8t-FfRp=y5hXk8j4yGsMGP9FngsLKdeQ@mail.gmail.com>
References: <CAPtqgUzbiQXyvU7qVy95ibN_xpYU7=NyxvjnRUHqRSPOo3Eo4Q@mail.gmail.com>
	<CAMKF1spCGQ_caUvCM8BBXhbdqqZ_WPzc45QpJWohAKkYDDa-aQ@mail.gmail.com>
	<CAPtqgUz4WxWWut8ZHd8t-FfRp=y5hXk8j4yGsMGP9FngsLKdeQ@mail.gmail.com>
From: Miguel Aveiro <ma@telensa.com>
Date: Tue, 27 Jun 2017 10:30:49 +0100
Message-ID: <CAPZBU9b-_zaOFUs6ejaPELG0r4C25V6GjxLUTbp19-JNdseghA@mail.gmail.com>
To: Kenny Koller <kenny@understoryweather.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Determining the correct layers for a Beaglebone build.
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
X-List-Received-Date: Tue, 27 Jun 2017 09:31:12 -0000
Content-Type: multipart/alternative; boundary="f403045eb1424a97960552edbafd"

--f403045eb1424a97960552edbafd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 27 June 2017 at 05:45, Kenny Koller <kenny@understoryweather.com> wrote:

> Thanks Khem,
>
> At the moment I simply want to build a headless minimal install for a
> Beaglebone Black. Once I achieve this I plan to customize the distro for =
my
> device. Here is what I am finding confusing:
>
> This link <https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebone>
> looks to be the place to start. It is the "download" page for the
> Beaglebone. It lists, as a build system, Poky 2.3. It lists as a download
> "git://git.yoctoproject.org/meta-yocto -b pyro" which in turn contains,
> as subdirectories, meta-poky, meta-yocto, and meta-yocto-bsp. But these
> three directories already exist when I check out poky. If I ignore this f=
or
> the moment the layer index suggests that a dependency is openembedded-cor=
e.
> Has this been merged in to Poky or must I clone this as well?
>
> meta-ti isn't mentioned. If I search for meta-ti I find this BSP
> <https://www.yoctoproject.org/product/meta-ti-bsp-layer> which makes me
> think that perhaps this work has been merged in to meta-yocto-bsp as no
> recent version of Poky is supported.
>


=E2=80=8BI should do fine using just the meta-yocto as it has the right ker=
nel
tunning. I've seen other people using the same machine conf file.
=E2=80=8B

>
> Regarding the tags: If I check out the pyro branch of poky am I getting
> something that is stable and has been tested? I thought perhaps the tags
> with `pyro-17.0.0` would point to stable tested commit.
>
> The reason I'm trying to sort all of this out is that when I ran a
> `bitbake core-image-minimal` with Poky Pyro it failed. It was missing
> u-image. All I did was clone Poky/Pyro and set the MACHINE to beaglebone.
> It got pretty far though. It seems to have built the kernel and the devic=
e
> tree binaries. No signs of the root filesystem or the bootloader (u-image=
):
>


=E2=80=8BThat's because you've got zImage, which is perfectly fine. You mig=
ht want
to Google a bit to understand what is uImage, zImage, etc.=E2=80=8B



>
> core-image-base-beaglebone-20170621162619.testdata.json
> core-image-base-beaglebone.testdata.json
> core-image-minimal-beaglebone-20170624014756.testdata.json
> core-image-minimal-beaglebone.testdata.json
> modules--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-
> beaglebone-20170621162619.tgz
> modules-beaglebone.tgz
> zImage
> zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-
> am335x-bone-20170621162619.dtb
> zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-am335x-boneblack-
> 20170621162619.dtb
> zImage--4.10.9+git0+ad2e885015_fe0fb8da3d-r0-beaglebone-20170621162619.bi=
n
> zImage-am335x-boneblack.dtb
> zImage-am335x-bone.dtb
> zImage-beaglebone.bin
>
>
> On Mon, Jun 26, 2017 at 5:18 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Mon, Jun 26, 2017 at 4:35 PM, Kenny Koller
>> <kenny@understoryweather.com> wrote:
>> > I'm trying to figure out which set of meta layers I need to build a
>> distro
>> > and images for a Beaglebone Black.
>> >
>> > I cloned poky and within I see meta-yocto and meta-yocto-bsp. The
>> latter has
>> > recipes for the Beaglebone.
>> >
>> > I also found this page which suggests cloning meta-yocto:
>> >
>> > https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebone
>> >
>> > Then there is meta-ti. Where does this fit in?
>>
>> yocto project used beaglebone black as one of its reference boards
>> so you can find a default reference yocto BSP for it.
>>
>> Secondly, meta-ti is TI BSP layer which also supports beaglebone black
>> since the board is from TI
>>
>>
>> >
>> > Also when I clone say poky should I checkout the branch or a specific
>> tag?
>> >
>>
>> you can use git clone git://git.yoctoproject.org/poky -b pyro
>> for getting latest stable release.
>>
>> > It's not clear to me the best way start with a piece of hardware then
>> > determine the correct layers.
>>
>> I would suggest to do a bit more investigation as to what you need.
>> meanwhile you can build yocto reference BSP and play with it. There
>> are many packages that meta-ti would have that you might need depending
>> upon what you plan to do.
>>
>> >
>> > Thanks.
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f403045eb1424a97960552edbafd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 27 June=
 2017 at 05:45, Kenny Koller <span dir=3D"ltr">&lt;<a href=3D"mailto:kenny@=
understoryweather.com" target=3D"_blank">kenny@understoryweather.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks K=
hem,<div><br></div><div>At the moment I simply want to build a headless min=
imal install for a Beaglebone Black. Once I achieve this I plan to customiz=
e the distro for my device. Here is what I am finding confusing:</div><div>=
<br></div><div><a href=3D"https://www.yoctoproject.org/downloads/bsps/pyro2=
3/beaglebone" target=3D"_blank">This link</a> looks to be the place to star=
t. It is the &quot;download&quot; page for the Beaglebone. It lists, as a b=
uild system, Poky 2.3. It lists as a download &quot;git://<a href=3D"http:/=
/git.yoctoproject.org/meta-yocto" target=3D"_blank">git.yoctoproject.org/<w=
br>meta-yocto</a> -b pyro&quot; which in turn contains, as subdirectories, =
meta-poky, meta-yocto, and meta-yocto-bsp. But these three directories alre=
ady exist when I check out poky. If I ignore this for the moment the layer =
index suggests that a dependency is openembedded-core. Has this been merged=
 in to Poky or must I clone this as well?</div><div><br></div><div>meta-ti =
isn&#39;t mentioned. If I search for meta-ti <a href=3D"https://www.yoctopr=
oject.org/product/meta-ti-bsp-layer" target=3D"_blank">I find this BSP</a> =
which makes me think that perhaps this work has been merged in to meta-yoct=
o-bsp as no recent version of Poky is supported.</div></div></blockquote><d=
iv><br></div><div class=3D"gmail_default" style=3D"font-size:small"><br></d=
iv><div class=3D"gmail_default" style=3D"font-size:small">=E2=80=8BI should=
 do fine using just the meta-yocto as it has the right kernel tunning. I&#3=
9;ve seen other people using the same machine conf file.</div><div class=3D=
"gmail_default" style=3D"font-size:small">=E2=80=8B</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div><br></div><div>Regarding the tags: If I=
 check out the pyro branch of poky am I getting something that is stable an=
d has been tested? I thought perhaps the tags with `pyro-17.0.0` would poin=
t to stable tested commit.</div><div><br></div><div>The reason I&#39;m tryi=
ng to sort all of this out is that when I ran a `bitbake core-image-minimal=
` with Poky Pyro it failed. It was missing u-image. All I did was clone Pok=
y/Pyro and set the MACHINE to beaglebone. It got pretty far though. It seem=
s to have built the kernel and the device tree binaries. No signs of the ro=
ot filesystem or the bootloader (u-image):</div></div></blockquote><div><br=
></div><div><br></div><div><div class=3D"gmail_default" style=3D"font-size:=
small">=E2=80=8BThat&#39;s because you&#39;ve got zImage, which is perfectl=
y fine. You might want to Google a bit to understand what is uImage, zImage=
, etc.=E2=80=8B</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr"><div><br></div><div><div><font face=3D"monospace">core=
-image-base-beaglebone-<wbr>20170621162619.testdata.json</font></div><div><=
font face=3D"monospace">core-image-base-beaglebone.<wbr>testdata.json</font=
></div><div><font face=3D"monospace">core-image-minimal-beaglebone-<wbr>201=
70624014756.testdata.json</font></div><div><font face=3D"monospace">core-im=
age-minimal-beaglebone.<wbr>testdata.json</font></div><div><font face=3D"mo=
nospace">modules--4.10.9+git0+<wbr>ad2e885015_fe0fb8da3d-r0-<wbr>beaglebone=
-20170621162619.tgz</font></div><div><font face=3D"monospace">modules-beagl=
ebone.tgz</font></div><div><font face=3D"monospace">zImage</font></div><div=
><font face=3D"monospace">zImage--4.10.9+git0+<wbr>ad2e885015_fe0fb8da3d-r0=
-<wbr>am335x-bone-20170621162619.dtb</font></div><div><font face=3D"monospa=
ce">zImage--4.10.9+git0+<wbr>ad2e885015_fe0fb8da3d-r0-<wbr>am335x-boneblack=
-<wbr>20170621162619.dtb</font></div><div><font face=3D"monospace">zImage--=
4.10.9+git0+<wbr>ad2e885015_fe0fb8da3d-r0-<wbr>beaglebone-20170621162619.bi=
n</font></div><div><font face=3D"monospace">zImage-am335x-boneblack.dtb</fo=
nt></div><div><font face=3D"monospace">zImage-am335x-bone.dtb</font></div><=
div><font face=3D"monospace">zImage-beaglebone.bin</font></div></div><div><=
br></div></div><div class=3D"HOEnZb"><div class=3D"h5"><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr">On Mon, Jun 26, 2017 at 5:18 PM Khem Raj &lt;<a=
 href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Mon, Jun 26, 2017 a=
t 4:35 PM, Kenny Koller<br>
&lt;<a href=3D"mailto:kenny@understoryweather.com" target=3D"_blank">kenny@=
understoryweather.com</a>&gt; wrote:<br>
&gt; I&#39;m trying to figure out which set of meta layers I need to build =
a distro<br>
&gt; and images for a Beaglebone Black.<br>
&gt;<br>
&gt; I cloned poky and within I see meta-yocto and meta-yocto-bsp. The latt=
er has<br>
&gt; recipes for the Beaglebone.<br>
&gt;<br>
&gt; I also found this page which suggests cloning meta-yocto:<br>
&gt;<br>
&gt; <a href=3D"https://www.yoctoproject.org/downloads/bsps/pyro23/beaglebo=
ne" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/<wbr>=
downloads/bsps/pyro23/<wbr>beaglebone</a><br>
&gt;<br>
&gt; Then there is meta-ti. Where does this fit in?<br>
<br>
yocto project used beaglebone black as one of its reference boards<br>
so you can find a default reference yocto BSP for it.<br>
<br>
Secondly, meta-ti is TI BSP layer which also supports beaglebone black<br>
since the board is from TI<br>
<br>
<br>
&gt;<br>
&gt; Also when I clone say poky should I checkout the branch or a specific =
tag?<br>
&gt;<br>
<br>
you can use git clone git://<a href=3D"http://git.yoctoproject.org/poky" re=
l=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/<wbr>poky</a> -b py=
ro<br>
for getting latest stable release.<br>
<br>
&gt; It&#39;s not clear to me the best way start with a piece of hardware t=
hen<br>
&gt; determine the correct layers.<br>
<br>
I would suggest to do a bit more investigation as to what you need.<br>
meanwhile you can build yocto reference BSP and play with it. There<br>
are many packages that meta-ti would have that you might need depending<br>
upon what you plan to do.<br>
<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</blockquote></div>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--f403045eb1424a97960552edbafd--
