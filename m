Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 713D5E00B65; Sat, 17 May 2014 13:05:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 447 seconds by postgrey-1.32 at yocto-www;
	Sat, 17 May 2014 13:05:47 PDT
Received: from mail-lb0-f169.google.com (unknown [209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D7CFE00B20
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 13:05:47 -0700 (PDT)
Received: by mail-lb0-f169.google.com with SMTP id s7so2950565lbd.28
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 13:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=VCdAO+7SomYPBsWi3uy45pJRSNUzEmVKZze0tQ/qTOg=;
	b=GIr4Y+MTXAyMDnzwE1EEP+DEJg8r7Ljj0/n/NrgMvqT7QIdi54u8fwKaettENWgzdT
	8/xLPp+jiE2vqpcRl1C2E1csYJ3bMJPIenEEC0O/PcPayaFeEcZO7wt/PEO0BZHNtbNN
	x/Bsg1CX/NfMJrTVAafoHNM1GOLIplv+x+dE3QGqt30suKsEULofGf1bTh8bkqwRqhn3
	HKlzbs8uqAIHMCrLYD54Q0o2ms/Jm+CH1zc12CCBAJoduGXZQdfhaZvq7+ivgw/168es
	7AcPUsQw+K3p/yVj6f1pVNV/VkWqBeg7L1M9V7yk+g/8HfRMNU65rfrNq7x790EvYrC4
	s9BQ==
MIME-Version: 1.0
X-Received: by 10.112.135.198 with SMTP id pu6mr2903274lbb.58.1400356697698;
	Sat, 17 May 2014 12:58:17 -0700 (PDT)
Sender: kergoth@gmail.com
Received: by 10.112.148.170 with HTTP; Sat, 17 May 2014 12:58:17 -0700 (PDT)
In-Reply-To: <CAAPegz1-8Xq2wwq1jM+k9O1qaPn_NO7N_8fNA5C_8twQ7+9t_A@mail.gmail.com>
References: <CAAPegz1-8Xq2wwq1jM+k9O1qaPn_NO7N_8fNA5C_8twQ7+9t_A@mail.gmail.com>
Date: Sat, 17 May 2014 12:58:17 -0700
X-Google-Sender-Auth: RFMlkclAQXa1McwNvv8uOlvfIiA
Message-ID: <CABcZANknNHPuikqAgOe=0WWgDON9mb=TTdyqX5Ap30Jh+v+epQ@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
To: Chris Morgan <chmorgan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: git.py support for submodules
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
X-List-Received-Date: Sat, 17 May 2014 20:05:53 -0000
Content-Type: multipart/alternative; boundary=089e0118452a86788304f99df331

--089e0118452a86788304f99df331
Content-Type: text/plain; charset=UTF-8

On Saturday, May 17, 2014, Chris Morgan <chmorgan@gmail.com> wrote:

> Hello.
>
> I noticed that git.py doesn't seem to have support for submodules. I
> worked around this in my recipe by adding a pre configure step but I was
> wondering if a patch to add another option to git.py to fetch submodules
> would make sense and be welcomed (pending it's implementation of course).
>

 See gitsm.py.


-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e0118452a86788304f99df331
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Saturday, May 17, 2014, Chris Morgan &lt;<a href=3D"mailto:chmor=
gan@gmail.com">chmorgan@gmail.com</a>&gt; wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">
<p dir=3D"ltr">Hello.</p>
<p dir=3D"ltr">I noticed that git.py doesn&#39;t seem to have support for s=
ubmodules. I worked around this in my recipe by adding a pre configure step=
 but I was wondering if a patch to add another option to git.py to fetch su=
bmodules would make sense and be welcomed (pending it&#39;s implementation =
of course).</p>
</blockquote><div><br></div><div>=C2=A0See gitsm.py.<span></span></div><br>=
<br>-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - Bi=
tBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software En=
gineer, Mentor Graphics<br>

--089e0118452a86788304f99df331--
