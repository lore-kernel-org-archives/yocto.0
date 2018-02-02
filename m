Return-Path: <marekslomiany@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6C64E00E4F; Fri,  2 Feb 2018 00:06:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marekslomiany[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00475E00E46
	for <yocto@yoctoproject.org>; Fri,  2 Feb 2018 00:06:52 -0800 (PST)
Received: by mail-pf0-f177.google.com with SMTP id q79so327339pfl.5
	for <yocto@yoctoproject.org>; Fri, 02 Feb 2018 00:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=X1uQpGuOnToK/er3fybIh7hRoxxAUlPwTr3e8DTfHCU=;
	b=Iw3wFWMQA00fFfKKUB/re6OKZ8/jAnZEvSbAisSBxApqBAicvVBc1wOScqU2DLGAwI
	duCPr/JI7d0H3jF4Z/sqct8uDhIoScx+WIfb2CbcBlp0Jv/gShDi30zQ2aTgkBiPEZsM
	6iUq7u+IUPJsgUN0+2VyyVym/ZGzNQ1v+DGQBp9We5UagcL7CpnyIBIyN7boFQzEeqED
	P84Ua6477dc2fNubJ835juVRh2xknPs/fHc6XLnAHduW9evVyMQkT9swzuWHBtPl+Iw9
	Qigg/EoSUnzgMi+kOQdf58OJBwPZRMmmkeC0R700x+hPK2i6+d5CVNuDGo0ZH0lzRkf2
	a5Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=X1uQpGuOnToK/er3fybIh7hRoxxAUlPwTr3e8DTfHCU=;
	b=A735wZeOWKTXbhCl2kJVlaCnsHL58dDomE6XzB9QlrGAW0CFE31JSp5v1ow+gIJgMm
	3keZbZ1ubczIJ1bJ82lualXOVL1NmCJCl0tUSIzHAPQGtAimP7XwEWpOrmWeRHt4RuoV
	TPNDNM2IsDgqFBP1aCazDqThJ5tR4tgUGpFd7U4Y+49O6uupMVryDZwfdfKDTyp5bDYO
	pr+MuSMOviJcugbBYO+hpNcBkcjBpwEDkM/q8CpshnfKqvpoUSZ12BdHuBBpmObb0WdM
	xFGnCbQqianJVRF2IElhfyOHN4Ek2e7FF8NV/OegvGoexDRNbcLCnYhWDeRwLO1M3vw9
	J0dQ==
X-Gm-Message-State: AKwxytfCsWbc6/FTu+T5RQtUJh2c7Qc1FThZV0yQGBLMmrOUQloO3X18
	41telniI/oGZjRTYWqEv/ZGz4ehIVFoL0Q1chx0=
X-Google-Smtp-Source: AH8x224b3zuoRispEQ2XYE5sPZSGoXVHjVazQhTu/wxZ7eiUSPj97ep+++c70rpDiJVGjG+g8p16VM0F73nAY+RatIU=
X-Received: by 10.99.126.17 with SMTP id z17mr8864960pgc.338.1517558811810;
	Fri, 02 Feb 2018 00:06:51 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Date: Fri, 02 Feb 2018 08:06:41 +0000
Message-ID: <CAJCDnYZz0HLgoJUmZhis0n=Kh1Xy2Z06dAA=8ai5GvdH03Ob4w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Remove nfs packages from image
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
X-List-Received-Date: Fri, 02 Feb 2018 08:06:53 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b4772e760310564363119"

--94eb2c1b4772e760310564363119
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using yocto rocko, with custom distro (based on poky), and custom
image inheriting core-image bbclass.
I was asked to get rid of nfs-client and nfs-server (and generaly
nfs-anything) from our image. If I'm right it comes with core-image.bbclass=
.
I have tried using IMAGE_INSTALL_remove, DISTRO_FEATURES_remove,
IMAGE_FEATURES_remove and few others in different places (like: image
recipe, build/conf/local.conf) and there was no outcome, the nfs
server/client were always there.
Packages I was trying to point in those *_remove commands where "fns"
"nfs-utils" "nfs-server" "nfs-client" and "packagegroup-core-nfs".
Could you please give me a hint how to get rid of those?

Kind regards,
Marek S=C5=82omiany

--94eb2c1b4772e760310564363119
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br><div>I am using yocto rocko, with custom distr=
o (based on poky), and custom image inheriting=C2=A0core-image bbclass.<br>=
<div>I was asked to get rid of nfs-client and nfs-server (and generaly nfs-=
anything) from our image. If I&#39;m right it comes with core-image.bbclass=
.</div></div><div>I have tried using IMAGE_INSTALL_remove, DISTRO_FEATURES_=
remove, IMAGE_FEATURES_remove and few others in different places (like: ima=
ge recipe, build/conf/local.conf) and there was no outcome, the nfs server/=
client were always there.</div><div>Packages I was trying to point in those=
 *_remove commands where &quot;fns&quot; &quot;nfs-utils&quot; &quot;nfs-se=
rver&quot; &quot;nfs-client&quot; and &quot;packagegroup-core-nfs&quot;.</d=
iv><div>Could you please give me a hint how to get rid of those?</div><div>=
<br></div><div>Kind regards,</div><div>Marek S=C5=82omiany</div></div></div=
>

--94eb2c1b4772e760310564363119--
