Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56ED8E00C3C; Mon, 12 Nov 2018 23:42:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57AFCE00B77
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 23:42:44 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id a202-v6so1365221oib.1
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 23:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=k0jHIXsf3ULRO7v4Ofe8b82R5itX1B0RCdBef3S2mEw=;
	b=kP+C7VS8ZDe1GVH9vMbkn63V80L9xikCMZ3IkSv1XIxRuAVh17puUvSAkPtm0/7BQ1
	6xlZsximLSLjA3nEJtNZh2dZ30Dnc5PTjiS2Z8ZV2JggcW0Ld5D5F5D/WLvyTVxkNRKt
	ZjHFf2W8K/BHobRFSR66thsKd/KLVLSv95DyY88y5pDDih9dggAmtW+Mh2AhHQXhuuBl
	TZNn5dfnCWk+3nM9be08F3B4L6yWIL1lZBw3Jq/uM4B/SC0rBhXs2/tI+SvwtoldMj1g
	Bg/y3LIKXyPiWtQ4CRNLlBklUZOUrf7jKSwWzSf/RELVAzJ2xopE88fTqDBUD6kORSgb
	yTMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=k0jHIXsf3ULRO7v4Ofe8b82R5itX1B0RCdBef3S2mEw=;
	b=lDip74Ix8lfnuHj7Q+5h5qYFmbfq6Glop9BTO5I6vB06CGwA4E6HIJnLI0D+6EiODf
	dFCDBThG6MqF1tvTfKE8rwfnI7EvzH3bWPGceJ9IKskL4tjrQGptRRUuEp9BzGWHrZ7z
	k8vKR9ZIQ1XnLgHTZx975fIRQbQ2XVGguauN3tLkIhJpC265NZK+nMeaJxTraCl898MR
	Eo1gwFfkLXI3r/HgM5+BH1R/7hbeL8jjabha4rx4Qk9/Tty8W9a+2Esw0wiifb0SDdwV
	IkrNB1y1udXTfDtnoeT3C4gsnRQFOLqC/0sLDncNonepATBORGg2ZsH3f2w3f7EAgBy2
	Ds6Q==
X-Gm-Message-State: AGRZ1gLRohUVBJ+bOaGTC9ehARg7qqa0wJpHnATN9NyZVyssw8Z+wZqf
	TyeMn0ujV8zXxRjMVxMUjrTwt+Y0x8VfGDZITThq1g==
X-Google-Smtp-Source: AJdET5fDzphSwxzh6w0BoYHDI3jON8PigKPow7Qwveshmz5ZggVzBNYe31WsPZkb8oVDnXE22rMTBF+RZ8YCF8W7Sjs=
X-Received: by 2002:aca:cd41:: with SMTP id
	d62-v6mr2466568oig.207.1542094963456; 
	Mon, 12 Nov 2018 23:42:43 -0800 (PST)
MIME-Version: 1.0
References: <CAD9sEJs7BXpc=FYM4sUAtrQKRbZ92aJz+mSGHuT+V2hFR+sRJg@mail.gmail.com>
	<CACKFPN28qMWKmntHtX9QVJ6PL_PVr+eTTz+kP6=yS9qZq2M-GA@mail.gmail.com>
	<CAD9sEJteTvPTdzJz3VYXe39jGxPxkbdLUHMNciOZbwJah76b4w@mail.gmail.com>
	<CACKFPN1wSTFZDqKraQFa8zfMmnagnHbtGQo_u1YbSTNvW=KrjA@mail.gmail.com>
	<CAD9sEJsfDvU+R7j4aCoCNVy3TOd37u3kk+289maPSVCpNoC+-w@mail.gmail.com>
	<CACKFPN3kdzV3_+nmBcqQiuwhxFZgHpZwU4ZmrWajhxCKwgPLpw@mail.gmail.com>
	<CAD9sEJvzTtJkTAy+7YUwahv6XBrn_BM0Qtt=mKWnKH9mHhsGhw@mail.gmail.com>
In-Reply-To: <CAD9sEJvzTtJkTAy+7YUwahv6XBrn_BM0Qtt=mKWnKH9mHhsGhw@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Tue, 13 Nov 2018 08:42:27 +0100
Message-ID: <CACKFPN1huLV5zSFvYA0rmGeEnvV7tiupd7HeZpMZQF009mpmNQ@mail.gmail.com>
To: Knoppix <theknoppix@gmail.com>, yocto@yoctoproject.org
Subject: Re: yocto x64-linux with bootia32.efi
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
X-List-Received-Date: Tue, 13 Nov 2018 07:42:46 -0000
Content-Type: multipart/alternative; boundary="00000000000081c132057a86f680"

--00000000000081c132057a86f680
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That's great news!
Glad to help. It's frustrating some times, but I hope that also someone
else may come with a better solution.

Regarding secureboot, I guess that if you use the same keys, then there
shouldn't be any issue. But I haven't use it, so I can't tell from
experience.

Regards,
Dimitris

On Tue, 13 Nov 2018, 08:28 Knoppix <theknoppix@gmail.com wrote:

> it works!
> It copied files to ESP (efi system partition).
> I hope it will work with secure boot concept too.
>
> *Mr. Dimitris *thank you so so much. I *am so glad to you* for your
> politeness and help.
>
> My best compliments..
>
> On Mon, Nov 12, 2018 at 5:51 PM Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
>
>> Yeah, I think everybody is pretty busy. This project is huge and there
>> aren't many contributors.
>>
>> Anyway, in case you use wks files, then you can create a file named *tes=
t.wks.in
>> <http://test.wks.in>* (make sure you add
>> the .in at the end). Then add this (or similar depending your image):
>>
>> bootloader --ptable gpt
>> part /boot --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/boot
>> --fstype=3Dvfat --ondisk sda --label boot --active --align 1024
>> part / --source rootfs --ondisk sda --fstype=3Dext4 --label root --align
>> 1024 --exclude-path boot/
>>
>> The above will force wic tool not to use the default efi file that yocto
>> produces and it will use the content of the /boot
>> folder your image creates. Therefore, if you add your custom recipe that
>> copies the efi file you want, *but also* the
>> the rest of the boot files (like confs) then you can override the
>> image-efi and use your custom files from the recipe.
>>
>> For example, keep a copy of the whole boot folder that you already have,
>> then replace the efi file with your
>> precompiled and then create a recipe to copy all those files to your
>> image's /boot folder.
>>
>> I think that this may do the trick.
>>
>> The important keywords in the wks file are the `--rootfs-dir` in the
>> /boot part, which means that you force wic
>> to use your image's /boot folder. And the `--exclude-path` which forces
>> wic tool not to touch your /boot folder.
>>
>> Best regards,
>> Dimitris
>>
>> On Mon, Nov 12, 2018 at 3:37 PM Knoppix <theknoppix@gmail.com> wrote:
>>
>>> Yes I did this before I sent this email. First I created x86_32 system
>>> and backup boot files. Then i created regular x64 system and move
>>> bootia32.efi file to the boot partition. (I did manualy)
>>> And yes I'm using wic and I have wks file. (I dont know how can i copy
>>> my bootia32.efi to boot partition when yocto has create image)
>>>
>>> But very soon I should implement secure boot with the system.
>>> So I think copy precompilted bootia32.efi will not work with secure
>>> system. (I am not sure)
>>>
>>> By the way this is the first mail which I took any maillist system. I'm
>>> so happy to experiment this feeling :) until now nobody answers me.
>>> Kind regards.
>>>
>>> On Mon, Nov 12, 2018 at 5:20 PM Dimitris Tassopoulos <dimtass@gmail.com=
>
>>> wrote:
>>>
>>>> You're right about the toolchain, this will hit wall, because the
>>>> x86_64 will build fail to build the x86 efi.
>>>>
>>>> Are you using wic and a wks file for your image?
>>>>
>>>> There might be a way to override the x86_64 efi bootloader with a
>>>> pre-compiled one.
>>>> If you do, then I may have a solution for you.
>>>>
>>>> Regards,
>>>> Dimitris
>>>>
>>>> On Mon, Nov 12, 2018 at 2:39 PM Knoppix <theknoppix@gmail.com> wrote:
>>>>
>>>>> Mr. Tassopoulos
>>>>>
>>>>> Thank you so much for your answer.
>>>>>
>>>>> I am trying to do this because my device (atom cpu) has 64bit cpu but
>>>>> its efi doesn't support 64. Efi is x86. I learned that ".. The vast
>>>>> majority of EFI-based x86-64 computers use 64-bit EFIs and therefore =
use a
>>>>> bootx64.efi default boot loader file. A handful of early Macs and som=
e
>>>>> Atom-based tablets have 64-bit CPUs but 32-bit EFIs ..."
>>>>> http://www.rodsbooks.com/efi-bootloaders/principles.html
>>>>>
>>>>> But I dont understand: if my target machine is x86_64 then yocto will
>>>>> prepare native/host toolchain to gcc-x64 but when we force to install=
 grub
>>>>> as i386 what will happen? yocto will install a second toolchain for i=
386?
>>>>> And also shouldn't grub be x86?
>>>>>
>>>>> Bye the way, yocto has failed when i try.
>>>>>
>>>>> *do_mkimage*
>>>>> DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
>>>>> 'bit-64', 'x86_64-linux', 'common']
>>>>> DEBUG: Executing shell function do_mkimage
>>>>> *grub-mkimage: error: invalid ELF header.*
>>>>> WARNING: exit code 1 from a shell command.
>>>>>
>>>>>
>>>>> Best regards
>>>>>
>>>>>
>>>>> On Mon, Nov 12, 2018 at 11:44 AM Dimitris Tassopoulos <
>>>>> dimtass@gmail.com> wrote:
>>>>>
>>>>>> I don't know about your special case and why this happens, but a
>>>>>> simple "hack" it's, depending your bootloader
>>>>>> (grub or systemd-boot), to edit a couple of files in poky. I haven't
>>>>>> tested this, so I don't know if it really works.
>>>>>>
>>>>>> For Grub remove in poky/meta/classes/grub-efi.bbclass these
>>>>>> if [ "${TARGET_ARCH}" =3D "x86_64" ]; then
>>>>>> GRUB_IMAGE=3D"grub-efi-bootx64.efi"
>>>>>> DEST_IMAGE=3D"bootx64.efi"
>>>>>> fi
>>>>>>
>>>>>> For systemd in poky/meta/classes/systemd-boot.bbclass remove these:
>>>>>> if [ "${TARGET_ARCH}" =3D "x86_64" ]; then
>>>>>>     EFI_IMAGE=3D"systemd-bootx64.efi"
>>>>>>     DEST_EFI_IMAGE=3D"bootx64.efi"
>>>>>> fi
>>>>>>
>>>>>> And then in poky/meta/recipes-bsp/grub/grub-efi_2.02.bb in python
>>>>>> __anonymous () enforce the use of:
>>>>>> grubtarget =3D 'i386'
>>>>>> grubimage =3D prefix + "bootia32.efi"
>>>>>>
>>>>>> As I've told you, this is more hack than proper solution, but if you
>>>>>> don't get a better answer at least
>>>>>> you can try this.
>>>>>>
>>>>>> Also have in mind, that if you do that, then you won't be able to
>>>>>> pull poky without loosing your
>>>>>> changes, so you will have to work with your own branch. That
>>>>>> shouldn't be a problem, but you
>>>>>> should be aware of that.
>>>>>>
>>>>>> Regards,
>>>>>> Dimitris
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Mon, Nov 12, 2018 at 9:28 AM Knoppix <theknoppix@gmail.com> wrote=
:
>>>>>>
>>>>>>> I Searched this question on google, stackoverflow but I did not fin=
d.
>>>>>>>
>>>>>>> I am using DISTRO=3Dpoky MACHINE=3Dintel-corei7-64 IMAGE=3Dcore-ima=
ge-x11
>>>>>>> sceme.
>>>>>>> The machine which I want to install image, doesn=E2=80=99t allow bo=
otx64 but
>>>>>>> it works when I install x32 efi.
>>>>>>> I checked this (I copied first bootia32.efi and then bootx64.efi)
>>>>>>> and as I understand my machine has x64 arch but only support x32-ef=
i.
>>>>>>>
>>>>>>> So how can I build an image which is intel-corei7-64 but has
>>>>>>> grup-efi 32 bit?
>>>>>>> Would you advice me please to *what should I read to accomplish and
>>>>>>> learn *this?
>>>>>>> --
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>
>>>>>>

--00000000000081c132057a86f680
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>That&#39;s great news!</div><div dir=3D"auto">Glad t=
o help. It&#39;s frustrating some times, but I hope that also someone else =
may come with a better solution.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Regarding secureboot, I guess that if you use the same keys, then=
 there shouldn&#39;t be any issue. But I haven&#39;t use it, so I can&#39;t=
 tell from experience.</div><div dir=3D"auto"><br></div><div dir=3D"auto">R=
egards,</div><div dir=3D"auto">Dimitris<br><br><div class=3D"gmail_quote" d=
ir=3D"auto"><div dir=3D"ltr">On Tue, 13 Nov 2018, 08:28 Knoppix &lt;<a href=
=3D"mailto:theknoppix@gmail.com">theknoppix@gmail.com</a> wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>it works!</div><div>It =
copied files to ESP (efi system partition).<br></div><div>I hope it will wo=
rk with secure boot concept too.<br></div><div><br></div><div><b>Mr. Dimitr=
is </b>thank you so so much. I <b>am so glad to you</b> for your politeness=
 and help.</div><div><br></div><div>My best compliments..</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 12, 2018 at 5:51 PM D=
imitris Tassopoulos &lt;<a href=3D"mailto:dimtass@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">dimtass@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Yeah, I think everyb=
ody is pretty busy. This project is huge and there aren&#39;t many contribu=
tors.<div><br></div><div>Anyway, in case you use wks files, then you can cr=
eate a file named <b><a href=3D"http://test.wks.in" target=3D"_blank" rel=
=3D"noreferrer">test.wks.in</a></b>=C2=A0(make sure you add</div><div>the .=
in at the end). Then add this (or similar depending your image):</div><div>=
<br></div><div><div>bootloader --ptable gpt</div><div>part /boot --source r=
ootfs --rootfs-dir=3D${IMAGE_ROOTFS}/boot --fstype=3Dvfat --ondisk sda --la=
bel boot --active --align 1024</div><div>part / --source rootfs --ondisk sd=
a --fstype=3Dext4 --label root --align 1024 --exclude-path boot/</div></div=
><div><br></div><div>The above will force wic tool not to use the default e=
fi file that yocto produces and it will use the content of the /boot</div><=
div>folder your image creates. Therefore, if you add your custom recipe tha=
t copies the efi file you want, <b>but also</b> the</div><div>the rest of t=
he boot files (like confs) then you can override the image-efi and use your=
 custom files from the recipe.</div><div><br></div><div>For example, keep a=
 copy of the whole boot folder that you already have, then replace the efi =
file with your</div><div>precompiled and then create a recipe to copy all t=
hose files to your image&#39;s /boot folder.</div><div><br></div><div>I thi=
nk that this may do the trick.</div><div><br></div><div>The important keywo=
rds in the wks file are the `--rootfs-dir` in the /boot part, which means t=
hat you force wic</div><div>to use your image&#39;s /boot folder. And the `=
--exclude-path` which forces wic tool not to touch your /boot folder.</div>=
<div><br></div><div>Best regards,</div><div>Dimitris</div></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 12, 2018 at 3:37 PM =
Knoppix &lt;<a href=3D"mailto:theknoppix@gmail.com" target=3D"_blank" rel=
=3D"noreferrer">theknoppix@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div>Yes I did this before I sent this em=
ail. First I created x86_32 system and backup boot files. Then i created re=
gular x64 system and move bootia32.efi file to the boot partition. (I did m=
anualy)<br></div><div>And yes I&#39;m using wic and I have wks file. (I don=
t know how can i copy my bootia32.efi to boot partition when yocto has crea=
te image)<br></div><div><br></div><div>But very soon I should implement sec=
ure boot with the system.</div><div>So I think copy precompilted bootia32.e=
fi will not work with secure system. (I am not sure)<br></div><div><br></di=
v><div>By the way this is the first mail which I took any maillist system. =
I&#39;m so happy to experiment this feeling :) until now nobody answers me.=
</div><div>Kind regards.<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr">On Mon, Nov 12, 2018 at 5:20 PM Dimitris Tassopoulos &lt;<a hr=
ef=3D"mailto:dimtass@gmail.com" target=3D"_blank" rel=3D"noreferrer">dimtas=
s@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">You&#39;re right about the toolchain, this will hit wall, because =
the x86_64 will build fail to build the x86 efi.<div><br></div><div>Are you=
 using wic and a wks file for your image?</div><div><br></div><div>There mi=
ght be a way to override the x86_64 efi bootloader with a pre-compiled one.=
</div><div>If you do, then I may have a solution for you.</div><div><br></d=
iv><div>Regards,</div><div>Dimitris</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">On Mon, Nov 12, 2018 at 2:39 PM Knoppix &lt;<a href=3D"=
mailto:theknoppix@gmail.com" target=3D"_blank" rel=3D"noreferrer">theknoppi=
x@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div>Mr. Tassopoulos</div><div><br></div><div>Thank you so much for your =
answer.<br></div><div><br></div><div>I am trying to do this because my devi=
ce (atom cpu) has 64bit cpu but its efi doesn&#39;t support 64. Efi is x86.=
 I learned that &quot;.. The vast majority of EFI-based x86-64 computers us=
e 64-bit EFIs and therefore use a bootx64.efi default boot loader file. A h=
andful of early Macs and some Atom-based tablets have 64-bit CPUs but 32-bi=
t EFIs ...&quot; <a href=3D"http://www.rodsbooks.com/efi-bootloaders/princi=
ples.html" target=3D"_blank" rel=3D"noreferrer">http://www.rodsbooks.com/ef=
i-bootloaders/principles.html</a> <br></div><div><br></div><div>But I dont =
understand: if my target machine is x86_64 then yocto will prepare native/h=
ost toolchain to gcc-x64 but when we force to install grub as i386 what wil=
l happen? yocto will install a second toolchain for i386? And also shouldn&=
#39;t grub be x86?</div><div><br></div><div>Bye the way, yocto has failed w=
hen i try.</div><div><br></div><div><span style=3D"font-family:monospace,mo=
nospace"><b>do_mkimage</b><br></span></div><div><span style=3D"font-family:=
monospace,monospace">DEBUG: SITE files [&#39;endian-little&#39;, &#39;commo=
n-linux&#39;, &#39;common-glibc&#39;, &#39;bit-64&#39;, &#39;x86_64-linux&#=
39;, &#39;common&#39;]<br>DEBUG: Executing shell function do_mkimage<br><b>=
grub-mkimage: error: invalid ELF header.</b><br>WARNING: exit code 1 from a=
 shell command.<br></span></div><div><span style=3D"font-family:monospace,m=
onospace"></span><br></div><div><br></div><div>Best regards<br></div><div><=
br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon=
, Nov 12, 2018 at 11:44 AM Dimitris Tassopoulos &lt;<a href=3D"mailto:dimta=
ss@gmail.com" target=3D"_blank" rel=3D"noreferrer">dimtass@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I don&#39;t know abou=
t your special case and why this happens, but a simple &quot;hack&quot; it&=
#39;s, depending your bootloader<div>(grub or systemd-boot), to edit a coup=
le of files in poky. I haven&#39;t tested this, so I don&#39;t know if it r=
eally works.</div><div><br></div><div>For Grub remove in poky/meta/classes/=
grub-efi.bbclass these</div><div><div>if [ &quot;${TARGET_ARCH}&quot; =3D &=
quot;x86_64&quot; ]; then</div><div><span style=3D"white-space:pre-wrap">	<=
/span>GRUB_IMAGE=3D&quot;grub-efi-bootx64.efi&quot;</div><div><span style=
=3D"white-space:pre-wrap">	</span>DEST_IMAGE=3D&quot;bootx64.efi&quot;</div=
><div>fi</div></div><div><br></div><div>For systemd in poky/meta/classes/sy=
stemd-boot.bbclass remove these:<br><div>if [ &quot;${TARGET_ARCH}&quot; =
=3D &quot;x86_64&quot; ]; then</div><div>=C2=A0 =C2=A0 EFI_IMAGE=3D&quot;sy=
stemd-bootx64.efi&quot;</div><div>=C2=A0 =C2=A0 DEST_EFI_IMAGE=3D&quot;boot=
x64.efi&quot;</div><div>fi</div></div><div><br></div><div>And then in=C2=A0=
poky/meta/recipes-bsp/grub/<a href=3D"http://grub-efi_2.02.bb" target=3D"_b=
lank" rel=3D"noreferrer">grub-efi_2.02.bb</a> in python __anonymous ()=C2=
=A0enforce the use of:</div><div><div>grubtarget =3D &#39;i386&#39;</div><d=
iv>grubimage =3D prefix + &quot;bootia32.efi&quot;</div></div><div><br></di=
v><div>As I&#39;ve told you, this is more hack than proper solution, but if=
 you don&#39;t get a better answer at least</div><div>you can try this.</di=
v><div><br></div><div>Also have in mind, that if you do that, then you won&=
#39;t be able to pull poky without loosing your</div><div>changes, so you w=
ill have to work with your own branch. That shouldn&#39;t be a problem, but=
 you</div><div>should be aware of that.</div><div><br></div><div>Regards,</=
div><div>Dimitris</div><div><br></div><div><br></div></div></div></div></di=
v></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">O=
n Mon, Nov 12, 2018 at 9:28 AM Knoppix &lt;<a href=3D"mailto:theknoppix@gma=
il.com" target=3D"_blank" rel=3D"noreferrer">theknoppix@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"m_6538809674716260277m_-7477095195363576180m_-920518=
6565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_2389951899=
045287193m_5199840266258437901m_4702531770319077828m_8637266878780566806m_5=
79384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;fo=
nt-size:15px;font-style:normal;font-variant-caps:normal;font-weight:normal;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;text-decoration:none"></div><div class=
=3D"m_6538809674716260277m_-7477095195363576180m_-9205186565687022371m_-751=
8350657729852943m_-6350523948119777645gmail-m_2389951899045287193m_51998402=
66258437901m_4702531770319077828m_8637266878780566806m_579384658243913414gm=
ail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-s=
tyle:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;text-decoration:none">I Searched this question on google, =
stackoverflow but I did not find.</div><div class=3D"m_6538809674716260277m=
_-7477095195363576180m_-9205186565687022371m_-7518350657729852943m_-6350523=
948119777645gmail-m_2389951899045287193m_5199840266258437901m_4702531770319=
077828m_8637266878780566806m_579384658243913414gmail-" style=3D"color:rgb(0=
,0,0);font-family:Helvetica;font-size:15px;font-style:normal;font-variant-c=
aps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-deco=
ration:none"><br class=3D"m_6538809674716260277m_-7477095195363576180m_-920=
5186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_2389951=
899045287193m_5199840266258437901m_4702531770319077828m_8637266878780566806=
m_579384658243913414gmail-"></div><div class=3D"m_6538809674716260277m_-747=
7095195363576180m_-9205186565687022371m_-7518350657729852943m_-635052394811=
9777645gmail-m_2389951899045287193m_5199840266258437901m_470253177031907782=
8m_8637266878780566806m_579384658243913414gmail-" style=3D"color:rgb(0,0,0)=
;font-family:Helvetica;font-size:15px;font-style:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none">I am using DISTRO=3Dpoky MACHINE=3Dintel-corei7-64 IMAGE=3Dcore-ima=
ge-x11 sceme.</div><div class=3D"m_6538809674716260277m_-747709519536357618=
0m_-9205186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_=
2389951899045287193m_5199840266258437901m_4702531770319077828m_863726687878=
0566806m_579384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:He=
lvetica;font-size:15px;font-style:normal;font-variant-caps:normal;font-weig=
ht:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration:none">The mac=
hine which I want to install image, doesn=E2=80=99t allow bootx64 but it wo=
rks when I install x32 efi.</div><div class=3D"m_6538809674716260277m_-7477=
095195363576180m_-9205186565687022371m_-7518350657729852943m_-6350523948119=
777645gmail-m_2389951899045287193m_5199840266258437901m_4702531770319077828=
m_8637266878780566806m_579384658243913414gmail-" style=3D"color:rgb(0,0,0);=
font-family:Helvetica;font-size:15px;font-style:normal;font-variant-caps:no=
rmal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration=
:none">I checked this (I copied first bootia32.efi and then bootx64.efi) an=
d as I understand my machine has x64 arch but only support x32-efi.</div><d=
iv class=3D"m_6538809674716260277m_-7477095195363576180m_-92051865656870223=
71m_-7518350657729852943m_-6350523948119777645gmail-m_2389951899045287193m_=
5199840266258437901m_4702531770319077828m_8637266878780566806m_579384658243=
913414gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15p=
x;font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;text-decoration:none"><br class=3D"m_6538809674716=
260277m_-7477095195363576180m_-9205186565687022371m_-7518350657729852943m_-=
6350523948119777645gmail-m_2389951899045287193m_5199840266258437901m_470253=
1770319077828m_8637266878780566806m_579384658243913414gmail-"></div><div cl=
ass=3D"m_6538809674716260277m_-7477095195363576180m_-9205186565687022371m_-=
7518350657729852943m_-6350523948119777645gmail-m_2389951899045287193m_51998=
40266258437901m_4702531770319077828m_8637266878780566806m_57938465824391341=
4gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;fon=
t-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;text-decoration:none">So how can I build an image which=
 is intel-corei7-64 but has grup-efi 32 bit?</div><div class=3D"m_653880967=
4716260277m_-7477095195363576180m_-9205186565687022371m_-751835065772985294=
3m_-6350523948119777645gmail-m_2389951899045287193m_5199840266258437901m_47=
02531770319077828m_8637266878780566806m_579384658243913414gmail-" style=3D"=
color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-style:normal;fon=
t-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;text-decoration:none">Would you advice me please to<span class=3D"m_65388=
09674716260277m_-7477095195363576180m_-9205186565687022371m_-75183506577298=
52943m_-6350523948119777645gmail-m_2389951899045287193m_5199840266258437901=
m_4702531770319077828m_8637266878780566806m_579384658243913414gmail-Apple-c=
onverted-space">=C2=A0</span><b class=3D"m_6538809674716260277m_-7477095195=
363576180m_-9205186565687022371m_-7518350657729852943m_-6350523948119777645=
gmail-m_2389951899045287193m_5199840266258437901m_4702531770319077828m_8637=
266878780566806m_579384658243913414gmail-">what should I read to accomplish=
 and learn=C2=A0</b>this?</div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div>
</blockquote></div></div></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div></div>

--00000000000081c132057a86f680--
