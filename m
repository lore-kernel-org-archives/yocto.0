Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76A59E00A51; Sat, 15 Apr 2017 07:46:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10561E0092B
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 07:46:15 -0700 (PDT)
Received: by mail-ua0-f169.google.com with SMTP id f10so36554042uaa.2
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 07:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BMfqQuXa9sKyERzFn6sQoIooHR50JNQy/FVEtvAzXh4=;
	b=UEQazaMx4J5YD4mOB3BeMYg64MajInPELc8kC+2TKD0PDYIIs6Yc/YkKFQ5RFNZVxI
	HW1xAWenJIlc102j6wIGIjGn8pJVjeZEsoc9gMxwN3CR6oAUyRRqi4HD2voFn0tZOWLY
	o71PCToKVFUSgxUrA1px3/FuUk5AETmL6UIgruwYWS2ms/Mp3+3QdaAjW9NO54L/71LE
	EUIulenWd2R4Y/4nSoO962rH1nL3prh8H6DcKZGpwQHklfQ2exsGrZJabeRaQ4z4Vigs
	euRak+nRBau6uP42SgpQQgaaX6SYnWRTjJuli/1YnAcfVBA95KpS6V+qELgNmvOFgjKV
	QaDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BMfqQuXa9sKyERzFn6sQoIooHR50JNQy/FVEtvAzXh4=;
	b=P8mmZoJYYTxAxtJ1g7S4z7QhvNMfRkIL7WGj3cLuaVzaivPBAx33+b2QPTsIewebqz
	wahgrKcA4FHRtAGifNcE+SYWXrznaYxGJvdicJ9zIPTNMPxxyo9cyUwC+4w9jpWRWqV0
	ybuMFhG8oDMSjPJ2paKfii0Ouq2G/C+H+5U6Wx0KDnTK2xCqCa6REaUWreTNkGMaAcRY
	4cO8/J7wpTvNSJ/o19LfU7TqXJDKu0Wvu+PTL2ST7P9pn+qr8u6VfGmC6Nu1KOxKuxbU
	fkxk4Lp+88cgBCzF7v44ZUNpvu+aFnTnBNH7kO/+ek7hwe5BQT4cBUIlaLXkZMWYlD9Q
	xJLA==
X-Gm-Message-State: AN3rC/6ItV3gOao7v6eiKueTH8l1IDs9a6pqxpOK9CNOshaOOFxVGfJn
	Amwa5XHYbDJML/AGBtjAn49FlD17ng==
X-Received: by 10.176.90.146 with SMTP id w18mr5301997uae.143.1492267574934;
	Sat, 15 Apr 2017 07:46:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Sat, 15 Apr 2017 07:46:14 -0700 (PDT)
In-Reply-To: <20170415133928.GA29433@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Sat, 15 Apr 2017 16:46:14 +0200
Message-ID: <CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Sat, 15 Apr 2017 14:46:18 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Apr 15, 2017 at 3:39 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> Hi,
>
> I seem to have all the pieces in place, but can't get gles2 to work on the
> raspberry pi. Specifically I'm using the raspberry pi 3, but the 32-bit armv7
> build.
>
> gles2 is provided by userland, and I've compiled up a couple gles2 programs.
> Compiling succeeds without issue, but running is another case.
>
> E.g.
>
>         # es2_info
>         Error: eglGetDisplay() failed
>
>         # glmark2-es2
>         Error: eglGetDisplay() failed with error: 0x3000
>         Error: eglGetDisplay() failed with error: 0x3000
>         Error: main: Could not initialize canvas
>
>         # google-chrome --use-gl=egl
>         [3487:3487:0415/133334:ERROR:gl_surface_egl.cc(605)] EGL display query failed with error EGL_SUCCESS
>         [3487:3487:0415/133334:ERROR:gl_surface_egl.cc(612)] eglInitialize Default failed with error EGL_BAD_DISPLAY
>         [3487:3487:0415/133334:ERROR:gl_initializer_x11.cc(142)] GLSurfaceEGL::InitializeOneOff failed.
>         [3487:3487:0415/133334:ERROR:sandbox_linux.cc(343)] InitializeSandbox() called with multiple threads in process gpu-process.
>         [3487:3487:0415/133334:ERROR:gpu_child_thread.cc(348)] Exiting GPU process due to errors during initialization
>
> Thoughts?
>
> Does anyone have any of these (or something else?) working?
>
Ehm userland gles2 on X11? I would not expect that to work. Experts
correct me but userland acceleration works for fullscreen apps only.
Why not using FOSS VC4+mesa?

Andreas

