Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76550E00C1B; Fri,  9 Oct 2015 12:58:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B12BE009F3
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 12:58:35 -0700 (PDT)
Received: by wiclk2 with SMTP id lk2so84506313wic.0
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 12:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=RvrUJt1gGg0C9LuqL6hL/XvWFpOc0QZ9w565AuZ7Alw=;
	b=phHwe7/N6LISUqEbHygsraNZa46OiyWJNVIhlITg9UeZwX4EbO0/2ngUCWjMUxF3k8
	nRnDnk+6RDr5qXO95leZjkzssUNn5qSD9rLBHplb6ny46vGZwM03vwMAjGdCGk+Wb6u1
	zv93xS8u1m2o+d1eFxrboqPud0IDsQuTbYZT/jauPC0x6Lpt0zTUqPcZpboot6mSjMAy
	G1/QB/BXEkOJSyeUPhVrGW52q4BssTgbh8JT5BCjzVow8VYgdeS7dCU48RHlNZ8pXvOO
	3G6vzRqvaVGhBYXXi8nuTqUsQIH6FcqWBC4TRvKiTVS48Rm5nhSbomWWBy9XFnQIs346
	zreg==
MIME-Version: 1.0
X-Received: by 10.180.182.84 with SMTP id ec20mr1157513wic.42.1444420715079;
	Fri, 09 Oct 2015 12:58:35 -0700 (PDT)
Received: by 10.27.224.206 with HTTP; Fri, 9 Oct 2015 12:58:34 -0700 (PDT)
Received: by 10.27.224.206 with HTTP; Fri, 9 Oct 2015 12:58:34 -0700 (PDT)
In-Reply-To: <561807B5.2010206@reliableembeddedsystems.com>
References: <10D57FBA9FD7C14FB49EE17590E1AF94011F907751@svr-exc-03.intern.wipotec.de>
	<561807B5.2010206@reliableembeddedsystems.com>
Date: Fri, 9 Oct 2015 21:58:34 +0200
Message-ID: <CAALGJZbpi4KuFo6+pooJ7Nt9Q4n99LqQX_R52D0CxT9qz5Myiw@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: VFAT patent EP 0 618 540
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
X-List-Received-Date: Fri, 09 Oct 2015 19:58:38 -0000
Content-Type: multipart/alternative; boundary=047d7b6250a8a0ef210521b1670f

--047d7b6250a8a0ef210521b1670f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
Am 09.10.2015 8:31 nachm. schrieb "Robert Berger" <
gmane@reliableembeddedsystems.com>:
>
> Hi,
>
> On 10/09/2015 11:36 AM, Gorny Krystian wrote:
> > Hi,
> >
> > I have a question regarding the VFAT patent (EP 0 618 540) owned by
> > Microsoft. It=E2=80=99s about common name space for long and short file=
names. I
> > have read that this patent was canceled by Germany / EU, but it=E2=80=
=99s still
> > available in the US right? So is there a patch/option where we can
> > activate to avoid this patent?
>
> I am not a lawyer, but wouldn't it be easier not to use VFAT?
> The only reason I would use it, would be because the bootloader of my
> SoC would only be able to boot over FAT/FAT32 from a managed flash. A
> patch will not help here as well;)
A decent U-Boot can load the kernel from ext4. And I do not know any ROM
loader which needs vfat, except maybe this TI SOCs...

Regards,
Christian
>
> There are rumors that a fix was implemented a long time ago[1] ;)
>
> >
> > Thanks
> >
> > Krystian
> >
>
> Regards,
>
> Robert
>
>
> [1]
>
http://arstechnica.com/information-technology/2009/07/vfat-linux-patch-coul=
d-circumvent-microsofts-patent-claims/
>
> >
> > Legal information:
> > Wipotec Wiege- und Positioniersysteme GmbH
> > HRB 2317 Kaiserslautern, Management: T. D=C3=BCppre, U. Wagner
> >
> > This e-mail may contain confidential and/or privileged information.
> > If you are not the intended recipient (or have received this e-mail in
> > error)
> > please notify the sender immediately and delete this e-mail. Any
> > unauthorized
> > copying, disclosure or distribution of the material in this e-mail is
> > strictly
> > forbidden.
> >
>
> Since you are concerned about legal issues you might also want to remove
> this footer when posting to public lists ;)
>
> >
> > --
> >
>
> ..."Rules of Optimization: Rule1: Don't do it. Rule 2 (for experts
> only): Don't do it yet." - M.A. Jackson (not the singer)
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=3Dget&search=3D0x90320BF1
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--047d7b6250a8a0ef210521b1670f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi,<br>
Am 09.10.2015 8:31 nachm. schrieb &quot;Robert Berger&quot; &lt;<a href=3D"=
mailto:gmane@reliableembeddedsystems.com">gmane@reliableembeddedsystems.com=
</a>&gt;:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; On 10/09/2015 11:36 AM, Gorny Krystian wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; I have a question regarding the VFAT patent (EP 0 618 540) owned =
by<br>
&gt; &gt; Microsoft. It=E2=80=99s about common name space for long and shor=
t filenames. I<br>
&gt; &gt; have read that this patent was canceled by Germany / EU, but it=
=E2=80=99s still<br>
&gt; &gt; available in the US right? So is there a patch/option where we ca=
n<br>
&gt; &gt; activate to avoid this patent?<br>
&gt;<br>
&gt; I am not a lawyer, but wouldn&#39;t it be easier not to use VFAT?<br>
&gt; The only reason I would use it, would be because the bootloader of my<=
br>
&gt; SoC would only be able to boot over FAT/FAT32 from a managed flash. A<=
br>
&gt; patch will not help here as well;)<br>
A decent U-Boot can load the kernel from ext4. And I do not know any ROM lo=
ader which needs vfat, except maybe this TI SOCs... </p>
<p dir=3D"ltr">Regards,<br>
Christian<br>
&gt;<br>
&gt; There are rumors that a fix was implemented a long time ago[1] ;)<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks<br>
&gt; &gt;<br>
&gt; &gt; Krystian<br>
&gt; &gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Robert<br>
&gt;<br>
&gt;<br>
&gt; [1]<br>
&gt; <a href=3D"http://arstechnica.com/information-technology/2009/07/vfat-=
linux-patch-could-circumvent-microsofts-patent-claims/">http://arstechnica.=
com/information-technology/2009/07/vfat-linux-patch-could-circumvent-micros=
ofts-patent-claims/</a><br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Legal information:<br>
&gt; &gt; Wipotec Wiege- und Positioniersysteme GmbH<br>
&gt; &gt; HRB 2317 Kaiserslautern, Management: T. D=C3=BCppre, U. Wagner<br=
>
&gt; &gt;<br>
&gt; &gt; This e-mail may contain confidential and/or privileged informatio=
n.<br>
&gt; &gt; If you are not the intended recipient (or have received this e-ma=
il in<br>
&gt; &gt; error)<br>
&gt; &gt; please notify the sender immediately and delete this e-mail. Any<=
br>
&gt; &gt; unauthorized<br>
&gt; &gt; copying, disclosure or distribution of the material in this e-mai=
l is<br>
&gt; &gt; strictly<br>
&gt; &gt; forbidden.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Since you are concerned about legal issues you might also want to remo=
ve<br>
&gt; this footer when posting to public lists ;)<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt;<br>
&gt;<br>
&gt; ...&quot;Rules of Optimization: Rule1: Don&#39;t do it. Rule 2 (for ex=
perts<br>
&gt; only): Don&#39;t do it yet.&quot; - M.A. Jackson (not the singer)<br>
&gt;<br>
&gt; My public pgp key is available,at:<br>
&gt; <a href=3D"http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;search=3D0=
x90320BF1">http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;search=3D0x9032=
0BF1</a><br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--047d7b6250a8a0ef210521b1670f--
