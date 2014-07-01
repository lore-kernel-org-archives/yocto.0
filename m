Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5A63E00547; Tue,  1 Jul 2014 08:47:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BC9CE00342
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 08:47:14 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id nu7so10778712obb.30
	for <yocto@yoctoproject.org>; Tue, 01 Jul 2014 08:47:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=jJKsyZiIc7yCzs4z5l7M2db7MaabKbdTc83mlLHU53c=;
	b=nN6dNKC8KQk4vZbGCXQo5MMe8aXrItmjRDzv2RaxUrCwE/FcBz0KSTqrPmJPmHSX+p
	4d6KQ6gAFzcREdQMVuf5E3pz/m3LyLKAcmJX23RVggVd9/4trdG1GH5TfNECqZe8CGXA
	kdQijYvgZLbqC6cAdW2pPR6BGw8/s7ybFN0VyR/5xYHU9i4lT+msBKHI1YkXAQJ7wjZX
	HKS9ZvnTtY8ScQ11EY35nP2r24BL0IKLmwf0+A3U29/VJvfLdni0hmZWk5zJOvVHn+q2
	Ny4/Xu9BqpIHhNsNXwaMlP9ne20pwcUlaomeNZC/rFik2SGx0iut3rRGfhuRhia8saIP
	BICA==
X-Gm-Message-State: ALoCoQkqCPanzjoc62akzjvz2btXSoDvywDT5BA7M6liPyHRcaMuWi1LwcgFWwQ1FFRBatCOmyNJ
X-Received: by 10.182.112.134 with SMTP id iq6mr49513138obb.34.1404229633560; 
	Tue, 01 Jul 2014 08:47:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Tue, 1 Jul 2014 08:46:53 -0700 (PDT)
In-Reply-To: <888B7DC5D4899F46A9721989283666969C1E50ABAF@SAFEX1MAIL5.st.com>
References: <888B7DC5D4899F46A9721989283666969C1E50ABAF@SAFEX1MAIL5.st.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 1 Jul 2014 17:46:53 +0200
Message-ID: <CAP71WjyGP+PoT9XzzO-j96iEHJQt7kytu8_4mfSz4caMz8_0kw@mail.gmail.com>
To: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't add shared libraries into final image
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
X-List-Received-Date: Tue, 01 Jul 2014 15:47:26 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 1, 2014 at 5:24 PM, Pierre Yves MORDRET
<pierre-yves.mordret@st.com> wrote:
> I'm in front of an issue that I really don't understand. I wrote a quite simple recipe to integrate an RPM package.
> At the end of compilation/install/packaging/rootfs, I saw my shared libraries were not part of the final image.
> I understood quickly after checking  FILES_${PN}-dev. Since my shared libraries are .so (and not .so.X) , all of them fall into -dev package.
>
> Thus I naively add FILES_${PN} + =" ${libdir}/lib*.so " into my recipe ... I was sure this would solve my issue, but don't .
> Instead my shared libraries still remain in -dev package.
>
> Does anyone can't tell me why ? or point me out my mistake ?

The -dev package is processed first during the packaging, so even
though you try to add the .so in the main package, the files will be
packaged in -dev first. you need to make sure that the .so are not
pulled into the -dev package:

FILES_SOLIBSDEV = ""
FILES_${PN} += "${libdir}/*.so"

