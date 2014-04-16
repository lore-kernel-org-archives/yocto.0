Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7BC0E00BC1
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 15:42:45 -0700 (PDT)
Received: by mail-pd0-f169.google.com with SMTP id fp1so11334382pdb.28
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 15:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type;
	bh=aZ0HJ5EUIjLqEh8kLQ/2bUbB4sVby8a4ygsjnACCQS8=;
	b=W3KlcYC48Y8o0pxjmcB2ZAcItttd9XOKGfbCG0/xi2P53fF3XxykM11BjbvNCi+0J8
	GoSHvS+jBfVAnuDrfaPchVUOKB90z+wyZjJfqfsxUMvi15xIF9Stie0KPKQ9ycwJz+M1
	Hkk5d6vcKT0W9OYB+Rdp+bEv55vOLYAlXS7L4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:message-id:date:from:user-agent
	:mime-version:to:cc:subject:references:in-reply-to:content-type;
	bh=aZ0HJ5EUIjLqEh8kLQ/2bUbB4sVby8a4ygsjnACCQS8=;
	b=D/k00fTgpGZ/r+g6sFVxlHlwz0uNpzdUosejA2kUAgx+KSETfGQ33P33sH9hr2K664
	A+fE5JW8Mhdn4H/zjac0uzrUcH6SxGK6xhNdQUpXmCcQ3w8PzT8rOnJlSgpfBrBiY6X9
	YpFidJvJ+ra0HEGpbf17k33BdKc1U6qgqqmbo+bcxjsgWkFrh/ox5A8xHBpx9NKX0CDb
	p70biGmG5nFtKJcPgNYV0HQ5UrZSlcimefmGsAF4CsQyyxm+WDq0GvJA9Xc8vzT4eM2Q
	RHcguj6Cv0oUlfLqH9cYNyueDJ9rKzpsjHoKF/s246sfnwUjPOT0Z92q9ch3ylB+6YjC
	RN8Q==
X-Gm-Message-State: ALoCoQkra0uZdmZSxP1OoH4cBZ5xBhP/eEBbWGupb9vC78IVwrtT96xf/Xdocx2uDel1EdxXzwau
X-Received: by 10.66.180.34 with SMTP id dl2mr11530846pac.124.1397688165006;
	Wed, 16 Apr 2014 15:42:45 -0700 (PDT)
Received: from pride.local ([192.102.209.8]) by mx.google.com with ESMTPSA id
	f5sm116940382pat.11.2014.04.16.15.42.43 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 16 Apr 2014 15:42:44 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <534F0763.6050409@yoctoproject.org>
Date: Wed, 16 Apr 2014 15:42:43 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>, 
	Richard Schmitt <richard.schmitt@freescale.com>
References: <aa3464940d85426fbca4b43ff4c7c9c9@BL2PR03MB210.namprd03.prod.outlook.com>
	<20140414144121.GC2132@jama>
In-Reply-To: <20140414144121.GC2132@jama>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openssl and heartbleed
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
X-List-Received-Date: Wed, 16 Apr 2014 22:42:47 -0000
Content-Type: multipart/alternative;
	boundary="------------060700090205010003080907"

--------------060700090205010003080907
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 04/14/2014 07:41 AM, Martin Jansa wrote:
> On Mon, Apr 14, 2014 at 02:37:52PM +0000, Richard Schmitt wrote:
>> Does the Yocto project plan to have some response to the heartbleed ex=
ploit in openssl in the near term?  Has this already been addressed?
> It was already addressed for master, daisy, dora and dylan.
It's a separate issue but as far as the yoctoproject.org infrastructure
is concerned our primary SSL termination server runs OpenSSL 0.9.8k and
was not vulnerable to heartbleed. Other servers were not publicly
accessible and were patched quickly after the announcement. On the build
hosts the only running service linked linked against OpenSSL was NTP. We
discussed this on the
https://www.yoctoproject.org/tools-resources/community/weekly-technical-c=
all
the day after heartbleed was announced.

Michael Halstead
Yocto Project / Sys Admin

>
>


--------------060700090205010003080907
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 04/14/2014 07:41 AM, Martin Jansa
      wrote:<br>
    </div>
    <blockquote cite="mid:20140414144121.GC2132@jama" type="cite">
      <pre wrap="">On Mon, Apr 14, 2014 at 02:37:52PM +0000, Richard Schmitt wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Does the Yocto project plan to have some response to the heartbleed exploit in openssl in the near term?  Has this already been addressed?
</pre>
      </blockquote>
      <pre wrap="">
It was already addressed for master, daisy, dora and dylan.
</pre>
    </blockquote>
    It's a separate issue but as far as the yoctoproject.org
    infrastructure is concerned our primary SSL termination server runs
    OpenSSL 0.9.8k and was not vulnerable to heartbleed. Other servers
    were not publicly accessible and were patched quickly after the
    announcement. On the build hosts the only running service linked
    linked against OpenSSL was NTP. We discussed this on the
    <a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/tools-resources/community/weekly-technical-call">https://www.yoctoproject.org/tools-resources/community/weekly-technical-call</a>
    the day after heartbleed was announced.<br>
    <br>
    <pre class="moz-signature" cols="72">Michael Halstead
Yocto Project / Sys Admin</pre>
    <blockquote cite="mid:20140414144121.GC2132@jama" type="cite">
      <pre wrap="">
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------060700090205010003080907--
