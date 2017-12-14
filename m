Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3631AE00D7B; Thu, 14 Dec 2017 00:14:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sherifomran2000[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3C15E00D71
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 00:14:07 -0800 (PST)
Received: by mail-pf0-f182.google.com with SMTP id l24so3115743pfj.6
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 00:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=RTrqcjxmyRAOMITo8Vdy2y5g0jWKSOAS7zEZyry9W6o=;
	b=TRVuFYQUYOKjq0JQTnAV5vxac9kWSkL0Q9y3puskXzgZjfYlTReg8V1WQkiSHwjv1i
	3vdX+053+yLdUSlWh9XjvGq0RDvHezNl3TDxWb8TDt7YEQA545ntuUpBnyJppdhY8BVT
	bIoFZFTZbvWii567CTcRGhcDaSUx+yEhKwjkCuyaDjRJLzBWrL0pf+j6a5w1mo0wi5kx
	bWM+1IzEQPwt+cLjNDrHuDrqguqPm6sOwKpt3k3ELi+m25jrKPzFS7AD0GNQZM5HCg50
	FJkCglHSTKIAT3Kj4PQDoeydSZ0zT7+8I2RT+PmhI/NEHI5ZXyzjNoN6OtXFVzoiYNUF
	hl+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=RTrqcjxmyRAOMITo8Vdy2y5g0jWKSOAS7zEZyry9W6o=;
	b=iMDOtwPzUifTyEcdw0VhBqWSynsgkvcXYsL1RgRQfdumRM5MsrwX5s+Ht8eQ0CS4I+
	mhk2465II8rZGLOp0VAUaVWxWbLkSkxfogDDnAezdVijMz7BvjpeXM36EtRFhm1xKpgK
	NO+iw5w7sVgyj6MPZFCl77ZNOrQ1BFyEbTzO8XxUiyNY9ZxfE1TrwT85zXZ43KpN7IzO
	NazIKeBIzobzbKQ04sq716vawKU6TBBrw0lkbUk0zT9gceFJmxayCRf0wPpXolPpmUGy
	Bn425kRTj82o0LKKgN+EYSXWVoboM+PbJ3Ak4xCLzV01Wzc0DiK8l90E82wpZkjJCHDr
	YLFw==
X-Gm-Message-State: AKGB3mJ36zQ0ojMhhwEpvhGDXuwUtwdi82ZR8SaSJQzGmI13A5n3orNZ
	irt9Y93e3q2VduyKcTOiqhUt/ucfD4SXOo2jKHk=
X-Google-Smtp-Source: ACJfBouL8dh2PMmtH9pUUESMYlVRe4jJgWMOyqmTXo7BlzUYwCh/pnh9SXDxueLxHAFW32xv0tTQi8qy2NgxWKUDT1M=
X-Received: by 10.99.124.23 with SMTP id x23mr7813719pgc.189.1513239247222;
	Thu, 14 Dec 2017 00:14:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Thu, 14 Dec 2017 00:14:06 -0800 (PST)
In-Reply-To: <CAPb0b+POo0Oz=GDRFDZDSEW=3iGxGGJfZ7DSFL4xcR05CM3y8g@mail.gmail.com>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
	<7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
	<CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
	<084c90b0-1b18-d85f-3418-4b43e2b64d61@topic.nl>
	<CAPb0b+MZzZFS+goVDWpX1Wm7+RSM1+AxH-zONm+x+C5diNLMcg@mail.gmail.com>
	<20181cde-bfa7-aeee-96b9-dba232ae0179@topic.nl>
	<CAPb0b+OCpt2Y4UmcPsnmFA18hn16zkKpLkPfzUjCivDe+B6aRw@mail.gmail.com>
	<976da55e-da9f-6173-98b3-444b6deb5e34@prevas.dk>
	<CAPb0b+POo0Oz=GDRFDZDSEW=3iGxGGJfZ7DSFL4xcR05CM3y8g@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Thu, 14 Dec 2017 09:14:06 +0100
Message-ID: <CAPb0b+NLDCprreUT7-Pac10cid9OO+=aKY9WHVvQWBGTh+av5A@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 14 Dec 2017 08:14:09 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b50a2ca7bdc0560487755"

--94eb2c1b50a2ca7bdc0560487755
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi Andre
thank you for your mail. I tried to remove this package but i don't know
where it is installed from, i can not find it and got lost.

On Thu, Dec 14, 2017 at 9:11 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> hi Martin,
>
> thank you for help .. well done .. it should now work..
>
> On Thu, Dec 14, 2017 at 8:17 AM, Martin Hundeb=C3=B8ll <
> Martin.Hundeboll@prevas.dk> wrote:
>
>> Hi Sherif,
>>
>> On 2017-12-14 08:06, Sherif Omran wrote:
>>
>>> Here is my recipe, it runs suceeds but does not delete the files
>>>
>>> mypostprocesfunction() {
>>> rm -r ${IMAGE_ROOTFS}/etc/init.d/psplash.sh
>>> rm -r ${IMAGE_ROOTFS}/usr/bin/psplash*
>>> }
>>>
>>> ROOTFS_POSTPROCESS_COMMAND +=3D "mypostprocessfunction; "
>>>
>>
>> Unless you did a copy-paste error, there's a typo in the function name:
>> mypostprocesfunction
>> mypostprocessfunction
>>
>> // Martin
>>
>>
>>> On Wed, Dec 13, 2017 at 2:03 PM, Mike Looijmans <mike.looijmans@topic.n=
l
>>> <mailto:mike.looijmans@topic.nl>> wrote:
>>>
>>>     ${D} won't work here, grep on ROOTFS_POSTPROCESS_COMMAND for recipe=
s
>>>     that get it right.
>>>
>>>     And, much much much better would be to just not install psplash int=
o
>>>     your image!
>>>
>>>     On 13-12-17 09:10, Sherif Omran wrote:
>>>
>>>         here is my recipe, the aim was to remove some files from the
>>>         init.d folder and tweek before creating the image
>>>
>>>         #
>>>         # This file was derived from the 'Hello World!' example recipe
>>>         in the
>>>         # Yocto Project Development Manual.
>>>         #
>>>
>>>         SUMMARY =3D "This recipe removes any missing files from the
>>>         filesystem before finalinzing it"
>>>         SECTION =3D "base"
>>>         LICENSE =3D "MIT"
>>>         LIC_FILES_CHKSUM =3D
>>>         "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecd
>>> a2f7b4f302"
>>>
>>>         #SRC_URI =3D "file://*"
>>>
>>>         S =3D "${WORKDIR}"
>>>         BB_STRICT_CHECKSUM =3D"0"
>>>         ALLOW_EMPTY_${PN}=3D"1"
>>>
>>>
>>>         #IMAGE_INSTALL =3D "packagegroup-core-boot
>>>         packagegroup-base-extended ${CORE_IMAGE_EXTRA_INSTALL}"
>>>         #IMAGE_INSTALL =3D "${CORE_IMAGE}"
>>>
>>>         #inherit core-image
>>>
>>>         my_postprocess_function() {
>>>            rm -r ${D}${bindir}/init.d/psplash.sh
>>>         }
>>>
>>>         ROOTFS_POSTPROCESS_COMMAND +=3D "my_postprocess_function; "
>>>
>>>         On Wed, Dec 13, 2017 at 7:22 AM, Mike Looijmans
>>>         <mike.looijmans@topic.nl <mailto:mike.looijmans@topic.nl>
>>>         <mailto:mike.looijmans@topic.nl
>>>         <mailto:mike.looijmans@topic.nl>>> wrote:
>>>
>>>              Well, start by sharing yours first.
>>>
>>>              Be careful when naming your shell routine, sometimes OE
>>>         considers parts
>>>              behind the underscore as overrides and then it cannot find
>>> it.
>>>
>>>
>>>              On 13-12-17 07:14, Sherif Omran wrote:
>>>
>>>                  hi Mike,
>>>                  i could not get it to work, if you have a recipe that
>>>         works, please
>>>                  share it. ROOTFS_POSTPROCESS_COMMAND seems to be buggy=
.
>>>
>>>                  thank you
>>>
>>>
>>>
>>>                  On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans
>>>                  <mike.looijmans@topic.nl
>>>         <mailto:mike.looijmans@topic.nl> <mailto:mike.looijmans@topic.n=
l
>>>         <mailto:mike.looijmans@topic.nl>>
>>>                  <mailto:mike.looijmans@topic.nl
>>>         <mailto:mike.looijmans@topic.nl> <mailto:mike.looijmans@topic.n=
l
>>>         <mailto:mike.looijmans@topic.nl>>>> wrote:
>>>
>>>                       On 11-12-17 15:18, Sherif Omran wrote:
>>>
>>>                           i want to create a recipe to clean some files
>>>         from the rootfile
>>>                           system, but i don't know how to let this
>>>         recipe run the last one
>>>                           before building the rootfile system.
>>>
>>>
>>>                       You can use ROOTFS_POSTPROCESS_COMMAND in your
>>>         image recipe to do
>>>                  some
>>>                       last-minute filesystem cleanup.
>>>
>>>                       However, in most cases it's much better to
>>>         determine what recipe
>>>                  puts the
>>>                       files there and modify the recipe or remove the
>>>         package. It would
>>>                  help a
>>>                       lot if you would reveal what files you want to
>>>         remove and why.
>>>
>>>
>>>                       Kind regards,
>>>
>>>                       Mike Looijmans
>>>                       System Expert
>>>
>>>                       TOPIC Products
>>>                       Materiaalweg 4, NL-5681 RJ Best
>>>                       Postbus 440, NL-5680 AK Best
>>>                       Telefoon: +31 (0) 499 33 69 79
>>>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>>>                  <tel:%2B31%20%280%29%20499%2033%2069%2079>
>>>                  <tel:%2B31%20%280%29%20499%2033%2069%2079>
>>>                       E-mail: mike.looijmans@topicproducts.com
>>>         <mailto:mike.looijmans@topicproducts.com>
>>>                  <mailto:mike.looijmans@topicproducts.com
>>>         <mailto:mike.looijmans@topicproducts.com>>
>>>                       <mailto:mike.looijmans@topicproducts.com
>>>         <mailto:mike.looijmans@topicproducts.com>
>>>
>>>                  <mailto:mike.looijmans@topicproducts.com
>>>         <mailto:mike.looijmans@topicproducts.com>>>
>>>                       Website: www.topicproducts.com
>>>         <http://www.topicproducts.com> <http://www.topicproducts.com>
>>>                  <http://www.topicproducts.com>
>>>
>>>                       Please consider the environment before printing
>>>         this e-mail
>>>
>>>
>>>
>>>                       --
>>>
>>>
>>>              Kind regards,
>>>
>>>              Mike Looijmans
>>>              System Expert
>>>
>>>              TOPIC Products
>>>              Materiaalweg 4, NL-5681 RJ Best
>>>              Postbus 440, NL-5680 AK Best
>>>              Telefoon: +31 (0) 499 33 69 79
>>>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>>>         <tel:%2B31%20%280%29%20499%2033%2069%2079>
>>>              E-mail: mike.looijmans@topicproducts.com
>>>         <mailto:mike.looijmans@topicproducts.com>
>>>              <mailto:mike.looijmans@topicproducts.com
>>>         <mailto:mike.looijmans@topicproducts.com>>
>>>              Website: www.topicproducts.com
>>>         <http://www.topicproducts.com> <http://www.topicproducts.com>
>>>
>>>              Please consider the environment before printing this e-mai=
l
>>>
>>>
>>>
>>>
>>>
>>>     Kind regards,
>>>
>>>     Mike Looijmans
>>>     System Expert
>>>
>>>     TOPIC Products
>>>     Materiaalweg 4, NL-5681 RJ Best
>>>     Postbus 440, NL-5680 AK Best
>>>     Telefoon: +31 (0) 499 33 69 79
>>>     <tel:%2B31%20%280%29%20499%2033%2069%2079>
>>>     E-mail: mike.looijmans@topicproducts.com
>>>     <mailto:mike.looijmans@topicproducts.com>
>>>     Website: www.topicproducts.com <http://www.topicproducts.com>
>>>
>>>     Please consider the environment before printing this e-mail
>>>
>>>
>>>
>>>     _______________________________________________
>>>
>>>
>>>                       yocto mailing list
>>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>>>                  <mailto:yocto@yoctoproject.org
>>>         <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org
>>>         <mailto:yocto@yoctoproject.org>>>
>>>         https://lists.yoctoproject.org/listinfo/yocto
>>>         <https://lists.yoctoproject.org/listinfo/yocto>
>>>                  <https://lists.yoctoproject.org/listinfo/yocto
>>>         <https://lists.yoctoproject.org/listinfo/yocto>>
>>>                       <https://lists.yoctoproject.org/listinfo/yocto
>>>         <https://lists.yoctoproject.org/listinfo/yocto>
>>>                  <https://lists.yoctoproject.org/listinfo/yocto
>>>         <https://lists.yoctoproject.org/listinfo/yocto>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>> --
>> MARTIN HUNDEB=C3=98LL, Prevas A/S
>> Software Developer
>>
>> Hedeager 3, DK-8200 Aarhus N
>> Phone +45 87438070
>> Mobile +45 25562438
>> Martin.Hundeboll@prevas.dk
>> www.prevas.com
>>
>
>

--94eb2c1b50a2ca7bdc0560487755
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>hi Andre<br></div>thank you for your mail. I tried to=
 remove this package but i don&#39;t know where it is installed from, i can=
 not find it and got lost.<br></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Thu, Dec 14, 2017 at 9:11 AM, Sherif Omran <span dir=
=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank"=
>sherifomran2000@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr"><div>hi Martin,<br><br></div>thank you for help ..=
 well done .. it should now work..<br></div><div class=3D"HOEnZb"><div clas=
s=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, =
Dec 14, 2017 at 8:17 AM, Martin Hundeb=C3=B8ll <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:Martin.Hundeboll@prevas.dk" target=3D"_blank">Martin.Hundeboll@=
prevas.dk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Sheri=
f,<span><br>
<br>
On 2017-12-14 08:06, Sherif Omran wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Here is my recipe, it runs suceeds but does not delete the files<br>
<br>
mypostprocesfunction() {<br>
rm -r ${IMAGE_ROOTFS}/etc/init.d/psp<wbr>lash.sh<br>
rm -r ${IMAGE_ROOTFS}/usr/bin/psplas<wbr>h*<br>
}<br>
<br>
ROOTFS_POSTPROCESS_COMMAND +=3D &quot;mypostprocessfunction; &quot;<br>
</blockquote>
<br></span>
Unless you did a copy-paste error, there&#39;s a typo in the function name:=
<br>
mypostprocesfunction<br>
mypostprocessfunction<br>
<br>
// Martin<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"m_-3542005801761690590h5"=
>
<br>
On Wed, Dec 13, 2017 at 2:03 PM, Mike Looijmans &lt;<a href=3D"mailto:mike.=
looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</a> &lt;mailt=
o:<a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijma=
ns@topic.n<wbr>l</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 ${D} won&#39;t work here, grep on ROOTFS_POSTPROCESS_COMMAND =
for recipes<br>
=C2=A0 =C2=A0 that get it right.<br>
<br>
=C2=A0 =C2=A0 And, much much much better would be to just not install pspla=
sh into<br>
=C2=A0 =C2=A0 your image!<br>
<br>
=C2=A0 =C2=A0 On 13-12-17 09:10, Sherif Omran wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 here is my recipe, the aim was to remove some f=
iles from the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 init.d folder and tweek before creating the ima=
ge<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # This file was derived from the &#39;Hello Wor=
ld!&#39; example recipe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 in the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Yocto Project Development Manual.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 #<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SUMMARY =3D &quot;This recipe removes any missi=
ng files from the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 filesystem before finalinzing it&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 SECTION =3D &quot;base&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 LICENSE =3D &quot;MIT&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 LIC_FILES_CHKSUM =3D<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;file://${COMMON_LICENSE_DIR}/<wbr>MIT;md5=
=3D0835ade698e0bcf8506ecd<wbr>a2f7b4f302&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 #SRC_URI =3D &quot;file://*&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 S =3D &quot;${WORKDIR}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BB_STRICT_CHECKSUM =3D&quot;0&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ALLOW_EMPTY_${PN}=3D&quot;1&quot;<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 #IMAGE_INSTALL =3D &quot;packagegroup-core-boot=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 packagegroup-base-extended ${CORE_IMAGE_EXTRA_I=
NSTALL}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 #IMAGE_INSTALL =3D &quot;${CORE_IMAGE}&quot;<br=
>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 #inherit core-image<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 my_postprocess_function() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0rm -r ${D}${bindir}/init.d/ps=
plash.s<wbr>h<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ROOTFS_POSTPROCESS_COMMAND +=3D &quot;my_postpr=
ocess_function; &quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 On Wed, Dec 13, 2017 at 7:22 AM, Mike Looijmans=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:mike.looijmans@topic.nl" =
target=3D"_blank">mike.looijmans@topic.nl</a> &lt;mailto:<a href=3D"mailto:=
mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.n<wbr>l</a>=
&gt;<br></div></div><div><div class=3D"m_-3542005801761690590h5">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
ic.nl" target=3D"_blank">mike.looijmans@topic.n<wbr>l</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
ic.nl" target=3D"_blank">mike.looijmans@topic.n<wbr>l</a>&gt;&gt;&gt; wrote=
:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Well, start by sharing your=
s first.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Be careful when naming your=
 shell routine, sometimes OE<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 considers parts<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 behind the underscore as ov=
errides and then it cannot find it.<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 On 13-12-17 07:14, Sherif O=
mran wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 hi Mike,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 i could not g=
et it to work, if you have a recipe that<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 works, please<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 share it. ROO=
TFS_POSTPROCESS_COMMAND seems to be buggy.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 thank you<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 On Tue, Dec 1=
2, 2017 at 1:58 PM, Mike Looijmans<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=
=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.=
nl</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
ic.nl" target=3D"_blank">mike.looijmans@topic.n<wbr>l</a>&gt; &lt;mailto:<a=
 href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@t=
opic.n<wbr>l</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
ic.nl" target=3D"_blank">mike.looijmans@topic.n<wbr>l</a>&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a=
 href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@t=
opic.n<wbr>l</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
ic.nl" target=3D"_blank">mike.looijmans@topic.n<wbr>l</a>&gt; &lt;mailto:<a=
 href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@t=
opic.n<wbr>l</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
ic.nl" target=3D"_blank">mike.looijmans@topic.n<wbr>l</a>&gt;&gt;&gt;&gt; w=
rote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 On 11-12-17 15:18, Sherif Omran wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 i want to create a recipe to clean some files<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 from the rootfile<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 system, but i don&#39;t know how to let this<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 recipe run the last one<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 before building the rootfile system.<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 You can use ROOTFS_POSTPROCESS_COMMAND in your<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 image recipe to do<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 some<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 last-minute filesystem cleanup.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 However, in most cases it&#39;s much better to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 determine what recipe<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 puts the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 files there and modify the recipe or remove the<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 package. It would<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 help a<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 lot if you would reveal what files you want to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 remove and why.<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 Kind regards,<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 Mike Looijmans<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 System Expert<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 TOPIC Products<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 Materiaalweg 4, NL-5681 RJ Best<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 Postbus 440, NL-5680 AK Best<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 Telefoon: <a href=3D"tel:%2B31%20%280%29%20499%2033%2069%2079" value=
=3D"+31499336979" target=3D"_blank">+31 (0) 499 33 69 79</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;tel:%2B31%20%280%29%20499%203<wbr>3%2069%20=
79&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;tel:%2B31=
%20%280%29%20499%203<wbr>3%2069%2079&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;tel:%2B31=
%20%280%29%20499%203<wbr>3%2069%2079&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 E-mail: <a href=3D"mailto:mike.looijmans@topicproducts.com" target=
=3D"_blank">mike.looijmans@topicproducts.c<wbr>om</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
icproducts.com" target=3D"_blank">mike.looijmans@topicpr<wbr>oducts.com</a>=
&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a=
 href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blank">mike.lo=
oijmans@topicpr<wbr>oducts.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
icproducts.com" target=3D"_blank">mike.looijmans@topicpr<wbr>oducts.com</a>=
&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@topicproducts.com" targe=
t=3D"_blank">mike.looijmans@topicpr<wbr>oducts.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
icproducts.com" target=3D"_blank">mike.looijmans@topicpr<wbr>oducts.com</a>=
&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a=
 href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blank">mike.lo=
oijmans@topicpr<wbr>oducts.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
icproducts.com" target=3D"_blank">mike.looijmans@topicpr<wbr>oducts.com</a>=
&gt;&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 Website: <a href=3D"http://www.topicproducts.com" rel=3D"noreferrer"=
 target=3D"_blank">www.topicproducts.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"http://www.topicproducts.com" re=
l=3D"noreferrer" target=3D"_blank">http://www.topicproducts.com</a>&gt; &lt=
;<a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" target=3D"_bla=
nk">http://www.topicproducts.com</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=
=3D"http://www.topicproducts.com" rel=3D"noreferrer" target=3D"_blank">http=
://www.topicproducts.com</a>&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 Please consider the environment before printing<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 this e-mail<br>
<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 --<br>
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
&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailt=
o:mike.looijmans@topicproducts.com" target=3D"_blank">mike.looijmans@topicp=
r<wbr>oducts.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:mike.looijmans@top=
icproducts.com" target=3D"_blank">mike.looijmans@topicpr<wbr>oducts.com</a>=
&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Website: <a href=3D"http://=
www.topicproducts.com" rel=3D"noreferrer" target=3D"_blank">www.topicproduc=
ts.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"http://www.topicproducts.com" re=
l=3D"noreferrer" target=3D"_blank">http://www.topicproducts.com</a>&gt; &lt=
;<a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" target=3D"_bla=
nk">http://www.topicproducts.com</a>&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 Please consider the environ=
ment before printing this e-mail<br>
<br>
<br>
<br>
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
" value=3D"+31499336979" target=3D"_blank">+31 (0) 499 33 69 79</a><br>
=C2=A0 =C2=A0 &lt;tel:%2B31%20%280%29%20499%203<wbr>3%2069%2079&gt;<br>
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
<br></div></div><span>
=C2=A0 =C2=A0 ______________________________<wbr>_________________<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 yocto mailing list<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@=
yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"ma=
ilto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><w=
br>&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a=
 href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoprojec=
t.org</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt; &lt;mailto:<a h=
ref=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.=
org</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt;&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org<wbr>/listinfo/yocto</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.or<wbr>g/listinfo/yocto</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" targe=
t=3D"_blank">https://lists.yoctoproject.or<wbr>g/listinfo/yocto</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.or<wbr>g/listinfo/yocto</a>&gt;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =
=C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.or<wbr>g/listinfo=
/yocto</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.or<wbr>g/listinfo/yocto</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" targe=
t=3D"_blank">https://lists.yoctoproject.or<wbr>g/listinfo/yocto</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.or<wbr>g/listinfo/yocto</a>&gt;&gt;&gt;<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</span></blockquote><span class=3D"m_-3542005801761690590HOEnZb"><font colo=
r=3D"#888888">
<br>
-- <br>
MARTIN HUNDEB=C3=98LL, Prevas A/S<br>
Software Developer<br>
<br>
Hedeager 3, DK-8200 Aarhus N<br>
Phone <a href=3D"tel:%2B45%2087438070" value=3D"+4587438070" target=3D"_bla=
nk">+45 87438070</a><br>
Mobile <a href=3D"tel:%2B45%2025562438" value=3D"+4525562438" target=3D"_bl=
ank">+45 25562438</a><br>
<a href=3D"mailto:Martin.Hundeboll@prevas.dk" target=3D"_blank">Martin.Hund=
eboll@prevas.dk</a><br>
<a href=3D"http://www.prevas.com" rel=3D"noreferrer" target=3D"_blank">www.=
prevas.com</a><br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--94eb2c1b50a2ca7bdc0560487755--
