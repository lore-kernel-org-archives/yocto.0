Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0C2EE009C1; Fri,  2 May 2014 06:45:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f46.google.com (mail-yh0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9561DE00939
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 06:45:41 -0700 (PDT)
Received: by mail-yh0-f46.google.com with SMTP id 29so1753299yhl.19
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 06:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=jiCh74ykXb8J6PCaRZhiDOdk/gpOC7bmzAWeCBHJnfo=;
	b=Xiz8IeoEb6wXFCb6p+UlFXif5C5J2kf3yUq61pzTaoFthiQ9dX18eHtPk/qOQdT+eA
	J8U8W4PlSabnrvf463a3lsSgHxbeT5t2/kUyEhe8dC3SvHTlq0o2rYTjbhlnV4Sa0feT
	zkfk8KHYemd1o8JZVpoMjRNt8IiVdsxh/Mqo1CAeVcW6ZRMDOvPljeKA6eIfP53vz103
	rdFGguMOM2UyYqICBeLgqvS6prm2YyVMMj02VpSQ2S8x8ZW7HToRoHx9T6Jgb/WiYvj5
	soUDOPfSCNjAe7uoqLSA+dojNv8vVBgWYfSDnPRVxde+y/zifnbD9N9AiUsAwBW0JIU1
	k3sw==
MIME-Version: 1.0
X-Received: by 10.236.189.198 with SMTP id c46mr23574182yhn.47.1399038340528; 
	Fri, 02 May 2014 06:45:40 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.124.72 with HTTP; Fri, 2 May 2014 06:45:40 -0700 (PDT)
In-Reply-To: <53639F1F.8090309@dynamicdevices.co.uk>
References: <5362171B.8010000@dynamicdevices.co.uk>
	<5577559.2gRHFt1x94@peggleto-mobl5.ger.corp.intel.com>
	<536285BC.8010200@dynamicdevices.co.uk>
	<CAP9ODKrgW5+pPsS51QLwd+9j0q2xMd+j-Q6bjKgZdV7ho_D0WA@mail.gmail.com>
	<53632C0B.1010401@dynamicdevices.co.uk>
	<CAP9ODKpRF27T7ROz-fLidRb6R=jwzp-EW6Wd44N_hZgiNHJmSg@mail.gmail.com>
	<5363973A.6020106@dynamicdevices.co.uk>
	<CAP9ODKpi7p+oZ09XyVxAB+2Xv36YWVf4d4iO4jLEhEegzUQodA@mail.gmail.com>
	<53639996.4090604@dynamicdevices.co.uk>
	<CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
	<53639F1F.8090309@dynamicdevices.co.uk>
Date: Fri, 2 May 2014 10:45:40 -0300
X-Google-Sender-Auth: pV5A7yYTbpdxSni1oTTZX0VlSIQ
Message-ID: <CAP9ODKq5gPOzbvOSOqHYbyB9aTjnVPJHNx3zDnSq_CkjbwQLLg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Fri, 02 May 2014 13:45:45 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 2, 2014 at 10:35 AM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
> I might be misunderstanding what you are saying here, but if you look at my
> earlier email, and check the patchbin snippets I provided you will see I am
> preferring 2009.08
>
> PREFERRED_VERSION_u-boot-imx="2009.08"
>
> The test in uboot-config.bbclass causes this to fail/be unavailable to the
> build, which is why the log says I cannot use 2009.08, instead falling back
> to the newer version. Removing the two lines checking for the definition of
> the two variables results in the 2009.08 build completing successfully - but
> I don't want to leave that little bomb in meta-fsl-arm for colleagues to
> fall over in future.

I think this should solve your issue. Please give this a try and I can
make a formal patch and send.

http://privatepaste.com/662e15c6b5

> I cannot override what meta-fsl-arm is setting because I can't (or don't
> know how to) undefine one of those two variables in my bbappend, and
> although I believe I _can_ set it to an empty string as  Paul suggested, I
> don't believe the the getVar() code in uboot-config.bbclass checks this,
> although I'm a bit unclear on the semantics of that function call.

I think this had been handled now, in the patch.

> I appreciate the help here Otavio, and I was hoping there was a simple
> non-invasive way to solve the problem by undefining the variable in my
> layer, as it seemed cleaner.
>
> I don't want to waste any more of your time on this though so if I can't do
> that then I'll  just  take the hacky route  as an intermediary step, copy
> out your 2009.08 recipe into my layer and mod it there.

Now I better understood your issue and you really found an issue in
the code. Please give this a try and confirm if it works for yu so I
can send the fix for review.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

