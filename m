Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D505E00C28; Thu, 17 Mar 2016 09:48:31 -0700 (PDT)
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
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39EFDE00929
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 09:48:28 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id l68so1864931wml.0
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 09:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=niCcv7yJTzKQD+XeZcd0Inhuy1G6k1p2bVVCI5uh0Bg=;
	b=gyf4hRBiq6lSf92OYiOTIPZdz5DvJtJV80SwQwohBOC8svuZ4qbA4mXXKqTtj5YMbQ
	0c7OiSUn3U5zCn4rGZuppzVEvp9il2SnvMNp9P7IiKJxIe9KqqUq7J9YN4wtM5GAGvUo
	2+obUpCmYNaGGaUYmSgSxTDo9kDnvDkef+Rr3wFQ+t4nH3ts54iNpRhdCEBm/Y9o9CxA
	deKZD4cuxObRwbMVKH0hFucXDS6tKlE/KCyjKsADZ1xPV8soHgFRZAaT9SaLheE4ivJ7
	vGj2CFR9VhTjQyn4q7FTUKbYzWR0ResLCNq8/SzcZD2m9/39vJWB4ms5ADcd94gglFsV
	x91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=niCcv7yJTzKQD+XeZcd0Inhuy1G6k1p2bVVCI5uh0Bg=;
	b=HjwyC2yuP628zmWlygUZLczsw0Bclr1T6r6K560eVjWAz04odULIyoDDwPHhQXczbB
	PrhwQknGlPiFjtiLNbRnNvLUbDOvBZ5ypP6RyRDTJSpyLIrS1EfScTfLf+BzPtWLNYIl
	0hCt652CFo/Zqf9SMGrVjrpXf7p5OwBnhkNad7EBh3cdFhdwEH9xHF0xzlju5gJSDStY
	IC7VXc5PqHleB7hMWf1X21mHY/niiPMkkZiUwEdVdvy0LjIWKaxEBPigivquUWszBWWK
	XG0E/m7vk3qcrl0j8CWjm8CPSinr+xwpC7mdmEnsY4W3mKdHxBZraj/e5gxQq3tf9Rc1
	xBPA==
X-Gm-Message-State: AD7BkJKVlE4I1frMNqrYj71qWxaJmOBWPgC7+9w8Rii+b1O1QTOwqlEhM8RwGufNnbb6fB+Ufl3QyZv5svyHKA==
X-Received: by 10.28.126.131 with SMTP id z125mr12443817wmc.77.1458233307605; 
	Thu, 17 Mar 2016 09:48:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.0.83 with HTTP; Thu, 17 Mar 2016 09:47:48 -0700 (PDT)
In-Reply-To: <CABcZANng+D3xeBxm7guy7h1+goXe=oahUhNUS2oGOUaE+BiuRQ@mail.gmail.com>
References: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
	<CABcZANmCEd9p--+p9RPMOMwVJQ27oz4_gJmCADoSw_gN9hf7Jg@mail.gmail.com>
	<CAJgxT39u7GCsSiOrdumoSXmwX0VNtJTON6fTwUBKsuPpkPdxLQ@mail.gmail.com>
	<CAJgxT39uMVv7rvoaYUZ2B3gGNKZtJDfz26oKu5or5o=mTj8h-g@mail.gmail.com>
	<CABcZANmSfTOKbHH+Vx85r5OSJ0KagaEdxF37iJyw4jRqWLywAA@mail.gmail.com>
	<CABcZANng+D3xeBxm7guy7h1+goXe=oahUhNUS2oGOUaE+BiuRQ@mail.gmail.com>
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Thu, 17 Mar 2016 11:47:48 -0500
Message-ID: <CAJgxT39ZssVec-aV9kcpNXg-_FUgfiyHgjKO6qBPTFW0kLNngg@mail.gmail.com>
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
X-List-Received-Date: Thu, 17 Mar 2016 16:48:31 -0000
Content-Type: multipart/alternative; boundary=001a11419f884ccfc8052e4166be

--001a11419f884ccfc8052e4166be
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 17, 2016 at 10:48 AM, Christopher Larson <clarson@kergoth.com>
wrote:

>
>
> On Thu, Mar 17, 2016 at 8:47 AM Christopher Larson <clarson@kergoth.com>
> wrote:
>
>> On Thu, Mar 17, 2016 at 8:43 AM Matt Hoosier <matt.hoosier@gmail.com>
>> wrote:
>>
>>> On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <matt.hoosier@gmail.com>
>>> wrote:
>>>
>>>>
>>>>
>>>> On Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <
>>>> clarson@kergoth.com> wrote:
>>>>
>>>>> On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <matt.hoosier@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> I've successfully built a Canadian-cross SDK using the meta-mingw
>>>>>> layer. Very nice!
>>>>>>
>>>>>> Because the layer lobotomizes the SDK_PACKAGING_FUNC when
>>>>>> ${SDKMACHINE} is set to a MinGW host, though, the resulting SDK is not
>>>>>> encapsulated into the self-extracting tarball and the corresponding
>>>>>> relocation logic (relocate_sdk.py and so forth) is omitted.
>>>>>>
>>>>>> Any suggestions on how to do the last-mile work to use the SDK on
>>>>>> Windows? Or perhaps nothing is needed at all, except adjusting the prefixes
>>>>>> built into environment-setup-<arch>? Although that would be nice, I
>>>>>> think at least some installation-time adjustment is necessary though; when
>>>>>> I do:
>>>>>>
>>>>>>     arm-poky-linux-gnueabi-gcc -o foo foo.c
>>>>>> --sysroot=d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>>>
>>>>>> , the following happens during linking:
>>>>>>
>>>>>>     ld.exe: cannot find /lib/libc.so.6 inside
>>>>>> d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>>>>>
>>>>>
>>>> As it turns out, the immediate error here was simply that libc.so.6 did
>>>> not exist, so ld.exe was telling the truth in this case. The symbolic links
>>>> stored in the SDK tarball that would have created libc.so.6 aren't
>>>> meaningful on Windows, so tar just ignores them when unpacking. Presumably
>>>> some fancier handling of the tarball unpacking to simulate symlinks by
>>>> making copies of the pointed-to file would cure this.
>>>>
>>>>
>>>>>
>>>>> Mark Hatle's branch switches to batch files for environment setup and
>>>>> whatnot. I don't know if it addresses the reloc issue or not, but it's a
>>>>> substantial improvement over master. See
>>>>> https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw
>>>>>
>>>>
>>>> Thanks, I'll try that.
>>>>
>>>
>>> Mark Hatle's branch does work much more nicely for that. There's still
>>> the problem of what to do with the symlink from the SDK tarballs. Are there
>>> any regular users of these mingw SDKs out there who know the right
>>> expectation on how to extract them?
>>>
>>
>> tar has an option to resolve symlinks to the files, I'd expect you could
>> just add that to the variable for the tar options for the sdk, and it'd
>> just duplicate the symlinks. You'll have extra files, so it'd be larger,
>> but at least it'd be functional.
>>
>
> Erm, I meant duplicate the files, not the symlinks :) The symlinks would
> be resolved to files. Clearly I haven't had enough caffeine yet today.
>

Thanks.

If you're thinking of "tar -h -xf ... ", I'd given that a try prior to my
previous message. It doesn't seem to have any effect on the outcome (at
least, for the copy of 'tar' bundled into my installation of MinGW and
MSys).

--001a11419f884ccfc8052e4166be
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Mar 17, 2016 at 10:48 AM, Christopher Larson <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><br><br><div class=
=3D"gmail_quote"><div><div class=3D"h5"><div dir=3D"ltr">On Thu, Mar 17, 20=
16 at 8:47 AM Christopher Larson &lt;<a href=3D"mailto:clarson@kergoth.com"=
 target=3D"_blank">clarson@kergoth.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:=
1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, M=
ar 17, 2016 at 8:43 AM Matt Hoosier &lt;<a href=3D"mailto:matt.hoosier@gmai=
l.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gma=
il_quote">On Wed, Mar 16, 2016 at 4:46 PM, Matt Hoosier <span dir=3D"ltr">&=
lt;<a href=3D"mailto:matt.hoosier@gmail.com" target=3D"_blank">matt.hoosier=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(20=
4,204,204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><br><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><span>On Wed, Mar =
16, 2016 at 4:40 PM, Christopher Larson <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div dir=3D"ltr"><span>On Wed, Mar 16, 2016 =
at 2:32 PM, Matt Hoosier <span dir=3D"ltr">&lt;<a href=3D"mailto:matt.hoosi=
er@gmail.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt;</span> wrote=
:<br></span><div class=3D"gmail_extra"><div class=3D"gmail_quote"><span><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">I&#39;ve successfully built a Canadian-cross=
 SDK using the meta-mingw layer. Very nice!<div><br></div><div>Because the =
layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE} is set to a Min=
GW host, though, the resulting SDK is not encapsulated into the self-extrac=
ting tarball and the corresponding relocation logic (<span style=3D"font-fa=
mily:monospace,monospace">relocate_sdk.py</span>=C2=A0and so forth) is omit=
ted.</div><div><br></div><div>Any suggestions on how to do the last-mile wo=
rk to use the SDK on Windows? Or perhaps nothing is needed at all, except a=
djusting the prefixes built into <font face=3D"monospace, monospace">enviro=
nment-setup-&lt;arch&gt;</font>? Although that would be nice, I think at le=
ast some installation-time adjustment is necessary though; when I do:</div>=
<div><br></div><div><font face=3D"monospace, monospace">=C2=A0 =C2=A0 arm-p=
oky-linux-gnueabi-gcc -o foo foo.c --sysroot=3Dd:/projects/yocto-sdk/sysroo=
ts/cortexa15t2hf-vfp-neon-poky-linux-gnueabi</font></div><div><br></div><di=
v>, the following happens during linking:</div><div><br></div><div><font fa=
ce=3D"monospace, monospace">=C2=A0 =C2=A0 ld.exe: cannot find /lib/libc.so.=
6 inside d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-g=
nueabi</font></div></div></blockquote></span></div></div></div></blockquote=
><div><br></div></span><div>As it turns out, the immediate error here was s=
imply that libc.so.6 did not exist, so ld.exe was telling the truth in this=
 case. The symbolic links stored in the SDK tarball that would have created=
 libc.so.6 aren&#39;t meaningful on Windows, so tar just ignores them when =
unpacking. Presumably some fancier handling of the tarball unpacking to sim=
ulate symlinks by making copies of the pointed-to file would cure this.<br>=
</div><span><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><div class=
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
</blockquote></div><br></div><div class=3D"gmail_extra">Thanks.<div><br></d=
iv><div>If you&#39;re thinking of &quot;tar -h -xf ... &quot;, I&#39;d give=
n that a try prior to my previous message. It doesn&#39;t seem to have any =
effect on the outcome (at least, for the copy of &#39;tar&#39; bundled into=
 my installation of MinGW and MSys).</div></div></div>

--001a11419f884ccfc8052e4166be--
