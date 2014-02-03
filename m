Return-Path: <k4230r6@gmail.com>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 383BBE00444
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 08:28:31 -0800 (PST)
Received: by mail-ee0-f47.google.com with SMTP id d49so3720663eek.20
	for <yocto@yoctoproject.org>; Mon, 03 Feb 2014 08:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=xKJPiNxMfrcDZfo8lID/X9+FsUUesI5ZsnIJMxbZAnw=;
	b=Lh5Kmrjgr0rFEuilFjW3c7xnxdnoygGySP3Ph6HBcHwMYN0X+FQikg4F4F5siQg9VZ
	FdLQT46Ovu8pHHgqB3n+QRcqcMa7Nw7as5wAmq3hImMxJaaJ2+e9kUStseNPJve1jMIW
	guQon3GxWQ+GNRX2uZZV9t35+suaue+IwWQIf/ok2ih/pOUOn+Qn6S2FZZ/yE4cDWX9X
	JNnd5HPWyjKDy1IHmcv13JVCqfTpsIPrqkpVGgUJNp0U/JnFQVwko/bmU26kBHnkfIKD
	Gfl9EQh8KSo9+3yXyoFFnsQDpG0vxp3xMTTbmecQ4Wk/uyptJ5h5Lr4sY0eWylY+sTFX
	aIfw==
X-Received: by 10.14.177.1 with SMTP id c1mr1474442eem.8.1391444909848;
	Mon, 03 Feb 2014 08:28:29 -0800 (PST)
Received: from [192.168.24.157] (HSI-KBW-091-089-117-035.hsi2.kabelbw.de.
	[91.89.117.35]) by mx.google.com with ESMTPSA id
	o43sm76942314eef.12.2014.02.03.08.28.29 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Feb 2014 08:28:29 -0800 (PST)
Message-ID: <52EFC3AC.9030601@googlemail.com>
Date: Mon, 03 Feb 2014 17:28:28 +0100
From: Christian Ege <k4230r6@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CACP9YJccutcQq+j-1X0jabZK0KVvi+JJAj2ep2oicd59hJ5Xvg@mail.gmail.com>
In-Reply-To: <CACP9YJccutcQq+j-1X0jabZK0KVvi+JJAj2ep2oicd59hJ5Xvg@mail.gmail.com>
Subject: Re: File not found when trying to run an executable not build by Yocto
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
X-List-Received-Date: Mon, 03 Feb 2014 16:28:34 -0000
Content-Type: multipart/alternative;
	boundary="------------000101040409010802030905"

--------------000101040409010802030905
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
> Hi,
>
> I am building an image for an embedded system using the chiefriver and 
> kernel 3.12.9.  I am using Ubuntu as our base system.
>
> The image builds and boots fine which is great but we have some 
> binaries built on Ubuntu which must run on the Yocto image.  When we 
> copy these across and try and run them we get a "File Not Found" error.
>
> Why would this be?  Doing file on our ubuntu executables we get:
>
> /bin/true: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), 
> dynamically linked (uses shared libs), for GNU/Linux 2.6.24, 
> BuildID[sha1]=0x2b45516be4a9f45b1127d54efb0d42e5f69b1c82, stripped
>
Just for the sake of completeness:
- Have you either copied the files to /usr/bin or using ./executable_name?
- Have you made a chmod+x executable_name before?

Sometimes transfering files over ftp in ASCII mode results in funny 
behaviours....

regrads,
Christian

> The Yocto executables are the same except instead of GNU/Linux 2.6.24 
> it is 2.6.16.  It that a problem?
>
> Also, on ubuntu we are running libc-2.17 but on Yocto it is libc-2.18. 
>  Is that a problem?
>
> Thanks for any assistance,
> Dave
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------000101040409010802030905
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi,<br>
    </div>
    <blockquote
cite="mid:CACP9YJccutcQq+j-1X0jabZK0KVvi+JJAj2ep2oicd59hJ5Xvg@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi,
        <div><br>
        </div>
        <div>I am building an image for an embedded system using the
          chiefriver and kernel 3.12.9. &nbsp;I am using Ubuntu as our base
          system. &nbsp;</div>
        <div><br>
        </div>
        <div>The image builds and boots fine which is great but we have
          some binaries built on Ubuntu which must run on the Yocto
          image. &nbsp;When we copy these across and try and run them we get
          a "File Not Found" error.</div>
        <div><br>
        </div>
        <div>Why would this be? &nbsp;Doing file on our ubuntu executables we
          get:</div>
        <div><br>
        </div>
        <div>/bin/true: ELF 64-bit LSB executable, x86-64, version 1
          (SYSV), dynamically linked (uses shared libs), for GNU/Linux
          2.6.24,
          BuildID[sha1]=0x2b45516be4a9f45b1127d54efb0d42e5f69b1c82,
          stripped<br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    Just for the sake of completeness:<br>
    - Have you either copied the files to /usr/bin or using
    ./executable_name? <br>
    - Have you made a chmod+x executable_name before?<br>
    <br>
    Sometimes transfering files over ftp in ASCII mode results in funny
    behaviours....<br>
    <br>
    regrads,<br>
    Christian<br>
    <br>
    <blockquote
cite="mid:CACP9YJccutcQq+j-1X0jabZK0KVvi+JJAj2ep2oicd59hJ5Xvg@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>The Yocto executables are the same except instead of
          GNU/Linux 2.6.24 it is 2.6.16. &nbsp;It that a problem?</div>
        <div><br>
        </div>
        <div>Also, on ubuntu we are running libc-2.17 but on Yocto it is
          libc-2.18. &nbsp;Is that a problem?</div>
        <div><br>
        </div>
        <div>Thanks for any assistance,</div>
        <div>Dave</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------000101040409010802030905--
