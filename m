Return-Path: <techieth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0A07E01374; Tue,  3 Jul 2018 04:32:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (techieth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f181.google.com (mail-yb0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78058E01374
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 04:32:36 -0700 (PDT)
Received: by mail-yb0-f181.google.com with SMTP id x15-v6so583704ybm.2
	for <yocto@yoctoproject.org>; Tue, 03 Jul 2018 04:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=iDLUSRE5LZGrW0hNphpoPx+GH0xVKSLqRf47XPQeLD4=;
	b=aaCSetpH8eZ8engmML8qjqvqndfJBigsoE88HGzOrxH5dvYhQctdDU0GE9EtpOMdbB
	+CcC9BdlOrLEC0RCKJjo5gGPkp40qOgH14+qfaDTO1Lma71T/YJXh6sldwIemHp7GU5D
	gH15UF+yRGs9mmNUw6oFq22JxmbMq/EYZaN9RKHhoFDLz8clOOBW2FWOVL/Kp4iqTl6X
	QnkpFheBy6i+JgwGo71MoaFKPuOq6ODtEbs++pF2YCGBRe6MnicbY+ID7fd5xLERItRI
	hyliOKgCINmqartbAglW/eY/lhnCMRtqZCm//p3zGjxvTAMbAfhOwm6828Duec/qqtDq
	tU7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=iDLUSRE5LZGrW0hNphpoPx+GH0xVKSLqRf47XPQeLD4=;
	b=MqxxNjGr5yGlqTfQmVlPpmeUlajDVNMjZ5qo+ijDjOCQl/WLNxUxltJhVxbe1FpSks
	nYdg7Rs/D2oK0bAT7+rV/uoDAB6Fy+2OauZzDl90d88TWidYqWEJya/a+3uW2BbSboXH
	mwcV56CphbyHVhXV0GBT7veRi6PAe3iG00aX3JquTjB/TO4Ku1W9J6ESWeDl6s4hMh8G
	W1KUDJl6FY+GbO/Gdm7YQW4feMh7v3LioiV/N3B75VxPga6HA6796efjsTvmp4rqI372
	Vci+NddTviUajqgMAUNymQJ64W46gcm2g74m3zlaaA4AgKPMYq4ZfGB+Uvdgolg8fgm+
	0K4g==
X-Gm-Message-State: APt69E3UfXP1uSL8O1kAlcG08MTtQK2uW6j3JE8Dvs8/C7uUid7DANxV
	eju1/ZDNdqj1RizELyrVvmqxg7cFNXW8maM32jw=
X-Google-Smtp-Source: AAOMgpd5ENvHsX8uKjdoh38A9Tzdib/dR0T+mhUITKJsuk2Ucq/9BHmQqbBUNpMeak+qmLdKoRl9fo2sXM43ohGDGbY=
X-Received: by 2002:a25:e0c3:: with SMTP id
	x186-v6mr11051916ybg.20.1530617555586; 
	Tue, 03 Jul 2018 04:32:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a81:1f43:0:0:0:0:0 with HTTP;
	Tue, 3 Jul 2018 04:32:35 -0700 (PDT)
In-Reply-To: <12bc4741-afe5-c0e0-abd0-f9483be306df@topic.nl>
References: <CAJw2sSBnJWCWV84FDV=L4JX6EQg80Z-HvMAOnkCwKXaZboZCuQ@mail.gmail.com>
	<CAJw2sSDJOKV-aXrUEjmHGvQ7NxPmnMKgJn3njY_hAEka4HGrQg@mail.gmail.com>
	<12bc4741-afe5-c0e0-abd0-f9483be306df@topic.nl>
From: techi eth <techieth@gmail.com>
Date: Tue, 3 Jul 2018 17:02:35 +0530
Message-ID: <CAJw2sSDmY2AURHHCc5AFZXnq5JiCxPPBnYHy51teJfg6nQEhkw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Basehash value changed issue
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
X-List-Received-Date: Tue, 03 Jul 2018 11:32:37 -0000
Content-Type: multipart/alternative; boundary="000000000000b01388057016ab38"

--000000000000b01388057016ab38
Content-Type: text/plain; charset="UTF-8"

i don't see any time usage in recipe however if this variable need's to
exclude than could you please share me hint or reference of recipe to do
the same.
I tried below in recipe but no success.
PR[vardepsxeclude]="DATETIME DATE TIME"


On Mon, Jul 2, 2018 at 4:51 PM, Mike Looijmans <mike.looijmans@topic.nl>
wrote:

> The simplest (and probably preferred) way to fix would be to get rid of
> TIME usage from that recipe. Parsing the recipe twice should yield the same
> result and your trouble would be over.
>
>
> On 02-07-18 07:27, techi eth wrote:
>
>> Hi,
>>
>> Can anybody give me hint over below issue.
>>
>> Thanks
>>
>>
>>
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
> ---------- Forwarded message ----------
>
>> From: *techi eth* <techieth@gmail.com <mailto:techieth@gmail.com>>
>> Date: Thu, Jun 21, 2018 at 6:30 PM
>> Subject: Basehash value changed issue
>> To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>
>>
>> Hi,
>>
>> I am facing issue with basehash value changed while building image on one
>> of my test board (Ref of beagle bone) on morty branch.
>>
>> Error :
>> gateway.bb.do_rootfs, the basehash value changed from
>> e685a429b8df6dcff60063f087d425ee to 3f98a102f48ea8722835ad0d65bfbc1f.
>> The metadata is not deterministic and this needs to be fixed
>>
>> When i run bitbake-diffsigs -t gateway do_rootfs
>> I found below O/P.
>> basehash changed from 8e6b9498c9704590bd016491efcbf9f9 to
>> 3f98a102f48ea8722835ad0d65bfbc1f
>> Variable TIME value changed from '112854' to '115745'
>>
>> After googling I found that TIME need's to be added in vardepsexclude
>> list.
>> I added below in conf/distro/machine.conf but error persist.
>> do_rootfs[vardepsexclude] = "TIME DATE DATETIME"
>>
>> Please suggest me where & what has to be added to come out of issue.
>>
>>
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b01388057016ab38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i don&#39;t see any time usage in recipe however if this v=
ariable need&#39;s to exclude than could you please share me hint or refere=
nce of recipe to do the same.<div>I tried below in recipe but no success.</=
div><div>PR[vardepsxeclude]=3D&quot;DATETIME DATE TIME&quot;</div><div><br>=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mo=
n, Jul 2, 2018 at 4:51 PM, Mike Looijmans <span dir=3D"ltr">&lt;<a href=3D"=
mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">The simplest (and pr=
obably preferred) way to fix would be to get rid of TIME usage from that re=
cipe. Parsing the recipe twice should yield the same result and your troubl=
e would be over.<span class=3D""><br>
<br>
<br>
On 02-07-18 07:27, techi eth wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
Can anybody give me hint over below issue.<br>
<br>
Thanks<br>
<br>
<br>
</blockquote>
<br></span>
Kind regards,<br>
<br>
Mike Looijmans<br>
System Expert<br>
<br>
TOPIC Products<br>
Materiaalweg 4, NL-5681 RJ Best<br>
Postbus 440, NL-5680 AK Best<br>
Telefoon: +31 (0) 499 33 69 79<br>
E-mail: <a href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blan=
k">mike.looijmans@topicproducts.c<wbr>om</a><br>
Website: <a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" target=
=3D"_blank">www.topicproducts.com</a><br>
<br>
Please consider the environment before printing this e-mail<br>
<br>
<br>
<br>
---------- Forwarded message ----------<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
From: *techi eth* &lt;<a href=3D"mailto:techieth@gmail.com" target=3D"_blan=
k">techieth@gmail.com</a> &lt;mailto:<a href=3D"mailto:techieth@gmail.com" =
target=3D"_blank">techieth@gmail.com</a>&gt;&gt;<span class=3D""><br>
Date: Thu, Jun 21, 2018 at 6:30 PM<br>
Subject: Basehash value changed issue<br></span>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a><wbr>&gt;<span class=3D""><br>
<br>
<br>
Hi,<br>
<br>
I am facing issue with basehash value changed while building image on one o=
f my test board (Ref of beagle bone) on morty branch.<br>
<br>
Error :<br>
gateway.bb.do_rootfs, the basehash value changed from e685a429b8df6dcff6006=
3f087d425<wbr>ee to 3f98a102f48ea8722835ad0d65bfbc<wbr>1f. The metadata is =
not deterministic and this needs to be fixed<br>
<br>
When i run bitbake-diffsigs -t gateway do_rootfs<br>
I found below O/P.<br>
basehash changed from 8e6b9498c9704590bd016491efcbf9<wbr>f9 to 3f98a102f48e=
a8722835ad0d65bfbc<wbr>1f<br>
Variable TIME value changed from &#39;112854&#39; to &#39;115745&#39;<br>
<br>
After googling I found that TIME need&#39;s to be added in vardepsexclude l=
ist.<br>
I added below in conf/distro/machine.conf but error persist.<br>
do_rootfs[vardepsexclude] =3D &quot;TIME DATE DATETIME&quot;<br>
<br>
Please suggest me where &amp; what has to be added to come out of issue.<br=
>
<br>
<br>
<br>
</span></blockquote><div class=3D"HOEnZb"><div class=3D"h5">
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--000000000000b01388057016ab38--
