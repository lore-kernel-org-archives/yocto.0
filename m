Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F717E00CEF; Wed, 13 Dec 2017 00:10:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C532FE00B5F
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 00:10:24 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id y89so1025303pfk.0
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 00:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GTN5Ah78e04B0eMaJReLmbWLJgJQDdJIbJLYZRnd9as=;
	b=iEFAUidSBZWol8BGzhgwqUbTz2oXVNZjKuXo7OutiISBCKvoixhh8pZgKAYIAEw3OZ
	yJqchorAblNRnJvhPnDqxN5mgtb71mayLmPrLXP0ZuQ5yG77/GZoOMA6mZfK9Kd+OS7B
	wATGRp9Tt6GqMUc3SA5vVJEU5lb2UdPE0j1WmWPYJ2vN5H6aNX2yFLamimqbwgUTOndQ
	KDBHjgiLlYfDq8SDQn5s4EgycXfGTkQYU7AcOnQnJOrGENRfMbgh4HPdH+RRfebYgrHx
	gk0J4LVTkesno4M2nBqBnTpqesN2P1FARSu32uPdfuqRFnhcWADni3/e/fsFFyzgqkTw
	PhWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GTN5Ah78e04B0eMaJReLmbWLJgJQDdJIbJLYZRnd9as=;
	b=jho6I4LxV9Vh6CYYhguke9FNoWmjwOzslQhHX3U6Q7c5OjioqkxnndNwtQ9xE0vuPY
	6BSKYagbzRrCGWD1BOvpJVlsJeDTL3XnhBlOAnisQNgqGYN4NbwkE4hE1UvcOg1oANWB
	Y+5R+Jr9+dmz++clc/+Vwd9yy5/6Iymszy8RmGTHpO+QcjNIkt3nHUQfTcHkVDZ/QTv+
	mSgO0Dl2oOTPS6Cw01954v3GbGuqw8+Ho6qBq3BT3Po1M+2s+6htVkahacWIyWP1/X2a
	vcJlGl86kzn4+Zk76jxVIQJYNiBzubM/BanYmRcBRPFF+eNS4JGlnBFEyD1vZvnadNz4
	eYjA==
X-Gm-Message-State: AKGB3mKA/00HseHqGDWro5ef8LRB5t5NRwhIxE5qJZGgs4Nvr11jM8wj
	RERa4XvR0Zqy7AAQTyW6pWdtSrwZq1TY1nbVxr3xNw==
X-Google-Smtp-Source: ACJfBov5/MmVdVeQ4WeR/DfQbAz3T/2Z0gwLKAw5V8qvmmQluWeSdVQ/pgIMRdZOtSVUyGBxYaW0sfBaCrqUTb2OKkU=
X-Received: by 10.99.42.210 with SMTP id q201mr4508304pgq.7.1513152624126;
	Wed, 13 Dec 2017 00:10:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Wed, 13 Dec 2017 00:10:23 -0800 (PST)
In-Reply-To: <084c90b0-1b18-d85f-3418-4b43e2b64d61@topic.nl>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
	<7ace9fbf-b13d-5097-fe44-ac74c55abdd6@topic.nl>
	<CAPb0b+PBqB5qJr0cinXNBNnr4Sm9Kkayr6Voa8Bd=MF_dHJAMw@mail.gmail.com>
	<084c90b0-1b18-d85f-3418-4b43e2b64d61@topic.nl>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Wed, 13 Dec 2017 09:10:23 +0100
Message-ID: <CAPb0b+MZzZFS+goVDWpX1Wm7+RSM1+AxH-zONm+x+C5diNLMcg@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Dec 2017 08:10:25 -0000
Content-Type: multipart/alternative; boundary="001a1146df14a6ff6a0560344c84"

--001a1146df14a6ff6a0560344c84
Content-Type: text/plain; charset="UTF-8"

here is my recipe, the aim was to remove some files from the init.d folder
and tweek before creating the image

#
# This file was derived from the 'Hello World!' example recipe in the
# Yocto Project Development Manual.
#

SUMMARY = "This recipe removes any missing files from the filesystem before
finalinzing it"
SECTION = "base"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

#SRC_URI = "file://*"

S = "${WORKDIR}"
BB_STRICT_CHECKSUM ="0"
ALLOW_EMPTY_${PN}="1"


#IMAGE_INSTALL = "packagegroup-core-boot packagegroup-base-extended
${CORE_IMAGE_EXTRA_INSTALL}"
#IMAGE_INSTALL = "${CORE_IMAGE}"

#inherit core-image

my_postprocess_function() {
 rm -r ${D}${bindir}/init.d/psplash.sh
}

ROOTFS_POSTPROCESS_COMMAND += "my_postprocess_function; "

On Wed, Dec 13, 2017 at 7:22 AM, Mike Looijmans <mike.looijmans@topic.nl>
wrote:

> Well, start by sharing yours first.
>
> Be careful when naming your shell routine, sometimes OE considers parts
> behind the underscore as overrides and then it cannot find it.
>
>
> On 13-12-17 07:14, Sherif Omran wrote:
>
>> hi Mike,
>> i could not get it to work, if you have a recipe that works, please share
>> it. ROOTFS_POSTPROCESS_COMMAND seems to be buggy.
>>
>> thank you
>>
>>
>>
>> On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans <mike.looijmans@topic.nl
>> <mailto:mike.looijmans@topic.nl>> wrote:
>>
>>     On 11-12-17 15:18, Sherif Omran wrote:
>>
>>         i want to create a recipe to clean some files from the rootfile
>>         system, but i don't know how to let this recipe run the last one
>>         before building the rootfile system.
>>
>>
>>     You can use ROOTFS_POSTPROCESS_COMMAND in your image recipe to do some
>>     last-minute filesystem cleanup.
>>
>>     However, in most cases it's much better to determine what recipe puts
>> the
>>     files there and modify the recipe or remove the package. It would
>> help a
>>     lot if you would reveal what files you want to remove and why.
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
>>     --
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
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>     <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
>

--001a1146df14a6ff6a0560344c84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">here is my recipe, the aim was to remove some files from t=
he init.d folder and tweek before creating the image<br><br>#<br># This fil=
e was derived from the &#39;Hello World!&#39; example recipe in the<br># Yo=
cto Project Development Manual.<br>#<br><br>SUMMARY =3D &quot;This recipe r=
emoves any missing files from the filesystem before finalinzing it&quot;<br=
>SECTION =3D &quot;base&quot;<br>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_C=
HKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506e=
cda2f7b4f302&quot;<br><br>#SRC_URI =3D &quot;file://*&quot;<br><br>S =3D &q=
uot;${WORKDIR}&quot;<br>BB_STRICT_CHECKSUM =3D&quot;0&quot;<br>ALLOW_EMPTY_=
${PN}=3D&quot;1&quot;<br><br><br>#IMAGE_INSTALL =3D &quot;packagegroup-core=
-boot packagegroup-base-extended ${CORE_IMAGE_EXTRA_INSTALL}&quot;<br>#IMAG=
E_INSTALL =3D &quot;${CORE_IMAGE}&quot;<br><br>#inherit core-image<br><br>m=
y_postprocess_function() {<br>=C2=A0rm -r ${D}${bindir}/init.d/psplash.sh<b=
r>}<br><br>ROOTFS_POSTPROCESS_COMMAND +=3D &quot;my_postprocess_function; &=
quot;<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Wed, Dec 13, 2017 at 7:22 AM, Mike Looijmans <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.=
nl</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Well, start by s=
haring yours first.<br>
<br>
Be careful when naming your shell routine, sometimes OE considers parts beh=
ind the underscore as overrides and then it cannot find it.<span class=3D""=
><br>
<br>
<br>
On 13-12-17 07:14, Sherif Omran wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
hi Mike,<br>
i could not get it to work, if you have a recipe that works, please share i=
t. ROOTFS_POSTPROCESS_COMMAND seems to be buggy.<br>
<br>
thank you<br>
<br>
<br>
<br></span><span class=3D"">
On Tue, Dec 12, 2017 at 1:58 PM, Mike Looijmans &lt;<a href=3D"mailto:mike.=
looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</a> &lt;mailt=
o:<a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijma=
ns@topic.n<wbr>l</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 On 11-12-17 15:18, Sherif Omran wrote:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 i want to create a recipe to clean some files f=
rom the rootfile<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 system, but i don&#39;t know how to let this re=
cipe run the last one<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 before building the rootfile system.<br>
<br>
<br>
=C2=A0 =C2=A0 You can use ROOTFS_POSTPROCESS_COMMAND in your image recipe t=
o do some<br>
=C2=A0 =C2=A0 last-minute filesystem cleanup.<br>
<br>
=C2=A0 =C2=A0 However, in most cases it&#39;s much better to determine what=
 recipe puts the<br>
=C2=A0 =C2=A0 files there and modify the recipe or remove the package. It w=
ould help a<br>
=C2=A0 =C2=A0 lot if you would reveal what files you want to remove and why=
.<br>
<br>
<br>
=C2=A0 =C2=A0 Kind regards,<br>
<br>
=C2=A0 =C2=A0 Mike Looijmans<br>
=C2=A0 =C2=A0 System Expert<br>
<br>
=C2=A0 =C2=A0 TOPIC Products<br>
=C2=A0 =C2=A0 Materiaalweg 4, NL-5681 RJ Best<br>
=C2=A0 =C2=A0 Postbus 440, NL-5680 AK Best<br></span>
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
products.com</a>&gt;<span class=3D""><br>
<br>
=C2=A0 =C2=A0 Please consider the environment before printing this e-mail<b=
r>
<br>
<br>
<br>
=C2=A0 =C2=A0 --=C2=A0 =C2=A0 =C2=A0<br>
</span></blockquote><span class=3D"">
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
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
=C2=A0 =C2=A0 yocto mailing list<br>
=C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt;<br>
=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listi=
nfo/yocto</a><br>
=C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or<wbr>g/l=
istinfo/yocto</a>&gt;<br>
<br>
<br>
</blockquote>
<br>
</blockquote></div><br></div>

--001a1146df14a6ff6a0560344c84--
