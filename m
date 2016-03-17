Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA46BE00C28; Thu, 17 Mar 2016 09:56:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86032E00929
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 09:56:46 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id n190so106713152iof.0
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 09:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hkuF94VMLUhX8IwpM68ta8tNwX3OWJQSKkjdnKRLOmY=;
	b=xpBzccjEjSGAU+ZZqkVGtj31DOGxgl8YhWQMSci+6r9vaIt56SN2BggM1WMT1xVTnU
	A7ngnL8NTLNhfhX65+jjC/QuL8Z5+JDNY5iNKxiGTfnhja38XIys8V6EajdvM5gygj3a
	dZI6920yU2O9DKiGec8lMkLbYwF9+lOlPOB97Cyu7nficA4VvHzkYdnqs3Ycjvft88/0
	niAYXbOOLSLe7Vlki0G6Ld4X15ydakUzhWpmgF5PmPXvGXvM1OG1YGL/gyM7RRV8ky5w
	QkS9S4kTWBR0xwU2pz0A7ucxuL9WErSFBqV1MgpnA73PVCkpcVaaqfLYGvWFKKM2IYpO
	Oimw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hkuF94VMLUhX8IwpM68ta8tNwX3OWJQSKkjdnKRLOmY=;
	b=ZkMmRdWYTm0/l/+IJF97iTwSuhp18s/h/j1P3bt15htScStdLIV/YkDM/EZiuAtLh4
	KFw/HZ6xe2NK/+VfQclk8keuiiZ91bKJPo3WQl+KR34K8dxaBTGSkZ3VOBvFcTVed2U9
	blby8rdOaZtX3PVuknaPMDzaJt4Zlh2HWsq+CrZsDanB8UtEzYfSodUKWhv5rMhdNdz6
	wJMqbylPgPUrv0+uEU7EtY+zo3SftjWvoQYU/9J3PvHRj36ss5N8Q7zOyG4cod81CO4a
	ngchLRFzP0ijDo7zGB51WRd+s1TzK3hRQoU0HP288o4uMek01nLwTBmIGgeQ9YE8C+v9
	NF4A==
X-Gm-Message-State: AD7BkJIThynjxyBMo1d/aUNM/k8uAKwCY9f44qbXHJr+djb6It1OsYT/CaBTD3w3QgtriWVMCCknbW1WlU8+fg==
X-Received: by 10.107.169.68 with SMTP id s65mr10962505ioe.126.1458233806006; 
	Thu, 17 Mar 2016 09:56:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
	<CABcZANmCEd9p--+p9RPMOMwVJQ27oz4_gJmCADoSw_gN9hf7Jg@mail.gmail.com>
	<CAJgxT39u7GCsSiOrdumoSXmwX0VNtJTON6fTwUBKsuPpkPdxLQ@mail.gmail.com>
	<CAJgxT39uMVv7rvoaYUZ2B3gGNKZtJDfz26oKu5or5o=mTj8h-g@mail.gmail.com>
	<CABcZANmSfTOKbHH+Vx85r5OSJ0KagaEdxF37iJyw4jRqWLywAA@mail.gmail.com>
	<CABcZANng+D3xeBxm7guy7h1+goXe=oahUhNUS2oGOUaE+BiuRQ@mail.gmail.com>
	<CAJgxT39ZssVec-aV9kcpNXg-_FUgfiyHgjKO6qBPTFW0kLNngg@mail.gmail.com>
In-Reply-To: <CAJgxT39ZssVec-aV9kcpNXg-_FUgfiyHgjKO6qBPTFW0kLNngg@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Thu, 17 Mar 2016 16:56:36 +0000
Message-ID: <CABcZAN=0sxMb9iAxaVmuJ-On3S6CWd_K2yp99ui6rRsb_nXfMA@mail.gmail.com>
To: Matt Hoosier <matt.hoosier@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Installing the SDKs made with meta-mingw
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
X-List-Received-Date: Thu, 17 Mar 2016 16:56:51 -0000
Content-Type: multipart/alternative; boundary=001a1142268801b408052e4184a0

--001a1142268801b408052e4184a0
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 17, 2016 at 9:48 AM Matt Hoosier <matt.hoosier@gmail.com> wrote:

> On Thu, Mar 17, 2016 at 10:48 AM, Christopher Larson <clarson@kergoth.com>
> wrote:
>
>>
>>
>> On Thu, Mar 17, 2016 at 8:47 AM Christopher Larson <clarson@kergoth.com>
>> wrote:
>>
>>> On Thu, Mar 17, 2016 at 8:43 AM Matt Hoosier <matt.hoosier@gmail.com>
>>> wrote:
>>>
>>>> On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <matt.hoosier@gmail.com>
>>>> wrote:
>>>>
>>>>>
>>>>>
>>>>> On Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <
>>>>> clarson@kergoth.com> wrote:
>>>>>
>>>>>> On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <matt.hoosier@gmail.com
>>>>>> > wrote:
>>>>>>
>>>>>>> I've successfully built a Canadian-cross SDK using the meta-mingw
>>>>>>> layer. Very nice!
>>>>>>>
>>>>>>> Because the layer lobotomizes the SDK_PACKAGING_FUNC when
>>>>>>> ${SDKMACHINE} is set to a MinGW host, though, the resulting SDK is not
>>>>>>> encapsulated into the self-extracting tarball and the corresponding
>>>>>>> relocation logic (relocate_sdk.py and so forth) is omitted.
>>>>>>>
>>>>>>> Any suggestions on how to do the last-mile work to use the SDK on
>>>>>>> Windows? Or perhaps nothing is needed at all, except adjusting the prefixes
>>>>>>> built into environment-setup-<arch>? Although that would be nice, I
>>>>>>> think at least some installation-time adjustment is necessary though; when
>>>>>>> I do:
>>>>>>>
>>>>>>>     arm-poky-linux-gnueabi-gcc -o foo foo.c
>>>>>>> --sysroot=d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>>>>
>>>>>>> , the following happens during linking:
>>>>>>>
>>>>>>>     ld.exe: cannot find /lib/libc.so.6 inside
>>>>>>> d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>>>>
>>>>>>
>>>>> As it turns out, the immediate error here was simply that libc.so.6
>>>>> did not exist, so ld.exe was telling the truth in this case. The symbolic
>>>>> links stored in the SDK tarball that would have created libc.so.6 aren't
>>>>> meaningful on Windows, so tar just ignores them when unpacking. Presumably
>>>>> some fancier handling of the tarball unpacking to simulate symlinks by
>>>>> making copies of the pointed-to file would cure this.
>>>>>
>>>>>
>>>>>>
>>>>>> Mark Hatle's branch switches to batch files for environment setup and
>>>>>> whatnot. I don't know if it addresses the reloc issue or not, but it's a
>>>>>> substantial improvement over master. See
>>>>>> https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw
>>>>>>
>>>>>
>>>>> Thanks, I'll try that.
>>>>>
>>>>
>>>> Mark Hatle's branch does work much more nicely for that. There's still
>>>> the problem of what to do with the symlink from the SDK tarballs. Are there
>>>> any regular users of these mingw SDKs out there who know the right
>>>> expectation on how to extract them?
>>>>
>>>
>>> tar has an option to resolve symlinks to the files, I'd expect you could
>>> just add that to the variable for the tar options for the sdk, and it'd
>>> just duplicate the symlinks. You'll have extra files, so it'd be larger,
>>> but at least it'd be functional.
>>>
>>
>> Erm, I meant duplicate the files, not the symlinks :) The symlinks would
>> be resolved to files. Clearly I haven't had enough caffeine yet today.
>>
>
> Thanks.
>
> If you're thinking of "tar -h -xf ... ", I'd given that a try prior to my
> previous message. It doesn't seem to have any effect on the outcome (at
> least, for the copy of 'tar' bundled into my installation of MinGW and
> MSys).
>

No, I was thinking of changing the tar *creation* rather than extraction,
so the symlinks are followed and stored as files in the tarball.

--001a1142268801b408052e4184a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu=
, Mar 17, 2016 at 9:48 AM Matt Hoosier &lt;<a href=3D"mailto:matt.hoosier@g=
mail.com">matt.hoosier@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gma=
il_quote">On Thu, Mar 17, 2016 at 10:48 AM, Christopher Larson <span dir=3D=
"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@=
kergoth.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(2=
04,204,204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><br>=
<br><div class=3D"gmail_quote"><div><div><div dir=3D"ltr">On Thu, Mar 17, 2=
016 at 8:47 AM Christopher Larson &lt;<a href=3D"mailto:clarson@kergoth.com=
" target=3D"_blank">clarson@kergoth.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left=
:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, =
Mar 17, 2016 at 8:43 AM Matt Hoosier &lt;<a href=3D"mailto:matt.hoosier@gma=
il.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pad=
ding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gm=
ail_quote">On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <span dir=3D"ltr">=
&lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=3D"_blank">matt.hoosie=
r@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(2=
04,204,204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><br>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><span>On Wed, Mar=
 16, 2016 at 4:40 PM, Christopher Larson <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex"><div dir=3D"ltr"><span>On Wed, Mar 16, 2016=
 at 2:32 PM, Matt Hoosier <span dir=3D"ltr">&lt;<a href=3D"mailto:matt.hoos=
ier@gmail.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt;</span> wrot=
e:<br></span><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">I&#39;ve successfully built a Canadian-cros=
s SDK using the meta-mingw layer. Very nice!<div><br></div><div>Because the=
 layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE} is set to a Mi=
nGW host, though, the resulting SDK is not encapsulated into the self-extra=
cting tarball and the corresponding relocation logic (<span style=3D"font-f=
amily:monospace,monospace">relocate_sdk.py</span>=C2=A0and so forth) is omi=
tted.</div><div><br></div><div>Any suggestions on how to do the last-mile w=
ork to use the SDK on Windows? Or perhaps nothing is needed at all, except =
adjusting the prefixes built into <font face=3D"monospace, monospace">envir=
onment-setup-&lt;arch&gt;</font>? Although that would be nice, I think at l=
east some installation-time adjustment is necessary though; when I do:</div=
><div><br></div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 arm-=
poky-linux-gnueabi-gcc -o foo foo.c --sysroot=3Dd:/projects/yocto-sdk/sysro=
ots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi</font></div><div><br></div><d=
iv>, the following happens during linking:</div><div><br></div><div><font f=
ace=3D"monospace, monospace">=C2=A0 =C2=A0 ld.exe: cannot find /lib/libc.so=
.6 inside d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-=
gnueabi</font></div></div></blockquote></span></div></div></div></blockquot=
e><div><br></div></span><div>As it turns out, the immediate error here was =
simply that libc.so.6 did not exist, so ld.exe was telling the truth in thi=
s case. The symbolic links stored in the SDK tarball that would have create=
d libc.so.6 aren&#39;t meaningful on Windows, so tar just ignores them when=
 unpacking. Presumably some fancier handling of the tarball unpacking to si=
mulate symlinks by making copies of the pointed-to file would cure this.<br=
></div><span><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><span><div><br></div></span><di=
v>Mark Hatle&#39;s branch switches to batch files for environment setup and=
 whatnot. I don&#39;t know if it addresses the reloc issue or not, but it&#=
39;s a substantial improvement over master. See <a href=3D"https://git.yoct=
oproject.org/cgit.cgi/poky-contrib/log/?h=3Dmgh/meta-mingw" target=3D"_blan=
k">https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dmgh/meta-min=
gw</a> <br></div></div></div></div></blockquote><div><br></div></span><div>=
Thanks, I&#39;ll try that.</div></div></div></div></blockquote><div><br></d=
iv></div></div></div><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><div>Mark Hatle&#39;s branch does work much more nicely fo=
r that. There&#39;s still the problem of what to do with the symlink from t=
he SDK tarballs. Are there any regular users of these mingw SDKs out there =
who know the right expectation on how to extract them?</div></div></div></d=
iv></blockquote><div>=C2=A0</div></div></div><div dir=3D"ltr"><div class=3D=
"gmail_quote"><div>tar has an option to resolve symlinks to the files, I&#3=
9;d expect you could just add that to the variable for the tar options for =
the sdk, and it&#39;d just duplicate the symlinks. You&#39;ll have extra fi=
les, so it&#39;d be larger, but at least it&#39;d be functional.</div></div=
></div></blockquote><div><br></div></div></div><div>Erm, I meant duplicate =
the files, not the symlinks :) The symlinks would be resolved to files. Cle=
arly I haven&#39;t had enough caffeine yet today.=C2=A0</div></div></div>
</blockquote></div><br></div></div><div dir=3D"ltr"><div class=3D"gmail_ext=
ra">Thanks.<div><br></div><div>If you&#39;re thinking of &quot;tar -h -xf .=
.. &quot;, I&#39;d given that a try prior to my previous message. It doesn&=
#39;t seem to have any effect on the outcome (at least, for the copy of &#3=
9;tar&#39; bundled into my installation of MinGW and MSys).</div></div></di=
v></blockquote><div><br></div><div>No, I was thinking of changing the tar *=
creation* rather than extraction, so the symlinks are followed and stored a=
s files in the tarball.=C2=A0</div></div></div>

--001a1142268801b408052e4184a0--
