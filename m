Return-Path: <raj.khem@gmail.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28E07E0027E
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 08:36:25 -0700 (PDT)
Received: by mail-ia0-f176.google.com with SMTP id h11so1601220iae.35
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 08:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=bJSUsIeoWvNM9A2DfSDGk3ubnKzc9E/72yge/UT1m2E=;
	b=VoS08taL9WZDF8BEN+RXDPTM6j48FIlDFiZTcAfrFR4DP0MWQPvvs8H7+L0RX0jj3t
	sHNhLlsH3i/9QeccbN4N8FfWyOkkq6467EVCU2+DLjjK0wJaIGbMkVU6+zlhy0cEXP2x
	krUF5e/XGLRgPKAOmKpQBbnvRriPR5YpS2IhUZHo6ShZGrEpC1Xf1KFgIENy+AIEJy1y
	Tl5ROZz4kME9fLZUAQLKWUQBFiF8C90qaGtZmDJO0fUqGuKZBMvfb9f0lZH7ecEj/5Gh
	XebC8rzgs3qe71+/xMQe/NsXzta3xJbbqIrMn2b3Zl3rkN5OxLXhl2YNFIVIcP54Ot5V
	v3Tw==
MIME-Version: 1.0
Received: by 10.50.181.202 with SMTP id dy10mr6470642igc.14.1351179383929;
	Thu, 25 Oct 2012 08:36:23 -0700 (PDT)
Received: by 10.64.103.104 with HTTP; Thu, 25 Oct 2012 08:36:23 -0700 (PDT)
Date: Thu, 25 Oct 2012 08:36:23 -0700
Message-ID: <CAMKF1soY1OUvKu_XMaNKqcu-qxkHH4moXOGq=uuUjJ1DXQ=bVA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-intel/danny][PATCH] meta-crystalforest, linux-yocto_3.4.bbappend: Pin LINUX_VERSION
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 25 Oct 2012 15:36:25 -0000
Content-Type: multipart/alternative; boundary=14dae934038f34fb0504cce3f728

--14dae934038f34fb0504cce3f728
Content-Type: text/plain; charset=UTF-8

That's fine though you should still pin it since it may go out of sync with
oecore again

On Thursday, October 25, 2012, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Tue, 2012-10-23 at 20:56 -0700, Khem Raj wrote:
>> meta-crystalforest BSPs uses 3.4.9 kernel but the default
>> yocto kernel is 3.4.11, if we do not pin the LINUX_VERSION
>> then we get inconsistent version number for bzImage and the modules
>> where modules are installed under /lib/modules/3.4.9-yocto-standard/
>> but kernel is called
>>
bzImage-3.4.11+git2+9e3bdb7344054264b750e53fbbb6394cc1c942ac_1+0985844fa6235422c67ef269952fa4e765f252f9-r4.3-crystalforest-stargo-20121024031021.bin
>>
>> This patch fixes this mismatch. Beaware that other BSPs from
>> meta-intel may need something similar too.
>
> This is because the crystalforest BSP is using ancient kernel SRCREVs,
> corresponding to 3.4.9.
>
> Thanks for sending this patch , but I just pushed a fix for the source
> of the problem by updating the SRCREVs instead.
>
> Tom
>
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git
a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> index 082fe38..92aaa61 100644
>> --- a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> +++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> @@ -15,3 +15,6 @@ SRCREV_machine_pn-linux-yocto_crystalforest-shumway ?=
"0985844fa6235422c67ef269
>>  SRCREV_meta_pn-linux-yocto_crystalforest-shumway ?=
"9e3bdb7344054264b750e53fbbb6394cc1c942ac"
>>
>>  module_autoload_uio = "uio"
>> +
>> +LINUX_VERSION = "3.4.9"
>> +
>
>
>

--14dae934038f34fb0504cce3f728
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

That&#39;s fine though you should still pin it since it may go out of sync =
with oecore again<br><br>On Thursday, October 25, 2012, Tom Zanussi &lt;<a =
href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@intel.com</a>&gt; wrote:<=
br>
&gt; On Tue, 2012-10-23 at 20:56 -0700, Khem Raj wrote:<br>&gt;&gt; meta-cr=
ystalforest BSPs uses 3.4.9 kernel but the default<br>&gt;&gt; yocto kernel=
 is 3.4.11, if we do not pin the LINUX_VERSION<br>&gt;&gt; then we get inco=
nsistent version number for bzImage and the modules<br>
&gt;&gt; where modules are installed under /lib/modules/3.4.9-yocto-standar=
d/<br>&gt;&gt; but kernel is called<br>&gt;&gt; bzImage-3.4.11+git2+9e3bdb7=
344054264b750e53fbbb6394cc1c942ac_1+0985844fa6235422c67ef269952fa4e765f252f=
9-r4.3-crystalforest-stargo-20121024031021.bin<br>
&gt;&gt;<br>&gt;&gt; This patch fixes this mismatch. Beaware that other BSP=
s from<br>&gt;&gt; meta-intel may need something similar too.<br>&gt;<br>&g=
t; This is because the crystalforest BSP is using ancient kernel SRCREVs,<b=
r>
&gt; corresponding to 3.4.9.<br>&gt;<br>&gt; Thanks for sending this patch =
, but I just pushed a fix for the source<br>&gt; of the problem by updating=
 the SRCREVs instead.<br>&gt;<br>&gt; Tom<br>&gt;<br>&gt;&gt;<br>&gt;&gt; S=
igned-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@g=
mail.com</a>&gt;<br>
&gt;&gt; ---<br>&gt;&gt; =C2=A0.../recipes-kernel/linux/linux-yocto_3.4.bba=
ppend =C2=A0| =C2=A0 =C2=A03 +++<br>&gt;&gt; =C2=A01 file changed, 3 insert=
ions(+)<br>&gt;&gt;<br>&gt;&gt; diff --git a/meta-crystalforest/recipes-ker=
nel/linux/linux-yocto_3.4.bbappend b/meta-crystalforest/recipes-kernel/linu=
x/linux-yocto_3.4.bbappend<br>
&gt;&gt; index 082fe38..92aaa61 100644<br>&gt;&gt; --- a/meta-crystalforest=
/recipes-kernel/linux/linux-yocto_3.4.bbappend<br>&gt;&gt; +++ b/meta-cryst=
alforest/recipes-kernel/linux/linux-yocto_3.4.bbappend<br>&gt;&gt; @@ -15,3=
 +15,6 @@ SRCREV_machine_pn-linux-yocto_crystalforest-shumway ?=3D &quot;09=
85844fa6235422c67ef269<br>
&gt;&gt; =C2=A0SRCREV_meta_pn-linux-yocto_crystalforest-shumway ?=3D &quot;=
9e3bdb7344054264b750e53fbbb6394cc1c942ac&quot;<br>&gt;&gt;<br>&gt;&gt; =C2=
=A0module_autoload_uio =3D &quot;uio&quot;<br>&gt;&gt; +<br>&gt;&gt; +LINUX=
_VERSION =3D &quot;3.4.9&quot;<br>
&gt;&gt; +<br>&gt;<br>&gt;<br>&gt;

--14dae934038f34fb0504cce3f728--
