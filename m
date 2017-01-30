Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4C13E0095C; Mon, 30 Jan 2017 09:14:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B491E003C1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 09:14:14 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id h53so20162398qth.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 09:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7QW4hOOeX6oR/j2+kOfvfsUl3rKgTkGZ0+Y3YK07B5g=;
	b=IJBsMSjaab3T4xnHnwKgXdzMI8G8r2rM1w/OBzgnmg8D4yKBQbzShnfzDT6h0QoUf/
	o/6REbUqvgOO+iy4/0f9lbxC4rf08r2Jue+aFztLEgpGeg/QhwEuPZAf3xWXqwRv4kTy
	TBWV4MORq07D+AzRoDDQ6Aey2NNfgoUTXQET2OqOjBxV9e7KxG/TPCmtB97vmRUYGOih
	fADHQ563xtQBiJi0mVJLetCuz//FXCyYGRpHKX0JbmhxwDfMvt4hqUzUUoONcj7QU7/4
	BPdBWUjE0PimPlEd1wjGccEb5i6JxpDgwaGXQ98tEAlfM711f6fjH97EFYEmExgtKEG9
	Xiog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7QW4hOOeX6oR/j2+kOfvfsUl3rKgTkGZ0+Y3YK07B5g=;
	b=WjIgOSIs2/E96xxFEPM/c/6jvPKHnapKbAVeuNFAi7pTlbnBL3CuXfY/2VDS2EBR6p
	TdGPw2zpplxVxfbABY4ZkdRLQj3uWjmiY4Jxdo6SN1axVKxas90q9OQDi7TlnXUSy6+u
	3Iq6Fvxb2pbCML/6X1saIAlwZYc4GxdrwRsrLmcyLdZIz/DgJtFZ9Q26qgBK3bZlA0++
	aLQ8if4qxCETUoWhVXQooBPVBmqMcNlcseo+U9Ld8ndLBq6prjqEKLDXkESB5Wkoj4JC
	GS0PbIBCGAIZsFIaiRTQDgJRg2HjnkUYTNSCIY6ufAXkNjDcdTc4rQjy7z0cXXvXhr7u
	3sIw==
X-Gm-Message-State: AIkVDXL5vTZhsrjOzmOGTYDtsTkgjOU1HRW+8F8fKRdzz5vycECQnZ5N7iFs9R4dUFPEzIGfEA5S/nCdTDm7Mg==
X-Received: by 10.237.39.222 with SMTP id m30mr20178412qtg.118.1485796453653; 
	Mon, 30 Jan 2017 09:14:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.17 with HTTP; Mon, 30 Jan 2017 09:14:13 -0800 (PST)
In-Reply-To: <CAF3SDA4bE5qrMmvkVRL97fmYTzmA2jJ5qNtfet1eq7hy8y6VZA@mail.gmail.com>
References: <005301d27b0e$c532b900$4f982b00$@ln-systems.com>
	<CAF3SDA6e7s6kei9+oYSMsG01JnsrA-HrOWUBFOuEE-crLRSHMg@mail.gmail.com>
	<009501d27b1b$1ab18260$50148720$@ln-systems.com>
	<CAF3SDA4bE5qrMmvkVRL97fmYTzmA2jJ5qNtfet1eq7hy8y6VZA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 30 Jan 2017 15:14:13 -0200
Message-ID: <CAF3SDA4-J_5yDN0gcPj+aMtjqExjsbpkNQ140cKsF8k6usFUeg@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Making header of out-of-tree module available
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
X-List-Received-Date: Mon, 30 Jan 2017 17:14:28 -0000
Content-Type: multipart/alternative; boundary=f403045f4342d42591054752f191

--f403045f4342d42591054752f191
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

At your kernel-module-<foo>.bb

:)

2017-01-30 15:13 GMT-02:00 Daniel. <danielhilst@gmail.com>:

> do_install_append() {
>     install -d ${D}/usr/include/nrf24/linux/
>     install -m 0755 ${S}/include/linux/nrf24.h
> ${D}/usr/include/nrf24/linux/
> }
>
>
> Try something like this ^
>
> Regards,
>
> 2017-01-30 15:05 GMT-02:00 <colin.helliwell@ln-systems.com>:
>
>> Thanks Daniel,
>>
>> I=E2=80=99ve given that a try, but the header isn=E2=80=99t appearing (w=
ith =E2=80=98bitbake
>> rfctrl=E2=80=99) anywhere but the module=E2=80=99s own workdir.
>>
>> It=E2=80=99s recipe is
>>
>>
>>
>> SUMMARY =3D " RF driver"
>>
>> LICENSE =3D "GPLv2"
>>
>> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D12f884d2ae1ff87c09e5b7ccc2c4c=
a7e"
>>
>>
>>
>> inherit module
>>
>>
>>
>> SRC_URI =3D "file://Makefile \
>>
>>            file://rfctrl.c \
>>
>>            file://rfctrl.h \
>>
>>            file://COPYING \
>>
>>           "
>>
>>
>>
>> FILES_${PN}-dev =3D "/usr/include/rfctrl/linux/rfctrl.h"
>>
>>
>>
>> S =3D "${WORKDIR}"
>>
>>
>>
>>
>>
>> With a makefile:
>>
>>
>>
>> obj-m :=3D rfctrl.o
>>
>>
>>
>> SRC :=3D $(shell pwd)
>>
>>
>>
>> all:
>>
>>                 $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)
>>
>>
>>
>> modules_install:
>>
>>                 $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install
>>
>>
>>
>> clean:
>>
>>                 rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
>>
>>                 rm -f Module.markers Module.symvers modules.order
>>
>>                 rm -rf .tmp_versions Modules.symvers
>>
>>
>>
>>
>>
>>
>>
>> *From:* Daniel. [mailto:danielhilst@gmail.com]
>> *Sent:* 30 January 2017 16:46
>> *To:* colin.helliwell@ln-systems.com
>> *Cc:* yocto@yoctoproject.org
>> *Subject:* Re: [yocto] Making header of out-of-tree module available
>>
>>
>>
>> You don't, you make your library depends on your driver, and not on
>> kernel exported headers. In my case I add the header to the -dev package
>> and make the library compilation depend on kernel module.
>>
>> # kernel-module-foo.bb
>>
>> FILES_${PN}-dev =3D "/usr/include/foo/linux/foo.h"
>>
>> # libfoo.bb
>>
>> DEPENDS =3D "kernel-module-foo"
>>
>> Cheers
>>
>>
>>
>> 2017-01-30 13:37 GMT-02:00 <colin.helliwell@ln-systems.com>:
>>
>> I have a recipe which builds my own (out-of-tree) driver module =E2=80=
=93 this
>> packages/installs the module fine. (It=E2=80=99s recipe has =E2=80=9Cinh=
erit module=E2=80=9D).
>>
>> Now I=E2=80=99m writing a recipe to build a library which uses the drive=
r. What=E2=80=99s
>> needed to get the driver=E2=80=99s header file =E2=80=98exported=E2=80=
=99 so that it can be
>> included by the library=E2=80=99s recipe?
>>
>> Thanks
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>>
>> *"Do or do not. There is no try"*
>> *  Yoda Master*
>>
>
>
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
>



--=20
*"Do or do not. There is no try"*
  *Yoda Master*

--f403045f4342d42591054752f191
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">At your kernel-module-&lt;foo&gt;.bb<br><br>:)<br></div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-01-30 15:13 GM=
T-02:00 Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.c=
om" target=3D"_blank">danielhilst@gmail.com</a>&gt;</span>:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr"><div>do_install_append() {<br>=C2=A0=C2=
=A0=C2=A0 install -d ${D}/usr/include/nrf24/linux/<br>=C2=A0=C2=A0=C2=A0 in=
stall -m 0755 ${S}/include/linux/nrf24.h=C2=A0 ${D}/usr/include/nrf24/linux=
/<br>}<br><br><br></div><div>Try something like this ^ <br><br></div><div>R=
egards,<br></div></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-01-30 15:05 GMT-02:00 =
 <span dir=3D"ltr">&lt;<a href=3D"mailto:colin.helliwell@ln-systems.com" ta=
rget=3D"_blank">colin.helliwell@ln-systems.<wbr>com</a>&gt;</span>:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div link=3D"blue" vlink=3D"purple" lang=3D"EN-G=
B"><div class=3D"m_-1551445338830697384m_-4561688777579188234WordSection1">=
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Thanks Daniel,<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1f497d">I=E2=80=99ve given that a try, but =
the header isn=E2=80=99t appearing (with =E2=80=98bitbake rfctrl=E2=80=99) =
anywhere but the module=E2=80=99s own workdir.<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibr=
i&quot;,sans-serif;color:#1f497d">It=E2=80=99s recipe is<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>=
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">SUMMARY =3D &quot; RF driver&quot;<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0p=
t;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">LICENSE =3D &qu=
ot;GPLv2&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f49=
7d">LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D12f884d2ae<wbr>1ff87c09=
e5b7ccc2c4ca7e&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><span s=
tyle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#=
1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=
=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f49=
7d">inherit module<u></u><u></u></span></p><p class=3D"MsoNormal"><span sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f=
497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"=
font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=
SRC_URI =3D &quot;file://Makefile \<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,san=
s-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 file://rfctrl.c \<u></u><u></u></span></p><p class=3D"MsoNormal">=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 file://rfctrl.h \<u></u><u></u></span></p><p class=3D"MsoNormal"><span sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f=
497d">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://C=
OPYING \<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font=
-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &quot;<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,sans-serif;color:#1f497d">FILES_${PN}-dev =3D &quot;/usr/incl=
ude/rfctrl/linux/rfc<wbr>trl.h&quot;<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:#1f497d">S =3D &quot;${WORKDIR}&quot;<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibr=
i&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"Ms=
oNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1f497d">With a makefile:<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"Ms=
oNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1f497d">obj-m :=3D rfctrl.o<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&q=
uot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"M=
soNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:#1f497d">SRC :=3D $(shell pwd)<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibr=
i&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d">all:<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans=
-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC)=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">modules_install:=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 $(MAKE) -C $(KERNEL_SRC) M=3D$(SRC) modules_install<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&qu=
ot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><=
p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Cal=
ibri&quot;,sans-serif;color:#1f497d">clean:<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&q=
uot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -f *.o *~ core .depend =
.*.cmd *.ko *.mod.c<u></u><u></u></span></p><p class=3D"MsoNormal"><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1=
f497d">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 rm -f Module.markers Module.symvers modules.order<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.=
0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 rm -rf .tmp_versions Modules.symvers<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"Ms=
oNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sa=
ns-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if;color:#1f497d"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><b>=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"=
 lang=3D"EN-US">From:</span></b><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,sans-serif" lang=3D"EN-US"> Daniel. [mailto:<a href=3D=
"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>]=
 <br><b>Sent:</b> 30 January 2017 16:46<br><b>To:</b> <a href=3D"mailto:col=
in.helliwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln-systems.c=
om</a><br><b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_b=
lank">yocto@yoctoproject.org</a><br><b>Subject:</b> Re: [yocto] Making head=
er of out-of-tree module available<u></u><u></u></span></p><div><div class=
=3D"m_-1551445338830697384h5"><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></=
p><div><div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">You don&#=
39;t, you make your library depends on your driver, and not on kernel expor=
ted headers. In my case I add the header to the -dev package and make the l=
ibrary compilation depend on kernel module.<u></u><u></u></p></div><p class=
=3D"MsoNormal"># <a href=3D"http://kernel-module-foo.bb" target=3D"_blank">=
kernel-module-foo.bb</a><u></u><u></u></p><div><div><p class=3D"MsoNormal" =
style=3D"margin-bottom:12.0pt">FILES_${PN}-dev =3D &quot;/usr/include/foo/l=
inux/foo.h&quot; <u></u><u></u></p></div><div><p class=3D"MsoNormal"># <a h=
ref=3D"http://libfoo.bb" target=3D"_blank">libfoo.bb</a><u></u><u></u></p><=
/div><div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">DEPENDS =3D=
 &quot;kernel-module-foo&quot;<u></u><u></u></p></div><div><p class=3D"MsoN=
ormal">Cheers<u></u><u></u></p></div></div></div><div><p class=3D"MsoNormal=
"><u></u>=C2=A0<u></u></p><div><p class=3D"MsoNormal">2017-01-30 13:37 GMT-=
02:00 &lt;<a href=3D"mailto:colin.helliwell@ln-systems.com" target=3D"_blan=
k">colin.helliwell@ln-systems.co<wbr>m</a>&gt;:<u></u><u></u></p><blockquot=
e style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm"><div><div><p class=3D"MsoNormal">=
I have a recipe which builds my own (out-of-tree) driver module =E2=80=93 t=
his packages/installs the module fine. (It=E2=80=99s recipe has =E2=80=9Cin=
herit module=E2=80=9D). <u></u><u></u></p><p class=3D"MsoNormal">Now I=E2=
=80=99m writing a recipe to build a library which uses the driver. What=E2=
=80=99s needed to get the driver=E2=80=99s header file =E2=80=98exported=E2=
=80=99 so that it can be included by the library=E2=80=99s recipe?<u></u><u=
></u></p><p class=3D"MsoNormal">Thanks<u></u><u></u></p><p class=3D"MsoNorm=
al">=C2=A0<u></u><u></u></p></div></div><p class=3D"MsoNormal" style=3D"mar=
gin-bottom:12.0pt"><br>--<br>______________________________<wbr>___________=
______<br>yocto mailing list<br><a href=3D"mailto:yocto@yoctoproject.org" t=
arget=3D"_blank">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoc=
toproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.=
org<wbr>/listinfo/yocto</a><u></u><u></u></p></blockquote></div><p class=3D=
"MsoNormal"><br><br clear=3D"all"><br>-- <u></u><u></u></p><div><p class=3D=
"MsoNormal" style=3D"text-align:right" align=3D"right"><i>&quot;Do or do no=
t. There is no try&quot;</i><br><i>=C2=A0 <b>Yoda Master</b></i><u></u><u><=
/u></p></div></div></div></div></div></div></blockquote></div><br><br clear=
=3D"all"><br>-- <br><div class=3D"m_-1551445338830697384gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;D=
o or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</=
b></i><br></div></div>
</div>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-=
align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 =
</i><i><b>Yoda Master</b></i><br></div></div>
</div>

--f403045f4342d42591054752f191--
