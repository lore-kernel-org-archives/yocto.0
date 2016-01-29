Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07D7EE00AF4; Fri, 29 Jan 2016 07:49:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-yk0-f172.google.com (mail-yk0-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C27D2E00ADD
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 07:49:46 -0800 (PST)
Received: by mail-yk0-f172.google.com with SMTP id z7so155619yka.3
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 07:49:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZUKjOHy0ACk13ru1ey7ZE7pVGQLsqKbUn9WQwHlCwoE=;
	b=hXSpnwLTnCE866LXDjU5fxGJP7jDFrT00yKtbfTVfwqo/GmEaud4TJy3XaZy2X+tep
	y9WOP2YfqmaCyXitYI9pbVFIaTcfb594paX1cqIVROqhd92JcBMjZkdjFY+VoGVGBuXq
	J4f8eUqxBinB7Rs2CEBlG2Mno/0DswNWgtnNGkn4ZaBO/dG6XTP3ow0ZKAVL6OxMNeT4
	QChvrJn3tP5GrXiQ4yyGIuxGOmDm83KuIEKnq3x3lAiumotUzb+Fv+MpqGoKvgp/VGzz
	5fuJPKhK/I0upUWl/u/QvfzwVLc1GrXRA/qPUIGfZ5B5xt3U9wBqPFWuCRGWRZMhGHIF
	7c2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ZUKjOHy0ACk13ru1ey7ZE7pVGQLsqKbUn9WQwHlCwoE=;
	b=Txo5RFP2Vi89Sfw2N9Itumd74bmMmo1IlekFGLQOE+/Fp5/AKEp0IxFHEqVdzRSyTx
	PQvcoEHb9fNjl4aNLfs2SuoTZDCAmImAMyaqMST0m8YTuOKhIWQH9LveqXOmbvLs5XVi
	g0kJC0KQ8T4XSg/+8wprcVR5OcdtAzCpsQfyWLjpkJrygISVvrLZHyE+aY0DmCO7CbEY
	/EU9OhrRLiXBA8U4NWDSb+J6sCAf6d4Iusiua7tafd1PLO9U2Ty71HULrkaZ5PGGqq0m
	lMCHeqmzAw01nccpFGbC1oIr+OuloohNPNL0tf9f/wsZOXcJyllASnitj9VEHkT0wknY
	Cnhw==
X-Gm-Message-State: AG10YORSJGpopsrbdDD8WD/JYjHjiemsF04NhtUitIt13PUgY8kr51JNgOY8qOfy1+F1B5E1QCb/c2CwUibWBA==
MIME-Version: 1.0
X-Received: by 10.129.159.135 with SMTP id w129mr4696873ywg.62.1454082585611; 
	Fri, 29 Jan 2016 07:49:45 -0800 (PST)
Received: by 10.129.155.136 with HTTP; Fri, 29 Jan 2016 07:49:45 -0800 (PST)
In-Reply-To: <20160129150205.GB2574@jama>
References: <CAF3SDA7jpBGLtxVs52ppR8suLB+AU=dytG4MPfi9swU5iu2Giw@mail.gmail.com>
	<20160129150205.GB2574@jama>
Date: Fri, 29 Jan 2016 13:49:45 -0200
Message-ID: <CAF3SDA7EtZhe39gECLvhMGD144GYEO8SiMOnE6GagEP-9OvEHg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: About style used on .bb* files
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
X-List-Received-Date: Fri, 29 Jan 2016 15:49:50 -0000
Content-Type: multipart/alternative; boundary=94eb2c0bd45cfd5982052a7afbb2

--94eb2c0bd45cfd5982052a7afbb2
Content-Type: text/plain; charset=UTF-8

Thank you guys so much!

2016-01-29 13:02 GMT-02:00 Martin Jansa <martin.jansa@gmail.com>:

> On Fri, Jan 29, 2016 at 11:50:03AM -0200, Daniel. wrote:
> > Hi everybody
> >
> > I'm here to ask if is there any "standard style" that should be used on
> > recipe files. I found my self using 8 columns tabs but I really don't
> know
> > if is there any style that should be used. If not would be good to create
> > one :). What you guys think about?
>
> http://www.openembedded.org/wiki/Styleguide
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c0bd45cfd5982052a7afbb2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you guys so much!<br></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">2016-01-29 13:02 GMT-02:00 Martin Jansa <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_bl=
ank">martin.jansa@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><span class=3D"">On Fri, Jan 29, 2016 at 11:50:03AM -0200, Daniel. wrote=
:<br>
&gt; Hi everybody<br>
&gt;<br>
&gt; I&#39;m here to ask if is there any &quot;standard style&quot; that sh=
ould be used on<br>
&gt; recipe files. I found my self using 8 columns tabs but I really don&#3=
9;t know<br>
&gt; if is there any style that should be used. If not would be good to cre=
ate<br>
&gt; one :). What you guys think about?<br>
<br>
</span><a href=3D"http://www.openembedded.org/wiki/Styleguide" rel=3D"noref=
errer" target=3D"_blank">http://www.openembedded.org/wiki/Styleguide</a><br=
>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--94eb2c0bd45cfd5982052a7afbb2--
