Return-Path: <matteo.facchinetti@sirius-es.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EB69E00D3A; Fri,  5 Apr 2019 14:44:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA270E00872
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 14:44:48 -0700 (PDT)
Received: by mail-qk1-f176.google.com with SMTP id y5so4734390qkc.11
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2019 14:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sirius-es-it.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uwNbc6Y0A+mMgKv+MByZc1TWF/4Ywh4OysytfIP5A2Q=;
	b=HZvFNrsWqUD+sihviz0ynFZ3Qb8p0P7cUxI4Sc62zui3UV25xuEmENkDdhu1uv8ggx
	NlfROBGxEKszfykSUiLv2TOSH2Okhett4oaBbIWkDPW76Mp+Dy8XxsM8We17u9kuJ3tC
	pP+jQV4u+BifvV24jMcetXTQwG/z5WSic1YXbXsr5v0XY4egLLaGL2mxS4Ke6YcasoX2
	jmchqI2ABj3BtOa9wwgwUNy+mzVe4INPLoEBrVQGpb4IADeBHE1J+jSRE+jyXOjW22d6
	tce6124Tzl8p7vLZ0XY2PdluntG0F02fx3tzO4gqSskbkkkTuMMaq/UUrg642sA5S1yA
	si2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uwNbc6Y0A+mMgKv+MByZc1TWF/4Ywh4OysytfIP5A2Q=;
	b=ngY/ncXUuUzqfBF//O9UiXxjOK2FNl/vOK2WI/V/JusEuE1OP6A1VvrtKQ9BJhqU0X
	qR1t6qIBDn3tFqioZLrZpeun3rKlgIZKe98Mv1vKLfbaJySZjbtD6/CHpPukofxSUPC/
	Rygojs2THD68RwDNG3yWhvdx7crrAntcNzkZrZXJ+GDsFgrHp4zUEDItT6323U5NepB6
	mzz9jWVXj36fnmD8z8a0eSxdPWWkKzc+43nRwFEpPuq5XThSZM7fmpa20bacAzXWqc4K
	7/8OrVEIQif/+M11Uj4cUImnivKRpq4x42mG8TPqHJnnPkt9h4CVxIQAyPFJkYWW2VM+
	7uUQ==
X-Gm-Message-State: APjAAAWW2FdWVXzLCgcJMcpH0Wjw0MWoCit6ThnyQ087o1D9bdRsAzoA
	bpMdZADjWt4yj86Bftcr+JTVZjc+DyG0fDZNlQfgvJ/x1LXpLZmB
X-Google-Smtp-Source: APXvYqwze4CdeL1pBzW6EMQAAxqwdL7OsIH0jvFI1In3YKuzzV5B23nK8DwU3q2tCqBoXkODTmCEHKw/C2NhudMwKtw=
X-Received: by 2002:ae9:ef07:: with SMTP id d7mr12845664qkg.100.1554500687782; 
	Fri, 05 Apr 2019 14:44:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAAjAsixRKTj9pt1gSC5cT149Y4Kgy5WYxjLmWRU9z9LhY-2-ww@mail.gmail.com>
	<036ebe30-ce24-9e66-9e00-b6431023946c@denx.de>
	<CAAjAsiyRnnFKgJ95H9Hk2JkXU-p0sK5xZJPcNvXC6CMzHGrKqg@mail.gmail.com>
	<e695ac33-f8fb-d40b-e4b0-c1ec5b6cd8c3@denx.de>
In-Reply-To: <e695ac33-f8fb-d40b-e4b0-c1ec5b6cd8c3@denx.de>
From: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>
Date: Fri, 5 Apr 2019 23:44:36 +0200
Message-ID: <CAAjAsixz5y1oMpT2Hm+urRf1vR3uLi+V3xtxpS9N9KN5R7+a5w@mail.gmail.com>
To: Stefano Babic <sbabic@denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: require and image.bbappend
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
X-List-Received-Date: Fri, 05 Apr 2019 21:44:50 -0000
Content-Type: multipart/alternative; boundary="0000000000004c76ff0585cf6577"

--0000000000004c76ff0585cf6577
Content-Type: text/plain; charset="UTF-8"

Hi Stefano,

Il giorno ven 5 apr 2019 alle ore 18:33 Stefano Babic <sbabic@denx.de> ha
scritto:

> Hi Matteo,
>
> On 05/04/19 17:54, Matteo Facchinetti wrote:
> >
> > Hi Stefano,
> >
> > Il giorno gio 4 apr 2019 alle ore 17:32 Stefano Babic <sbabic@denx.de
> > <mailto:sbabic@denx.de>> ha scritto:
> >
> >     Hi Matteo,
> >
> >     On 04/04/19 15:35, Matteo Facchinetti wrote:
> >     > Hi,
> >     >
> >     > I encountered a problem when try to add packages in my image
> >     recipe, but
> >     > I don't understernd if I wrong something or I have to do it in
> >     another way.
> >     >
> >     > In detail, in my common_layer there are:
> >     >    - image_base.bb <http://image_base.bb> <http://image_base.bb> :
> >     yocto base image
> >     >    - image_with_graphicsupport.bb
> >     <http://image_with_graphicsupport.bb>
> >     <http://image_with_graphicsupport.bb>
> >     > : where include image_base.bb <http://image_base.bb>
> >     <http://image_base.bb> (require
> >     > image_base.bb <http://image_base.bb> <http://image_base.bb>)
> >     >
> >     > Now, in my BSP layer, I want to add some packages to the
> >     image_base.bb <http://image_base.bb>
> >     > <http://image_base.bb>, so I create here the image_base.bbappend
> file.
> >     > But when I try to compile image_with_graphicsupport.bb
> >     <http://image_with_graphicsupport.bb>
> >     > <http://image_with_graphicsupport.bb> the result is not how
> expected.
> >     > Image_with_graphicsupport.bb doesn't add packages contained in
> >     > image_base.bbappend but only the packages contained in
> >     image_base.bb <http://image_base.bb>
> >     > <http://image_base.bb>.
> >     >
> >     > Is true that when include an image to another with require
> statement,
> >     > you can't extend the base image with a bbappend?
> >
> >     Yes, it is true, because the file is included and it is not anymore
> like
> >     a recipe that can be extend. It will be searched for a
> >     image_with_graphicsupport.bb <http://image_with_graphicsupport.bb>
> >     append, not image_base.bbappend.
> >
> >
> > Ok, understood.
> >
> >
> >     IMHO you can easy reach your goal if you write a packagegroup recipe
> >     where you put all packages you have in the IMAGE_INSTALL of your
> >     image_base.bb <http://image_base.bb>. You can then have a .bbappend
> >     for the packagegroup in
> >     your BSP layer (and this then works) and you put the packagegroup in
> the
> >     IMAGE_INSTALL directive of both image_base.bb <http://image_base.bb>
> and
> >     Image_with_graphicsupport.bb.
> >
> >
> > Thank you very much for this tip.
> > I have done exactly in this way and works perfectly and it's easy to
> manage.
> >
>
> :-)
>
> > However there's a part containded in the image_base.bb
> > <http://image_base.bb> recipe:
> >     inherit core-image
> >     IMAGE_FEATURE_append = "..."
> >
> > that I had to duplicate into the Image_with_graphicsupport.bb too.
> >
> > It's not a problem but is it possible to put them in a common recipe
> > like packagegroup?
>
> Then simply write a image_base.inc to factorize what is common and in
> both recipes you can include it with "require image_base.inc"
>
>
 Oh yes, I didn't think about that.
These parts are statics and the "require image_base.inc" statement into the
both images recipes is the simplest way and solve the problem... :-)

Thanks again.

Regards,

Matteo Facchinetti
Sirius Electronic Systems

--0000000000004c76ff0585cf6577
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Stefano,</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno ven 5 apr 2019 =
alle ore 18:33 Stefano Babic &lt;<a href=3D"mailto:sbabic@denx.de">sbabic@d=
enx.de</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi Matteo,<br>
<br>
On 05/04/19 17:54, Matteo Facchinetti wrote:<br>
&gt; <br>
&gt; Hi Stefano,<br>
&gt; <br>
&gt; Il giorno gio 4 apr 2019 alle ore 17:32 Stefano Babic &lt;<a href=3D"m=
ailto:sbabic@denx.de" target=3D"_blank">sbabic@denx.de</a><br>
&gt; &lt;mailto:<a href=3D"mailto:sbabic@denx.de" target=3D"_blank">sbabic@=
denx.de</a>&gt;&gt; ha scritto:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi Matteo,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 04/04/19 15:35, Matteo Facchinetti wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I encountered a problem when try to add packag=
es in my image<br>
&gt;=C2=A0 =C2=A0 =C2=A0recipe, but<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I don&#39;t understernd if I wrong something o=
r I have to do it in<br>
&gt;=C2=A0 =C2=A0 =C2=A0another way.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; In detail, in my common_layer there are:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0- <a href=3D"http://image_base.bb=
" rel=3D"noreferrer" target=3D"_blank">image_base.bb</a> &lt;<a href=3D"htt=
p://image_base.bb" rel=3D"noreferrer" target=3D"_blank">http://image_base.b=
b</a>&gt; &lt;<a href=3D"http://image_base.bb" rel=3D"noreferrer" target=3D=
"_blank">http://image_base.bb</a>&gt; :<br>
&gt;=C2=A0 =C2=A0 =C2=A0yocto base image=C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0- <a href=3D"http://image_with_gr=
aphicsupport.bb" rel=3D"noreferrer" target=3D"_blank">image_with_graphicsup=
port.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://image_with_graphicsupport.bb"=
 rel=3D"noreferrer" target=3D"_blank">http://image_with_graphicsupport.bb</=
a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://image_with_graphicsupport.bb"=
 rel=3D"noreferrer" target=3D"_blank">http://image_with_graphicsupport.bb</=
a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; : where include <a href=3D"http://image_base.b=
b" rel=3D"noreferrer" target=3D"_blank">image_base.bb</a> &lt;<a href=3D"ht=
tp://image_base.bb" rel=3D"noreferrer" target=3D"_blank">http://image_base.=
bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://image_base.bb" rel=3D"norefer=
rer" target=3D"_blank">http://image_base.bb</a>&gt; (require<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"http://image_base.bb" rel=3D"norefe=
rrer" target=3D"_blank">image_base.bb</a> &lt;<a href=3D"http://image_base.=
bb" rel=3D"noreferrer" target=3D"_blank">http://image_base.bb</a>&gt; &lt;<=
a href=3D"http://image_base.bb" rel=3D"noreferrer" target=3D"_blank">http:/=
/image_base.bb</a>&gt;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Now, in my BSP layer, I want to add some packa=
ges to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://image_base.bb" rel=3D"noreferrer"=
 target=3D"_blank">image_base.bb</a> &lt;<a href=3D"http://image_base.bb" r=
el=3D"noreferrer" target=3D"_blank">http://image_base.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://image_base.bb" rel=3D"no=
referrer" target=3D"_blank">http://image_base.bb</a>&gt;, so I create here =
the image_base.bbappend file.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; But when I try to compile <a href=3D"http://im=
age_with_graphicsupport.bb" rel=3D"noreferrer" target=3D"_blank">image_with=
_graphicsupport.bb</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"http://image_with_graphicsupport.bb"=
 rel=3D"noreferrer" target=3D"_blank">http://image_with_graphicsupport.bb</=
a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://image_with_graphicsuppor=
t.bb" rel=3D"noreferrer" target=3D"_blank">http://image_with_graphicsupport=
.bb</a>&gt; the result is not how expected.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Image_with_graphicsupport.bb doesn&#39;t add p=
ackages contained in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; image_base.bbappend but only the packages cont=
ained in<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://image_base.bb" rel=3D"noreferrer"=
 target=3D"_blank">image_base.bb</a> &lt;<a href=3D"http://image_base.bb" r=
el=3D"noreferrer" target=3D"_blank">http://image_base.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"http://image_base.bb" rel=3D"no=
referrer" target=3D"_blank">http://image_base.bb</a>&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Is true that when include an image to another =
with require statement,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; you can&#39;t extend the base image with a bba=
ppend?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Yes, it is true, because the file is included and i=
t is not anymore like<br>
&gt;=C2=A0 =C2=A0 =C2=A0a recipe that can be extend. It will be searched fo=
r a<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://image_with_graphicsupport.bb" rel=
=3D"noreferrer" target=3D"_blank">image_with_graphicsupport.bb</a> &lt;<a h=
ref=3D"http://image_with_graphicsupport.bb" rel=3D"noreferrer" target=3D"_b=
lank">http://image_with_graphicsupport.bb</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0append, not image_base.bbappend.<br>
&gt; <br>
&gt; <br>
&gt; Ok, understood.<br>
&gt; =C2=A0<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0IMHO you can easy reach your goal if you write a pa=
ckagegroup recipe<br>
&gt;=C2=A0 =C2=A0 =C2=A0where you put all packages you have in the IMAGE_IN=
STALL of your<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://image_base.bb" rel=3D"noreferrer"=
 target=3D"_blank">image_base.bb</a> &lt;<a href=3D"http://image_base.bb" r=
el=3D"noreferrer" target=3D"_blank">http://image_base.bb</a>&gt;. You can t=
hen have a .bbappend<br>
&gt;=C2=A0 =C2=A0 =C2=A0for the packagegroup in<br>
&gt;=C2=A0 =C2=A0 =C2=A0your BSP layer (and this then works) and you put th=
e packagegroup in the<br>
&gt;=C2=A0 =C2=A0 =C2=A0IMAGE_INSTALL directive of both <a href=3D"http://i=
mage_base.bb" rel=3D"noreferrer" target=3D"_blank">image_base.bb</a> &lt;<a=
 href=3D"http://image_base.bb" rel=3D"noreferrer" target=3D"_blank">http://=
image_base.bb</a>&gt; and<br>
&gt;=C2=A0 =C2=A0 =C2=A0Image_with_graphicsupport.bb.<br>
&gt; <br>
&gt; <br>
&gt; Thank you very much for this tip.<br>
&gt; I have done exactly in this way and works perfectly and it&#39;s easy =
to manage.<br>
&gt; <br>
<br>
:-)<br>
<br>
&gt; However there&#39;s a part containded in the <a href=3D"http://image_b=
ase.bb" rel=3D"noreferrer" target=3D"_blank">image_base.bb</a><br>
&gt; &lt;<a href=3D"http://image_base.bb" rel=3D"noreferrer" target=3D"_bla=
nk">http://image_base.bb</a>&gt; recipe:<br>
&gt; =C2=A0 =C2=A0 inherit core-image<br>
&gt; =C2=A0 =C2=A0 IMAGE_FEATURE_append =3D &quot;...&quot;<br>
&gt; <br>
&gt; that I had to duplicate into the Image_with_graphicsupport.bb too.<br>
&gt; <br>
&gt; It&#39;s not a problem but is it possible to put them in a common reci=
pe<br>
&gt; like packagegroup?<br>
<br>
Then simply write a image_base.inc to factorize what is common and in<br>
both recipes you can include it with &quot;require image_base.inc&quot;<br>=
<br></blockquote><div>=C2=A0</div><div>=C2=A0Oh yes, I didn&#39;t think abo=
ut that.</div><div>These parts are statics and the &quot;require image_base=
.inc&quot; statement into the both images recipes is the simplest way and s=
olve the problem... :-)</div><div><br></div><div>Thanks again.</div><div><b=
r></div><div>Regards,</div><div><br></div><div>Matteo Facchinetti</div><div=
>Sirius Electronic Systems</div></div></div></div>

--0000000000004c76ff0585cf6577--
