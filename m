Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D6EEE00547; Tue, 15 Jul 2014 11:06:33 -0700 (PDT)
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
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4313CE004FF
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 11:06:30 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id h18so3214352igc.0
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 11:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Dh440oDL/+0V8nPss4FNvUCM4uXnbKiz67Wb0AjT0Fo=;
	b=Vdr+rgpDZwTVRUYELo9QFHjCyMUWm1lx3DANaP/kJTKw9Xj6HSvoep513aZJDwuKpb
	FLFRFSSDjPvN/tAVhvo3mWwHkbVB0I89VkupXgyzIJXcFlU1a/HA19ByEvPN4Vtq41TY
	vf8uZGeTyjr6hGY/LFNx3n9g7SpDNUfleV8mIhTue38igQeZyBvzBu0EpvcrxHEAvDlk
	sIiB1w5aMVZsyf+3pnCnkM7NQza2L+raFQFsfSJHbZpKN/LQewfNwZuzBw6XMkEfe3j9
	weilaorm7eCVDFfneL5YR6EtOzZamMQLkIOBP5Rtvjnt9KOug3AX7+UEUt5LEV6aOpC4
	jXsA==
MIME-Version: 1.0
X-Received: by 10.43.53.199 with SMTP id vr7mr12965198icb.70.1405447590061;
	Tue, 15 Jul 2014 11:06:30 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 15 Jul 2014 11:06:30 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 15 Jul 2014 11:06:30 -0700 (PDT)
In-Reply-To: <CAGM0ZdSsrHfzDq8CHFv0M5qJi354pWyoijzU5w5Hg+tzjRW0UQ@mail.gmail.com>
References: <CAGM0ZdSsrHfzDq8CHFv0M5qJi354pWyoijzU5w5Hg+tzjRW0UQ@mail.gmail.com>
Date: Tue, 15 Jul 2014 11:06:30 -0700
Message-ID: <CAMKF1sorA_OLXV02Cpayz2BPz1168Jwta5DPJkJVSgYkrd00+Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Bharath Chandra <ellurubharath29@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Boot Process of gumstix
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
X-List-Received-Date: Tue, 15 Jul 2014 18:06:33 -0000
Content-Type: multipart/alternative; boundary=bcaec51b1ad95b2d0d04fe3f4459

--bcaec51b1ad95b2d0d04fe3f4459
Content-Type: text/plain; charset=UTF-8

On Jul 15, 2014 8:19 AM, "Bharath Chandra" <ellurubharath29@gmail.com>
wrote:
>
> Hi,
>
> I would like to analyze the startup process of gumstix board. What
happens when we boot a gumstix board, for eg: first the MLO will be called
and then it will call u-boot.img.... I would like to know what does MLO do
and functionalities of other files. Can anyone of you provide any pointer
where I can get good documentation about the startup process.

should be similar to
http://elinux.org/EBC_Exercise_21a_Boot_Sequence
>
> --
> Thanks & Regards,
> Bharath Chandra Elluru.
> Contact Number:785-979-4875.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec51b1ad95b2d0d04fe3f4459
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Jul 15, 2014 8:19 AM, &quot;Bharath Chandra&quot; &lt;<a href=3D"mailto:=
ellurubharath29@gmail.com">ellurubharath29@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I would like to analyze the startup process of gumstix board. What hap=
pens when we boot a gumstix board, for eg: first the MLO will be called and=
 then it will call u-boot.img.... I would like to know what does MLO do and=
 functionalities of other files. Can anyone of you provide any pointer wher=
e I can get good documentation about the startup process.<br>
</p>
<p dir=3D"ltr">should be similar to<br>
<a href=3D"http://elinux.org/EBC_Exercise_21a_Boot_Sequence">http://elinux.=
org/EBC_Exercise_21a_Boot_Sequence</a><br>
&gt;<br>
&gt; -- <br>
&gt; Thanks &amp; Regards,<br>
&gt; Bharath Chandra Elluru.<br>
&gt; Contact Number:785-979-4875.<br>
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

--bcaec51b1ad95b2d0d04fe3f4459--
