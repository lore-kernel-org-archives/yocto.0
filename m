Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E11BDE00998; Mon, 13 Apr 2015 05:45:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF218E00963
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 05:45:08 -0700 (PDT)
Received: by oblw8 with SMTP id w8so36005299obl.0
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 05:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=FWvkHj3maHZhVyCW2ZAw4utC5+1a8W2HJj+QOwQtngo=;
	b=VzuYCegE1jKMHCuDhCUiGkagNR0FCwWOGk8z6ivem8M6BuCUnZ1qadgjjwUhRRTAZO
	LHx44l5Azs51MVDuXwx8rGzs7beWz4pSyJ+mB8hj2RoWwrQA93mWMP9tO9yffudeo2Rd
	5U5aD0mzYuItz1uW2LuqGALvUn8+pfaoCwUI+aYGl0Jp/3d1VzRPVPsxBOSQjHr/ksk2
	d2iDNfCioj4X2EbD7hQCY0POKM58oFhsWieGAiDuTXv4Y/TEh5U33ax3oPTpWj2gdDVs
	oae9kUHy2x8NNtXaGFcfzMpqBqUzRl3AYF4/v75W7gRVHHPEKnN6Xikua2FEjJKXopOD
	1wFQ==
X-Gm-Message-State: ALoCoQkfqTONrIE6UJJ0+R9VFnUxXqkIOIi5SMqOeh5Pbgao76f16l9yMirp7zRuxHQ/e17ONUb6
X-Received: by 10.182.137.136 with SMTP id qi8mr11624633obb.51.1428929108397; 
	Mon, 13 Apr 2015 05:45:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.94.175 with HTTP; Mon, 13 Apr 2015 05:44:48 -0700 (PDT)
In-Reply-To: <AM3PR06MB4510B6E81D1E70198602BC68AE70@AM3PR06MB451.eurprd06.prod.outlook.com>
References: <AM3PR06MB4510B6E81D1E70198602BC68AE70@AM3PR06MB451.eurprd06.prod.outlook.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 13 Apr 2015 14:44:48 +0200
Message-ID: <CAP71WjysAJv1-H1GR-BGAGST=zWT7mPPGChFcW-ODB+4rV6_oA@mail.gmail.com>
To: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Git and http problem.
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
X-List-Received-Date: Mon, 13 Apr 2015 12:45:13 -0000
Content-Type: multipart/alternative; boundary=001a11c35236ea65a605139a7b48

--001a11c35236ea65a605139a7b48
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 13, 2015 at 1:53 PM, Francois P. Gallichand <
francois.p.gallichand@ca.abb.com> wrote:

> I'm working behind a firewall, on which I have absolutely no control, and
> it does not allows the git protocol to go through. So I patch the recipes
> to replace the git protocol by the http protocol and it works most of the
> time. However one specific package, linux-yocto, does not seem to work ev=
en
> If I use the http protocol. It either times-out during the fetch, of the
> fetch goes on forever.
>
>
>
> Frustrated with that situation, I tried various things to realize that if
> I tried to manually clone the git repository, it doesn't work with a "git
> clone git://=E2=80=A6;protocol=3Dhttp;=E2=80=A6" but if I use "git clone =
http://...;protocol=3Dhttp;
> =E2=80=A6",it is working fine. But the  http:// form is not supported by =
bitbake
> as if I use it in a recipe as the SRC_URI, bitbake gives me an error.
>
>
>
> Is it a bug with bitbake or am I doing something wrong?
>


not a direct answer to your question.. but I would recommend to look into
using something like this:

https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
http://gitolite.com/git-over-proxy.html

I have used that a lot in the past, when I had to deal with corporate
firewalls, and it doesn't require that you patch any recipe.

--001a11c35236ea65a605139a7b48
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Apr 13, 2015 at 1:53 PM, Francois P. Gallichand <span dir=3D"ltr">&=
lt;<a href=3D"mailto:francois.p.gallichand@ca.abb.com" target=3D"_blank">fr=
ancois.p.gallichand@ca.abb.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><p class=3D"MsoNormal">I&#39;m working beh=
ind a firewall, on which I have absolutely no control, and it does not allo=
ws the git protocol to go through. So I patch the recipes to replace the gi=
t protocol by the http protocol and it works most of the time. However
 one specific package, linux-yocto, does not seem to work even If I use the=
 http protocol. It either times-out during the fetch, of the fetch goes on =
forever.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Frustrated with that situation, I tried various thin=
gs to realize that if I tried to manually clone the git repository, it does=
n&#39;t work with a &quot;git clone git://=E2=80=A6;protocol=3Dhttp;=E2=80=
=A6&quot; but if I use &quot;git clone http://...;protocol=3Dhttp; =E2=80=
=A6&quot;,it is
 working fine. But the=C2=A0 http:// form is not supported by bitbake as if=
 I use it in a recipe as the SRC_URI, bitbake gives me an error.<u></u><u><=
/u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is it a bug with bitbake or am I doing something wro=
ng?</p></blockquote></div><br><br></div><div class=3D"gmail_extra">not a di=
rect answer to your question.. but I would recommend to look into using som=
ething like this:<br><br><a href=3D"https://wiki.yoctoproject.org/wiki/Work=
ing_Behind_a_Network_Proxy">https://wiki.yoctoproject.org/wiki/Working_Behi=
nd_a_Network_Proxy</a><br><a href=3D"http://gitolite.com/git-over-proxy.htm=
l">http://gitolite.com/git-over-proxy.html</a><br><br></div><div class=3D"g=
mail_extra">I have used that a lot in the past, when I had to deal with cor=
porate firewalls, and it doesn&#39;t require that you patch any recipe.<br>=
</div></div>

--001a11c35236ea65a605139a7b48--
