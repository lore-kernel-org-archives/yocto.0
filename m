Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41546E006B6
	for <yocto@yoctoproject.org>; Sun,  1 Dec 2013 06:59:34 -0800 (PST)
Received: by mail-ob0-f171.google.com with SMTP id wp18so11768450obc.30
	for <yocto@yoctoproject.org>; Sun, 01 Dec 2013 06:59:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6W3CdbLYOcSmLlVZDaJdA1lJNiy7oGQLNYYFBtaBAFw=;
	b=ZIN97AQ/HgwKHC50i1FnwqVlnOjSDo1ifccKSknDpnOoVIZ+u4Q6HVJI9tS0FcPMg+
	GRydPp04xyr8/ofd9zSQSZmEEaaeT6ebji/GEbmP2sJP7V5iPV4b952ttPAXV5cqBwt2
	QFb3E7cLtFx2yRYXb0HOYCKO1SNn3bAPXSmiWmWoI/kc4lBhNEQ97YQPciw3zIGKZ8g1
	/dVawmnlO2G7pj/RrMTNO87jYMd5v1AT3zUogepdetvV2iVeYgQZWeeYt40uoqEeIwvF
	UqqeeNv3Ksn1nnt7pvYn33SLi0hRnWpXMwhgCIz6V4MqZu1FgAWXHSb64SqQCvY41BEd
	K3yA==
X-Gm-Message-State: ALoCoQl6ho2DE9B8QwtpLAlvLK4bpncwdw59vSBI96sAptKqfrwt+XILdboQTVBSpzK9ZjClaKWL
X-Received: by 10.60.79.168 with SMTP id k8mr1915848oex.7.1385909973926; Sun,
	01 Dec 2013 06:59:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.0.50 with HTTP; Sun, 1 Dec 2013 06:59:13 -0800 (PST)
In-Reply-To: <529B4CC6.8090501@mlbassoc.com>
References: <529B4140.2040801@mlbassoc.com>
	<CAP71Wjw=Zaf9n_yiXG1-=Fp5rNSPYV9xEsEN6HEwO841xwWneA@mail.gmail.com>
	<529B4CC6.8090501@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Sun, 1 Dec 2013 15:59:13 +0100
Message-ID: <CAP71Wjz9zTEczjEwyy-gpTo6YA3oju-LBVxvxXSx9aNyN+-wkw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Very strange append issue
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
X-List-Received-Date: Sun, 01 Dec 2013 14:59:37 -0000
Content-Type: multipart/alternative; boundary=089e011607a4afd96704ec7a4f57

--089e011607a4afd96704ec7a4f57
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Dec 1, 2013 at 3:50 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> Yes, I am using master: 937663bdeca6d6479e0db2a9578588b1aa20222c
>
> At least I am not hallucinating!
>

can you try to revert the same commit as in the other thread?

commit 381d5920188398bc53b2454843054c8690bca243
Author: Saul Wold <s...@linux.intel.com>
Date:   Thu Nov 21 09:50:41 2013 -0800

    bitbake: cooker: add support for using % as a wildcard in bbappend
filename

--089e011607a4afd96704ec7a4f57
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Dec 1, 2013 at 3:50 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":1bo" style=3D"overflow:hidden">Yes, I am using=
 master: 937663bdeca6d6479e0db2a9578588<u></u>b1aa20222c<br>


<br>
At least I am not hallucinating!</div></blockquote></div><br>can you try to=
 revert the same commit as in the other thread?</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra"><div class=3D"gmail_extra">commit=
 381d5920188398bc53b2454843054c8690bca243</div>

<div class=3D"gmail_extra">Author: Saul Wold &lt;<a href=3D"mailto:s...@lin=
ux.intel.com">s...@linux.intel.com</a>&gt;</div><div class=3D"gmail_extra">=
Date: =A0 Thu Nov 21 09:50:41 2013 -0800</div><div class=3D"gmail_extra"><b=
r></div>

<div class=3D"gmail_extra">=A0 =A0 bitbake: cooker: add support for using %=
 as a wildcard in bbappend filename</div><div><br></div></div></div>

--089e011607a4afd96704ec7a4f57--
