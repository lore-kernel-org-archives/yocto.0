Return-Path: <andrei@gherzan.ro>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDEAEE0049F
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 01:58:49 -0700 (PDT)
Received: by ieak11 with SMTP id k11so892919iea.35
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 01:58:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=jTFJZJa9yWWMqZPkson1mjI8gj8HFdAL9dnaGeUfP+8=;
	b=US0Xh9H3F6bCVH88Zeesdbwnap9/sQ9X1TP8BV2NaMWrKpv/bbm0SIelMah0e8hTOU
	zmweP4mL93VgYRlz6mBajQgW5SOJw5+K8bBgBj2kgjadwRJpR9Ulrrs21SHNxozKCuOO
	hZhlMX90NwuPKAosujPFjcawfLYV7vmnO0dZ6/C89nbswyVq3NJ3bsa1VnW2W92oUFRQ
	v6lMJx29dYEct82EIntxWl21TrP4fHLoJHtyYraFpwn3a/vcIdbs5YYuBsLCCKKjYo8p
	238wEQYYSjwIRIHFr/1csi7dOkL0hHOw0IbcbcNn/2aAqqtTNdoJmcrJ9vOz0r9QEHv1
	BN4Q==
Received: by 10.50.7.135 with SMTP id j7mr10408982iga.34.1348649926928; Wed,
	26 Sep 2012 01:58:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.52.8 with HTTP; Wed, 26 Sep 2012 01:58:26 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAAB-1ywsn2mpmVsg1DPC1Rb0qZO4-EExTL4WskhDFvRxxD5AgA@mail.gmail.com>
References: <yocto@yoctoproject.org>
	<1348091516-4221-1-git-send-email-aalonso@freescale.com>
	<CAK18fxET+vOt6Sy56sggcc_8D09wdf7Q6ORrX5dLXNCy3JPXnQ@mail.gmail.com>
	<CAAB-1ywsn2mpmVsg1DPC1Rb0qZO4-EExTL4WskhDFvRxxD5AgA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 26 Sep 2012 11:58:26 +0300
Message-ID: <CAK18fxEBVBfU=BWA6VoCQAMvW0Zn9W8WfYN4D27bgK2+=n21kA@mail.gmail.com>
To: Adrian Alonso <aalonso00@gmail.com>
X-Gm-Message-State: ALoCoQk0t37Idx6N00Swo/pwnfek43IKcxGm37uCjoBP137w5AFiSfijVnelkfyMFiNSqDT1Lw8/
Cc: Florin Ionut <florin.sarbu@windriver.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: imx6 meta-ivi support
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
X-List-Received-Date: Wed, 26 Sep 2012 08:58:50 -0000
Content-Type: multipart/alternative; boundary=f46d044472d5d2293b04ca97073b

--f46d044472d5d2293b04ca97073b
Content-Type: text/plain; charset=ISO-8859-1

I talked with Florin and he told me that you two had a discussion already.
So Florin will merge those soon. We are a little busy right now. Thank you
for your support.


*Andrei Gherzan*
mobile +40.744.478.414  fax +40.31.816.28.12
Email: andrei@gherzan.ro
Email: andrei.gherzan@windriver.com
Romania



On Tue, Sep 25, 2012 at 10:53 PM, Adrian Alonso <aalonso00@gmail.com> wrote:

> Hi Andrei,
>
> I have write credentials to push this changes is ok that I pushed them?
>
> Or is suppose that a meta-ivi maintainer to push them?
>
> Regards
> Adrian Alonso
>
> On Wed, Sep 19, 2012 at 5:16 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
>> Ack.
>> On Sep 20, 2012 12:56 AM, "Adrian Alonso" <aalonso@freescale.com> wrote:
>>
>>> This patch series enables imx6 target support for meta-ivi based
>>> on denzil branch.
>>>
>>> [meta-ivi][PATCH 1/3] pormap: append portmap.service
>>> [meta-ivi][PATCH 2/3] wpa-supplicant: append wpa-supplicant.service
>>> [meta-ivi][PATCH 3/3] layer-management: fix machine search string
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> Saludos
> Adrian Alonso
> http://aalonso.wordpress.com
>
>

--f46d044472d5d2293b04ca97073b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I talked with Florin and he told me that you two had a=A0discussion=A0alrea=
dy. So Florin will merge those soon. We are a little busy right now. Thank =
you for your support.<br clear=3D"all"><div style=3D"text-align:center"></d=
iv><div style=3D"text-align:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br><br><stron=
g>Andrei Gherzan</strong></font><br><font face=3D"Arial" color=3D"#333333" =
size=3D"-1">mobile +40.744.478.414=A0=A0fax +40.31.816.28.12</font><br>

<font face=3D"Arial" color=3D"#333333" size=3D"-1">Email: <a href=3D"mailto=
:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a></font><br><font=
 face=3D"Arial" color=3D"#333333" size=3D"-1">Email: <a href=3D"mailto:andr=
ei.gherzan@windriver.com" target=3D"_blank">andrei.gherzan@windriver.com</a=
></font><br>

<font face=3D"Arial" color=3D"#333333" size=3D"-1">Romania</font></div></di=
v><br>
<br><br><div class=3D"gmail_quote">On Tue, Sep 25, 2012 at 10:53 PM, Adrian=
 Alonso <span dir=3D"ltr">&lt;<a href=3D"mailto:aalonso00@gmail.com" target=
=3D"_blank">aalonso00@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">

Hi Andrei,<div><br></div><div>I have write credentials to push this changes=
 is ok that I pushed them?</div><div><br></div><div>Or is suppose that a me=
ta-ivi maintainer to push them?</div><div><br></div><div>Regards</div>
<div>

Adrian Alonso<br><br><div class=3D"gmail_quote">On Wed, Sep 19, 2012 at 5:1=
6 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan=
.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">


<p dir=3D"ltr">Ack.</p><div><div>
<div class=3D"gmail_quote">On Sep 20, 2012 12:56 AM, &quot;Adrian Alonso&qu=
ot; &lt;<a href=3D"mailto:aalonso@freescale.com" target=3D"_blank">aalonso@=
freescale.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">



This patch series enables imx6 target support for meta-ivi based<br>
on denzil branch.<br>
<br>
[meta-ivi][PATCH 1/3] pormap: append portmap.service<br>
[meta-ivi][PATCH 2/3] wpa-supplicant: append wpa-supplicant.service<br>
[meta-ivi][PATCH 3/3] layer-management: fix machine search string<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>
</div></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><span class=3D"HOEnZb"><font color=3D"#888888"><br><=
br clear=3D"all"><div><br></div>-- <br>Saludos<br>Adrian Alonso<br><a href=
=3D"http://aalonso.wordpress.com" target=3D"_blank">http://aalonso.wordpres=
s.com</a><br>

<br>
</font></span></div>
</blockquote></div><br>

--f46d044472d5d2293b04ca97073b--
