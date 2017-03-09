Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 133C0E00726; Thu,  9 Mar 2017 10:20:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B0FE00349
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 10:20:51 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id t189so62670686wmt.1
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 10:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=w615dg1jnuh5eCH3xAC+54J1JlTvTeNJt9rhu/oHFh4=;
	b=DpWbjNdClb6sN93vzhr0mTMt6U6TAt4Und7S5tp2gSBULA4YIl3whjlAR1GCL8j904
	CdTyg7RmFZpAx9RzPVV6uRkN5TgTGtWS0O6HrBkdQIrNGQvQCyXoZns6xGE8rxueNbL7
	DlLWDI4LbeM+iciV4PLFq5d/0YqFXl4SyGnBj2vKk0gwXamNavVvtjhSuihSmr/b9EPB
	RiWGA1Y6iRiRPJ8f+aH4DOL5XL78B5aFetuZxGLd6LnEWYj11GEgYmNOAH8SE934p6ks
	lgU73bKLW2H+2UtrvL9CGUSN+T5kcHMfD/pB0DROfDGLDwfTJeeSTTlREIHbD4tgdlZC
	KTXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=w615dg1jnuh5eCH3xAC+54J1JlTvTeNJt9rhu/oHFh4=;
	b=G95XOckp2nWi8+OxSJJ8Hna1tETPTUWSsZGRCGcChLZSUL4rprPxJClHuc1As3I+G6
	ltTNFWZGqPyGFVh/D6/ESx/R5gbrA+ZM4eIcA/GM53DsyD4OiW7ycl6/2fqDVaZWLmJr
	4sh5Z/koE7AnKAmgySj8u96jKVJifQ8cJ72S/a4SWpWTBCZnQROs4xF0LzG1uZZ6jGjl
	u+srbfGzXhq3fvndxTFxbgFNao0duCDWx3wH4VJiaRF7C6ULnykLxkm1sD6Rca65FhXI
	VtkvPbTRn4fHzTxSIwyDG7hjaxke0YZJOJIiw0zpirnHJeeCXGGvo4fUjjxbBcfqcKW3
	jEFg==
X-Gm-Message-State: AMke39mN0eoftwTySkUd6kh+ksGTQCPF60Apm1GJPGURIVgUdSLRHKCi04ZWN1r9IBbDyx1cmAc8KOlb3N78lA==
X-Received: by 10.28.168.150 with SMTP id r144mr12006892wme.43.1489083651171; 
	Thu, 09 Mar 2017 10:20:51 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.28.141.199 with HTTP; Thu, 9 Mar 2017 10:20:30 -0800 (PST)
In-Reply-To: <CAFD+RaaDz0t6A-Y_T0b2CY7N07pLYorEHz3nymG+Npc7ePJz_w@mail.gmail.com>
References: <CAFD+RaYVrFfPXrbW79FMx24wJDSqfxAt2ey3PYKmvL0E5hE7Bw@mail.gmail.com>
	<1488906492.3261.20.camel@linux.intel.com>
	<CAFD+RaaDz0t6A-Y_T0b2CY7N07pLYorEHz3nymG+Npc7ePJz_w@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Thu, 9 Mar 2017 10:20:30 -0800
X-Google-Sender-Auth: g3oyJmd90hWt8b68YkIREgYJ_Sg
Message-ID: <CA+YB3raRG0nNKc=OcWUjy_pYvyrPY2Tct9Ujc8+Lb=89+ioK+w@mail.gmail.com>
To: Soumya Gupta <soumyag213@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Intoducting myself: Applying for Outreachy
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
X-List-Received-Date: Thu, 09 Mar 2017 18:20:57 -0000
Content-Type: multipart/alternative; boundary=001a114c048e11bed6054a504e15

--001a114c048e11bed6054a504e15
Content-Type: text/plain; charset=UTF-8

Thanks, Leonardo & Armin

The Outreachy page for YP is here:

https://www.yoctoproject.org/outreachy-internship

any new potential interns can contact me directly

On Tue, Mar 7, 2017 at 9:24 AM, Soumya Gupta <soumyag213@gmail.com> wrote:

> Hi,
>
> Please look under Yocto under Participating Organisations
> <https://wiki.gnome.org/Outreachy/2017/MayAugust#Participating_Organizations>
> Thank you
>
> Best,
> Soumya Atul Gupta
> Final Year Undergraduate Student, ECE
> Netaji Subhas Institute of Technology
> New Delhi, India
>
>
> On Tue, Mar 7, 2017 at 10:38 PM, Leonardo Sandoval <
> leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>
>> On Tue, 2017-03-07 at 22:18 +0530, Soumya Gupta wrote:
>> > Hi all,
>> >
>> >
>> > My name is Soumya, an I am a final year Engineering undergraduate
>> > student from New Delhi. I would love to work to contribute to Yocto
>> > for the summer.
>> >
>> >
>> > I have been coding in Python for the past year and I am quite at ease
>> > with the same. It states on the Outreachy page, that there is a
>> > project relating to the building of autobuilders. I want to work on
>> > the same.
>>
>> can you point to that page?
>>
>> There is an autobuilder repo at git.yoctoproject.org, perhaps you can
>> start looking there.
>>
>> >
>> > Being a newbie, it would be great, if someone could guide me on the
>> > right path here
>> >
>> > Thanks already
>> >
>> >
>> > Best,
>> > Soumya Atul Gupta
>> > Final Year Undergraduate Student, ECE
>> > Netaji Subhas Institute of Technology
>> > New Delhi, India
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Jeff Osier-Mixon - Open Source Community Engineer, Intel Corporation

--001a114c048e11bed6054a504e15
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, Leonardo &amp; Armin<div><br></div><div>The Outrea=
chy page for YP is here:</div><div><br></div><div><a href=3D"https://www.yo=
ctoproject.org/outreachy-internship">https://www.yoctoproject.org/outreachy=
-internship</a><br></div><div><br></div><div>any new potential interns can =
contact me directly</div></div><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote">On Tue, Mar 7, 2017 at 9:24 AM, Soumya Gupta <span dir=3D"ltr=
">&lt;<a href=3D"mailto:soumyag213@gmail.com" target=3D"_blank">soumyag213@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div>Hi, <br><br>Please look under Yocto under <a href=3D"https://=
wiki.gnome.org/Outreachy/2017/MayAugust#Participating_Organizations" target=
=3D"_blank">Participating Organisations</a><br></div>Thank you <br></div><d=
iv class=3D"gmail_extra"><span class=3D""><br clear=3D"all"><div><div class=
=3D"m_-2715866777415846925gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Best,<div>S=
oumya Atul Gupta</div><div>Final Year Undergraduate Student, ECE</div><div>=
Netaji Subhas Institute of Technology</div><div>New Delhi, India</div><div>=
<br></div></div></div></div></div></div></div></div>
<br></span><div><div class=3D"h5"><div class=3D"gmail_quote">On Tue, Mar 7,=
 2017 at 10:38 PM, Leonardo Sandoval <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_blank">leonardo.sa=
ndoval.gonzalez@<wbr>linux.intel.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><span>On Tue, 2017-03-07 at 22:18 +0530, Soumya Gupta wro=
te:<br>
&gt; Hi all,<br>
&gt;<br>
&gt;<br>
&gt; My name is Soumya, an I am a final year Engineering undergraduate<br>
&gt; student from New Delhi. I would love to work to contribute to Yocto<br=
>
&gt; for the summer.<br>
&gt;<br>
&gt;<br>
&gt; I have been coding in Python for the past year and I am quite at ease<=
br>
&gt; with the same. It states on the Outreachy page, that there is a<br>
&gt; project relating to the building of autobuilders. I want to work on<br=
>
&gt; the same.<br>
<br>
</span>can you point to that page?<br>
<br>
There is an autobuilder repo at <a href=3D"http://git.yoctoproject.org" rel=
=3D"noreferrer" target=3D"_blank">git.yoctoproject.org</a>, perhaps you can=
<br>
start looking there.<br>
<div class=3D"m_-2715866777415846925HOEnZb"><div class=3D"m_-27158667774158=
46925h5"><br>
&gt;<br>
&gt; Being a newbie, it would be great, if someone could guide me on the<br=
>
&gt; right path here<br>
&gt;<br>
&gt; Thanks already<br>
&gt;<br>
&gt;<br>
&gt; Best,<br>
&gt; Soumya Atul Gupta<br>
&gt; Final Year Undergraduate Student, ECE<br>
&gt; Netaji Subhas Institute of Technology<br>
&gt; New Delhi, India<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"m_-2715866777415846925HOEnZb"><font color=3D"#88=
8888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
<br>
<br>
</font></span></blockquote></div><br></div></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">Jeff Osier-Mixon =
- Open Source Community Engineer, Intel Corporation</div>
</div>

--001a114c048e11bed6054a504e15--
