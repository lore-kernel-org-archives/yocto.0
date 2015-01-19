Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA89DE00717; Mon, 19 Jan 2015 06:02:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D2CEE00596
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 06:02:47 -0800 (PST)
Received: by mail-wi0-f182.google.com with SMTP id n3so14899949wiv.3
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 06:02:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=88Z8J+XCytbEQ974FoL3vF7wIawunqynH0liDbTaev4=;
	b=fd7D2Cppc7MyHx9BzcErH1QbMEg6LKvjSI/PonPm9s5hcpRpBCVaRwznIND+YYWJpE
	eb3Tjl7iJ7fMo3JPQTkgzBTe/E/xsoqKlt7JH2piOkntjHT8NS6nIHTJJ6wnT/Knt9NF
	o8sXA4FIRs98WIBWHyQZoL0lnf7NmaWNpv+lPKKUQKr7sBKiysArAECnVPDMc784kBq+
	brYQ5RhgNAPT0sX1WEIzWpoWVvB4ee6Bsz8D5Jvo2ggAtxzx+SGUi/PkSX4f+fX9L8r6
	XdWJnc8zJ9wnT+NA5meiauFz7GBDC7AqQp+Ac4bZ9l0j2GXm3n1wFqSELjeDio6YPLQI
	R1+Q==
X-Gm-Message-State: ALoCoQnfJozlyB7oq1lNPKkT4cvkIaJrpkroTPxqDfZaw1OZxj7G2709o+vQzX2+VtRmGsJ03bmK
MIME-Version: 1.0
X-Received: by 10.194.78.229 with SMTP id e5mr1762354wjx.11.1421676166643;
	Mon, 19 Jan 2015 06:02:46 -0800 (PST)
Received: by 10.216.107.132 with HTTP; Mon, 19 Jan 2015 06:02:46 -0800 (PST)
X-Originating-IP: [213.233.85.31]
Received: by 10.216.107.132 with HTTP; Mon, 19 Jan 2015 06:02:46 -0800 (PST)
In-Reply-To: <5451173.uiUEmT6qcz@peggleto-mobl5.ger.corp.intel.com>
References: <CAK18fxFQRXRJioWfxZKO6Zwh=u2B21X3iX-Diz4h7Ms_jh-TFQ@mail.gmail.com>
	<54BC54FD.5030305@gmail.com>
	<5451173.uiUEmT6qcz@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 19 Jan 2015 15:02:46 +0100
Message-ID: <CAK18fxEomLw1WmVMihFDCJvPXi7Mk6UTnaumTEKLz_Lqjw2+NQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Benchmark layer available
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
X-List-Received-Date: Mon, 19 Jan 2015 14:02:55 -0000
Content-Type: multipart/alternative; boundary=047d7bd9168ce61f9a050d01c605

--047d7bd9168ce61f9a050d01c605
Content-Type: text/plain; charset=UTF-8

Hello,

On Jan 19, 2015 11:47 AM, "Paul Eggleton" <paul.eggleton@linux.intel.com>
wrote:
>
> On Sunday 18 January 2015 16:51:09 akuster808 wrote:
> > On 01/17/2015 05:02 PM, Andrei Gherzan wrote:
> > > Is there any benchmarking layer available? I was interested in LINPACK
> > > and I think it would make sense to have a benchmarking layer which
will
> > > include stuff like: LINPACK, ioquake3, Whetstone etc.
> >
> > there are bench mark recipes in meta-openembedded
> >
> > meta-oe/recipes-benchmark
> >
> >
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchmar
> > k
> >
> > I don't know what the threshold is for making a layer from a set of
recipes.
>
> I would say:
>
> 1) Most importantly, there is someone to step up and maintain the new
layer
> who has the time and interest in doing so.

Well. I asked because I have interest. :) And I can invest some time in
doing the setup but definitely would need a helping hand in maintaining it.

>
> 2) There is a logical grouping for the recipes and there are more than
one or
> two of them

Yup. We would need to discuss that and come to a conclusion.

>
> 3) Dependencies between existing layers don't become too much of a problem
> with the creation of the layer

Agreed.

Andrei Gherzan

--047d7bd9168ce61f9a050d01c605
Content-Type: text/html; charset=UTF-8

<p dir="ltr">Hello, </p>
<p dir="ltr">On Jan 19, 2015 11:47 AM, &quot;Paul Eggleton&quot; &lt;<a href="mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Sunday 18 January 2015 16:51:09 akuster808 wrote:<br>
&gt; &gt; On 01/17/2015 05:02 PM, Andrei Gherzan wrote:<br>
&gt; &gt; &gt; Is there any benchmarking layer available? I was interested in LINPACK<br>
&gt; &gt; &gt; and I think it would make sense to have a benchmarking layer which will<br>
&gt; &gt; &gt; include stuff like: LINPACK, ioquake3, Whetstone etc.<br>
&gt; &gt;<br>
&gt; &gt; there are bench mark recipes in meta-openembedded<br>
&gt; &gt;<br>
&gt; &gt; meta-oe/recipes-benchmark<br>
&gt; &gt;<br>
&gt; &gt; <a href="http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchmar">http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchmar</a><br>
&gt; &gt; k<br>
&gt; &gt;<br>
&gt; &gt; I don&#39;t know what the threshold is for making a layer from a set of recipes.<br>
&gt;<br>
&gt; I would say:<br>
&gt;<br>
&gt; 1) Most importantly, there is someone to step up and maintain the new layer<br>
&gt; who has the time and interest in doing so.</p>
<p dir="ltr">Well. I asked because I have interest. :) And I can invest some time in doing the setup but definitely would need a helping hand in maintaining it. </p>
<p dir="ltr">&gt;<br>
&gt; 2) There is a logical grouping for the recipes and there are more than one or<br>
&gt; two of them</p>
<p dir="ltr">Yup. We would need to discuss that and come to a conclusion. </p>
<p dir="ltr">&gt;<br>
&gt; 3) Dependencies between existing layers don&#39;t become too much of a problem<br>
&gt; with the creation of the layer</p>
<p dir="ltr">Agreed. </p>
<p dir="ltr">Andrei Gherzan <br>
</p>

--047d7bd9168ce61f9a050d01c605--
