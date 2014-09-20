Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B9FDE006DB; Sat, 20 Sep 2014 01:53:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2635E0056A
	for <yocto@yoctoproject.org>; Sat, 20 Sep 2014 01:52:59 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id q107so926518qgd.37
	for <yocto@yoctoproject.org>; Sat, 20 Sep 2014 01:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=yEu4lELLUBVQpHNqyo+yg5iWjm6rsDs28o9yqUGp5VM=;
	b=u1TP97IcbhmxI10019Me93gq1Pgl38uGF0Psoj9+fxlA5qVb4puLKbEkR7qys8M0WP
	WrSakwKN4ME5X3Lt96cG7Jx1/YqFYEP6pvaG1o4H3M5fCeGqDqaACk1FfxPvWNZDvGIS
	KhmKhCiC6K1B5fyQOw4ygcpZms4tDLxNMNQpu4/5h/IsyDV2+8ZKVgpQW/bwQsEs7C0/
	apeFn/oCFBRBMzTsI9FyPJR5A6yE1UjuI2AqOpQx6mNFXF2Tvvut4/4dp4NDrY3gm5k1
	XJW3eMLLLcamJcpUYdVYXiNiTYxFK/iIBHiicyrDu6wzW6Rtl96zs8RgIXjBIUmJkuzo
	iX3A==
MIME-Version: 1.0
X-Received: by 10.140.91.229 with SMTP id z92mr8027593qgd.8.1411203178747;
	Sat, 20 Sep 2014 01:52:58 -0700 (PDT)
Received: by 10.140.85.83 with HTTP; Sat, 20 Sep 2014 01:52:58 -0700 (PDT)
Received: by 10.140.85.83 with HTTP; Sat, 20 Sep 2014 01:52:58 -0700 (PDT)
In-Reply-To: <CAJTo0LZv+ee0DRnfGXtrtx6Q3Pa17pA3TiLmqPvcyf8rBNL16w@mail.gmail.com>
References: <d412ce5cffb0466c897447c7b8674054@SRV-MAIL.greenflex.group>
	<CAJTo0LZv+ee0DRnfGXtrtx6Q3Pa17pA3TiLmqPvcyf8rBNL16w@mail.gmail.com>
Date: Sat, 20 Sep 2014 05:52:58 -0300
Message-ID: <CAMCfZKFb9MZFK4mcwxbXn2Kub=wY7M7XdaOzfTZWb84Bv5Lziw@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Poky/Yocto drivers for cellular modem
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
X-List-Received-Date: Sat, 20 Sep 2014 08:53:03 -0000
Content-Type: multipart/alternative; boundary=001a113a51922cdf0805037b5873

--001a113a51922cdf0805037b5873
Content-Type: text/plain; charset=ISO-8859-1

Take a look at meta-eca:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-eca/tree/

Regards,

--
*dS
Diego Sueiro
sent from mobile.
Em 19/09/2014 18:34, "Burton, Ross" <ross.burton@intel.com> escreveu:

> On 18 September 2014 17:39, Simon Andrieu <sandrieu@greenflex.com> wrote:
> > Using some Linux distribution, it exists drivers that help recognizing a
> > cellular modem USB stick and to raise a corresponding network interface.
> >
> > Would you know please if such a generic cellular modem driver exists in
> > Poky/Yocto distribution please?
>
> Would connman + ofono be suitable?
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113a51922cdf0805037b5873
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Take a look at meta-eca:<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-eca/tree/">http:/=
/git.yoctoproject.org/cgit/cgit.cgi/meta-eca/tree/</a></p>
<p dir=3D"ltr">Regards, </p>
<p dir=3D"ltr">--<br>
*dS<br>
Diego Sueiro<br>
sent from mobile. </p>
<div class=3D"gmail_quote">Em 19/09/2014 18:34, &quot;Burton, Ross&quot; &l=
t;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; es=
creveu:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 18 Septem=
ber 2014 17:39, Simon Andrieu &lt;<a href=3D"mailto:sandrieu@greenflex.com"=
>sandrieu@greenflex.com</a>&gt; wrote:<br>
&gt; Using some Linux distribution, it exists drivers that help recognizing=
 a<br>
&gt; cellular modem USB stick and to raise a corresponding network interfac=
e.<br>
&gt;<br>
&gt; Would you know please if such a generic cellular modem driver exists i=
n<br>
&gt; Poky/Yocto distribution please?<br>
<br>
Would connman + ofono be suitable?<br>
<br>
Ross<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a113a51922cdf0805037b5873--
