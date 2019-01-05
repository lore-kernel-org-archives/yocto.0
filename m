Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB58CE00CA9; Sat,  5 Jan 2019 09:30:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
	[209.85.222.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E84C3E00C10
	for <yocto@yoctoproject.org>; Sat,  5 Jan 2019 09:30:14 -0800 (PST)
Received: by mail-ua1-f53.google.com with SMTP id j3so12977772uap.3
	for <yocto@yoctoproject.org>; Sat, 05 Jan 2019 09:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RFKfwyvuMB10CFZezT8DxC2BtKMsNYijitNsMhWElSw=;
	b=LQYLFQiop+nVCa9Rdf+aETNP+UfzKD4SuEywpm8wB3xNDfiODkWruVKKSBEnrQaudq
	ECePJ3ypSdZNySZ9fSeumzhWcIxqI/1US7CGmvha5MhkZIvaYKp/DfdgG2ig0bgSq2ek
	AneDICFzusisJlw7s0F1uKfrszhZskJJz8Ze8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RFKfwyvuMB10CFZezT8DxC2BtKMsNYijitNsMhWElSw=;
	b=giAxEJOWV2ij2wSA+RFDg2RRWV6qMyXwzAs0uAK8AS1GXgtNxB+aah75otLfw5UTH7
	qk9f3LHsEbbqQgBNi0RJcfFczNfzQxdt1wpe/TVX2+P5gLBcn+ILLKwqXczIbbz+hsI5
	DVkD/FEl+YoYCaaJXGt9vvClJSyJ9jwRCHV2yg+6yIVNONOJPZnzvEXZTEYwijRitGxd
	+QB9KuSg4L8r9bWw6pdUBE4GK1YkdB+aF9MlB7BfbEcpN9OageL0MVWEmUNYBzQbknhY
	oxAfSSoaq2aODOMMX/DpgtfiQHERdZzFk0gkNqIvC1cbPc6Z6EcRsAxk+mFg7gRC1aPj
	6iKA==
X-Gm-Message-State: AJcUukfOfx79pYsPCmAwvBf6yafsLsrKnbO5PWonT8SDSvuXXf8zWwJr
	1W5BB5VsmnbItZG2cAA2gZEVUzfROH1qlB46OofbzA==
X-Google-Smtp-Source: ALg8bN7LcD4FeXa6SBC34MrCSbe4CtpxnO4Wv0d5G7g+yW+9WmchZ4stafRMzEd3pwzZwIUel20yWYQwh6qqXDOY1/E=
X-Received: by 2002:ab0:2a95:: with SMTP id h21mr21630416uar.7.1546709414031; 
	Sat, 05 Jan 2019 09:30:14 -0800 (PST)
MIME-Version: 1.0
References: <20190103180218.6968-1-anibal.limon@linaro.org>
	<6fc3263d9097d1af78c96df089bfe1ca3184efdc.camel@linuxfoundation.org>
In-Reply-To: <6fc3263d9097d1af78c96df089bfe1ca3184efdc.camel@linuxfoundation.org>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Sat, 5 Jan 2019 11:30:03 -0600
Message-ID: <CA+_AqitHQj3_FwKW4UvF_dcO5fo4P+5_iirXOqnR4sMKZiCf3Q@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][ptest-runner] ptest-runner: Add support timeout failure type to XML result file
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
X-List-Received-Date: Sat, 05 Jan 2019 17:30:15 -0000
Content-Type: multipart/alternative; boundary="00000000000031cd58057eb95902"

--00000000000031cd58057eb95902
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 3 Jan 2019 at 15:45, <richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2019-01-03 at 12:02 -0600, An=C3=ADbal Lim=C3=B3n wrote:
> > The ptest-runner support logging results to stdout and to a XML file
> > in stdout the ptest is mark as:
> >
> > ...
> > ERROR: Exit status is 1
> > TIMEOUT: ptest-directory
> > ...
> >
> > Add the same support in XML file for example,
> >
> > ...
> > <testcase classname=3D'ptest-directory' name=3D'run-ptest'>
> >   <failure type=3D'exit_code' message=3D'run-ptest exited with code:
> > 1'></failure>
> >   <failure type=3D'timeout'/>
> > </testcase>
> > ...
> >
> > [YOCTO #13088]
> >
> > Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
>
> Sounds good, thanks!
>
> I have a feeling this will show up a few bugs but we should find and
> fix the ones which are timing out...
>
> I'd still be interested in the time each directory takes too if we can
> get that as it would help us decide which tests to run.
>

The timeout is set to 5 minutes (300 secs) by default and currently there
is no way to set a timeout per ptest,
I will create other patch to add the timeout value to stdout and XML file.

Anibal

>
> Cheers,
>
> Richard
>
>

--00000000000031cd58057eb95902
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">On Thu, 3 Jan 2019 at 15:45, &lt;<a href=3D"mailto:richard=
.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Thu, 2019=
-01-03 at 12:02 -0600, An=C3=ADbal Lim=C3=B3n wrote:<br>
&gt; The ptest-runner support logging results to stdout and to a XML file<b=
r>
&gt; in stdout the ptest is mark as:<br>
&gt; <br>
&gt; ...<br>
&gt; ERROR: Exit status is 1<br>
&gt; TIMEOUT: ptest-directory<br>
&gt; ...<br>
&gt; <br>
&gt; Add the same support in XML file for example,<br>
&gt; <br>
&gt; ...<br>
&gt; &lt;testcase classname=3D&#39;ptest-directory&#39; name=3D&#39;run-pte=
st&#39;&gt;<br>
&gt;=C2=A0 =C2=A0&lt;failure type=3D&#39;exit_code&#39; message=3D&#39;run-=
ptest exited with code:<br>
&gt; 1&#39;&gt;&lt;/failure&gt;<br>
&gt;=C2=A0 =C2=A0&lt;failure type=3D&#39;timeout&#39;/&gt;<br>
&gt; &lt;/testcase&gt;<br>
&gt; ...<br>
&gt; <br>
&gt; [YOCTO #13088]<br>
&gt; <br>
&gt; Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.lim=
on@linaro.org" target=3D"_blank">anibal.limon@linaro.org</a>&gt;<br>
<br>
Sounds good, thanks!<br>
<br>
I have a feeling this will show up a few bugs but we should find and<br>
fix the ones which are timing out...<br>
<br>
I&#39;d still be interested in the time each directory takes too if we can<=
br>
get that as it would help us decide which tests to run.<br></blockquote><di=
v><br></div><div>The timeout is set to 5 minutes (300 secs) by default and =
currently there is no way to set a timeout per ptest,=C2=A0</div><div>I wil=
l create other patch to add the timeout value to stdout and XML file.</div>=
<div>=C2=A0</div><div>Anibal</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div></div>

--00000000000031cd58057eb95902--
