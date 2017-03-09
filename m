Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 161ABE004D2; Thu,  9 Mar 2017 08:42:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MISSING_HEADERS,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1882E0030B
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 08:42:50 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id y76so127958234qkb.0
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 08:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc
	:content-transfer-encoding;
	bh=tPmfenzICGZLUAFE3aUX/XpzgB44THeYIPKvizs+2a8=;
	b=kpJZBdODCaQ5/57LgA4tdSBAElflGTD6wgufFJncgn7Hw1E8+d6RaAaEJNc48qgEdg
	tlU8L47BKaoKnebGDN0Q30EIEOVnNuHd5NmVJ20zOT5AXNfQ3JaebxjpAtiq03B7L/t8
	JekLJ3rkwz5OxScJSHAhJ/STLXFuUa0l/+5sQ1GbXu0PcQ07+xXmGNUkh/q9sDmmXx9J
	j8zoxWJCukBIwFOKTtpBNz8e6QM8D12LxdpkybJrDBkXxhvQGLu8XpR4QkkJgDeQXeqo
	K7Nw1/7NAX4Qlqk3vSrA9obBE96pAOdbPHnikdp4sZPFp9XRPS0Zo3o6HiPk6sUpPOlA
	Z0RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc:content-transfer-encoding;
	bh=tPmfenzICGZLUAFE3aUX/XpzgB44THeYIPKvizs+2a8=;
	b=ECV6FT9ew9Q5+imH4HPAu1JhytuJqELosWPa66EN1BwCdR8V+e9S3iwYZM5EdEWmhg
	XOVv92P+u8DXP+k+49GzO9IU2SH03+kSKjeFTQHqI6TvIPJGZc40MThnXTyxDFEFiOeN
	8OXeFTDj4nCPv6W+6O0APf+NITGGu72wS/7SVMB4ro1Ng+u4NLhBeR1Jsb55zUoqBt26
	5qTfOB2nvLH1ptsThwP9/aJ0D4tO6gUWYhBzykjQCN0GK8CP5Rntok+tRo2zDHo7xNTN
	mSMXSNEOPRxdL3cRdmTuOPFBIV4j7gaSsBSygmF8GyftnBSF3nL/NbG5IzKnMP0T47uA
	xbnw==
X-Gm-Message-State: AMke39m9u333UjOwI5cpaqpAGVwS7WhsjEB7kDXza50IeXwqVY0SLXuM5OM+FOndXBRpvYcn2WiTVJm6xK67Pg==
X-Received: by 10.200.49.76 with SMTP id h12mr15059597qtb.44.1489077769322;
	Thu, 09 Mar 2017 08:42:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.7 with HTTP; Thu, 9 Mar 2017 08:42:48 -0800 (PST)
In-Reply-To: <CAF3SDA6_i-U6j33VbbEQjcbVuN3_xcQdxKb8Mm3uePOPSLZhRA@mail.gmail.com>
References: <3A90C4317711354D832A265F7C4DF966021BF28939@vistrex4.vi.vector.int>
	<CAMKF1spvkP-K1OcXGO_o57T_LjqOyW8SyNBHpyHGnNR7k4g-Rg@mail.gmail.com>
	<CAF3SDA6_i-U6j33VbbEQjcbVuN3_xcQdxKb8Mm3uePOPSLZhRA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Thu, 9 Mar 2017 13:42:48 -0300
Message-ID: <CAF3SDA4zVRHuT2hLwhCrXmOQ=9cjztCV2M3O-3d8be0SHdDbEQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Code provision without full git repository history
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
X-List-Received-Date: Thu, 09 Mar 2017 16:42:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

There are some tools to automate the testing and delivery that may
make the deployment less painfull. Jenkins and Buildbot are examples

Regards,

2017-03-09 13:28 GMT-03:00 Daniel. <danielhilst@gmail.com>:
> I'm not trying to be simplistic here, but, why not package the source
> releases to a tarball (with git archive or somthing) and provide it
> through a FTP server?
>
> Regards,
>
> 2017-03-09 11:29 GMT-03:00 Khem Raj <raj.khem@gmail.com>:
>>
>> On Thu, Mar 9, 2017 at 5:02 AM Waldvogel, Sebastian
>> <Sebastian.Waldvogel@vector.com> wrote:
>>>
>>> Hello,
>>>
>>>
>>>
>>> I am searching for a way in Yocto/BitBake to extract the source codes o=
f
>>> the software applications developed by my company for delivery to our
>>> customers.
>>>
>>> The source codes shall be delivered as archive containing only the sour=
ce
>>> files without the whole git repository history.
>>>
>>>
>>>
>>> Setup is that we have own Yocto layers/recipes referencing the company
>>> internal git repository (SRC_URI=3D=E2=80=9Dgit://git.company.url=E2=80=
=9D) and the concrete
>>> SRCREV to be used. Basic idea was to use the option
>>> BB_GENERATE_MIRROR_TARBALLS =3D "1" which generates an archive file wit=
h the
>>> application source code. Unfortunately the generated tarball contains t=
he
>>> full bare cloned git repository with full history and not only the sour=
ce
>>> files of the concrete SRCREV.
>>>
>>>
>>>
>>> As alternative I tried to use the archiver class. The generated tarball=
s
>>> contains the concrete source files but in addition the full git reposit=
ory
>>> with history is contained too.
>>
>>
>> I am not sure if it is intended to keep SCM history though you might wan=
t to
>> file a bug
>>>
>>>
>>>
>>> Does anyone has an idea how to extract the concrete source files withou=
t
>>> git repository and history?
>>>
>>>
>>>
>>> Thank you very much for your help
>>>
>>> Sebastian Waldvogel
>>>
>>>
>>>
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> =E2=80=9CIf you're going to try, go all the way. Otherwise, don't even st=
art. ..."
>   Charles Bukowski



--=20
=E2=80=9CIf you're going to try, go all the way. Otherwise, don't even star=
t. ..."
  Charles Bukowski

