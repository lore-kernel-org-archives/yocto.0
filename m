Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27E3DE00E4B; Tue,  6 Mar 2018 12:24:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93757E00A9C
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 12:24:38 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id q24so396824ioh.8
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 12:24:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9jLjEbKk5vGxps/0keXCnw2sq8eQ4NcCvMC4b0uygyE=;
	b=GRX6grQYn1l566sHYuNK+iS5VMMzFmMqZWjgFS28NZKN3CwaMSvliZshPwKDUKIMtn
	cWkOSDRtDv9w+ibvrvM+3khxdTx5p+WRI9iMbU+UUbRPw87dMzzwqal5+R21zgEUA/Lk
	w0hZav7ec6TIA1nz3jnCLn4RP1t//c9luYEewNob9hAFIkv4WcBD0BzrT/vn8HrtJ2ck
	4Bx0Qq3EoQVaK2Wsq26TMLyB4Kg8jbeCwxBzkEjtIS4qC7RNVmKYkckT3JvjTbnzK8VD
	wmB6LluA3vOBFdr35LbcQ9aLilICjFX4bGG7LL0LaI8mi/0y6dehKRz75z10C18RpJQV
	NtAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9jLjEbKk5vGxps/0keXCnw2sq8eQ4NcCvMC4b0uygyE=;
	b=fAvdWS/I//N98F2XJQjeB15HbnwW/H0HaXJcn3Uyx0Bq4xrWsSXFzVmLylhvokD5tx
	c2pNaq68ShptdjDTCeHB5sw2cCqJ/lmlhkvTh7D1M/T1hl5OqhqddHV/TO3IGI0j7S9W
	DbqIGFmZWvjGw89spClcPe2Ze3YiC5Rf0QC+SoklWSllBhbobmNzUGdO6krAAStXbkHL
	OE9GOM8WQnFLdNxg8l2V4qPG0nPR5DgnH32zr+g+2+RfPqsY+1Evtlf700Z0dkKY+P3+
	Yp6AbWKRl/by0wFmI/SC0bw3UhEwGjUET122yvsYWOGlQpf9JhVx7lermGQNK6JCxqgR
	V9mg==
X-Gm-Message-State: APf1xPCObPhSfftlTWX0eo9cRb1zNrbDVwx+wnHDQRm0M01TWAkGiBOo
	MfcDU4rLcajRYvmIBNHV7Jupy/q5Kp/fz3XRF4I=
X-Google-Smtp-Source: AG47ELsBnZDmLfL0muPGmOlvhTKQjjYsp/FllvfJdbE9O5V2iPkBcY/w1lElDTz1TprkeTO0+sxuXUm/ldhNbBuLeME=
X-Received: by 10.107.102.13 with SMTP id a13mr23139910ioc.61.1520367877919;
	Tue, 06 Mar 2018 12:24:37 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
In-Reply-To: <CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 06 Mar 2018 20:24:26 +0000
Message-ID: <CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 20:24:39 -0000
Content-Type: multipart/alternative; boundary="089e082d1a584a99540566c43bfa"

--089e082d1a584a99540566c43bfa
Content-Type: text/plain; charset="UTF-8"

Thanks.

On Tue, Mar 6, 2018 at 2:07 PM Burton, Ross <ross.burton@intel.com> wrote:

> On 6 March 2018 at 19:48, Giordon Stark <kratsg@gmail.com> wrote:
>
>>
>> where PV=0.2 (open62541_0.2.bb). And I see an error on install (full
>> log: https://gist.github.com/kratsg/5c3740ab72403595d5b9e0e855a3697f)
>>
>> | CMake Error at cmake_install.cmake:40 (file):
>> |   file INSTALL cannot find
>> |
>>  "/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.2-r0/build/open62541.h".
>>
>> So I'm wondering if I screwed up something by using the tarball instead
>> of a clone. I thought I translated it relatively well, and the release
>> matches the hash I was using.
>>
>
> You can drop the S assignment as that is the default value.
>

Didn't realize, neat. I knew I needed to set it for `git` clones since it
always throws it into a ${WORKDIR}/git folder.


> Github /archive/ tarballs can and do change over time, which gets very
> annoying when you need to go and change the checksums.
>

Really? Dang...


>
> If open62541 don't provide proper tarballs then keep it doing a git clone
> of the sha of that tag.
>
> My hunch without reading the upstream CMake files is that they don't
> support out-of-tree builds.  If it worked from git then that's another
> reason to switch back.
>

It seems like this is the case here. I'm ok using git clones for now.
Thanks.


>
> Ross
>
-- 
Giordon Stark

--089e082d1a584a99540566c43bfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks.<br><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
>On Tue, Mar 6, 2018 at 2:07 PM Burton, Ross &lt;<a href=3D"mailto:ross.bur=
ton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr">On 6 March 2018 at 19:48, Giordon Stark <=
span dir=3D"ltr">&lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">=
kratsg@gmail.com</a>&gt;</span> wrote:<br></div><div dir=3D"ltr"><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div><br></div><div>where PV=3D0.2 (<a href=3D"http://open=
62541_0.2.bb" target=3D"_blank">open62541_0.2.bb</a>). And I see an error o=
n install (full log:=C2=A0<a href=3D"https://gist.github.com/kratsg/5c3740a=
b72403595d5b9e0e855a3697f" target=3D"_blank">https://gist.github.com/kratsg=
/5c3740ab72403595d5b9e0e855a3697f</a>)</div><div><br></div><div><div><span =
style=3D"font-family:monospace">| CMake Error at cmake_install.cmake:40 (fi=
le):</span><br></div><div><font face=3D"monospace">|=C2=A0 =C2=A0file INSTA=
LL cannot find</font></div><div><font face=3D"monospace">|=C2=A0 =C2=A0&quo=
t;/local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/open62541/0.2-r0/=
build/open62541.h&quot;.</font></div><div><br></div></div><div>So I&#39;m w=
ondering if I screwed up something by using the tarball instead of a clone.=
 I thought I translated it relatively well, and the release matches the has=
h I was using.</div></div></blockquote><div><br></div></div></div></div><di=
v dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div>Yo=
u can drop the S assignment as that is the default value.</div></div></div>=
</div></blockquote><div><br></div><div>Didn&#39;t realize, neat. I knew I n=
eeded to set it for `git` clones since it always throws it into a ${WORKDIR=
}/git folder.</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div><br></d=
iv><div>Github /archive/ tarballs can and do change over time, which gets v=
ery annoying when you need to go and change the checksums.</div></div></div=
></div></blockquote><div><br></div><div>Really? Dang...</div><div>=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extr=
a"><div class=3D"gmail_quote"><div><br></div><div>If open62541 don&#39;t pr=
ovide proper tarballs then keep it doing a git clone of the sha of that tag=
.</div><div><br></div><div>My hunch without reading the upstream CMake file=
s is that they don&#39;t support out-of-tree builds.=C2=A0 If it worked fro=
m git then that&#39;s another reason to switch back.=C2=A0</div></div></div=
></div></blockquote><div><br></div><div>It seems like this is the case here=
. I&#39;m ok using git clones for now. Thanks.</div><div>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><div><br></div><div>Ross</div></div></div></div></bloc=
kquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--089e082d1a584a99540566c43bfa--
