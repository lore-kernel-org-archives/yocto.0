Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64B70E003AB; Wed, 24 Dec 2014 09:17:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
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
	*      [209.85.213.180 listed in list.dnswl.org]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E73EE002F9
	for <yocto@yoctoproject.org>; Wed, 24 Dec 2014 09:17:34 -0800 (PST)
Received: by mail-ig0-f180.google.com with SMTP id h15so7227337igd.13
	for <yocto@yoctoproject.org>; Wed, 24 Dec 2014 09:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=svPEbOIU+O2oA1BSWCq37Mkxx5zfPX99K5HTO/xjYzk=;
	b=nWriTYz5Bb4NylUkoX3xD9X0KsH/U2Pv4/86/+DkRm4bdoA7pteae3o1kwVShmSxIg
	icWqbZ9nPJp6Vj3tI0jDpwJ/4CpyPThzkJGF1jSflAQe+ehCJuS/u/55jQHfUR2368rU
	+Na68ZwLAJD7huWps+QiJdvjWaLkRYpV57HG262UF+jubyn5N1ByF7ezezUbwS50PYUe
	QS4ZHs8pKAmnb4bu+WWXueyAkhmzDiV55K0OoDN3YCp9vXVhT+0+uRKn7x/tIu4bYnDn
	qFfNEwR8MsZ2ZV/D9cXfK7FIfgVRzTGiAW6RX3sr1DZLbtrltQl1vzFrv9mTbrrPp4a5
	xJSw==
MIME-Version: 1.0
X-Received: by 10.50.124.133 with SMTP id mi5mr27585849igb.13.1419441453960;
	Wed, 24 Dec 2014 09:17:33 -0800 (PST)
Received: by 10.50.252.9 with HTTP; Wed, 24 Dec 2014 09:17:33 -0800 (PST)
Received: by 10.50.252.9 with HTTP; Wed, 24 Dec 2014 09:17:33 -0800 (PST)
In-Reply-To: <CA+mjNq=0aqi5Gd1938CV855U+5qpg48Ac-RWRo5b_s=zMm56zA@mail.gmail.com>
References: <CA+mjNq=0aqi5Gd1938CV855U+5qpg48Ac-RWRo5b_s=zMm56zA@mail.gmail.com>
Date: Wed, 24 Dec 2014 10:17:33 -0700
Message-ID: <CAMKF1sp0=vm0C6X1BQ3L-be8sWHVieF7DzC7s=_-ApBvnWR1-Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Stuart Weaver <smweaver545@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: changing grub.cfg per image
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
X-List-Received-Date: Wed, 24 Dec 2014 17:17:40 -0000
Content-Type: multipart/alternative; boundary=001a1135f578a49564050af97752

--001a1135f578a49564050af97752
Content-Type: text/plain; charset=UTF-8

On Dec 24, 2014 9:49 AM, "Stuart Weaver" <smweaver545@gmail.com> wrote:
>
> Hi All,
>
> I've currently got two yocto images. I would like to have different
grub.cfg files for each image and therefore was wondering what would be the
best way to achieve this?
>
> Currently I am playing with the idea of just changing the APPEND variable
within the machine conf file, however there doesn't seem to be a way of
making this image dependant. Hence, would I have to create two different
machines and change which machine I'm building for everytime I build each
image?
>

You could define a IMAGE_FEATURE and then inherit it in image recipe. Then
write image post processing function to edit geub.cfg based on image
feature. There are examples of such cases already
> Another idea would be to create my own version of grub-efi.bbclass
however I'm currently unsure of how to choose my custom version within a
image file.
>
> If anyone has any suggestions on the best way forward, it would be very
much appreciated!
>
> Regards,
> Stuart
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1135f578a49564050af97752
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Dec 24, 2014 9:49 AM, &quot;Stuart Weaver&quot; &lt;<a href=3D"mailto:sm=
weaver545@gmail.com">smweaver545@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I&#39;ve currently got two yocto images. I would like to have differen=
t grub.cfg files for each image and therefore was wondering what would be t=
he best way to achieve this?<br>
&gt;<br>
&gt; Currently I am playing with the idea of just changing the APPEND varia=
ble within the machine conf file, however there doesn&#39;t seem to be a wa=
y of making this image dependant. Hence, would I have to create two differe=
nt machines and change which machine I&#39;m building for everytime I build=
 each image?<br>
&gt;</p>
<p dir=3D"ltr">You could define a IMAGE_FEATURE and then inherit it in imag=
e recipe. Then write image post processing function to edit geub.cfg based =
on image feature. There are examples of such cases already<br>
&gt; Another idea would be to create my own version of grub-efi.bbclass how=
ever I&#39;m currently unsure of how to choose my custom version within a i=
mage file.<br>
&gt;<br>
&gt; If anyone has any suggestions on the best way forward, it would be ver=
y much appreciated!<br>
&gt;<br>
&gt; Regards,<br>
&gt; Stuart<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--001a1135f578a49564050af97752--
