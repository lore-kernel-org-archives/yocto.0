Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C297E0045D; Tue,  1 Nov 2016 08:27:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0897E0034A
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 08:27:53 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id z190so201868855qkc.2
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 08:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RRdU07m19STxvDHfojVQjvSHOEyR1e1u/Vsb2Irkl4Y=;
	b=1DkFFGewF1WdQZowsQNNAj7xvAOPUe/ebzn4pPJYi4TL5bUlAoJSl9doUWmH7hQobe
	2faFnv1VKUaqd1QxG7QhUmkPaQuvExvau9Igv4evjBiq02dk33EbAQww/Emo2WjL22wO
	3gDjJKtWRpwdw16D3M/T84UKWXYz+elcQ1bTlUUvSobsvD+8tWklldmJf2JQCoDC7HXz
	4vj3C1m4ypTnUWkcEVdkXro0TGZfiNqcFysR6/D8yzdTeegdt4nLwPil1CVizaL7Cl7W
	rL7evFTfczLan1UrGqvhPVE9CZ8qgx5t/LWzefzywMlxAlC1PZaTDARrrehR1lxz9b2E
	rCvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RRdU07m19STxvDHfojVQjvSHOEyR1e1u/Vsb2Irkl4Y=;
	b=VnNuo/IOhVyyPjEOLR4hRyEImBVmqm4WCR66/5d6jmx2Eusz6K43CbgSeh2tcZmfv4
	rcAALsphLaq6Wc0G9Lb/czxsKlDnc8kL0F22F+5tVMXmAaiKc3q2DK2P4NmPIsZy14oH
	tYsUQ8boWYfhAmzux+OutZgaw7iHvnAjb1idgY2XLxnAOtvIgb+6xKD8XwBoyvHOmm63
	gmSoL71tcJjE3aUzYPki5Vqb3OIQEtaQOoNZv23hmhpyd20XraMrgqLL6qcG2clzycA4
	Ujxl1/UI73pJB5mOVi1UWsHc5ucRwGmAPre2FfWFoCqoJjnQ4AaxiB3ORo5PlSWTMuSJ
	cvfw==
X-Gm-Message-State: ABUngvdkhphJ1UjHXL0JBy9l+xU5vyBvBFlkozW77iqw2qUwkj0TUmmXRklfyNFnBPtwCglD+OCXC87NBFbh4q3Z
X-Received: by 10.55.215.6 with SMTP id m6mr28762008qki.244.1478014072745;
	Tue, 01 Nov 2016 08:27:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Tue, 1 Nov 2016 08:27:32 -0700 (PDT)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 1 Nov 2016 15:27:32 +0000
Message-ID: <CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>, "Rifenbark,
	Scott M" <srifenbark@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Tue, 01 Nov 2016 15:27:56 -0000
Content-Type: multipart/alternative; boundary=001a1149dcbcc7c73705403ef7f4

--001a1149dcbcc7c73705403ef7f4
Content-Type: text/plain; charset=UTF-8

On 1 November 2016 at 15:19, Vuille, Martin (Martin) <vmartin@avaya.com>
wrote:

> Is that correct/intentional, or a documentation oversight?
>
> Ubuntu 16.04 is mentioned elsewhere in the docs.
>
>
That's a mistake, I consider the whitelist assignment in poky.conf to be
canonical and that includes 16.04.

Scott, can you update the list at
http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#detailed-supported-distros
so that it reflects the list in the code:

SANITY_TESTED_DISTROS ?= " \
            poky-1.8 \n \
            poky-2.0 \n \
            poky-2.1 \n \
            poky-2.2 \n \
            Ubuntu-14.04 \n \
            Ubuntu-14.10 \n \
            Ubuntu-15.04 \n \
            Ubuntu-15.10 \n \
            Ubuntu-16.04 \n \
            Fedora-22 \n \
            Fedora-23 \n \
            Fedora-24 \n \
            CentOSLinux-7.* \n \
            Debian-8.* \n \
            openSUSE-13.2 \n \
            SUSELINUX-42.1 \n \
            "

Ross

--001a1149dcbcc7c73705403ef7f4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 November 2016 at 15:19, Vuille, Martin (Martin) <span dir=3D"ltr">&lt;=
<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex"><p class=3D"MsoNormal">Is that corr=
ect/intentional, or a documentation oversight?<u></u><u></u></p>
<p class=3D"MsoNormal">Ubuntu 16.04 is mentioned elsewhere in the docs.<u><=
/u><u></u></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>That&#39;s a mistake, I c=
onsider the whitelist assignment in poky.conf to be canonical and that incl=
udes 16.04.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Scott, can you update the list at=C2=A0<a href=3D"http://www.yoctopro=
ject.org/docs/2.2/ref-manual/ref-manual.html#detailed-supported-distros">ht=
tp://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#detailed-supp=
orted-distros</a> so that it reflects the list in the code:</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div class=3D"gmail_e=
xtra">SANITY_TESTED_DISTROS ?=3D &quot; \</div><div class=3D"gmail_extra">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 poky-1.8 \n \</div><div class=3D"=
gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 poky-2.0 \n \</div><=
div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 poky-2.=
1 \n \</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 poky-2.2 \n \</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Ubuntu-14.04 \n \</div><div class=3D"gmail_extra">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ubuntu-14.10 \n \</div><div class=3D=
"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ubuntu-15.04 \n \</=
div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ub=
untu-15.10 \n \</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 Ubuntu-16.04 \n \</div><div class=3D"gmail_extra">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Fedora-22 \n \</div><div class=3D"gmail_ext=
ra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Fedora-23 \n \</div><div clas=
s=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Fedora-24 \n \<=
/div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 C=
entOSLinux-7.* \n \</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Debian-8.* \n \</div><div class=3D"gmail_extra">=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 openSUSE-13.2 \n \</div><div class=3D"g=
mail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 SUSELINUX-42.1 \n \</=
div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &q=
uot;</div><div class=3D"gmail_extra"><br></div></div><div class=3D"gmail_ex=
tra">Ross</div></div>

--001a1149dcbcc7c73705403ef7f4--
