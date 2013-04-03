Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E59E0E01423
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 09:19:43 -0700 (PDT)
Received: by mail-qc0-f171.google.com with SMTP id q2so770394qch.30
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 09:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=9qxZ9z/5sqdN45CFgmetURJC2uyUnYSSXTLUeJ7F2EM=;
	b=Blx1/563zhVP8LRH7X6+CU2x6bn5Y8M2iZyRjinGkTtI/Cj2gWXlLwzZtD5mkz0Llb
	KTZo16MiGQ7nQYBprl5Q/DLIqKGRKRemDydTXQT5NDXIslJwVIKjf6NJ6eEi/K9LdFcw
	j1CEtlPUOrjd9xn7Q5nO+Bkk/JX2qvIMKh+DuetQkXrPruZb4wJsZ0kfmZbt4Yp38JHc
	m/gR89gVm09ZQyzIBgKhRlEg8UWf7siDNEUpRzv+iGNJ5NcurfIxkxnX6qiIxtDApig2
	n+caTTD1trL6UUEKbIAi4Ay+Lk6bl84OuVVDL5ZX+J29xkc9LQt72MmizOIQOQDcrgb9
	Tptg==
MIME-Version: 1.0
X-Received: by 10.229.166.140 with SMTP id m12mr752306qcy.81.1365005983285;
	Wed, 03 Apr 2013 09:19:43 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Wed, 3 Apr 2013 09:19:43 -0700 (PDT)
Date: Wed, 3 Apr 2013 18:19:43 +0200
Message-ID: <CAFyqS9qh8q5jd48RNmxF7vreNoc-8g=R4A8_d90ZMD32HnSXhA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: Is there no official support for Erlang runtime in Yocto?
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
X-List-Received-Date: Wed, 03 Apr 2013 16:19:44 -0000
Content-Type: multipart/alternative; boundary=14dae9c09356c00cfd04d9773824

--14dae9c09356c00cfd04d9773824
Content-Type: text/plain; charset=ISO-8859-1

Hi. We wish to bring in the Erlang runtime into our builds, tailored for
embedded systems.
I can see that OpenEmbedded provides such a package in their classic
release. But I can not seem to find it as part of Yocto, neither can I find
it among the official OpenEmbedded recipes from their Wiki index. Is there
something that I have overlooked here? Or should it be fine just to bring
in the recipe from the OpenEmbedded classic git repo and add it to our own
meta?

Hans

--14dae9c09356c00cfd04d9773824
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi. We wish to bring in the Erlang runtime into our builds, tailored for em=
bedded systems.<br>I can see that OpenEmbedded provides such a package in t=
heir classic release. But I can not seem to find it as part of Yocto, neith=
er can I find it among the official OpenEmbedded recipes from their Wiki in=
dex. Is there something that I have overlooked here? Or should it be fine j=
ust to bring in the recipe from the OpenEmbedded classic git repo and add i=
t to our own meta?<br>
<br>Hans<br>=A0<br>

--14dae9c09356c00cfd04d9773824--
