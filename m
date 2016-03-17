Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 168E9E00C2B; Thu, 17 Mar 2016 11:35:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8772DE00931
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 11:35:50 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id p65so38669445wmp.1
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 11:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oru4kyVCHqBD2QTZzA7psb1M0uAA0LaTxdXmP7MStfc=;
	b=vCP/FUMPChxehTsr+eMhSVMUxUzklI7vboG3HSBM88fOQueLsO10Yo6eVnSRNKT7iX
	q1Xc4MtST4uebo4zVYSnNkoM2EpEAF32qRLT+urZMM57X7NaxScD6UeF2FgWacR7UqOB
	ydFxkuK918Eb3Qq+jNeG7K0lpE6eoynXTwkgUC1U9ziz6v2scN2tNUdwJcL6sWMOyo78
	QN1N+Ef8uNEhpoGKGkiw1TzBd02BTuTRzj6fbI95lereT3CcTthzNS7gpAl7qtDFDre6
	4XjWKrUCeGJnhKlFS/KkKcmHxmdL5LlLNNiH52yrs+99E6NFifenlR01TaIrbwvraHO3
	12cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oru4kyVCHqBD2QTZzA7psb1M0uAA0LaTxdXmP7MStfc=;
	b=HAJ8B7vFgugbMsoqGcSA0iSdiTKudY7uQWkOccRjTYw0E9DmKrU10MeBgAuGeov5Vn
	zgb0+XPYIWxdpKuYQCuQbJKH8mmmDgeq3xLbGT9TOuhWGBRpSMnVcVbY4ZYW0uK44JMg
	mjBhjv5V3l58kODY2l7JwiTagdD9BEmoeYj5pknJyApJx1d0Coz32LhFQYlbjLhDEvUT
	zk3NbbsWHGz8/vsSHO+h9fAioHBwrnGFRbC/+zggMcbgAe96CdcaqvT6lHoEPcMZ6xWz
	hDLI5ggz1a0S5DK1GS9PvNmPUjzIsTOWS392IzYpxg/MLvaRVlnDk9v25t5V6X97/5OP
	gKaQ==
X-Gm-Message-State: AD7BkJI6MD1btCeWGc4+8Ce1idfpzmQ4taQExsC6gZfA+n69v+XLBwv2dPgjMLl8LrI8zV9RRr1LawijU3uoSg==
X-Received: by 10.28.103.3 with SMTP id b3mr35550617wmc.65.1458239749306; Thu,
	17 Mar 2016 11:35:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.0.83 with HTTP; Thu, 17 Mar 2016 11:35:09 -0700 (PDT)
In-Reply-To: <CABcZAN=0sxMb9iAxaVmuJ-On3S6CWd_K2yp99ui6rRsb_nXfMA@mail.gmail.com>
References: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
	<CABcZANmCEd9p--+p9RPMOMwVJQ27oz4_gJmCADoSw_gN9hf7Jg@mail.gmail.com>
	<CAJgxT39u7GCsSiOrdumoSXmwX0VNtJTON6fTwUBKsuPpkPdxLQ@mail.gmail.com>
	<CAJgxT39uMVv7rvoaYUZ2B3gGNKZtJDfz26oKu5or5o=mTj8h-g@mail.gmail.com>
	<CABcZANmSfTOKbHH+Vx85r5OSJ0KagaEdxF37iJyw4jRqWLywAA@mail.gmail.com>
	<CABcZANng+D3xeBxm7guy7h1+goXe=oahUhNUS2oGOUaE+BiuRQ@mail.gmail.com>
	<CAJgxT39ZssVec-aV9kcpNXg-_FUgfiyHgjKO6qBPTFW0kLNngg@mail.gmail.com>
	<CABcZAN=0sxMb9iAxaVmuJ-On3S6CWd_K2yp99ui6rRsb_nXfMA@mail.gmail.com>
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Thu, 17 Mar 2016 13:35:09 -0500
Message-ID: <CAJgxT3_aHiY+bNohzr4bfjc51KsDrDqm7h3Y76GzfiJfbjPK3g@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
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
X-List-Received-Date: Thu, 17 Mar 2016 18:35:54 -0000
Content-Type: multipart/alternative; boundary=001a114a91b2413fb7052e42e663

--001a114a91b2413fb7052e42e663
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 17, 2016 at 11:56 AM, Christopher Larson <clarson@kergoth.com>
wrote:

>
>
> On Thu, Mar 17, 2016 at 9:48 AM Matt Hoosier <matt.hoosier@gmail.com>
> wrote:
>
>> On Thu, Mar 17, 2016 at 10:48 AM, Christopher Larson <clarson@kergoth.com
>> > wrote:
>>
>>>
>>>
>>> On Thu, Mar 17, 2016 at 8:47 AM Christopher Larson <clarson@kergoth.com>
>>> wrote:
>>>
>>>> On Thu, Mar 17, 2016 at 8:43 AM Matt Hoosier <matt.hoosier@gmail.com>
>>>> wrote:
>>>>
>>>>> On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <matt.hoosier@gmail.com>
>>>>> wrote:
>>>>>
>>>>>>
>>>>>>
>>>>>> On Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <
>>>>>> clarson@kergoth.com> wrote:
>>>>>>
>>>>>>> On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <
>>>>>>> matt.hoosier@gmail.com> wrote:
>>>>>>>
>>>>>>>> I've successfully built a Canadian-cross SDK using the meta-mingw
>>>>>>>> layer. Very nice!
>>>>>>>>
>>>>>>>> Because the layer lobotomizes the SDK_PACKAGING_FUNC when
>>>>>>>> ${SDKMACHINE} is set to a MinGW host, though, the resulting SDK is not
>>>>>>>> encapsulated into the self-extracting tarball and the corresponding
>>>>>>>> relocation logic (relocate_sdk.py and so forth) is omitted.
>>>>>>>>
>>>>>>>> Any suggestions on how to do the last-mile work to use the SDK on
>>>>>>>> Windows? Or perhaps nothing is needed at all, except adjusting the prefixes
>>>>>>>> built into environment-setup-<arch>? Although that would be nice,
>>>>>>>> I think at least some installation-time adjustment is necessary though;
>>>>>>>> when I do:
>>>>>>>>
>>>>>>>>     arm-poky-linux-gnueabi-gcc -o foo foo.c
>>>>>>>> --sysroot=d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>>>>>
>>>>>>>> , the following happens during linking:
>>>>>>>>
>>>>>>>>     ld.exe: cannot find /lib/libc.so.6 inside
>>>>>>>> d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>>>>>
>>>>>>>
>>>>>> As it turns out, the immediate error here was simply that libc.so.6
>>>>>> did not exist, so ld.exe was telling the truth in this case. The symbolic
>>>>>> links stored in the SDK tarball that would have created libc.so.6 aren't
>>>>>> meaningful on Windows, so tar just ignores them when unpacking. Presumably
>>>>>> some fancier handling of the tarball unpacking to simulate symlinks by
>>>>>> making copies of the pointed-to file would cure this.
>>>>>>
>>>>>>
>>>>>>>
>>>>>>> Mark Hatle's branch switches to batch files for environment setup
>>>>>>> and whatnot. I don't know if it addresses the reloc issue or not, but it's
>>>>>>> a substantial improvement over master. See
>>>>>>> https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw
>>>>>>>
>>>>>>
>>>>>> Thanks, I'll try that.
>>>>>>
>>>>>
>>>>> Mark Hatle's branch does work much more nicely for that. There's still
>>>>> the problem of what to do with the symlink from the SDK tarballs. Are there
>>>>> any regular users of these mingw SDKs out there who know the right
>>>>> expectation on how to extract them?
>>>>>
>>>>
>>>> tar has an option to resolve symlinks to the files, I'd expect you
>>>> could just add that to the variable for the tar options for the sdk, and
>>>> it'd just duplicate the symlinks. You'll have extra files, so it'd be
>>>> larger, but at least it'd be functional.
>>>>
>>>
>>> Erm, I meant duplicate the files, not the symlinks :) The symlinks would
>>> be resolved to files. Clearly I haven't had enough caffeine yet today.
>>>
>>
>> Thanks.
>>
>> If you're thinking of "tar -h -xf ... ", I'd given that a try prior to my
>> previous message. It doesn't seem to have any effect on the outcome (at
>> least, for the copy of 'tar' bundled into my installation of MinGW and
>> MSys).
>>
>
> No, I was thinking of changing the tar *creation* rather than extraction,
> so the symlinks are followed and stored as files in the tarball.
>

Ah. In that case, this is apparently a situation with no good general
solution. The conf files used in meta-mingw make a point of saying not to
attempt that, as it's been observed to result in infinite loops at tarball
creation-time. The particular blurb in question says:

    # Causes an endless loop
    #SDKTAROPTS_append = "-h --hard-dereference"

The commit that adopted this policy says that the looping is triggered on
certain cross-compilers' complements of system headers. That seems like
something I can test for and be fairly confident whether or not it'll
strike my particular configuration, so I imagine the symlink expansion can
safely be re-enabled on site-local configurations with little risk.

Thanks for the suggestions.

--001a114a91b2413fb7052e42e663
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Mar 17, 2016 at 11:56 AM, Christopher Larson <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><br><br><div class=
=3D"gmail_quote"><div><div><div dir=3D"ltr">On Thu, Mar 17, 2016 at 9:48 AM=
 Matt Hoosier &lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=3D"_blan=
k">matt.hoosier@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On Thu, Mar =
17, 2016 at 10:48 AM, Christopher Larson <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex"><div dir=3D"ltr"><br><br><div class=3D"gmai=
l_quote"><div><div><div dir=3D"ltr">On Thu, Mar 17, 2016 at 8:47 AM Christo=
pher Larson &lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">cl=
arson@kergoth.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:=
rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Mar 17, 2016 at 8:43 A=
M Matt Hoosier &lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=3D"_bla=
nk">matt.hoosier@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-le=
ft-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div di=
r=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On Wed, Mar=
 16, 2016 at 4:46 PM, Matt Hoosier <span dir=3D"ltr">&lt;<a href=3D"mailto:=
matt.hoosier@gmail.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-lef=
t-style:solid;padding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote"><span>On Wed, Mar 16, 2016 at 4:40 PM, =
Christopher Larson <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.=
com" target=3D"_blank">clarson@kergoth.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wi=
dth:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-=
left:1ex"><div dir=3D"ltr"><span>On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoos=
ier <span dir=3D"ltr">&lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=
=3D"_blank">matt.hoosier@gmail.com</a>&gt;</span> wrote:<br></span><div cla=
ss=3D"gmail_extra"><div class=3D"gmail_quote"><span><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">I&#39;ve successfully built a Canadian-cross SDK using the meta-=
mingw layer. Very nice!<div><br></div><div>Because the layer lobotomizes th=
e SDK_PACKAGING_FUNC when ${SDKMACHINE} is set to a MinGW host, though, the=
 resulting SDK is not encapsulated into the self-extracting tarball and the=
 corresponding relocation logic (<span style=3D"font-family:monospace,monos=
pace">relocate_sdk.py</span>=C2=A0and so forth) is omitted.</div><div><br><=
/div><div>Any suggestions on how to do the last-mile work to use the SDK on=
 Windows? Or perhaps nothing is needed at all, except adjusting the prefixe=
s built into <font face=3D"monospace, monospace">environment-setup-&lt;arch=
&gt;</font>? Although that would be nice, I think at least some installatio=
n-time adjustment is necessary though; when I do:</div><div><br></div><div>=
<font face=3D"monospace, monospace">=C2=A0 =C2=A0 arm-poky-linux-gnueabi-gc=
c -o foo foo.c --sysroot=3Dd:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp=
-neon-poky-linux-gnueabi</font></div><div><br></div><div>, the following ha=
ppens during linking:</div><div><br></div><div><font face=3D"monospace, mon=
ospace">=C2=A0 =C2=A0 ld.exe: cannot find /lib/libc.so.6 inside d:/projects=
/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi</font></div><=
/div></blockquote></span></div></div></div></blockquote><div><br></div></sp=
an><div>As it turns out, the immediate error here was simply that libc.so.6=
 did not exist, so ld.exe was telling the truth in this case. The symbolic =
links stored in the SDK tarball that would have created libc.so.6 aren&#39;=
t meaningful on Windows, so tar just ignores them when unpacking. Presumabl=
y some fancier handling of the tarball unpacking to simulate symlinks by ma=
king copies of the pointed-to file would cure this.<br></div><span><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-styl=
e:solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><span><div><br></div></span><div>Mark Hatle&#39;s bra=
nch switches to batch files for environment setup and whatnot. I don&#39;t =
know if it addresses the reloc issue or not, but it&#39;s a substantial imp=
rovement over master. See <a href=3D"https://git.yoctoproject.org/cgit.cgi/=
poky-contrib/log/?h=3Dmgh/meta-mingw" target=3D"_blank">https://git.yoctopr=
oject.org/cgit.cgi/poky-contrib/log/?h=3Dmgh/meta-mingw</a> <br></div></div=
></div></div></blockquote><div><br></div></span><div>Thanks, I&#39;ll try t=
hat.</div></div></div></div></blockquote><div><br></div></div></div></div><=
div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div>=
Mark Hatle&#39;s branch does work much more nicely for that. There&#39;s st=
ill the problem of what to do with the symlink from the SDK tarballs. Are t=
here any regular users of these mingw SDKs out there who know the right exp=
ectation on how to extract them?</div></div></div></div></blockquote><div>=
=C2=A0</div></div></div><div dir=3D"ltr"><div class=3D"gmail_quote"><div>ta=
r has an option to resolve symlinks to the files, I&#39;d expect you could =
just add that to the variable for the tar options for the sdk, and it&#39;d=
 just duplicate the symlinks. You&#39;ll have extra files, so it&#39;d be l=
arger, but at least it&#39;d be functional.</div></div></div></blockquote><=
div><br></div></div></div><div>Erm, I meant duplicate the files, not the sy=
mlinks :) The symlinks would be resolved to files. Clearly I haven&#39;t ha=
d enough caffeine yet today.=C2=A0</div></div></div>
</blockquote></div><br></div></div><div dir=3D"ltr"><div class=3D"gmail_ext=
ra">Thanks.<div><br></div><div>If you&#39;re thinking of &quot;tar -h -xf .=
.. &quot;, I&#39;d given that a try prior to my previous message. It doesn&=
#39;t seem to have any effect on the outcome (at least, for the copy of &#3=
9;tar&#39; bundled into my installation of MinGW and MSys).</div></div></di=
v></blockquote><div><br></div></div></div><div>No, I was thinking of changi=
ng the tar *creation* rather than extraction, so the symlinks are followed =
and stored as files in the tarball.=C2=A0</div></div></div>
</blockquote></div><br></div><div class=3D"gmail_extra">Ah. In that case, t=
his is apparently a situation with no good general solution. The conf files=
 used in meta-mingw make a point of saying not to attempt that, as it&#39;s=
 been observed to result in infinite loops at tarball creation-time. The pa=
rticular blurb in question says:<br></div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">=C2=A0 =C2=A0 # Causes an endless loop</div>=
<div class=3D"gmail_extra">=C2=A0 =C2=A0 #SDKTAROPTS_append =3D &quot;-h --=
hard-dereference&quot;</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">The commit that adopted this policy says that the looping =
is triggered on certain cross-compilers&#39; complements of system headers.=
 That seems like something I can test for and be fairly confident whether o=
r not it&#39;ll strike my particular configuration, so I imagine the symlin=
k expansion can safely be re-enabled on site-local configurations with litt=
le risk.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">Thanks for the suggestions.</div></div>

--001a114a91b2413fb7052e42e663--
