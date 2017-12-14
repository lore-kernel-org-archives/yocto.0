Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D361E00D72; Wed, 13 Dec 2017 23:06:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D85C8E00D70
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 23:06:46 -0800 (PST)
Received: by mail-pf0-f182.google.com with SMTP id e3so3019422pfi.10
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 23:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CINPG3O2q6kj6UhzGOBqkhjA/J2CHEhgkE0aiaone90=;
	b=RJTYzrIafWylki80uOMXwk03JHbhhKx5I3sFL25pEnx0OkJcn41B6QeKr/6gkaDpHs
	NpDGS/G+IFtOjGaEcU4/qo/SKnJxNg0PGuIoDeZzTZeUsPZlyomL++vUTH61OinJ9qzn
	/pQcuA8bbtjWXqGDzA9NLBmnWb42UXwzfT7u5hAoZ5RZAyIFrBsqFN182k6m7eHIIwfd
	SzIXZZISIlUAqXEl8l+aS3JctqNemZcAlYAoapGaQ0cs7jtUN717eTGrNjzp8+lT9+tr
	ziPdbvoNic+qGIWv8eO62TxFCxebkAmtkpzWObXqR/Z0AtyM0gM/hC9yT1aLW8jIz72y
	9HVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CINPG3O2q6kj6UhzGOBqkhjA/J2CHEhgkE0aiaone90=;
	b=KHpn/w9tByYHsCp2bUCNoPOUvViU49+c12cUZa2Z3prIFM+qPDrQ4ikwI7/1x7xRK6
	ioKAg8nYwLrZi3LkunRyzbZMKXfjC3u2iKrnakJRLFRdKdQo8QSx2Qe55CdNJQneakpw
	98VJwwh9RnbaPKpTwnEoQOSjCw1R9fIpPJb6yzim9m447l7K1piQWijknIA9mijAGI6C
	7BNqi8GRi/Imeoy+gesI7OCbK451YZkYo+si6oR+cgMt+iI4YmUsyPLaXJMx45cjQQ+9
	OAc3r1h4UuWEz9hjU17Wn/wPQd5cVuBpdbhNnpPu/mahECXFSH7OgVEy1UfH9MDLj5oI
	TjcQ==
X-Gm-Message-State: AKGB3mKkDta0D9LggWWvdl8SZ6rNXMYd8wzQ/UIIEDbtNp1JVNT3F87I
	PPdfokKSfOKdxlFAZtQ46tULYfF8UkMLlZU/YV0sHQ==
X-Google-Smtp-Source: ACJfBotykWxteVQQ/Gx9WO0TpSGZvEaDrKuTE2xb/BHKCzAJXDVRDGYkYnMZwhoJW+itDY7HVGg1OnA4HwbfLt5mHBI=
X-Received: by 10.84.133.108 with SMTP id 99mr3715561plf.48.1513235205821;
	Wed, 13 Dec 2017 23:06:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Wed, 13 Dec 2017 23:06:45 -0800 (PST)
In-Reply-To: <20181cde-bfa7-aeee-96b9-dba232ae0179@topic.nl>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
	<7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
	<CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
	<084c90b0-1b18-d85f-3418-4b43e2b64d61@topic.nl>
	<CAPb0b+MZzZFS+goVDWpX1Wm7+RSM1+AxH-zONm+x+C5diNLMcg@mail.gmail.com>
	<20181cde-bfa7-aeee-96b9-dba232ae0179@topic.nl>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Thu, 14 Dec 2017 08:06:45 +0100
Message-ID: <CAPb0b+OCpt2Y4UmcPsnmFA18hn16zkKpLkPfzUjCivDe+B6aRw@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: recipe to clean up files from rootfs
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
X-List-Received-Date: Thu, 14 Dec 2017 07:06:48 -0000
Content-Type: multipart/alternative; boundary="94eb2c12f946e7978e0560478669"

--94eb2c12f946e7978e0560478669
Content-Type: text/plain; charset="UTF-8"

Here is my recipe, it runs suceeds but does not delete the files

mypostprocesfunction() {
rm -r ${IMAGE_ROOTFS}/etc/init.d/psplash.sh
rm -r ${IMAGE_ROOTFS}/usr/bin/psplash*
}

ROOTFS_POSTPROCESS_COMMAND += "mypostprocessfunction; "

On Wed, Dec 13, 2017 at 2:03 PM, Mike Looijmans <mike.looijmans@topic.nl>
wrote:

> ${D} won't work here, grep on ROOTFS_POSTPROCESS_COMMAND for recipes that
> get it right.
>
> And, much much much better would be to just not install psplash into your
> image!
>
> On 13-12-17 09:10, Sherif Omran wrote:
>
>> here is my recipe, the aim was to remove some files from the init.d
>> folder and tweek before creating the image
>>
>> #
>> # This file was derived from the 'Hello World!' example recipe in the
>> # Yocto Project Development Manual.
>> #
>>
>> SUMMARY = "This recipe removes any missing files from the filesystem
>> before finalinzing it"
>> SECTION = "base"
>> LICENSE = "MIT"
>> LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/
>> MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>>
>> #SRC_URI = "file://*"
>>
>> S = "${WORKDIR}"
>> BB_STRICT_CHECKSUM ="0"
>> ALLOW_EMPTY_${PN}="1"
>>
>>
>> #IMAGE_INSTALL = "packagegroup-core-boot packagegroup-base-extended
>> ${CORE_IMAGE_EXTRA_INSTALL}"
>> #IMAGE_INSTALL = "${CORE_IMAGE}"
>>
>> #inherit core-image
>>
>> my_postprocess_function() {
>>   rm -r ${D}${bindir}/init.d/psplash.sh
>> }
>>
>> ROOTFS_POSTPROCESS_COMMAND += "my_postprocess_function; "
>>
>> On Wed, Dec 13, 2017 at 7:22 AM, Mike Looijmans <mike.looijmans@topic.nl
>> <mailto:mike.looijmans@topic.nl>> wrote:
>>
>>     Well, start by sharing yours first.
>>
>>     Be careful when naming your shell routine, sometimes OE considers
>> parts
>>     behind the underscore as overrides and then it cannot find it.
>>
>>
>>     On 13-12-17 07:14, Sherif Omran wrote:
>>
>>         hi Mike,
>>         i could not get it to work, if you have a recipe that works,
>> please
>>         share it. ROOTFS_POSTPROCESS_COMMAND seems to be buggy.
>>
>>         thank you
>>
>>
>>
>>         On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans
>>         <mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>
>>         <mailto:mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>>>
>> wrote:
>>
>>              On 11-12-17 15:18, Sherif Omran wrote:
>>
>>                  i want to create a recipe to clean some files from the
>> rootfile
>>                  system, but i don't know how to let this recipe run the
>> last one
>>                  before building the rootfile system.
>>
>>
>>              You can use ROOTFS_POSTPROCESS_COMMAND in your image recipe
>> to do
>>         some
>>              last-minute filesystem cleanup.
>>
>>              However, in most cases it's much better to determine what
>> recipe
>>         puts the
>>              files there and modify the recipe or remove the package. It
>> would
>>         help a
>>              lot if you would reveal what files you want to remove and
>> why.
>>
>>
>>              Kind regards,
>>
>>              Mike Looijmans
>>              System Expert
>>
>>              TOPIC Products
>>              Materiaalweg 4, NL-5681 RJ Best
>>              Postbus 440, NL-5680 AK Best
>>              Telefoon: +31 (0) 499 33 69 79
>>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>>              E-mail: mike.looijmans@topicproducts.com
>>         <mailto:mike.looijmans@topicproducts.com>
>>              <mailto:mike.looijmans@topicproducts.com
>>
>>         <mailto:mike.looijmans@topicproducts.com>>
>>              Website: www.topicproducts.com <http://www.topicproducts.com
>> >
>>         <http://www.topicproducts.com>
>>
>>              Please consider the environment before printing this e-mail
>>
>>
>>
>>              --
>>
>>
>>     Kind regards,
>>
>>     Mike Looijmans
>>     System Expert
>>
>>     TOPIC Products
>>     Materiaalweg 4, NL-5681 RJ Best
>>     Postbus 440, NL-5680 AK Best
>>     Telefoon: +31 (0) 499 33 69 79 <tel:%2B31%20%280%29%20499%203
>> 3%2069%2079>
>>     E-mail: mike.looijmans@topicproducts.com
>>     <mailto:mike.looijmans@topicproducts.com>
>>     Website: www.topicproducts.com <http://www.topicproducts.com>
>>
>>     Please consider the environment before printing this e-mail
>>
>>
>>
>>
>>
>
> Kind regards,
>
> Mike Looijmans
> System Expert
>
> TOPIC Products
> Materiaalweg 4, NL-5681 RJ Best
> Postbus 440, NL-5680 AK Best
> Telefoon: +31 (0) 499 33 69 79
> E-mail: mike.looijmans@topicproducts.com
> Website: www.topicproducts.com
>
> Please consider the environment before printing this e-mail
>
>
>
> _______________________________________________
>
>>
>>              yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>>         https://lists.yoctoproject.org/listinfo/yocto
>>         <https://lists.yoctoproject.org/listinfo/yocto>
>>              <https://lists.yoctoproject.org/listinfo/yocto
>>         <https://lists.yoctoproject.org/listinfo/yocto>>
>>
>>
>>
>>
>>
>

--94eb2c12f946e7978e0560478669
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Here is my recipe, it runs suceeds but does not delete the=
 files<br><br>mypostprocesfunction() {<br>rm -r ${IMAGE_ROOTFS}/etc/init.d/=
psplash.sh<br>rm -r ${IMAGE_ROOTFS}/usr/bin/psplash*<br>}<br><br>ROOTFS_POS=
TPROCESS_COMMAND +=3D &quot;mypostprocessfunction; &quot;<br></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Dec 13, 2017 at 2=
:03 PM, Mike Looijmans <span dir=3D"ltr">&lt;<a href=3D"mailto:mike.looijma=
ns@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">${D} won&#39;t work here, grep on ROOTF=
S_POSTPROCESS_COMMAND for recipes that get it right.<br>
<br>
And, much much much better would be to just not install psplash into your i=
mage!<span class=3D""><br>
<br>
On 13-12-17 09:10, Sherif Omran wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
here is my recipe, the aim was to remove some files from the init.d folder =
and tweek before creating the image<br>
<br>
#<br>
# This file was derived from the &#39;Hello World!&#39; example recipe in t=
he<br>
# Yocto Project Development Manual.<br>
#<br>
<br>
SUMMARY =3D &quot;This recipe removes any missing files from the filesystem=
 before finalinzing it&quot;<br>
SECTION =3D &quot;base&quot;<br>
LICENSE =3D &quot;MIT&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/<wbr>MIT;md5=3D0835=
ade698e0bcf8506ecd<wbr>a2f7b4f302&quot;<br>
<br>
#SRC_URI =3D &quot;file://*&quot;<br>
<br>
S =3D &quot;${WORKDIR}&quot;<br>
BB_STRICT_CHECKSUM =3D&quot;0&quot;<br>
ALLOW_EMPTY_${PN}=3D&quot;1&quot;<br>
<br>
<br>
#IMAGE_INSTALL =3D &quot;packagegroup-core-boot packagegroup-base-extended =
${CORE_IMAGE_EXTRA_INSTALL}&quot;<br>
#IMAGE_INSTALL =3D &quot;${CORE_IMAGE}&quot;<br>
<br>
#inherit core-image<br>
<br>
my_postprocess_function() {<br>
=C2=A0=C2=A0rm -r ${D}${bindir}/init.d/psplash.s<wbr>h<br>
}<br>
<br>
ROOTFS_POSTPROCESS_COMMAND +=3D &quot;my_postprocess_function; &quot;<br>
<br></span><span class=3D"">
On Wed, Dec 13, 2017 at 7:22 AM, Mike Looijmans &lt;<a href=3D"mailto:mike.=
looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</a> &lt;mailt=
o:<a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijma=
ns@topic.n<wbr>l</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 Well, start by sharing yours first.<br>
<br>
=C2=A0 =C2=A0 Be careful when naming your shell routine, sometimes OE consi=
ders parts<br>
=C2=A0 =C2=A0 behind the underscore as overrides and then it cannot find it=
.<br>
<br>
<br>
=C2=A0 =C2=A0 On 13-12-17 07:14, Sherif Omran wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 hi Mike,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 i could not get it to work, if you have a recip=
e that works, please<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 share it. ROOTFS_POSTPROCESS_COMMAND seems to b=
e buggy.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 thank you<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:mike.looijmans@topic.nl" =
target=3D"_blank">mike.looijmans@topic.nl</a> &lt;mailto:<a href=3D"mailto:=
mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.n<wbr>l</a>=
&gt;<br></span><span class=3D"">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
ic.nl" target=3D"_blank">mike.looijmans@topic.n<wbr>l</a> &lt;mailto:<a hre=
f=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic=
.n<wbr>l</a>&gt;&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 On 11-12-17 15:18, Sherif O=
mran wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 i want to cre=
ate a recipe to clean some files from the rootfile<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 system, but i=
 don&#39;t know how to let this recipe run the last one<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 before buildi=
ng the rootfile system.<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 You can use ROOTFS_POSTPROC=
ESS_COMMAND in your image recipe to do<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 some<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 last-minute filesystem clea=
nup.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 However, in most cases it&#=
39;s much better to determine what recipe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 puts the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 files there and modify the =
recipe or remove the package. It would<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 help a<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 lot if you would reveal wha=
t files you want to remove and why.<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Kind regards,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Mike Looijmans<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 System Expert<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 TOPIC Products<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Materiaalweg 4, NL-5681 RJ =
Best<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Postbus 440, NL-5680 AK Bes=
t<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Telefoon: <a href=3D"tel:%2=
B31%20%280%29%20499%2033%2069%2079" value=3D"+31499336979" target=3D"_blank=
">+31 (0) 499 33 69 79</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;tel:%2B31%20%280%29%20499%203<wbr>3%2069%20=
79&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;tel:%2B31%20%280%29%20499%203<wbr>3%2069%20=
79&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 E-mail: <a href=3D"mailto:m=
ike.looijmans@topicproducts.com" target=3D"_blank">mike.looijmans@topicprod=
ucts.c<wbr>om</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
icproducts.com" target=3D"_blank">mike.looijmans@topicpr<wbr>oducts.com</a>=
&gt;<br></span>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailt=
o:mike.looijmans@topicproducts.com" target=3D"_blank">mike.looijmans@topicp=
r<wbr>oducts.com</a><div><div class=3D"h5"><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
icproducts.com" target=3D"_blank">mike.looijmans@topicpr<wbr>oducts.com</a>=
&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Website: <a href=3D"http://=
www.topicproducts.com" rel=3D"noreferrer" target=3D"_blank">www.topicproduc=
ts.com</a> &lt;<a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" =
target=3D"_blank">http://www.topicproducts.com</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"http://www.topicproducts.com" re=
l=3D"noreferrer" target=3D"_blank">http://www.topicproducts.com</a>&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Please consider the environ=
ment before printing this e-mail<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 --<br>
<br>
<br>
=C2=A0 =C2=A0 Kind regards,<br>
<br>
=C2=A0 =C2=A0 Mike Looijmans<br>
=C2=A0 =C2=A0 System Expert<br>
<br>
=C2=A0 =C2=A0 TOPIC Products<br>
=C2=A0 =C2=A0 Materiaalweg 4, NL-5681 RJ Best<br>
=C2=A0 =C2=A0 Postbus 440, NL-5680 AK Best<br>
=C2=A0 =C2=A0 Telefoon: <a href=3D"tel:%2B31%20%280%29%20499%2033%2069%2079=
" value=3D"+31499336979" target=3D"_blank">+31 (0) 499 33 69 79</a> &lt;tel=
:%2B31%20%280%29%20499%203<wbr>3%2069%2079&gt;<br>
=C2=A0 =C2=A0 E-mail: <a href=3D"mailto:mike.looijmans@topicproducts.com" t=
arget=3D"_blank">mike.looijmans@topicproducts.c<wbr>om</a><br>
=C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@topicproducts.com=
" target=3D"_blank">mike.looijmans@topicpr<wbr>oducts.com</a>&gt;<br>
=C2=A0 =C2=A0 Website: <a href=3D"http://www.topicproducts.com" rel=3D"nore=
ferrer" target=3D"_blank">www.topicproducts.com</a> &lt;<a href=3D"http://w=
ww.topicproducts.com" rel=3D"noreferrer" target=3D"_blank">http://www.topic=
products.com</a>&gt;<br>
<br>
=C2=A0 =C2=A0 Please consider the environment before printing this e-mail<b=
r>
<br>
<br>
<br>
=C2=A0 =C2=A0 <br>
</div></div></blockquote><div><div class=3D"h5">
<br>
Kind regards,<br>
<br>
Mike Looijmans<br>
System Expert<br>
<br>
TOPIC Products<br>
Materiaalweg 4, NL-5681 RJ Best<br>
Postbus 440, NL-5680 AK Best<br>
Telefoon: <a href=3D"tel:%2B31%20%280%29%20499%2033%2069%2079" value=3D"+31=
499336979" target=3D"_blank">+31 (0) 499 33 69 79</a><br>
E-mail: <a href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blan=
k">mike.looijmans@topicproducts.c<wbr>om</a><br>
Website: <a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" target=
=3D"_blank">www.topicproducts.com</a><br>
<br>
Please consider the environment before printing this e-mail<br>
<br>
<br>
<br>
______________________________<wbr>_________________<br>
</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5">
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 yocto mailing list<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@=
yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt;<br>=
</div></div>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"ma=
ilto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><w=
br>&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org<wbr>/listinfo/yocto</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.or<wbr>g/listinfo/yocto</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 &lt;<a href=3D"https://list=
s.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" target=3D"_blank">htt=
ps://lists.yoctoproject.or<wbr>g/listinfo/yocto</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.or<wbr>g/listinfo/yocto</a>&gt;&gt;<br>
<br>
<br>
<br>
<br>
</blockquote>
<br>
</blockquote></div><br></div>

--94eb2c12f946e7978e0560478669--
