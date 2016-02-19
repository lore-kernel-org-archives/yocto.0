Return-Path: <supritisingh08@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B09FE00CB8; Fri, 19 Feb 2016 01:33:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (supritisingh08[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCDE9E00C60
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 01:33:16 -0800 (PST)
Received: by mail-lf0-f53.google.com with SMTP id 78so49874282lfy.3
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 01:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KtmbxMcafU4yjRNCWTfGX0Yv39hv3RNIhFE3WLCXVdU=;
	b=Hk75sPB+1ooeZXaZjhTOMtvvszMYhgWYHE0ttBoa18mD5UZoRRc8HbNMHwDHoj0Cc1
	/Y9fwTQmZHPrk4WidOq/ET8ARkelNNSJITrSU8E1hRT25bNU7aKL2EjtMF7YDLRC+XE+
	FJ7TWlVWGzVec8dUUmYe1YtX1cRS2vXuS92hO9F3wjxld23wDqT0l09kq9n4OV0o/KN8
	4MzVRV1Vj9efnY7soxPNoFi17pAgfDz1lyJGmre63jQNxm6GUHtewfuQEn5kWeegZn9C
	3a9KHzr4E2gtMvXqxGyie0nKbISqgsBdfbw1Sxt9YZgU3Uxtksb4fnd4CoWNGBMRYj84
	UmQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=KtmbxMcafU4yjRNCWTfGX0Yv39hv3RNIhFE3WLCXVdU=;
	b=Djy0OhibAZVXuBmZAuKIS8dfCdQxyYJPoGB8q/vyYqOJo6s5lSgR06zzAyaGWvf5HL
	KdlrdmE6YvYSkgG/GEtFPhuiCnqc4RqhAzCtR/I6efKYemLXdWhuLmSH+ISd2cvFBuYx
	yE7bXfA8PJj5zPAGqfSNOtCPQONEpF3VldyAz91eI95VZ78iKuPdP6/38NlDazpriK7p
	kqeSGMzCsp6ybIDaSbk2bsPf4SOCOwl9XHyNBAoUNwU3gmuA/+Oa4nt2C1wCAjGyPQxI
	v6w5RgLyuXd+VpTzjFSBmCfo5WySGEzC4K16JcqYwmmJjygcfTIpGbkvW3tHVKGeO1Yi
	wKBw==
X-Gm-Message-State: AG10YOSKTbh0/k+JyRXUb+fi0B3O8RP0nK3yQqQq4s6ddJUuBVz9YAEua4v35UWohR/qqxyxFLHj9b8QaTJRZw==
MIME-Version: 1.0
X-Received: by 10.25.22.231 with SMTP id 100mr5009418lfw.153.1455874395102;
	Fri, 19 Feb 2016 01:33:15 -0800 (PST)
Received: by 10.114.78.195 with HTTP; Fri, 19 Feb 2016 01:33:14 -0800 (PST)
Received: by 10.114.78.195 with HTTP; Fri, 19 Feb 2016 01:33:14 -0800 (PST)
In-Reply-To: <20160219113158.7fca092b@adi-pc-linux.emea.corp.natinst.com>
References: <CAO1oV+d=Q-VBtisipvdKDxX=guM7JWea+S2kj_VpL8=dr33FOg@mail.gmail.com>
	<20160219113158.7fca092b@adi-pc-linux.emea.corp.natinst.com>
Date: Fri, 19 Feb 2016 10:33:14 +0100
Message-ID: <CAO1oV+ccnd8LfUw2Wso3=VOoxFrUb6hzmPhLz4aB_NUtZ7gXHw@mail.gmail.com>
From: Supriti Singh <supritisingh08@gmail.com>
To: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
Cc: yocto@yoctoproject.org
Subject: Re: lscpu command
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
X-List-Received-Date: Fri, 19 Feb 2016 09:33:18 -0000
Content-Type: multipart/alternative; boundary=001a114015ae286619052c1c2c99

--001a114015ae286619052c1c2c99
Content-Type: text/plain; charset=UTF-8

Thanks will try that out.
On 19-Feb-2016 10:32 am, "Ioan-Adrian Ratiu" <adrian.ratiu@ni.com> wrote:

> Hello
>
> On Fri, 19 Feb 2016 10:25:37 +0100
> Supriti Singh <supritisingh08@gmail.com> wrote:
>
> > Hello,
> >
> > meta/recipes-core/util-linux should provide lscpu command.
> >
> > I created a core-image-sato image with meta layer. But when I boot yocto,
> > no lscpu command is present.
> >
> > I do see it in util-linux.inc but "google util-linux lscpu" shows me a
> > patch remove-lscpu.
> >
> > So, is lscpu command supported or not? If yes, then what do I need to
> > change in the configuration.
>
> meta/recipes-core/util-linux/util-linux.inc:94:FILES_util-linux-lscpu =
> "${bindir}/lscpu"
>
> This means that lscpu is packaged in its own util-linux-lscpu package. Try
> making sure that package exists after building util-linux and install it on
> your target if you don't have it already.
>
> >
> > THanks,
> > Supriti
>
>

--001a114015ae286619052c1c2c99
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Thanks will try that out.</p>
<div class=3D"gmail_quote">On 19-Feb-2016 10:32 am, &quot;Ioan-Adrian Ratiu=
&quot; &lt;<a href=3D"mailto:adrian.ratiu@ni.com">adrian.ratiu@ni.com</a>&g=
t; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello<br=
>
<br>
On Fri, 19 Feb 2016 10:25:37 +0100<br>
Supriti Singh &lt;<a href=3D"mailto:supritisingh08@gmail.com">supritisingh0=
8@gmail.com</a>&gt; wrote:<br>
<br>
&gt; Hello,<br>
&gt;<br>
&gt; meta/recipes-core/util-linux should provide lscpu command.<br>
&gt;<br>
&gt; I created a core-image-sato image with meta layer. But when I boot yoc=
to,<br>
&gt; no lscpu command is present.<br>
&gt;<br>
&gt; I do see it in util-linux.inc but &quot;google util-linux lscpu&quot; =
shows me a<br>
&gt; patch remove-lscpu.<br>
&gt;<br>
&gt; So, is lscpu command supported or not? If yes, then what do I need to<=
br>
&gt; change in the configuration.<br>
<br>
meta/recipes-core/util-linux/util-linux.inc:94:FILES_util-linux-lscpu =3D &=
quot;${bindir}/lscpu&quot;<br>
<br>
This means that lscpu is packaged in its own util-linux-lscpu package. Try =
making sure that package exists after building util-linux and install it on=
 your target if you don&#39;t have it already.<br>
<br>
&gt;<br>
&gt; THanks,<br>
&gt; Supriti<br>
<br>
</blockquote></div>

--001a114015ae286619052c1c2c99--
