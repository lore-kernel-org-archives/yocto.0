Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02370E008EE; Wed, 28 Mar 2018 15:25:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72EDDE007F2
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 15:25:47 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id b20so5390556iof.5
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 15:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=83/0EutSQkgyxz0BtzUy4Y0FtnBbPkJRXcKCEKuhj+g=;
	b=ff/RXFQYQ23Hzk1U0LL1qczS5wscnpSUfMyBbfwTTXV1FglMQJuXSPiOLICArm4kT5
	qIQnfE4oBCtmBcHCrTqNmA6YL9nrvrN/X8zPVURjWgg64g2s3pn9LgnuUtHaV9ZndIYl
	G3gnlBQ15FcZ6SIPAfELpUSINyq9MqGKokRPKC3TpdXHlBYYrZHiePBUe0q0r7Yp9Rqw
	GuxRjlshitDCxPztQhuYbf7mzNi+DjPMRqPgcN1PrsaoAvo6SBNv5++ZS5EM8Cedv6UH
	m7tQ6Qtf/KhvW8dgH6rIfeRuAm5P6KVNkSiXrtK7ifxrn4Tu4OaXeCOKLoMOP+hhsl3W
	V34Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=83/0EutSQkgyxz0BtzUy4Y0FtnBbPkJRXcKCEKuhj+g=;
	b=XBK7XOuCm3Uzgf5WUR2Si5Q3zh/3BtsGAp4+pqsStA6PeYj+FVBDNgyXXKzbT7wQDy
	Mjk0m+4OliKArsbba7YMSxF4mtA2tseM3NtFcjc1Chtdvveu8i0y7iaD5hT5RhxBQ4MU
	H56Gd3qykacRX8CmbMpXDpnCHFfBrBlOkf0vr5W0JN57fOEvklbA914q4UkmqEW1pZWM
	v9yDstJmeCbiYdfssq1nAb+TRoX4LmlP08816H3nTqk+6HQXymrmE/S/9N77J1UTRh0v
	Rd84qOnb0uNNyrbPpaG1NRCVmHfFu7STvMmEJZRtxCgexstlwg/j83Jw6PiX9zLVMZQq
	EtIA==
X-Gm-Message-State: AElRT7E7XEFW5MlRh1il+Df8BW1beVgiIoOHdmS1XO9ewJLCqaxk1COq
	DZSH+FVTKIPsyoeRvzkTBenjxesrvqgQ5hfUOLc=
X-Google-Smtp-Source: AG47ELueiGOp9x59DJg349tuthVHYK0MxgtPToxXzGeivqOmm+aOYkp6sQ6jjveK5xMuLQ93d98N/Iv80kpc6HXqToo=
X-Received: by 10.107.145.214 with SMTP id t205mr49225770iod.62.1522275947455; 
	Wed, 28 Mar 2018 15:25:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGkcThCWgeEFxYtPzo=DfZB+5QOvOFxnOwZfqrVs6zUkZQ@mail.gmail.com>
	<CAJTo0LYm6r0qnWrfVF2WfA68+sv8yadFZk3Z3YJO_Qz-_NgoRQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYm6r0qnWrfVF2WfA68+sv8yadFZk3Z3YJO_Qz-_NgoRQ@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 28 Mar 2018 22:25:36 +0000
Message-ID: <CAFzUWG=t5DWXa0Ok5_WnQK2-qLP9qeggQDNCoyTV5zOzoJ+TmA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: python-fcntl missing in rocko?
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
X-List-Received-Date: Wed, 28 Mar 2018 22:25:49 -0000
Content-Type: multipart/alternative; boundary="94eb2c055418192bde0568807d05"

--94eb2c055418192bde0568807d05
Content-Type: text/plain; charset="UTF-8"

Indeed,

I seem to have gotten lucky by having it included without an explicit
RDEPENDS/DEPENDS line for it. I've added it manually and now it's included
:) Thanks.

Giordon

On Tue, Mar 27, 2018 at 1:32 PM Burton, Ross <ross.burton@intel.com> wrote:

> python-core is just "an arbitrary subset of the python libraries",
> you'd do better by including python-modules in your image which is all
> of Python.
>
> Or use oe-pkgdata-util to search what package contains the fcntl module.
>
> Ross
>
> On 27 March 2018 at 17:50, Giordon Stark <kratsg@gmail.com> wrote:
> > Hi all,
> >
> > When I switched from pyro to rocko, using `python-core` -- I'm noticing
> that
> > the fcntl module in python2 is missing. Is there a recipe to add to get
> it
> > back?
> >
> > Thanks,
> >
> > Giordon
> > --
> > Giordon Stark
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
-- 
Giordon Stark

--94eb2c055418192bde0568807d05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Indeed,<div><br></div><div>I seem to have gotten lucky by =
having it included without an explicit RDEPENDS/DEPENDS line for it. I&#39;=
ve added it manually and now it&#39;s included :) Thanks.</div><div><br></d=
iv><div>Giordon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Tue, Mar 27, 2018 at 1:32 PM Burton, Ross &lt;<a href=3D"mailto:ross.bur=
ton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">python-core is just &quot;an arbitrary subset of the pytho=
n libraries&quot;,<br>
you&#39;d do better by including python-modules in your image which is all<=
br>
of Python.<br>
<br>
Or use oe-pkgdata-util to search what package contains the fcntl module.<br=
>
<br>
Ross<br>
<br>
On 27 March 2018 at 17:50, Giordon Stark &lt;<a href=3D"mailto:kratsg@gmail=
.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; When I switched from pyro to rocko, using `python-core` -- I&#39;m not=
icing that<br>
&gt; the fcntl module in python2 is missing. Is there a recipe to add to ge=
t it<br>
&gt; back?<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Giordon<br>
&gt; --<br>
&gt; Giordon Stark<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--94eb2c055418192bde0568807d05--
