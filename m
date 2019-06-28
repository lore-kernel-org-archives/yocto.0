Return-Path: <daniel.wenninger92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6837E00B9C; Fri, 28 Jun 2019 07:13:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (daniel.wenninger92[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7242E00C81
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 07:13:22 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id n5so6127561otk.1
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 07:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=U71tmNuvQEQqZYihGbplq29hL8y/UsVjIoYiIcr7AOE=;
	b=E/kKUHbxZSN0ycoHtDO4CcBuWlQQZ3ejyPVtCsPgg+B0LjGtpGN5jqPSdGK2ze+JSa
	GKXaEvcz3RBSt3YK3tNgc6Cv9Xrs0sPfYjL+XVQJRXRg1DQm3AU/K+6ajaygAYeJJwL2
	Nj3uPf9/J6vksjbdqBVBP5Tte4xB6trbhUIFlzTY9cfMugWp7fSjwfYEm7sfD1NKXop/
	kQiemtl2cy72EL25Wh/V68SGwzmkh7FxdRaBgblL3i6V2O+S31G/cJnkLwnVm6lozLIb
	mXAtLy4MGLpQZju4bWYJNWt0OlobO8M6EmEhW34nh4Qh2Rgcl+bgw4yuTIDqqtjmJ9BS
	GeLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=U71tmNuvQEQqZYihGbplq29hL8y/UsVjIoYiIcr7AOE=;
	b=NzM3Ul2WA4Of27UuwJicxzQwPcbzlPCJVYGtJ0TyjBshImbvopPD+DBQvHllI/uluI
	HmlrOIPSxsfpW8sh2R6NdTkgSw/6jyFnzDz/tFZS7tOu6BVHw59D5FDwglxxX7rePOlT
	0Z+d9PKf1+WsU7av9gFAy9d9Lytkcq/iPOOyS9g59JYmlmH6aFiIzC9X1wC8ikya5V4L
	10cVvMZlBttTZiV89mhiAPnVAtzeoX/kSdvLhtLcnMOWmp2Dw5ieVFrQuAd1nyokrjbf
	xNRt6zMezYSVJ/DLii/2s8GL8397o3gFsb1iBNDOgjbuzJ0LQ7ot1b3IbI3OOU6ELpNv
	ue1g==
X-Gm-Message-State: APjAAAW/1rpXJKbZaTv9+hSEi0qvMLjrUJ2eyzr/qcAKiMl1DR5fjuN1
	8HPWzA8TdCAvgPHRmi8VaIBY1hG2cZVJz0coJD8=
X-Google-Smtp-Source: APXvYqz0s7tjeFz6dINQiZCOg/rO66SdNnmTTb9Qdj73ZsbHF1n4gByH4pEYvqUQbCl4oeK1laY0Gj1Ky11VpED5pCI=
X-Received: by 2002:a9d:7203:: with SMTP id u3mr8009502otj.313.1561731201919; 
	Fri, 28 Jun 2019 07:13:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAEmXcAzx7i7ZKdgsfxJ4ChZ_jWAcTFZCHBp2Hp2MCaQVFdHrCw@mail.gmail.com>
	<CAGAf8LwsGwTTKOSwDST4xdPhv0Gbg=7tPKdnML+2P_qpU=E0YA@mail.gmail.com>
In-Reply-To: <CAGAf8LwsGwTTKOSwDST4xdPhv0Gbg=7tPKdnML+2P_qpU=E0YA@mail.gmail.com>
From: danwe <daniel.wenninger92@gmail.com>
Date: Fri, 28 Jun 2019 16:13:12 +0200
Message-ID: <CAEmXcAwovn3nh+NWxGLjJpq-c5LrxvyUPDVHAR+fpnt+=2V+-w@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, yocto@yoctoproject.org
Subject: Re: Copying the binaries to an SD card after bulding with Yocto
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
X-List-Received-Date: Fri, 28 Jun 2019 14:13:23 -0000
Content-Type: multipart/alternative; boundary="000000000000867018058c62e1c4"

--000000000000867018058c62e1c4
Content-Type: text/plain; charset="UTF-8"

I have just asked that question because I built with Yocto and thought that
someone had this problem before or did use my written website.
So I don't really understand what the diretory: /oe7/bbb/tmp-warrior is
used for because I do not see it...

Thanks.

Daniel

Am Fr., 28. Juni 2019 um 16:01 Uhr schrieb Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com>:

> >> ~/bbb/meta-bbb/scripts$ export OETMP=/oe7/bbb/tmp-warrior
> >> Then run the copy_boot.sh script passing the location of SD card
>
> I forgot how inheritance schema works with shells. When you run
> copy_boot.sh script, it'll spawn for you new shell, and, IIRC, it
> should inherit OETMP from parent shell. You can try to experiment, and
> export OETMP command embed into copy_boot.sh file/script, and see what
> is happening. You also can, as first command after #!/bin/bash, to
> issue env command, and see what variables you have inherited from
> parent shell.
>
> In my opinion, this problem has very little to do with YOCTO building
> system... Am I really (!) correct?
>
> Zoran
> _______
>
> On Fri, Jun 28, 2019 at 3:42 PM danwe <daniel.wenninger92@gmail.com>
> wrote:
> >
> > Hi,
> >
> > I have successfully build BeagleBone systems with Yocto.
> > I have used this site:
> > https://jumpnowtek.com/beaglebone/BeagleBone-Systems-with-Yocto.html
> >
> > Now I need to copy the binaries to an SD card and have a question to the
> following:
> > In the instruction I can read the following:
> > ``````````````````````````
> > This copy_boot.sh script needs to know the TMPDIR to find the binaries.
> It looks for an environment variable called OETMP.
> >
> > For instance, if I had this in the local.conf
> >
> > TMPDIR = "/oe7/bbb/tmp-warrior"
> >
> > Then I would export this environment variable before running copy_boot.sh
> >
> > ~/bbb/meta-bbb/scripts$ export OETMP=/oe7/bbb/tmp-warrior
> >
> > Then run the copy_boot.sh script passing the location of SD card
> >
> > ~/bbb/meta-bbb/scripts$ ./copy_boot.sh sdb
> > ```````````````````````
> >
> > I did that but it shows me the following error:
> > OETMP: /oe7/bbb/tmp-warrior
> > Directory not found: /oe7/bbb/tmp-warrior/deploy/images/beaglebone
> >
> > So my question is if I need to uncomment TMPDIR = "/oe7/bbb/tmp-warrior"
> in my local.conf when doing this or not? --> I tried both.
> >
> > So my copy_boot.sh looks for an environment variable called OETMP. And
> OETMP should know the TMPDIR (directory). But what should I export?
> >
> > Thanks.
> >
> > Daniel
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000867018058c62e1c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have just asked that question because I built with Yocto=
 and thought that someone had this problem before or did use my written web=
site.<div>So I don&#39;t really understand what the diretory: /<span style=
=3D"color:rgb(80,0,80)">oe7/bbb/tmp-warrior is used for because I do not se=
e it...</span></div><div><span style=3D"color:rgb(80,0,80)"><br></span></di=
v><div><span style=3D"color:rgb(80,0,80)">Thanks.</span></div><div><span st=
yle=3D"color:rgb(80,0,80)"><br></span></div><div><span style=3D"color:rgb(8=
0,0,80)">Daniel</span></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Am Fr., 28. Juni 2019 um 16:01=C2=A0Uhr schri=
eb Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com"=
>zoran.stojsavljevic@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">&gt;&gt; ~/bbb/meta-bbb/scripts$ export OETMP=3D/oe=
7/bbb/tmp-warrior<br>
&gt;&gt; Then run the copy_boot.sh script passing the location of SD card<b=
r>
<br>
I forgot how inheritance schema works with shells. When you run<br>
copy_boot.sh script, it&#39;ll spawn for you new shell, and, IIRC, it<br>
should inherit OETMP from parent shell. You can try to experiment, and<br>
export OETMP command embed into copy_boot.sh file/script, and see what<br>
is happening. You also can, as first command after #!/bin/bash, to<br>
issue env command, and see what variables you have inherited from<br>
parent shell.<br>
<br>
In my opinion, this problem has very little to do with YOCTO building<br>
system... Am I really (!) correct?<br>
<br>
Zoran<br>
_______<br>
<br>
On Fri, Jun 28, 2019 at 3:42 PM danwe &lt;<a href=3D"mailto:daniel.wenninge=
r92@gmail.com" target=3D"_blank">daniel.wenninger92@gmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I have successfully build BeagleBone systems with Yocto.<br>
&gt; I have used this site:<br>
&gt; <a href=3D"https://jumpnowtek.com/beaglebone/BeagleBone-Systems-with-Y=
octo.html" rel=3D"noreferrer" target=3D"_blank">https://jumpnowtek.com/beag=
lebone/BeagleBone-Systems-with-Yocto.html</a><br>
&gt;<br>
&gt; Now I need to copy the binaries to an SD card and have a question to t=
he following:<br>
&gt; In the instruction I can read the following:<br>
&gt; ``````````````````````````<br>
&gt; This copy_boot.sh script needs to know the TMPDIR to find the binaries=
. It looks for an environment variable called OETMP.<br>
&gt;<br>
&gt; For instance, if I had this in the local.conf<br>
&gt;<br>
&gt; TMPDIR =3D &quot;/oe7/bbb/tmp-warrior&quot;<br>
&gt;<br>
&gt; Then I would export this environment variable before running copy_boot=
.sh<br>
&gt;<br>
&gt; ~/bbb/meta-bbb/scripts$ export OETMP=3D/oe7/bbb/tmp-warrior<br>
&gt;<br>
&gt; Then run the copy_boot.sh script passing the location of SD card<br>
&gt;<br>
&gt; ~/bbb/meta-bbb/scripts$ ./copy_boot.sh sdb<br>
&gt; ```````````````````````<br>
&gt;<br>
&gt; I did that but it shows me the following error:<br>
&gt; OETMP: /oe7/bbb/tmp-warrior<br>
&gt; Directory not found: /oe7/bbb/tmp-warrior/deploy/images/beaglebone<br>
&gt;<br>
&gt; So my question is if I need to uncomment TMPDIR =3D &quot;/oe7/bbb/tmp=
-warrior&quot; in my local.conf when doing this or not? --&gt; I tried both=
.<br>
&gt;<br>
&gt; So my copy_boot.sh looks for an environment variable called OETMP. And=
 OETMP should know the TMPDIR (directory). But what should I export?<br>
&gt;<br>
&gt; Thanks.<br>
&gt;<br>
&gt; Daniel<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000867018058c62e1c4--
