Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ED68E00CDD; Sat,  7 Jul 2018 10:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tdhammer99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E54EE00B6C
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 10:05:47 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id v8-v6so29015620oie.5
	for <yocto@yoctoproject.org>; Sat, 07 Jul 2018 10:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=POsbNUAzDNJde028j84i93XPIwWpJqSV6nFofxgz/9E=;
	b=FTNa8x7sBCPFZGOe5Z8dMj4h/o2Mo64de3wfVbMf9eVDatfXzLN9ErEWs4Vg6JPpoW
	RL8GgK+DinnB5iFYWg6WcX6/3pms82yigbcwfjRYmKYJi1kPQTqWt7fAXoSE6aQ+M0hi
	NjwNjFvYzNnzxs9OhkFWVcR7Tr6xs15XvNV2Unek+6WBJ3kAlFZb52fTBgGwRuBkfGvk
	BOejtJI2B0gxSJKXdJwZvWJrP1rmYkC6U5VHcVVKb/kAPY/dWFTYPPHwpj1/7+43S9aS
	QjM04Iid5hXWq9AGW6uh04EQQu0H7ZlKC7xYpu4tZ2u9qQK8fnnDKqAIr55heVuaBV5H
	+F5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=POsbNUAzDNJde028j84i93XPIwWpJqSV6nFofxgz/9E=;
	b=WiIrHsppoEXKIejCtB+xm5+W5xUy5+5NxtpYLYw6OBUDs4XbLmfSDWN7Z2a3E6INCY
	klLWXprUW1Ilv7VYrxXyHBNtP5cjKAI99YpIdyjsLxPAtBbutSVl/DKz95toEucyKinw
	9OXgsGNal1/mNetTKtJ/teD9/IUs9QgLY/tImojVMNkgSuGdV2bSSVGPaeRYl92FDQ0X
	xuQXelYa4vOCL0VvJzkDc8X45GBvW7ViKsSLKmYCLQ9cqzjBrBzGAbMc6/1uAquS+QuZ
	dPH9OqFm5S5TtyCBS+YcUN7LW/5ALUx5IAB3pELlrfyqmK9mr2wOUDYraVicgEE4gOtx
	fJqw==
X-Gm-Message-State: APt69E3kXlB1pf7efPYJLSPNB+eX8lozd3eNJ4g69t/60j3fqAWi/wl5
	IAArIflU7KKQ+kT/yHRCARScRfsHZ+xjmF2cG7U=
X-Google-Smtp-Source: AAOMgpcmc6F36nDUicvyuUyXoCKmBAPnxm1UgDZ7gmGzf4AlJ0vedT4M2e3PNkvNKiDugNqeZl5u8zxloYaRAbis4j0=
X-Received: by 2002:aca:e082:: with SMTP id
	x124-v6mr14829497oig.220.1530983147480; 
	Sat, 07 Jul 2018 10:05:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:39a2:0:0:0:0:0 with HTTP;
	Sat, 7 Jul 2018 10:05:47 -0700 (PDT)
In-Reply-To: <CALh9vaUOQGazC5N35QqXLqXxu2vr53UsNkeY8KOtQTsrzzw-=Q@mail.gmail.com>
References: <CALh9vaXPQfH1hupu7C3AZv3qNa1Szb9A7_=iEkLvQ8GRn-YuGQ@mail.gmail.com>
	<CAJ86T=We69Eh0ojPu=i+Dg1Tm8wv7D-5qHevcT9=K+RpV1LKAg@mail.gmail.com>
	<CALh9vaUOQGazC5N35QqXLqXxu2vr53UsNkeY8KOtQTsrzzw-=Q@mail.gmail.com>
From: Tim Hammer <tdhammer99@gmail.com>
Date: Sat, 7 Jul 2018 13:05:47 -0400
Message-ID: <CALh9vaWt6_1-m_6mvqwxEOVpcK6NJ2a==3vUQoUD6J9Osrt6cg@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: (still) struggling with initramfs
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
X-List-Received-Date: Sat, 07 Jul 2018 17:05:49 -0000
Content-Type: multipart/alternative; boundary="000000000000a9acb905706bca9d"

--000000000000a9acb905706bca9d
Content-Type: text/plain; charset="UTF-8"

On Sat, Jul 7, 2018 at 12:37 PM, Tim Hammer <tdhammer99@gmail.com> wrote:

>
>
> On Fri, Jul 6, 2018 at 6:02 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>
>> On Fri, Jul 6, 2018 at 1:22 PM, Tim Hammer <tdhammer99@gmail.com> wrote:
>> >
>> > Thanks for the responses to my first email. I was able to get a working
>> > initramfs in my kernel image that allowed me to do the initial
>> evaluation of
>> > my solution.
>>
>> What was the issue? What was the fix?
>>
>
> issue 1: failure in do_bundle_initramfs- "mv: cannot stat
> 'arch/arm64/boot/Image': No such file or directory".
> Not really resolved, currently modified function to skip problematic step;
> need to come back to this before I can really be done.
>
> issue 2:
> kernel-source/scripts/gen_initramfs_list.sh: Cannot open
> '/.../linux-qoriq/4.14-r0/build/usr/my-core-image-minimal-
> initramfs-{machine}.cpio'
> This appears to be due to a mistake in my definitions of IMAGE_FSTYPES and
> IMAGE_CLASSES. (I made a lot of changes en route to getting something to
> work, so there may be something else that contributed but that I did not
> realize.)
>
>
>> > Now I am working to get all of the proper content into the filesystem,
>> but
>> > am seeing some strangeness that I cannot comprehend. I have updated the
>> > image recipe that my linux.bbappend is calling out as the
>> INITRAMFS_IMAGE,
>> > but the bitbake linux command did not see anything as changed so ran no
>> > tasks.
>>
>> The kernel's bundle_initramfs task depends on
>> ${INITRAMFS_IMAGE}:do_image_complete, so if the new value you set for
>> INITRAMFS_IMAGE is an image which had previously been built the
>> kernel's bundle_initramfs might not get triggered again?
>>
>> Perhaps try running "bitbake -c cleansstate" for your image and then
>> "bitbake linux" again.
>>
> Before I saw your response, I did try cleanstate on both the initramfs and
> linux recipes, but it did not appear to make a difference. (In
> frustration,) I deleted my tmp and sstate-cache trees and built everything
> again. The resulting kernel image initially did not seem correct based on
> the size, but I looked closer with bitwalk and it does appear that my
> changes are in the embedded cpio. So, I tried it and found it "half" works-
> my custom init script is running but if I try to circumvent that with
> "rdinit=/sbin/init" so I can get to the login/commandline, I get a kernel
> panic... Guess I will just have to be happy with what does work and keep
> moving.
>

Oy! It would help if I paid attention to what I was doing- latest recipes
do not enable /sbin/init to be included...




>
>>
>> > As a simplistic attempt, I commented out the INITRAMFS_IMAGE line in
>> > the recipe and this time it rebuilt a lot, but ended up with the "old"
>> > initramfs (not an empty one as I kind of expected). I then re-enabled
>> the
>> > INITRAMFS_IMAGE line and this time got a much smaller Linux image which
>> > failed to boot (Unable to mount root fs- more what I expected from the
>> last
>> > build).
>>
>> A kernel image without the bundled initramfs is always going to be
>> built as part of the normal build process for the kernel (it's built
>> by the kernel's compile task - the version with the bundled initramfs
>> is built by the bundle_initramfs task).
>>
>> Normally you should be able to tell the difference between the two
>> kernel images by the .initramfs suffix, however the bug you saw
>> originally was in the bundle_initramfs code to do that renaming, so
>> depending on how you resolved the original issue, maybe your kernel
>> images are still getting mixed up?
>>
> Yes, based on my workaround to this fix, I suspect that there is still an
> issue that I need to investigate, but need to get the functionality working
> to a point that the rest of the system can be tested then I will get back
> to this.
>
>
> Thanks again for all the thoughts and ideas- hopefully I am retaining some
> knowledge from these experiments and become a helpful member of the
> community someday!
>
> --
>
> .Tim
>



-- 

.Tim

--000000000000a9acb905706bca9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sat, Jul 7, 2018 at 12:37 PM, Tim Hammer <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:tdhammer99@gmail.com" target=3D"_blank">tdhammer99@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><span class=3D""=
>On Fri, Jul 6, 2018 at 6:02 PM, Andre McCurdy <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>On Fri, Jul 6, 20=
18 at 1:22 PM, Tim Hammer &lt;<a href=3D"mailto:tdhammer99@gmail.com" targe=
t=3D"_blank">tdhammer99@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thanks for the responses to my first email. I was able to get a workin=
g<br>
&gt; initramfs in my kernel image that allowed me to do the initial evaluat=
ion of<br>
&gt; my solution.<br>
<br>
</span>What was the issue? What was the fix?<br></blockquote><div><br></div=
></span><div>issue 1:=C2=A0<span style=3D"font-size:12.8px">failure in do_b=
undle_initramfs- &quot;mv: cannot stat &#39;arch/arm64/boot/Image&#39;: No =
such file or directory&quot;.</span></div><div><div style=3D"font-size:12.8=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial">Not really resolved, currently modified function to =
skip problematic step; need to come back to this before I can really be don=
e.</div><br class=3D"m_-9057753052522657715gmail-Apple-interchange-newline"=
>

</div><div>issue 2:=C2=A0

<div style=3D"font-size:12.8px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial"><span style=3D"backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline"><span style=3D"text-decoration-style:i=
nitial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline">kernel-source/scripts/gen=
_init<wbr>ramfs_list.sh:=C2=A0</span></span></span><span style=3D"font-size=
:12.8px">Cannot open &#39;/.../linux-qoriq/4.14-r0/</span><span style=3D"fo=
nt-size:12.8px">buil<wbr>d/usr/my-core-image-</span><span style=3D"font-siz=
e:12.8px">minimal-<wbr>initramfs-{machine}.</span><span style=3D"font-size:=
12.8px">cpio&#39;</span></div>This appears to be due to a mistake in my def=
initions of IMAGE_FSTYPES and IMAGE_CLASSES. (I made a lot of changes en ro=
ute to getting something to work, so there may be something else that contr=
ibuted but that I did not realize.)</div><span class=3D""><div><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
<span><br>
&gt; Now I am working to get all of the proper content into the filesystem,=
 but<br>
&gt; am seeing some strangeness that I cannot comprehend. I have updated th=
e<br>
&gt; image recipe that my linux.bbappend is calling out as the INITRAMFS_IM=
AGE,<br>
&gt; but the bitbake linux command did not see anything as changed so ran n=
o<br>
&gt; tasks.<br>
<br>
</span>The kernel&#39;s bundle_initramfs task depends on<br>
${INITRAMFS_IMAGE}:do_image_co<wbr>mplete, so if the new value you set for<=
br>
INITRAMFS_IMAGE is an image which had previously been built the<br>
kernel&#39;s bundle_initramfs might not get triggered again?<br>
<br>
Perhaps try running &quot;bitbake -c cleansstate&quot; for your image and t=
hen<br>
&quot;bitbake linux&quot; again.<br></blockquote></span><div>Before I saw y=
our response, I did try cleanstate on both the initramfs and linux recipes,=
 but it did not appear to make a difference. (In frustration,) I deleted my=
 tmp and sstate-cache trees and built everything again. The resulting kerne=
l image initially did not seem correct based on the size, but I looked clos=
er with bitwalk and it does appear that my changes are in the embedded cpio=
. So, I tried it and found it &quot;half&quot; works- my custom init script=
 is running but if I try to circumvent that with &quot;rdinit=3D/sbin/init&=
quot; so I can get to the login/commandline, I get a kernel panic... Guess =
I will just have to be happy with what does work and keep moving.=C2=A0</di=
v></div></div></div></blockquote><div><br></div><div>Oy! It would help if I=
 paid attention to what I was doing- latest recipes do not enable /sbin/ini=
t to be included...<br></div><div><br></div><div><br></div><div><br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><=
div class=3D"gmail_quote"><span class=3D""><div>=C2=A0</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<span><br>
&gt; As a simplistic attempt, I commented out the INITRAMFS_IMAGE line in<b=
r>
&gt; the recipe and this time it rebuilt a lot, but ended up with the &quot=
;old&quot;<br>
&gt; initramfs (not an empty one as I kind of expected). I then re-enabled =
the<br>
&gt; INITRAMFS_IMAGE line and this time got a much smaller Linux image whic=
h<br>
&gt; failed to boot (Unable to mount root fs- more what I expected from the=
 last<br>
&gt; build).<br>
<br>
</span>A kernel image without the bundled initramfs is always going to be<b=
r>
built as part of the normal build process for the kernel (it&#39;s built<br=
>
by the kernel&#39;s compile task - the version with the bundled initramfs<b=
r>
is built by the bundle_initramfs task).<br>
<br>
Normally you should be able to tell the difference between the two<br>
kernel images by the .initramfs suffix, however the bug you saw<br>
originally was in the bundle_initramfs code to do that renaming, so<br>
depending on how you resolved the original issue, maybe your kernel<br>
images are still getting mixed up?<br>
</blockquote></span></div>Yes, based on my workaround to this fix, I suspec=
t that there is still an issue that I need to investigate, but need to get =
the functionality working to a point that the rest of the system can be tes=
ted then I will get back to this.</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Thanks aga=
in for all the thoughts and ideas- hopefully I am retaining some knowledge =
from these experiments and become a helpful member of the community someday=
!<span class=3D"HOEnZb"><font color=3D"#888888"><br><div><br></div>-- <br><=
div class=3D"m_-9057753052522657715gmail_signature" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><br><span style=3D"font-family:arial narrow,sa=
ns-serif">.Tim</span><br></div></div>
</font></span></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><b=
r><span style=3D"font-family:arial narrow,sans-serif">.Tim</span><br></div>=
</div>
</div></div>

--000000000000a9acb905706bca9d--
