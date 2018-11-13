Return-Path: <theknoppix@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F83DE00C43; Tue, 13 Nov 2018 06:38:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theknoppix[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 597B3E00C3C
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 06:38:52 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id b13so13550431wrx.6
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 06:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gzKXUlVJm6jQQyhFti9ZShuN7ssCx7fUUIw8H9Blo4A=;
	b=jdupFWdBg6Zf4vSlPPFOKZnKu+yhZaRq2ETBahqnXtWinkiqaGkG3QVS0KZRVtVG0a
	6GS1CQ7/r8YYlyMIuZPK92pBu0X4L6JEeWVeyWCtkL+JSGQGVDoEgWbDWheuB2cvYtHb
	uicwNYwubBWg4mpDi4OtK3gomwt4naYGb2ejcjvpc6bzH/tnISm1tLkLT2Ynt1vw8tW1
	JSFCjMUSbdbbQigbAi1fGf/rSkyQ7VkgHNVz/F+kybYhPA+UQOJSK8sKgTyKBnIUUoTZ
	OKVF33hXcAVL2wpuemqkggdUakTCzVg3vcl9T5IQ8qhvAc6aP4Kcfe9SOFmojIOP43+H
	425A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gzKXUlVJm6jQQyhFti9ZShuN7ssCx7fUUIw8H9Blo4A=;
	b=gVosmCHEtZ6E/8co8q/I35kdlPxtwo80qrwbyPLr5MUQPOyl7SsfcTjYQlqVp7b/px
	4eDpMSvscb1w/h6f+pkz1HbmosIHJlJZSR5CIoJk4TFkwAhJsSuSL9SToKLl+mH/cXKU
	UQXBA8RDij2h9abliVv+afp9l6K3uSOOvFNaRz4b/0O6HyVUtxJdNEmIYHwRYcBhI74t
	1datySwnOkXHh7EarSFtBTM6qmhBOWcDhbjlKlCkDyttSKkOs9mtxiJcyVyBQki9+wG3
	NFg8Ta2kQb1k+RVkUd7+zmyxWTPSQUtGnFS3TNT69FhXozW4bz8TGbIRdQtjc1JmA7Mm
	Tt0A==
X-Gm-Message-State: AGRZ1gIOSsvw1cVnoVvmTPk5waNBCQzYSnW4f9gl1fqTbh271iMktmj7
	Ssa+9NgaJrJNF5CPI3XUv8v8ojFN1H/tYgjNbh0=
X-Google-Smtp-Source: AJdET5cDH50TZzVLLv2zIqkJPUGDVpaWRP9pD7czqrFZXbn0aod7AmypEi3AACEmfGaupDT84SYMGVR6nXEKUiFHNB4=
X-Received: by 2002:adf:dc0d:: with SMTP id
	t13-v6mr5143832wri.107.1542119931168; 
	Tue, 13 Nov 2018 06:38:51 -0800 (PST)
MIME-Version: 1.0
References: <CAD9sEJs7BXpc=FYM4sUAtrQKRbZ92aJz+mSGHuT+V2hFR+sRJg@mail.gmail.com>
	<CACKFPN28qMWKmntHtX9QVJ6PL_PVr+eTTz+kP6=yS9qZq2M-GA@mail.gmail.com>
	<CAD9sEJteTvPTdzJz3VYXe39jGxPxkbdLUHMNciOZbwJah76b4w@mail.gmail.com>
	<CACKFPN1wSTFZDqKraQFa8zfMmnagnHbtGQo_u1YbSTNvW=KrjA@mail.gmail.com>
	<CAD9sEJsfDvU+R7j4aCoCNVy3TOd37u3kk+289maPSVCpNoC+-w@mail.gmail.com>
	<CACKFPN3kdzV3_+nmBcqQiuwhxFZgHpZwU4ZmrWajhxCKwgPLpw@mail.gmail.com>
	<CAD9sEJvzTtJkTAy+7YUwahv6XBrn_BM0Qtt=mKWnKH9mHhsGhw@mail.gmail.com>
	<CACKFPN1huLV5zSFvYA0rmGeEnvV7tiupd7HeZpMZQF009mpmNQ@mail.gmail.com>
In-Reply-To: <CACKFPN1huLV5zSFvYA0rmGeEnvV7tiupd7HeZpMZQF009mpmNQ@mail.gmail.com>
From: Knoppix <theknoppix@gmail.com>
Date: Tue, 13 Nov 2018 17:38:39 +0300
Message-ID: <CAD9sEJvomRvnPTyhXy4BG18CCpTcHUgScyUE72T=_zrmOG2SMA@mail.gmail.com>
To: Dim tass <dimtass@gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 13 Nov 2018 14:38:54 -0000
Content-Type: multipart/alternative; boundary="000000000000b2c984057a8cc608"

--000000000000b2c984057a8cc608
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot. =F0=9F=99=8F


On Tue, Nov 13, 2018 at 10:42 AM Dimitris Tassopoulos <dimtass@gmail.com>
wrote:

> That's great news!
> Glad to help. It's frustrating some times, but I hope that also someone
> else may come with a better solution.
>
> Regarding secureboot, I guess that if you use the same keys, then there
> shouldn't be any issue. But I haven't use it, so I can't tell from
> experience.
>
> Regards,
> Dimitris
>
> On Tue, 13 Nov 2018, 08:28 Knoppix <theknoppix@gmail.com wrote:
>
>> it works!
>> It copied files to ESP (efi system partition).
>> I hope it will work with secure boot concept too.
>>
>> *Mr. Dimitris *thank you so so much. I *am so glad to you* for your
>> politeness and help.
>>
>> My best compliments..
>>
>> On Mon, Nov 12, 2018 at 5:51 PM Dimitris Tassopoulos <dimtass@gmail.com>
>> wrote:
>>
>>> Yeah, I think everybody is pretty busy. This project is huge and there
>>> aren't many contributors.
>>>
>>> Anyway, in case you use wks files, then you can create a file named *te=
st.wks.in
>>> <http://test.wks.in>* (make sure you add
>>> the .in at the end). Then add this (or similar depending your image):
>>>
>>> bootloader --ptable gpt
>>> part /boot --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/boot
>>> --fstype=3Dvfat --ondisk sda --label boot --active --align 1024
>>> part / --source rootfs --ondisk sda --fstype=3Dext4 --label root --alig=
n
>>> 1024 --exclude-path boot/
>>>
>>> The above will force wic tool not to use the default efi file that yoct=
o
>>> produces and it will use the content of the /boot
>>> folder your image creates. Therefore, if you add your custom recipe tha=
t
>>> copies the efi file you want, *but also* the
>>> the rest of the boot files (like confs) then you can override the
>>> image-efi and use your custom files from the recipe.
>>>
>>> For example, keep a copy of the whole boot folder that you already have=
,
>>> then replace the efi file with your
>>> precompiled and then create a recipe to copy all those files to your
>>> image's /boot folder.
>>>
>>> I think that this may do the trick.
>>>
>>> The important keywords in the wks file are the `--rootfs-dir` in the
>>> /boot part, which means that you force wic
>>> to use your image's /boot folder. And the `--exclude-path` which forces
>>> wic tool not to touch your /boot folder.
>>>
>>> Best regards,
>>> Dimitris
>>>
>>> On Mon, Nov 12, 2018 at 3:37 PM Knoppix <theknoppix@gmail.com> wrote:
>>>
>>>> Yes I did this before I sent this email. First I created x86_32 system
>>>> and backup boot files. Then i created regular x64 system and move
>>>> bootia32.efi file to the boot partition. (I did manualy)
>>>> And yes I'm using wic and I have wks file. (I dont know how can i copy
>>>> my bootia32.efi to boot partition when yocto has create image)
>>>>
>>>> But very soon I should implement secure boot with the system.
>>>> So I think copy precompilted bootia32.efi will not work with secure
>>>> system. (I am not sure)
>>>>
>>>> By the way this is the first mail which I took any maillist system. I'=
m
>>>> so happy to experiment this feeling :) until now nobody answers me.
>>>> Kind regards.
>>>>
>>>> On Mon, Nov 12, 2018 at 5:20 PM Dimitris Tassopoulos <dimtass@gmail.co=
m>
>>>> wrote:
>>>>
>>>>> You're right about the toolchain, this will hit wall, because the
>>>>> x86_64 will build fail to build the x86 efi.
>>>>>
>>>>> Are you using wic and a wks file for your image?
>>>>>
>>>>> There might be a way to override the x86_64 efi bootloader with a
>>>>> pre-compiled one.
>>>>> If you do, then I may have a solution for you.
>>>>>
>>>>> Regards,
>>>>> Dimitris
>>>>>
>>>>> On Mon, Nov 12, 2018 at 2:39 PM Knoppix <theknoppix@gmail.com> wrote:
>>>>>
>>>>>> Mr. Tassopoulos
>>>>>>
>>>>>> Thank you so much for your answer.
>>>>>>
>>>>>> I am trying to do this because my device (atom cpu) has 64bit cpu bu=
t
>>>>>> its efi doesn't support 64. Efi is x86. I learned that ".. The vast
>>>>>> majority of EFI-based x86-64 computers use 64-bit EFIs and therefore=
 use a
>>>>>> bootx64.efi default boot loader file. A handful of early Macs and so=
me
>>>>>> Atom-based tablets have 64-bit CPUs but 32-bit EFIs ..."
>>>>>> http://www.rodsbooks.com/efi-bootloaders/principles.html
>>>>>>
>>>>>> But I dont understand: if my target machine is x86_64 then yocto wil=
l
>>>>>> prepare native/host toolchain to gcc-x64 but when we force to instal=
l grub
>>>>>> as i386 what will happen? yocto will install a second toolchain for =
i386?
>>>>>> And also shouldn't grub be x86?
>>>>>>
>>>>>> Bye the way, yocto has failed when i try.
>>>>>>
>>>>>> *do_mkimage*
>>>>>> DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
>>>>>> 'bit-64', 'x86_64-linux', 'common']
>>>>>> DEBUG: Executing shell function do_mkimage
>>>>>> *grub-mkimage: error: invalid ELF header.*
>>>>>> WARNING: exit code 1 from a shell command.
>>>>>>
>>>>>>
>>>>>> Best regards
>>>>>>
>>>>>>
>>>>>> On Mon, Nov 12, 2018 at 11:44 AM Dimitris Tassopoulos <
>>>>>> dimtass@gmail.com> wrote:
>>>>>>
>>>>>>> I don't know about your special case and why this happens, but a
>>>>>>> simple "hack" it's, depending your bootloader
>>>>>>> (grub or systemd-boot), to edit a couple of files in poky. I haven'=
t
>>>>>>> tested this, so I don't know if it really works.
>>>>>>>
>>>>>>> For Grub remove in poky/meta/classes/grub-efi.bbclass these
>>>>>>> if [ "${TARGET_ARCH}" =3D "x86_64" ]; then
>>>>>>> GRUB_IMAGE=3D"grub-efi-bootx64.efi"
>>>>>>> DEST_IMAGE=3D"bootx64.efi"
>>>>>>> fi
>>>>>>>
>>>>>>> For systemd in poky/meta/classes/systemd-boot.bbclass remove these:
>>>>>>> if [ "${TARGET_ARCH}" =3D "x86_64" ]; then
>>>>>>>     EFI_IMAGE=3D"systemd-bootx64.efi"
>>>>>>>     DEST_EFI_IMAGE=3D"bootx64.efi"
>>>>>>> fi
>>>>>>>
>>>>>>> And then in poky/meta/recipes-bsp/grub/grub-efi_2.02.bb in python
>>>>>>> __anonymous () enforce the use of:
>>>>>>> grubtarget =3D 'i386'
>>>>>>> grubimage =3D prefix + "bootia32.efi"
>>>>>>>
>>>>>>> As I've told you, this is more hack than proper solution, but if yo=
u
>>>>>>> don't get a better answer at least
>>>>>>> you can try this.
>>>>>>>
>>>>>>> Also have in mind, that if you do that, then you won't be able to
>>>>>>> pull poky without loosing your
>>>>>>> changes, so you will have to work with your own branch. That
>>>>>>> shouldn't be a problem, but you
>>>>>>> should be aware of that.
>>>>>>>
>>>>>>> Regards,
>>>>>>> Dimitris
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On Mon, Nov 12, 2018 at 9:28 AM Knoppix <theknoppix@gmail.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> I Searched this question on google, stackoverflow but I did not
>>>>>>>> find.
>>>>>>>>
>>>>>>>> I am using DISTRO=3Dpoky MACHINE=3Dintel-corei7-64 IMAGE=3Dcore-im=
age-x11
>>>>>>>> sceme.
>>>>>>>> The machine which I want to install image, doesn=E2=80=99t allow b=
ootx64
>>>>>>>> but it works when I install x32 efi.
>>>>>>>> I checked this (I copied first bootia32.efi and then bootx64.efi)
>>>>>>>> and as I understand my machine has x64 arch but only support x32-e=
fi.
>>>>>>>>
>>>>>>>> So how can I build an image which is intel-corei7-64 but has
>>>>>>>> grup-efi 32 bit?
>>>>>>>> Would you advice me please to *what should I read to accomplish
>>>>>>>> and learn *this?
>>>>>>>> --
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>
>>>>>>>

--000000000000b2c984057a8cc608
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a lot. =F0=9F=99=8F<br></div><br><br><div class=3D"=
gmail_quote"><div dir=3D"ltr">On Tue, Nov 13, 2018 at 10:42 AM Dimitris Tas=
sopoulos &lt;<a href=3D"mailto:dimtass@gmail.com">dimtass@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><div>That=
&#39;s great news!</div><div dir=3D"auto">Glad to help. It&#39;s frustratin=
g some times, but I hope that also someone else may come with a better solu=
tion.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regarding securebo=
ot, I guess that if you use the same keys, then there shouldn&#39;t be any =
issue. But I haven&#39;t use it, so I can&#39;t tell from experience.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"aut=
o">Dimitris<br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr"=
>On Tue, 13 Nov 2018, 08:28 Knoppix &lt;<a href=3D"mailto:theknoppix@gmail.=
com" target=3D"_blank">theknoppix@gmail.com</a> wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div dir=3D"ltr"><div>it works!</div><div>It copied fil=
es to ESP (efi system partition).<br></div><div>I hope it will work with se=
cure boot concept too.<br></div><div><br></div><div><b>Mr. Dimitris </b>tha=
nk you so so much. I <b>am so glad to you</b> for your politeness and help.=
</div><div><br></div><div>My best compliments..</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 12, 2018 at 5:51 PM Dimitris =
Tassopoulos &lt;<a href=3D"mailto:dimtass@gmail.com" rel=3D"noreferrer" tar=
get=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Yeah, I think everybody is =
pretty busy. This project is huge and there aren&#39;t many contributors.<d=
iv><br></div><div>Anyway, in case you use wks files, then you can create a =
file named <b><a href=3D"http://test.wks.in" rel=3D"noreferrer" target=3D"_=
blank">test.wks.in</a></b>=C2=A0(make sure you add</div><div>the .in at the=
 end). Then add this (or similar depending your image):</div><div><br></div=
><div><div>bootloader --ptable gpt</div><div>part /boot --source rootfs --r=
ootfs-dir=3D${IMAGE_ROOTFS}/boot --fstype=3Dvfat --ondisk sda --label boot =
--active --align 1024</div><div>part / --source rootfs --ondisk sda --fstyp=
e=3Dext4 --label root --align 1024 --exclude-path boot/</div></div><div><br=
></div><div>The above will force wic tool not to use the default efi file t=
hat yocto produces and it will use the content of the /boot</div><div>folde=
r your image creates. Therefore, if you add your custom recipe that copies =
the efi file you want, <b>but also</b> the</div><div>the rest of the boot f=
iles (like confs) then you can override the image-efi and use your custom f=
iles from the recipe.</div><div><br></div><div>For example, keep a copy of =
the whole boot folder that you already have, then replace the efi file with=
 your</div><div>precompiled and then create a recipe to copy all those file=
s to your image&#39;s /boot folder.</div><div><br></div><div>I think that t=
his may do the trick.</div><div><br></div><div>The important keywords in th=
e wks file are the `--rootfs-dir` in the /boot part, which means that you f=
orce wic</div><div>to use your image&#39;s /boot folder. And the `--exclude=
-path` which forces wic tool not to touch your /boot folder.</div><div><br>=
</div><div>Best regards,</div><div>Dimitris</div></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 12, 2018 at 3:37 PM Knoppix &=
lt;<a href=3D"mailto:theknoppix@gmail.com" rel=3D"noreferrer" target=3D"_bl=
ank">theknoppix@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><div>Yes I did this before I sent this email. First =
I created x86_32 system and backup boot files. Then i created regular x64 s=
ystem and move bootia32.efi file to the boot partition. (I did manualy)<br>=
</div><div>And yes I&#39;m using wic and I have wks file. (I dont know how =
can i copy my bootia32.efi to boot partition when yocto has create image)<b=
r></div><div><br></div><div>But very soon I should implement secure boot wi=
th the system.</div><div>So I think copy precompilted bootia32.efi will not=
 work with secure system. (I am not sure)<br></div><div><br></div><div>By t=
he way this is the first mail which I took any maillist system. I&#39;m so =
happy to experiment this feeling :) until now nobody answers me.</div><div>=
Kind regards.<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
">On Mon, Nov 12, 2018 at 5:20 PM Dimitris Tassopoulos &lt;<a href=3D"mailt=
o:dimtass@gmail.com" rel=3D"noreferrer" target=3D"_blank">dimtass@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Yo=
u&#39;re right about the toolchain, this will hit wall, because the x86_64 =
will build fail to build the x86 efi.<div><br></div><div>Are you using wic =
and a wks file for your image?</div><div><br></div><div>There might be a wa=
y to override the x86_64 efi bootloader with a pre-compiled one.</div><div>=
If you do, then I may have a solution for you.</div><div><br></div><div>Reg=
ards,</div><div>Dimitris</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Mon, Nov 12, 2018 at 2:39 PM Knoppix &lt;<a href=3D"mailto:thek=
noppix@gmail.com" rel=3D"noreferrer" target=3D"_blank">theknoppix@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Mr. =
Tassopoulos</div><div><br></div><div>Thank you so much for your answer.<br>=
</div><div><br></div><div>I am trying to do this because my device (atom cp=
u) has 64bit cpu but its efi doesn&#39;t support 64. Efi is x86. I learned =
that &quot;.. The vast majority of EFI-based x86-64 computers use 64-bit EF=
Is and therefore use a bootx64.efi default boot loader file. A handful of e=
arly Macs and some Atom-based tablets have 64-bit CPUs but 32-bit EFIs ...&=
quot; <a href=3D"http://www.rodsbooks.com/efi-bootloaders/principles.html" =
rel=3D"noreferrer" target=3D"_blank">http://www.rodsbooks.com/efi-bootloade=
rs/principles.html</a> <br></div><div><br></div><div>But I dont understand:=
 if my target machine is x86_64 then yocto will prepare native/host toolcha=
in to gcc-x64 but when we force to install grub as i386 what will happen? y=
octo will install a second toolchain for i386? And also shouldn&#39;t grub =
be x86?</div><div><br></div><div>Bye the way, yocto has failed when i try.<=
/div><div><br></div><div><span style=3D"font-family:monospace,monospace"><b=
>do_mkimage</b><br></span></div><div><span style=3D"font-family:monospace,m=
onospace">DEBUG: SITE files [&#39;endian-little&#39;, &#39;common-linux&#39=
;, &#39;common-glibc&#39;, &#39;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;c=
ommon&#39;]<br>DEBUG: Executing shell function do_mkimage<br><b>grub-mkimag=
e: error: invalid ELF header.</b><br>WARNING: exit code 1 from a shell comm=
and.<br></span></div><div><span style=3D"font-family:monospace,monospace"><=
/span><br></div><div><br></div><div>Best regards<br></div><div><br></div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 12, 2=
018 at 11:44 AM Dimitris Tassopoulos &lt;<a href=3D"mailto:dimtass@gmail.co=
m" rel=3D"noreferrer" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I don&#39;t know about your spec=
ial case and why this happens, but a simple &quot;hack&quot; it&#39;s, depe=
nding your bootloader<div>(grub or systemd-boot), to edit a couple of files=
 in poky. I haven&#39;t tested this, so I don&#39;t know if it really works=
.</div><div><br></div><div>For Grub remove in poky/meta/classes/grub-efi.bb=
class these</div><div><div>if [ &quot;${TARGET_ARCH}&quot; =3D &quot;x86_64=
&quot; ]; then</div><div><span style=3D"white-space:pre-wrap">	</span>GRUB_=
IMAGE=3D&quot;grub-efi-bootx64.efi&quot;</div><div><span style=3D"white-spa=
ce:pre-wrap">	</span>DEST_IMAGE=3D&quot;bootx64.efi&quot;</div><div>fi</div=
></div><div><br></div><div>For systemd in poky/meta/classes/systemd-boot.bb=
class remove these:<br><div>if [ &quot;${TARGET_ARCH}&quot; =3D &quot;x86_6=
4&quot; ]; then</div><div>=C2=A0 =C2=A0 EFI_IMAGE=3D&quot;systemd-bootx64.e=
fi&quot;</div><div>=C2=A0 =C2=A0 DEST_EFI_IMAGE=3D&quot;bootx64.efi&quot;</=
div><div>fi</div></div><div><br></div><div>And then in=C2=A0poky/meta/recip=
es-bsp/grub/<a href=3D"http://grub-efi_2.02.bb" rel=3D"noreferrer" target=
=3D"_blank">grub-efi_2.02.bb</a> in python __anonymous ()=C2=A0enforce the =
use of:</div><div><div>grubtarget =3D &#39;i386&#39;</div><div>grubimage =
=3D prefix + &quot;bootia32.efi&quot;</div></div><div><br></div><div>As I&#=
39;ve told you, this is more hack than proper solution, but if you don&#39;=
t get a better answer at least</div><div>you can try this.</div><div><br></=
div><div>Also have in mind, that if you do that, then you won&#39;t be able=
 to pull poky without loosing your</div><div>changes, so you will have to w=
ork with your own branch. That shouldn&#39;t be a problem, but you</div><di=
v>should be aware of that.</div><div><br></div><div>Regards,</div><div>Dimi=
tris</div><div><br></div><div><br></div></div></div></div></div></div></div=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 12=
, 2018 at 9:28 AM Knoppix &lt;<a href=3D"mailto:theknoppix@gmail.com" rel=
=3D"noreferrer" target=3D"_blank">theknoppix@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 class=3D"m_-256537097103319906m_6538809674716260277m_-7477095195363576180m=
_-9205186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_23=
89951899045287193m_5199840266258437901m_4702531770319077828m_86372668787805=
66806m_579384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:Helv=
etica;font-size:15px;font-style:normal;font-variant-caps:normal;font-weight=
:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;text-decoration:none"></div><di=
v class=3D"m_-256537097103319906m_6538809674716260277m_-7477095195363576180=
m_-9205186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_2=
389951899045287193m_5199840266258437901m_4702531770319077828m_8637266878780=
566806m_579384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:Hel=
vetica;font-size:15px;font-style:normal;font-variant-caps:normal;font-weigh=
t:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;text-decoration:none">I Search=
ed this question on google, stackoverflow but I did not find.</div><div cla=
ss=3D"m_-256537097103319906m_6538809674716260277m_-7477095195363576180m_-92=
05186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_238995=
1899045287193m_5199840266258437901m_4702531770319077828m_863726687878056680=
6m_579384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetic=
a;font-size:15px;font-style:normal;font-variant-caps:normal;font-weight:nor=
mal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;text-decoration:none"><br class=3D"=
m_-256537097103319906m_6538809674716260277m_-7477095195363576180m_-92051865=
65687022371m_-7518350657729852943m_-6350523948119777645gmail-m_238995189904=
5287193m_5199840266258437901m_4702531770319077828m_8637266878780566806m_579=
384658243913414gmail-"></div><div class=3D"m_-256537097103319906m_653880967=
4716260277m_-7477095195363576180m_-9205186565687022371m_-751835065772985294=
3m_-6350523948119777645gmail-m_2389951899045287193m_5199840266258437901m_47=
02531770319077828m_8637266878780566806m_579384658243913414gmail-" style=3D"=
color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-style:normal;fon=
t-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;text-decoration:none">I am using DISTRO=3Dpoky MACHINE=3Dintel-corei7-64 =
IMAGE=3Dcore-image-x11 sceme.</div><div class=3D"m_-256537097103319906m_653=
8809674716260277m_-7477095195363576180m_-9205186565687022371m_-751835065772=
9852943m_-6350523948119777645gmail-m_2389951899045287193m_51998402662584379=
01m_4702531770319077828m_8637266878780566806m_579384658243913414gmail-" sty=
le=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-style:norm=
al;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration:none">The machine which I want to install image, do=
esn=E2=80=99t allow bootx64 but it works when I install x32 efi.</div><div =
class=3D"m_-256537097103319906m_6538809674716260277m_-7477095195363576180m_=
-9205186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_238=
9951899045287193m_5199840266258437901m_4702531770319077828m_863726687878056=
6806m_579384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:Helve=
tica;font-size:15px;font-style:normal;font-variant-caps:normal;font-weight:=
normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transfor=
m:none;white-space:normal;word-spacing:0px;text-decoration:none">I checked =
this (I copied first bootia32.efi and then bootx64.efi) and as I understand=
 my machine has x64 arch but only support x32-efi.</div><div class=3D"m_-25=
6537097103319906m_6538809674716260277m_-7477095195363576180m_-9205186565687=
022371m_-7518350657729852943m_-6350523948119777645gmail-m_23899518990452871=
93m_5199840266258437901m_4702531770319077828m_8637266878780566806m_57938465=
8243913414gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size=
:15px;font-style:normal;font-variant-caps:normal;font-weight:normal;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;text-decoration:none"><br class=3D"m_-25653709=
7103319906m_6538809674716260277m_-7477095195363576180m_-9205186565687022371=
m_-7518350657729852943m_-6350523948119777645gmail-m_2389951899045287193m_51=
99840266258437901m_4702531770319077828m_8637266878780566806m_57938465824391=
3414gmail-"></div><div class=3D"m_-256537097103319906m_6538809674716260277m=
_-7477095195363576180m_-9205186565687022371m_-7518350657729852943m_-6350523=
948119777645gmail-m_2389951899045287193m_5199840266258437901m_4702531770319=
077828m_8637266878780566806m_579384658243913414gmail-" style=3D"color:rgb(0=
,0,0);font-family:Helvetica;font-size:15px;font-style:normal;font-variant-c=
aps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-deco=
ration:none">So how can I build an image which is intel-corei7-64 but has g=
rup-efi 32 bit?</div><div class=3D"m_-256537097103319906m_65388096747162602=
77m_-7477095195363576180m_-9205186565687022371m_-7518350657729852943m_-6350=
523948119777645gmail-m_2389951899045287193m_5199840266258437901m_4702531770=
319077828m_8637266878780566806m_579384658243913414gmail-" style=3D"color:rg=
b(0,0,0);font-family:Helvetica;font-size:15px;font-style:normal;font-varian=
t-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none">Would you advice me please to<span class=3D"m_-256537097103=
319906m_6538809674716260277m_-7477095195363576180m_-9205186565687022371m_-7=
518350657729852943m_-6350523948119777645gmail-m_2389951899045287193m_519984=
0266258437901m_4702531770319077828m_8637266878780566806m_579384658243913414=
gmail-Apple-converted-space">=C2=A0</span><b class=3D"m_-256537097103319906=
m_6538809674716260277m_-7477095195363576180m_-9205186565687022371m_-7518350=
657729852943m_-6350523948119777645gmail-m_2389951899045287193m_519984026625=
8437901m_4702531770319077828m_8637266878780566806m_579384658243913414gmail-=
">what should I read to accomplish and learn=C2=A0</b>this?</div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">yocto@yoctoproject.org</a><br>
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
</blockquote></div>

--000000000000b2c984057a8cc608--
