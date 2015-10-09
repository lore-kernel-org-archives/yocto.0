Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45F1DE01000; Fri,  9 Oct 2015 02:18:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91954E00343
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 02:18:49 -0700 (PDT)
Received: by vkao3 with SMTP id o3so47648800vka.2
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 02:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=n7Y2U+eJd80W5/2OyR0f+s8e20yaWn8wslbz9XgFfvk=;
	b=EiaWt6v+9lW6K82VPi0793wrV34Z7isBDOLFndtRJvyKVn5WUYlHz0UH3iJLXOo/x0
	O9Qt7KFInyuM549I2KC8FRZ5iSZWasYuyMdSTqfXTo8G0J3UeOhB6oHYnTrbG0gC1XQK
	hnyctl+2tMFqgwElk8ON8XVRVdbc3tJ48ZcKWNDJoz29eDsrWnMbT1ep2VnolQ2dGZ5q
	8zoDvRalv59TEiYsIy+g+WVa9C7/bZek2g5VR6Live8BYCTfgVeuZV1/j1SD0CDKc2Wt
	2o8weA1B+CG7+2Fh6YgIgbiNaO3p/ATu50BA1vwGTxFFDS2diJGbDj7Iw4pfjWhMOkF9
	UARQ==
MIME-Version: 1.0
X-Received: by 10.31.56.140 with SMTP id f134mr7725733vka.108.1444382328642;
	Fri, 09 Oct 2015 02:18:48 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Fri, 9 Oct 2015 02:18:48 -0700 (PDT)
In-Reply-To: <56168FBE.7010209@reliableembeddedsystems.com>
References: <CALLyC8TznpzYwCFAf_30N_OEjexLEtkRXc+mTt64GnKyNdEpQg@mail.gmail.com>
	<56168FBE.7010209@reliableembeddedsystems.com>
Date: Fri, 9 Oct 2015 14:48:48 +0530
Message-ID: <CALLyC8R2J6rL1TC2HcidnVd2eV5M1C7A1t1NRXrzanbd4n7yAg@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>,
	ajlennon@dynamicdevices.co.uk
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: can any one please tell the difference between DEPENDS and RDEPENDS
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
X-List-Received-Date: Fri, 09 Oct 2015 09:18:53 -0000
Content-Type: multipart/alternative; boundary=001a1143f0cc9e669a0521a877a4

--001a1143f0cc9e669a0521a877a4
Content-Type: text/plain; charset=UTF-8

Hi,
Thanks
  As i read RDEPENDS  in recipe  do_build task depends on
do_pacakge_write_rpm task (i.e packages )
 I have one more doubt when RDEPENDS variable depends is packages . Do you
know why RDEPENDS variable in (rootfs-image.bb recipe) which inherit
core-image. why RDEPENDS cant able to install packages in final roofs image
apart from IMAGE_INSTALL .



Thanks and regrads
     Vivek

On Thu, Oct 8, 2015 at 9:16 PM, Robert Berger <
gmane@reliableembeddedsystems.com> wrote:

> On 10/07/2015 09:10 AM, Vivek Per wrote:
> > Hi,
> >      Can any one please tell the what is the exact difference between
> > DEPENDS and RDEPENDS .
>
> DEPENDS:
>
> http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-DEPENDS
>
> RDEPENDS:
>
> http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-RDEPENDS
>
> > I am not able to get it . How these variables are
> > exactly parsed.
> >
>
> Do you need more info?
>
> >
> > regards
> > vivek
> >
> >
> > --
> >
>
> Regards,
>
> Robert
>
>
> ...No matter what the problem is,it's always a people problem.- Jerry
> Weinberg
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1143f0cc9e669a0521a877a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>Thanks<br><div>=C2=A0 As i read RDEPENDS =C2=A0in =
recipe =C2=A0do_build task depends on do_pacakge_write_rpm task (i.e packag=
es )</div><div>=C2=A0I have one more doubt when RDEPENDS variable depends i=
s packages . Do you know why RDEPENDS variable in (<a href=3D"http://rootfs=
-image.bb">rootfs-image.bb</a> recipe) which inherit core-image. why RDEPEN=
DS cant able to install packages in final roofs image apart from IMAGE_INST=
ALL .</div><div>=C2=A0</div><div><br></div><div><br></div><div>Thanks and r=
egrads =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0Vivek</div></div></div><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Oct 8, 201=
5 at 9:16 PM, Robert Berger <span dir=3D"ltr">&lt;<a href=3D"mailto:gmane@r=
eliableembeddedsystems.com" target=3D"_blank">gmane@reliableembeddedsystems=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">On 10/07/2015 09:10 AM, Vivek Per wrote:<br>
&gt; Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Can any one please tell the what is the exact diff=
erence between<br>
&gt; DEPENDS and RDEPENDS .<br>
<br>
</span>DEPENDS:<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.=
html#var-DEPENDS" rel=3D"noreferrer" target=3D"_blank">http://www.yoctoproj=
ect.org/docs/latest/mega-manual/mega-manual.html#var-DEPENDS</a><br>
<br>
RDEPENDS:<br>
<a href=3D"http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.=
html#var-RDEPENDS" rel=3D"noreferrer" target=3D"_blank">http://www.yoctopro=
ject.org/docs/latest/mega-manual/mega-manual.html#var-RDEPENDS</a><br>
<span class=3D""><br>
&gt; I am not able to get it . How these variables are<br>
&gt; exactly parsed.<br>
&gt;<br>
<br>
</span>Do you need more info?<br>
<br>
&gt;<br>
&gt; regards<br>
&gt; vivek<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt;<br>
<br>
Regards,<br>
<br>
Robert<br>
<br>
<br>
...No matter what the problem is,it&#39;s always a people problem.- Jerry<b=
r>
Weinberg<br>
<br>
My public pgp key is available,at:<br>
<a href=3D"http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;search=3D0x9032=
0BF1" rel=3D"noreferrer" target=3D"_blank">http://pgp.mit.edu:11371/pks/loo=
kup?op=3Dget&amp;search=3D0x90320BF1</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a1143f0cc9e669a0521a877a4--
