Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5030.1617137309856301616
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 13:48:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=fGMVnMbz;
 spf=softfail (domain: burtonini.com, ip: 198.145.29.25, mailfrom: ross@burtonini.com)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 669DA38C057C
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 20:48:28 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id j7so17579676wrd.1
        for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 13:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9EJmqXyW0ofOigtVSD89h6ZCHe+wSU+yXN6Or2Pcm9M=;
        b=fGMVnMbzHMLx9CYve2IY/jDMnri2TySjByQYXPjXQAkqdVCjNjtT4+b0c0nj01Kldc
         Y+G8ZePFY2lAS4whBXNbN5Er6wPem5XnwNpx0KO7EmDPQ499I4OgDoPNIwE9na4ZZgUX
         112U0uStQnQMACvhs7ER9k/XeP5EKGPl9SvF7n7BwK+IkprP3nvlE20AWQesiwWq5CHz
         quUOpby4hdbfFKYtsmC+YYUGMN4j+u4O2HkbEZ2vIFfBkPuDYYlxfE8nP7IVuvZ8pQlO
         IoUNhrbAZXcOoIlQtATTKrXbaG9Woh26xXH9POXoZonpJ1wGu2E0KW7qKLDsC7gNZY0L
         Snzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9EJmqXyW0ofOigtVSD89h6ZCHe+wSU+yXN6Or2Pcm9M=;
        b=mjwyMuAYr/FH9BWHgOAA8Y5kTxaBmQX4dVVYNGy7LyI5E/n+NIjavOPgJfW9fUJYvZ
         I9qD9K4/h61/C/LC5gYV9+WSmWzpWVTt4KcC61UX/9s+D3+wVmAsapOsSePlWz/SojBT
         SuH+XE8JK/N5ue6rH7yMDSwKGh9HQNkukTw0OakoYKRu5N4QD30oJ7JWcRlKY8/pMMCy
         4XjP3wxU4sp7pcAbEIazRbH3JlKoRXenkikyJow2N59Ow4Zl81V6otJGu6RNNZo2hdEZ
         DJpQdSYvimc57rwxDpXHdYAsLlfO72r3DeWD9QVSPB3NqUzUxrsHOFRR7nKZoXEcK1dB
         pTvQ==
X-Gm-Message-State: AOAM533x3L9AmeXRTM+OBK80L4CykaUmVprUNpqXDnAzukfL9kSOwTqA
	JCKzhgUkxX5nABwjQ1K2TrR3+qYNk+ZjuzzEYj8H1Q==
X-Google-Smtp-Source: ABdhPJxLta6k1QE6dLoCt2Yb9u5ePDZbosv4pFqBD+LF63AtEUxjzW1cgkDUid9YiJr6/9QrYSPPi8sFK9mRMJvKnLQ=
X-Received: by 2002:a5d:4d45:: with SMTP id a5mr36413472wru.396.1617137306992;
 Tue, 30 Mar 2021 13:48:26 -0700 (PDT)
MIME-Version: 1.0
References: <4eef7ff7-0bcc-3bb7-6b08-a194de2b2491@windriver.com> <111337d5-90b2-2bcf-8d7b-b68ed39e265b@gmail.com>
In-Reply-To: <111337d5-90b2-2bcf-8d7b-b68ed39e265b@gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 30 Mar 2021 20:48:16 +0000
Message-ID: <CAAnfSTs54V+AvonHAssbvwzO6fM3zxJ3dgFOU7BN38Sp2xj=gQ@mail.gmail.com>
Subject: Re: [yocto] No significant diff b/w qemux86 and qemuarm poky build of core-image-minimal
To: Khem Raj <raj.khem@gmail.com>
Cc: Randy MacLeod <randy.macleod@windriver.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Mar 2021 at 20:41, Khem Raj <raj.khem@gmail.com> wrote:
> Thanks for this infor Randy, really appreciated, I think I will also
> look at the h/w angle.

Khem: if you can reproduce this on demand with a clean build (ie
oe-init-build-env with a clean build directory, just set DL_DIR) then
enabling buildstats would give some interesting metrics.
buildstats-diff can compare two build runs and tell you what the
differences are.

Ross
