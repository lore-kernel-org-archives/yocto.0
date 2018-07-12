Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DF6AE00D9E; Thu, 12 Jul 2018 10:49:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ADD5E009B2
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 10:49:22 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id b15-v6so24834733qtp.11
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 10:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kBnK6k938prmSva5AVh6S8EFoOuRy5nrFY8umhIqgHg=;
	b=dtXaOAZ5y6pquqIjkcjzQoTNLllDtBlVVyfbTDW3KxQAUEa6FTnD/AEMQMjSUcLI6Z
	yxLD6a7PNoiggCARgZBEltkPAAyKEzDS0BjbReNrhMttlsqYtVL7dcKl+oZnRi7Ivz5T
	KMDwiRjBo0Rlb08+wRkY1Tdp8juDDEdg304PlOcx9OiOO1i3BHU4KlRSUqbsFMeJkjMM
	d74jUyUJ1A3BMI9G+Jtq56HOy0z/g1wY1kBfmZzoJ7O3NO+x6sBCjgrlTTHRfBsCgRei
	erebgpCAByxBfO41WjpFl4FZOKWj+JHHAMVcTG8blJaczFsp4kdu4Itd1OkUgdE4MP7w
	4Cdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kBnK6k938prmSva5AVh6S8EFoOuRy5nrFY8umhIqgHg=;
	b=RSWmJDOdc04g7PQ2vSQu478pqGeL8w3kcafxnT1k4AQTJrpuazDEvJDAfj/2eLp0yp
	VvFLApG/takEKmRAw9F/l9iCT84eBJTOKB7WK/qYS9GsG5/J7wiVShF8oEmqsvOQoNpT
	+/MEjZW1+ibndeQjWlPn0llIYNqt6pw2SbO0Qm2MIGs4lo490m2Z4Gviz42q7Rawxg3R
	vLvdZA2Kp92hv9spWg/YXIn76yvueW65LR3w2x9Vwz8fRyBPbMFgBg0s2P7+jLqLP3Hl
	98J309smAN/SDYSDt2ycVLTefBRr80j25KKswqb8JOYZUPnbm9Z3VIHzvCMNBMTThuHy
	3IVA==
X-Gm-Message-State: AOUpUlHByA+wxce6qaOR4VUOTqFIBx2iWz1fbs6NK7QoQ0Tta1GAs8ZX
	WWebzuqzJTbEcqtW3a+AxDeCVYWMsQAjDQ/vvghUjQ==
X-Google-Smtp-Source: AAOMgpfmIMP//L146BT0ZJwJ30lEs+syCyiOXqCfzY9ol/KawvndeykxBaNJ5sIPVAyTsQsb8uD/HByYRF/FyrWUfJo=
X-Received: by 2002:a0c:e651:: with SMTP id
	c17-v6mr3529981qvn.170.1531417761818; 
	Thu, 12 Jul 2018 10:49:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Thu, 12 Jul 2018 10:49:21 -0700 (PDT)
In-Reply-To: <CAJTo0LaTeoEssFT8zy54AaSqgPgxE7ForzYZYWD8n5aVhGV_WQ@mail.gmail.com>
References: <CANmTPBYQtpFnEJccZ0aLQFXxViB6KB+4CemA+c9Y1EtX0j2P1Q@mail.gmail.com>
	<CAJTo0LaTeoEssFT8zy54AaSqgPgxE7ForzYZYWD8n5aVhGV_WQ@mail.gmail.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Thu, 12 Jul 2018 13:49:21 -0400
Message-ID: <CANmTPBY=pJajhhyr=9rBPpAQE_LSJyxxQk5YuJ+c-T9d9DmB-w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to download a recipe
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
X-List-Received-Date: Thu, 12 Jul 2018 17:49:23 -0000
Content-Type: multipart/alternative; boundary="000000000000b23c7a0570d0fb57"

--000000000000b23c7a0570d0fb57
Content-Type: text/plain; charset="UTF-8"

for grpc, there are 2 of them:

http://layers.openembedded.org/layerindex/recipe/72419/
Layer meta-oe
<http://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/>
(master branch)


and
http://layers.openembedded.org/layerindex/recipe/86424/
Layer meta-networking
<http://layers.openembedded.org/layerindex/branch/master/layer/meta-networking/>
(master branch)


which one do I choose?



On Thu, Jul 12, 2018 at 12:42 PM, Burton, Ross <ross.burton@intel.com>
wrote:

> Using postgresql as an example, searching for it will take you to the
> recipe page:
>
> http://layers.openembedded.org/layerindex/recipe/5558/
>
> This tells you that the recipe is in the meta-oe layer, so click on that:
>
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/
>
> That tells you where the layer is hosted:
>
> http://cgit.openembedded.org/meta-openembedded
>
> You use git to clone that layer and add it to BBLAYERS.
>
> Ross
>
> On 12 July 2018 at 17:19, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> > Hi,
> >
> > I simple question.
> >
> > How do you download a recipe from ?
> >
> > http://layers.openembedded.org/layerindex/branch/master/recipes/
> >
> > ??
> >
> > Do I copy past the bb into a text file or there is a way to download the
> > actual file?
> >
> > Thanks,
> > S
> >
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--000000000000b23c7a0570d0fb57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>for grpc, there are 2 of them:</div><div><br></div><d=
iv><a href=3D"http://layers.openembedded.org/layerindex/recipe/72419/">http=
://layers.openembedded.org/layerindex/recipe/72419/</a></div><div><table cl=
ass=3D"gmail-table gmail-table-striped gmail-table-bordered"><tbody><tr><th=
>Layer</th>
                            <td><a href=3D"http://layers.openembedded.org/l=
ayerindex/branch/master/layer/meta-oe/">meta-oe</a> (master branch)</td></t=
r></tbody></table></div><div><br></div><div><br></div><div>and</div><div><a=
 href=3D"http://layers.openembedded.org/layerindex/recipe/86424/">http://la=
yers.openembedded.org/layerindex/recipe/86424/</a></div><div><table class=
=3D"gmail-table gmail-table-striped gmail-table-bordered"><tbody><tr><th>La=
yer</th>
                            <td><a href=3D"http://layers.openembedded.org/l=
ayerindex/branch/master/layer/meta-networking/">meta-networking</a> (master=
 branch)</td></tr></tbody></table><br></div><div><br></div><div><br></div><=
div>which one do I choose?</div><div><br></div><div><br></div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Jul 12, 2018 at =
12:42 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@=
intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Using postgresql as an example, searching f=
or it will take you to the<br>
recipe page:<br>
<br>
<a href=3D"http://layers.openembedded.org/layerindex/recipe/5558/" rel=3D"n=
oreferrer" target=3D"_blank">http://layers.openembedded.<wbr>org/layerindex=
/recipe/5558/</a><br>
<br>
This tells you that the recipe is in the meta-oe layer, so click on that:<b=
r>
<br>
<a href=3D"http://layers.openembedded.org/layerindex/branch/master/layer/me=
ta-oe/" rel=3D"noreferrer" target=3D"_blank">http://layers.openembedded.<wb=
r>org/layerindex/branch/master/<wbr>layer/meta-oe/</a><br>
<br>
That tells you where the layer is hosted:<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded" rel=3D"noreferre=
r" target=3D"_blank">http://cgit.openembedded.org/<wbr>meta-openembedded</a=
><br>
<br>
You use git to clone that layer and add it to BBLAYERS.<br>
<br>
Ross<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On 12 July 2018 at 17:19, Simon Chamlian &lt;<a href=3D"mailto:simon.chamli=
an@mpbc.ca">simon.chamlian@mpbc.ca</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I simple question.<br>
&gt;<br>
&gt; How do you download a recipe from ?<br>
&gt;<br>
&gt; <a href=3D"http://layers.openembedded.org/layerindex/branch/master/rec=
ipes/" rel=3D"noreferrer" target=3D"_blank">http://layers.openembedded.<wbr=
>org/layerindex/branch/master/<wbr>recipes/</a><br>
&gt;<br>
&gt; ??<br>
&gt;<br>
&gt; Do I copy past the bb into a text file or there is a way to download t=
he<br>
&gt; actual file?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; S<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--000000000000b23c7a0570d0fb57--
