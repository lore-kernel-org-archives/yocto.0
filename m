Return-Path: <theknoppix@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE1A3E0090C; Tue, 13 Nov 2018 06:52:21 -0800 (PST)
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
	*      [209.85.221.41 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (theknoppix[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA39E008D7;
	Tue, 13 Nov 2018 06:52:19 -0800 (PST)
Received: by mail-wr1-f41.google.com with SMTP id y3-v6so13607793wrh.10;
	Tue, 13 Nov 2018 06:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=WQ1IYYnc79Rs167IkXOjiMStIyG+1U9QJKgr32CeSSs=;
	b=oD7e2DdsPxzDW9y3l0QvZosAdBQ2jPCjJOR25sj/tq7svuPNKchDlcdhoMOfHulLNt
	wP4569YLa1WDS/+cgNWyH+pgaTgYXO7QvNog70uWIxiun40boViLmrE2YwqjosC+JK64
	qzVMZ0bs6p/UzBMoCDGpKoU9NDtX+pbcO87FJB858AZQjoE8SkHt3UjihPXl7EWp9ixr
	P8ubkQl2uimWwxUC3yFej3Gq6MN16rBd57DhFpjPu/5Tz8E9id2XV78ouoMatYgU7jhC
	5yl5KihyqlXkYsCJLQq7HthNOxNRFzr063NlLUHcxXsMDe0RnLJ5dksvVAnzllrH454q
	z0Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=WQ1IYYnc79Rs167IkXOjiMStIyG+1U9QJKgr32CeSSs=;
	b=kiYQd/+vJR7xzhnkCgA0rELQcoMWdp3wPEskNjFRk9+2Ja1VeNb5kWQsFPoRrYecDT
	MjK9R7EODMZ300yYCelh51AC0xuAsn1laNIQ8OCyFKfiwjgeWMDrXSK1cTmjvnBB/n15
	QbI8fdgQzfQ3DKlfH1g7XSF6PtQX0PBYnsIilSDXXVqGf28MY8nMv+wNeu15In3wYO7M
	HtoW7F3csGew445Zi/rs07wifQjGnFb+Se9mJUk3Qlo2IKduBUCqu9W4AImBdaIEyCEW
	Zy35CR58+Bnclfw+Vl4EIsBTe/OHd+rWRwSKKk2nxLzaCue1znCzcpgXXDSix8cxs1A4
	ih4Q==
X-Gm-Message-State: AGRZ1gKdDW2Rg+0031fSBX2dM9wI6ksNM8Kl6YE8dIXll+dQ6L+wiLsp
	DXLVjpAWx29lvdqSHQdnFMhI3d9ROmUxP7AtchM=
X-Google-Smtp-Source: AJdET5clETI3uf5r2W+iFNumbXwetVH5691guIm+95sOQZDyXiDZmlomqmUIHj6P6bJciysC2DEqyroCyBVb/+trXlA=
X-Received: by 2002:a5d:6684:: with SMTP id l4mr3524158wru.154.1542120738908; 
	Tue, 13 Nov 2018 06:52:18 -0800 (PST)
MIME-Version: 1.0
References: <CAD9sEJs7BXpc=FYM4sUAtrQKRbZ92aJz+mSGHuT+V2hFR+sRJg@mail.gmail.com>
	<CACKFPN28qMWKmntHtX9QVJ6PL_PVr+eTTz+kP6=yS9qZq2M-GA@mail.gmail.com>
	<CAD9sEJteTvPTdzJz3VYXe39jGxPxkbdLUHMNciOZbwJah76b4w@mail.gmail.com>
	<CACKFPN1wSTFZDqKraQFa8zfMmnagnHbtGQo_u1YbSTNvW=KrjA@mail.gmail.com>
	<CAD9sEJsfDvU+R7j4aCoCNVy3TOd37u3kk+289maPSVCpNoC+-w@mail.gmail.com>
	<CACKFPN3kdzV3_+nmBcqQiuwhxFZgHpZwU4ZmrWajhxCKwgPLpw@mail.gmail.com>
	<CAD9sEJvzTtJkTAy+7YUwahv6XBrn_BM0Qtt=mKWnKH9mHhsGhw@mail.gmail.com>
	<CACKFPN1huLV5zSFvYA0rmGeEnvV7tiupd7HeZpMZQF009mpmNQ@mail.gmail.com>
	<CAD9sEJvomRvnPTyhXy4BG18CCpTcHUgScyUE72T=_zrmOG2SMA@mail.gmail.com>
In-Reply-To: <CAD9sEJvomRvnPTyhXy4BG18CCpTcHUgScyUE72T=_zrmOG2SMA@mail.gmail.com>
From: Knoppix <theknoppix@gmail.com>
Date: Tue, 13 Nov 2018 17:52:07 +0300
Message-ID: <CAD9sEJsTd8AZamyzKc3whrZFqrYYNxw04nX=f2vGNc0E8FUs0w@mail.gmail.com>
To: Dim tass <dimtass@gmail.com>
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 13 Nov 2018 14:52:21 -0000
Content-Type: multipart/alternative; boundary="000000000000d7eefe057a8cf6e2"

--000000000000d7eefe057a8cf6e2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

By the way I hope someone will fix this.

On Tue, Nov 13, 2018 at 5:38 PM Knoppix <theknoppix@gmail.com> wrote:

> Thanks a lot. =F0=9F=99=8F
>
>
> On Tue, Nov 13, 2018 at 10:42 AM Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
>
>> That's great news!
>> Glad to help. It's frustrating some times, but I hope that also someone
>> else may come with a better solution.
>>
>> Regarding secureboot, I guess that if you use the same keys, then there
>> shouldn't be any issue. But I haven't use it, so I can't tell from
>> experience.
>>
>> Regards,
>> Dimitris
>>
>> On Tue, 13 Nov 2018, 08:28 Knoppix <theknoppix@gmail.com wrote:
>>
>>> it works!
>>> It copied files to ESP (efi system partition).
>>> I hope it will work with secure boot concept too.
>>>
>>> *Mr. Dimitris *thank you so so much. I *am so glad to you* for your
>>> politeness and help.
>>>
>>> My best compliments..
>>>
>>> On Mon, Nov 12, 2018 at 5:51 PM Dimitris Tassopoulos <dimtass@gmail.com=
>
>>> wrote:
>>>
>>>> Yeah, I think everybody is pretty busy. This project is huge and there
>>>> aren't many contributors.
>>>>
>>>> Anyway, in case you use wks files, then you can create a file named *t=
est.wks.in
>>>> <http://test.wks.in>* (make sure you add
>>>> the .in at the end). Then add this (or similar depending your image):
>>>>
>>>> bootloader --ptable gpt
>>>> part /boot --source rootfs --rootfs-dir=3D${IMAGE_ROOTFS}/boot
>>>> --fstype=3Dvfat --ondisk sda --label boot --active --align 1024
>>>> part / --source rootfs --ondisk sda --fstype=3Dext4 --label root --ali=
gn
>>>> 1024 --exclude-path boot/
>>>>
>>>> The above will force wic tool not to use the default efi file that
>>>> yocto produces and it will use the content of the /boot
>>>> folder your image creates. Therefore, if you add your custom recipe
>>>> that copies the efi file you want, *but also* the
>>>> the rest of the boot files (like confs) then you can override the
>>>> image-efi and use your custom files from the recipe.
>>>>
>>>> For example, keep a copy of the whole boot folder that you already
>>>> have, then replace the efi file with your
>>>> precompiled and then create a recipe to copy all those files to your
>>>> image's /boot folder.
>>>>
>>>> I think that this may do the trick.
>>>>
>>>> The important keywords in the wks file are the `--rootfs-dir` in the
>>>> /boot part, which means that you force wic
>>>> to use your image's /boot folder. And the `--exclude-path` which force=
s
>>>> wic tool not to touch your /boot folder.
>>>>
>>>> Best regards,
>>>> Dimitris
>>>>
>>>> On Mon, Nov 12, 2018 at 3:37 PM Knoppix <theknoppix@gmail.com> wrote:
>>>>
>>>>> Yes I did this before I sent this email. First I created x86_32 syste=
m
>>>>> and backup boot files. Then i created regular x64 system and move
>>>>> bootia32.efi file to the boot partition. (I did manualy)
>>>>> And yes I'm using wic and I have wks file. (I dont know how can i cop=
y
>>>>> my bootia32.efi to boot partition when yocto has create image)
>>>>>
>>>>> But very soon I should implement secure boot with the system.
>>>>> So I think copy precompilted bootia32.efi will not work with secure
>>>>> system. (I am not sure)
>>>>>
>>>>> By the way this is the first mail which I took any maillist system.
>>>>> I'm so happy to experiment this feeling :) until now nobody answers m=
e.
>>>>> Kind regards.
>>>>>
>>>>> On Mon, Nov 12, 2018 at 5:20 PM Dimitris Tassopoulos <
>>>>> dimtass@gmail.com> wrote:
>>>>>
>>>>>> You're right about the toolchain, this will hit wall, because the
>>>>>> x86_64 will build fail to build the x86 efi.
>>>>>>
>>>>>> Are you using wic and a wks file for your image?
>>>>>>
>>>>>> There might be a way to override the x86_64 efi bootloader with a
>>>>>> pre-compiled one.
>>>>>> If you do, then I may have a solution for you.
>>>>>>
>>>>>> Regards,
>>>>>> Dimitris
>>>>>>
>>>>>> On Mon, Nov 12, 2018 at 2:39 PM Knoppix <theknoppix@gmail.com> wrote=
:
>>>>>>
>>>>>>> Mr. Tassopoulos
>>>>>>>
>>>>>>> Thank you so much for your answer.
>>>>>>>
>>>>>>> I am trying to do this because my device (atom cpu) has 64bit cpu
>>>>>>> but its efi doesn't support 64. Efi is x86. I learned that ".. The =
vast
>>>>>>> majority of EFI-based x86-64 computers use 64-bit EFIs and therefor=
e use a
>>>>>>> bootx64.efi default boot loader file. A handful of early Macs and s=
ome
>>>>>>> Atom-based tablets have 64-bit CPUs but 32-bit EFIs ..."
>>>>>>> http://www.rodsbooks.com/efi-bootloaders/principles.html
>>>>>>>
>>>>>>> But I dont understand: if my target machine is x86_64 then yocto
>>>>>>> will prepare native/host toolchain to gcc-x64 but when we force to =
install
>>>>>>> grub as i386 what will happen? yocto will install a second toolchai=
n for
>>>>>>> i386? And also shouldn't grub be x86?
>>>>>>>
>>>>>>> Bye the way, yocto has failed when i try.
>>>>>>>
>>>>>>> *do_mkimage*
>>>>>>> DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
>>>>>>> 'bit-64', 'x86_64-linux', 'common']
>>>>>>> DEBUG: Executing shell function do_mkimage
>>>>>>> *grub-mkimage: error: invalid ELF header.*
>>>>>>> WARNING: exit code 1 from a shell command.
>>>>>>>
>>>>>>>
>>>>>>> Best regards
>>>>>>>
>>>>>>>
>>>>>>> On Mon, Nov 12, 2018 at 11:44 AM Dimitris Tassopoulos <
>>>>>>> dimtass@gmail.com> wrote:
>>>>>>>
>>>>>>>> I don't know about your special case and why this happens, but a
>>>>>>>> simple "hack" it's, depending your bootloader
>>>>>>>> (grub or systemd-boot), to edit a couple of files in poky. I
>>>>>>>> haven't tested this, so I don't know if it really works.
>>>>>>>>
>>>>>>>> For Grub remove in poky/meta/classes/grub-efi.bbclass these
>>>>>>>> if [ "${TARGET_ARCH}" =3D "x86_64" ]; then
>>>>>>>> GRUB_IMAGE=3D"grub-efi-bootx64.efi"
>>>>>>>> DEST_IMAGE=3D"bootx64.efi"
>>>>>>>> fi
>>>>>>>>
>>>>>>>> For systemd in poky/meta/classes/systemd-boot.bbclass remove these=
:
>>>>>>>> if [ "${TARGET_ARCH}" =3D "x86_64" ]; then
>>>>>>>>     EFI_IMAGE=3D"systemd-bootx64.efi"
>>>>>>>>     DEST_EFI_IMAGE=3D"bootx64.efi"
>>>>>>>> fi
>>>>>>>>
>>>>>>>> And then in poky/meta/recipes-bsp/grub/grub-efi_2.02.bb in python
>>>>>>>> __anonymous () enforce the use of:
>>>>>>>> grubtarget =3D 'i386'
>>>>>>>> grubimage =3D prefix + "bootia32.efi"
>>>>>>>>
>>>>>>>> As I've told you, this is more hack than proper solution, but if
>>>>>>>> you don't get a better answer at least
>>>>>>>> you can try this.
>>>>>>>>
>>>>>>>> Also have in mind, that if you do that, then you won't be able to
>>>>>>>> pull poky without loosing your
>>>>>>>> changes, so you will have to work with your own branch. That
>>>>>>>> shouldn't be a problem, but you
>>>>>>>> should be aware of that.
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Dimitris
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> On Mon, Nov 12, 2018 at 9:28 AM Knoppix <theknoppix@gmail.com>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> I Searched this question on google, stackoverflow but I did not
>>>>>>>>> find.
>>>>>>>>>
>>>>>>>>> I am using DISTRO=3Dpoky MACHINE=3Dintel-corei7-64
>>>>>>>>> IMAGE=3Dcore-image-x11 sceme.
>>>>>>>>> The machine which I want to install image, doesn=E2=80=99t allow =
bootx64
>>>>>>>>> but it works when I install x32 efi.
>>>>>>>>> I checked this (I copied first bootia32.efi and then bootx64.efi)
>>>>>>>>> and as I understand my machine has x64 arch but only support x32-=
efi.
>>>>>>>>>
>>>>>>>>> So how can I build an image which is intel-corei7-64 but has
>>>>>>>>> grup-efi 32 bit?
>>>>>>>>> Would you advice me please to *what should I read to accomplish
>>>>>>>>> and learn *this?
>>>>>>>>> --
>>>>>>>>> _______________________________________________
>>>>>>>>> yocto mailing list
>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>>
>>>>>>>>

--000000000000d7eefe057a8cf6e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">By the way I hope someone will fix this.<br><br><div class=
=3D"gmail_quote"><div dir=3D"ltr">On Tue, Nov 13, 2018 at 5:38 PM Knoppix &=
lt;<a href=3D"mailto:theknoppix@gmail.com">theknoppix@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks a lot. =
=F0=9F=99=8F<br></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">O=
n Tue, Nov 13, 2018 at 10:42 AM Dimitris Tassopoulos &lt;<a href=3D"mailto:=
dimtass@gmail.com" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><div>That&#39;s great =
news!</div><div dir=3D"auto">Glad to help. It&#39;s frustrating some times,=
 but I hope that also someone else may come with a better solution.</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Regarding secureboot, I guess t=
hat if you use the same keys, then there shouldn&#39;t be any issue. But I =
haven&#39;t use it, so I can&#39;t tell from experience.</div><div dir=3D"a=
uto"><br></div><div dir=3D"auto">Regards,</div><div dir=3D"auto">Dimitris<b=
r><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr">On Tue, 13 N=
ov 2018, 08:28 Knoppix &lt;<a href=3D"mailto:theknoppix@gmail.com" target=
=3D"_blank">theknoppix@gmail.com</a> wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr"><div>it works!</div><div>It copied files to ESP (=
efi system partition).<br></div><div>I hope it will work with secure boot c=
oncept too.<br></div><div><br></div><div><b>Mr. Dimitris </b>thank you so s=
o much. I <b>am so glad to you</b> for your politeness and help.</div><div>=
<br></div><div>My best compliments..</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr">On Mon, Nov 12, 2018 at 5:51 PM Dimitris Tassopoulos &=
lt;<a href=3D"mailto:dimtass@gmail.com" rel=3D"noreferrer" target=3D"_blank=
">dimtass@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div dir=3D"ltr">Yeah, I think everybody is pretty busy. T=
his project is huge and there aren&#39;t many contributors.<div><br></div><=
div>Anyway, in case you use wks files, then you can create a file named <b>=
<a href=3D"http://test.wks.in" rel=3D"noreferrer" target=3D"_blank">test.wk=
s.in</a></b>=C2=A0(make sure you add</div><div>the .in at the end). Then ad=
d this (or similar depending your image):</div><div><br></div><div><div>boo=
tloader --ptable gpt</div><div>part /boot --source rootfs --rootfs-dir=3D${=
IMAGE_ROOTFS}/boot --fstype=3Dvfat --ondisk sda --label boot --active --ali=
gn 1024</div><div>part / --source rootfs --ondisk sda --fstype=3Dext4 --lab=
el root --align 1024 --exclude-path boot/</div></div><div><br></div><div>Th=
e above will force wic tool not to use the default efi file that yocto prod=
uces and it will use the content of the /boot</div><div>folder your image c=
reates. Therefore, if you add your custom recipe that copies the efi file y=
ou want, <b>but also</b> the</div><div>the rest of the boot files (like con=
fs) then you can override the image-efi and use your custom files from the =
recipe.</div><div><br></div><div>For example, keep a copy of the whole boot=
 folder that you already have, then replace the efi file with your</div><di=
v>precompiled and then create a recipe to copy all those files to your imag=
e&#39;s /boot folder.</div><div><br></div><div>I think that this may do the=
 trick.</div><div><br></div><div>The important keywords in the wks file are=
 the `--rootfs-dir` in the /boot part, which means that you force wic</div>=
<div>to use your image&#39;s /boot folder. And the `--exclude-path` which f=
orces wic tool not to touch your /boot folder.</div><div><br></div><div>Bes=
t regards,</div><div>Dimitris</div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">On Mon, Nov 12, 2018 at 3:37 PM Knoppix &lt;<a href=3D"=
mailto:theknoppix@gmail.com" rel=3D"noreferrer" target=3D"_blank">theknoppi=
x@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div>Yes I did this before I sent this email. First I created x86_=
32 system and backup boot files. Then i created regular x64 system and move=
 bootia32.efi file to the boot partition. (I did manualy)<br></div><div>And=
 yes I&#39;m using wic and I have wks file. (I dont know how can i copy my =
bootia32.efi to boot partition when yocto has create image)<br></div><div><=
br></div><div>But very soon I should implement secure boot with the system.=
</div><div>So I think copy precompilted bootia32.efi will not work with sec=
ure system. (I am not sure)<br></div><div><br></div><div>By the way this is=
 the first mail which I took any maillist system. I&#39;m so happy to exper=
iment this feeling :) until now nobody answers me.</div><div>Kind regards.<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov =
12, 2018 at 5:20 PM Dimitris Tassopoulos &lt;<a href=3D"mailto:dimtass@gmai=
l.com" rel=3D"noreferrer" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">You&#39;re right=
 about the toolchain, this will hit wall, because the x86_64 will build fai=
l to build the x86 efi.<div><br></div><div>Are you using wic and a wks file=
 for your image?</div><div><br></div><div>There might be a way to override =
the x86_64 efi bootloader with a pre-compiled one.</div><div>If you do, the=
n I may have a solution for you.</div><div><br></div><div>Regards,</div><di=
v>Dimitris</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mo=
n, Nov 12, 2018 at 2:39 PM Knoppix &lt;<a href=3D"mailto:theknoppix@gmail.c=
om" rel=3D"noreferrer" target=3D"_blank">theknoppix@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Mr. Tassopoulos</d=
iv><div><br></div><div>Thank you so much for your answer.<br></div><div><br=
></div><div>I am trying to do this because my device (atom cpu) has 64bit c=
pu but its efi doesn&#39;t support 64. Efi is x86. I learned that &quot;.. =
The vast majority of EFI-based x86-64 computers use 64-bit EFIs and therefo=
re use a bootx64.efi default boot loader file. A handful of early Macs and =
some Atom-based tablets have 64-bit CPUs but 32-bit EFIs ...&quot; <a href=
=3D"http://www.rodsbooks.com/efi-bootloaders/principles.html" rel=3D"norefe=
rrer" target=3D"_blank">http://www.rodsbooks.com/efi-bootloaders/principles=
.html</a> <br></div><div><br></div><div>But I dont understand: if my target=
 machine is x86_64 then yocto will prepare native/host toolchain to gcc-x64=
 but when we force to install grub as i386 what will happen? yocto will ins=
tall a second toolchain for i386? And also shouldn&#39;t grub be x86?</div>=
<div><br></div><div>Bye the way, yocto has failed when i try.</div><div><br=
></div><div><span style=3D"font-family:monospace,monospace"><b>do_mkimage</=
b><br></span></div><div><span style=3D"font-family:monospace,monospace">DEB=
UG: SITE files [&#39;endian-little&#39;, &#39;common-linux&#39;, &#39;commo=
n-glibc&#39;, &#39;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;common&#39;]<b=
r>DEBUG: Executing shell function do_mkimage<br><b>grub-mkimage: error: inv=
alid ELF header.</b><br>WARNING: exit code 1 from a shell command.<br></spa=
n></div><div><span style=3D"font-family:monospace,monospace"></span><br></d=
iv><div><br></div><div>Best regards<br></div><div><br></div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 12, 2018 at 11:44 =
AM Dimitris Tassopoulos &lt;<a href=3D"mailto:dimtass@gmail.com" rel=3D"nor=
eferrer" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr">I don&#39;t know about your special case and =
why this happens, but a simple &quot;hack&quot; it&#39;s, depending your bo=
otloader<div>(grub or systemd-boot), to edit a couple of files in poky. I h=
aven&#39;t tested this, so I don&#39;t know if it really works.</div><div><=
br></div><div>For Grub remove in poky/meta/classes/grub-efi.bbclass these</=
div><div><div>if [ &quot;${TARGET_ARCH}&quot; =3D &quot;x86_64&quot; ]; the=
n</div><div><span style=3D"white-space:pre-wrap">	</span>GRUB_IMAGE=3D&quot=
;grub-efi-bootx64.efi&quot;</div><div><span style=3D"white-space:pre-wrap">=
	</span>DEST_IMAGE=3D&quot;bootx64.efi&quot;</div><div>fi</div></div><div><=
br></div><div>For systemd in poky/meta/classes/systemd-boot.bbclass remove =
these:<br><div>if [ &quot;${TARGET_ARCH}&quot; =3D &quot;x86_64&quot; ]; th=
en</div><div>=C2=A0 =C2=A0 EFI_IMAGE=3D&quot;systemd-bootx64.efi&quot;</div=
><div>=C2=A0 =C2=A0 DEST_EFI_IMAGE=3D&quot;bootx64.efi&quot;</div><div>fi</=
div></div><div><br></div><div>And then in=C2=A0poky/meta/recipes-bsp/grub/<=
a href=3D"http://grub-efi_2.02.bb" rel=3D"noreferrer" target=3D"_blank">gru=
b-efi_2.02.bb</a> in python __anonymous ()=C2=A0enforce the use of:</div><d=
iv><div>grubtarget =3D &#39;i386&#39;</div><div>grubimage =3D prefix + &quo=
t;bootia32.efi&quot;</div></div><div><br></div><div>As I&#39;ve told you, t=
his is more hack than proper solution, but if you don&#39;t get a better an=
swer at least</div><div>you can try this.</div><div><br></div><div>Also hav=
e in mind, that if you do that, then you won&#39;t be able to pull poky wit=
hout loosing your</div><div>changes, so you will have to work with your own=
 branch. That shouldn&#39;t be a problem, but you</div><div>should be aware=
 of that.</div><div><br></div><div>Regards,</div><div>Dimitris</div><div><b=
r></div><div><br></div></div></div></div></div></div></div></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Nov 12, 2018 at 9:28 AM=
 Knoppix &lt;<a href=3D"mailto:theknoppix@gmail.com" rel=3D"noreferrer" tar=
get=3D"_blank">theknoppix@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"m_-305330=
3763018156837m_-256537097103319906m_6538809674716260277m_-74770951953635761=
80m_-9205186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m=
_2389951899045287193m_5199840266258437901m_4702531770319077828m_86372668787=
80566806m_579384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:H=
elvetica;font-size:15px;font-style:normal;font-variant-caps:normal;font-wei=
ght:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration:none"></div>=
<div class=3D"m_-3053303763018156837m_-256537097103319906m_6538809674716260=
277m_-7477095195363576180m_-9205186565687022371m_-7518350657729852943m_-635=
0523948119777645gmail-m_2389951899045287193m_5199840266258437901m_470253177=
0319077828m_8637266878780566806m_579384658243913414gmail-" style=3D"color:r=
gb(0,0,0);font-family:Helvetica;font-size:15px;font-style:normal;font-varia=
nt-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-=
decoration:none">I Searched this question on google, stackoverflow but I di=
d not find.</div><div class=3D"m_-3053303763018156837m_-256537097103319906m=
_6538809674716260277m_-7477095195363576180m_-9205186565687022371m_-75183506=
57729852943m_-6350523948119777645gmail-m_2389951899045287193m_5199840266258=
437901m_4702531770319077828m_8637266878780566806m_579384658243913414gmail-"=
 style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-style:=
normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none"><br class=3D"m_-3053303763018156837m_-256=
537097103319906m_6538809674716260277m_-7477095195363576180m_-92051865656870=
22371m_-7518350657729852943m_-6350523948119777645gmail-m_238995189904528719=
3m_5199840266258437901m_4702531770319077828m_8637266878780566806m_579384658=
243913414gmail-"></div><div class=3D"m_-3053303763018156837m_-2565370971033=
19906m_6538809674716260277m_-7477095195363576180m_-9205186565687022371m_-75=
18350657729852943m_-6350523948119777645gmail-m_2389951899045287193m_5199840=
266258437901m_4702531770319077828m_8637266878780566806m_579384658243913414g=
mail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:15px;font-=
style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;text-decoration:none">I am using DISTRO=3Dpoky MACHINE=3D=
intel-corei7-64 IMAGE=3Dcore-image-x11 sceme.</div><div class=3D"m_-3053303=
763018156837m_-256537097103319906m_6538809674716260277m_-747709519536357618=
0m_-9205186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_=
2389951899045287193m_5199840266258437901m_4702531770319077828m_863726687878=
0566806m_579384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:He=
lvetica;font-size:15px;font-style:normal;font-variant-caps:normal;font-weig=
ht:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration:none">The mac=
hine which I want to install image, doesn=E2=80=99t allow bootx64 but it wo=
rks when I install x32 efi.</div><div class=3D"m_-3053303763018156837m_-256=
537097103319906m_6538809674716260277m_-7477095195363576180m_-92051865656870=
22371m_-7518350657729852943m_-6350523948119777645gmail-m_238995189904528719=
3m_5199840266258437901m_4702531770319077828m_8637266878780566806m_579384658=
243913414gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;font-size:=
15px;font-style:normal;font-variant-caps:normal;font-weight:normal;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;text-decoration:none">I checked this (I copied =
first bootia32.efi and then bootx64.efi) and as I understand my machine has=
 x64 arch but only support x32-efi.</div><div class=3D"m_-30533037630181568=
37m_-256537097103319906m_6538809674716260277m_-7477095195363576180m_-920518=
6565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_2389951899=
045287193m_5199840266258437901m_4702531770319077828m_8637266878780566806m_5=
79384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:Helvetica;fo=
nt-size:15px;font-style:normal;font-variant-caps:normal;font-weight:normal;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;text-decoration:none"><br class=3D"m_-3=
053303763018156837m_-256537097103319906m_6538809674716260277m_-747709519536=
3576180m_-9205186565687022371m_-7518350657729852943m_-6350523948119777645gm=
ail-m_2389951899045287193m_5199840266258437901m_4702531770319077828m_863726=
6878780566806m_579384658243913414gmail-"></div><div class=3D"m_-30533037630=
18156837m_-256537097103319906m_6538809674716260277m_-7477095195363576180m_-=
9205186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_2389=
951899045287193m_5199840266258437901m_4702531770319077828m_8637266878780566=
806m_579384658243913414gmail-" style=3D"color:rgb(0,0,0);font-family:Helvet=
ica;font-size:15px;font-style:normal;font-variant-caps:normal;font-weight:n=
ormal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px;text-decoration:none">So how can =
I build an image which is intel-corei7-64 but has grup-efi 32 bit?</div><di=
v class=3D"m_-3053303763018156837m_-256537097103319906m_6538809674716260277=
m_-7477095195363576180m_-9205186565687022371m_-7518350657729852943m_-635052=
3948119777645gmail-m_2389951899045287193m_5199840266258437901m_470253177031=
9077828m_8637266878780566806m_579384658243913414gmail-" style=3D"color:rgb(=
0,0,0);font-family:Helvetica;font-size:15px;font-style:normal;font-variant-=
caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-dec=
oration:none">Would you advice me please to<span class=3D"m_-30533037630181=
56837m_-256537097103319906m_6538809674716260277m_-7477095195363576180m_-920=
5186565687022371m_-7518350657729852943m_-6350523948119777645gmail-m_2389951=
899045287193m_5199840266258437901m_4702531770319077828m_8637266878780566806=
m_579384658243913414gmail-Apple-converted-space">=C2=A0</span><b class=3D"m=
_-3053303763018156837m_-256537097103319906m_6538809674716260277m_-747709519=
5363576180m_-9205186565687022371m_-7518350657729852943m_-635052394811977764=
5gmail-m_2389951899045287193m_5199840266258437901m_4702531770319077828m_863=
7266878780566806m_579384658243913414gmail-">what should I read to accomplis=
h and learn=C2=A0</b>this?</div></div>
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
</blockquote></div></div>

--000000000000d7eefe057a8cf6e2--
