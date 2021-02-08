Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.32435.1612771866876439591
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 00:11:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=oE1Azf7e;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.50, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f50.google.com with SMTP id m22so20904830lfg.5
        for <yocto@lists.yoctoproject.org>; Mon, 08 Feb 2021 00:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DsPBkqeGDU86b+MYCD4fG6KKgYjJPY5h9reKddgpTzI=;
        b=oE1Azf7eFC0up8oX33XP1pLsjK7qWIaqL3TClIAIznLJiFUZrYK0WjwJWsOR7/mduh
         iRoYE3Fqn+UwZlelCPVMgRfgJVAqLiIBHuu8iAP4aDJLmZBfGieA8qJOI1b71WUELDxO
         fwA4joTmsmNMvcXaEx/92Q+aXYzjw+m8KXWSV+polYW45F4jGN3KXOj1cxiZUPP+EhD1
         L8mulQlP5WtMdWj05K9+nGyZVHhoJy7KBpaLgY/WB89u7uEmmbw9SIP8SJbP68WpcM8j
         jNbVDWz5m1hUAn8xkyVgPi0OtjRm5guwF50tLI9InqbzjBWAIZemTpxmibclvOC03ln4
         LN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DsPBkqeGDU86b+MYCD4fG6KKgYjJPY5h9reKddgpTzI=;
        b=HTceCo0/o1hiQxeOoBwZsxZ7sq/xpmiArlak51kY+zVfbH2EOad2Vh1rGBj4tudTem
         8oAMob3oVw8zLoi/T+2ta2cavepCjTEOdMZ/k8+DgW0HUeRSatLYHz6/oQX2E9hcOAaI
         7QyeUY9utoNbLNLYPSAUXsYUhsrAjNtoy/9rdkp6lIJz6eR6H4Ago9qfztgOR5fVgjQq
         MCvkJsnXYwOue2MkFNI/fD5FBTGs1HkCEKqbBT71kuNmoE7+PA1Ncn7aIU/jJf/oZugU
         sW5q73YoJxKFQZOq+8KI9h2NC4+TavF4hnSt5NszMKexsxkRgolpwqaCcNFJhOhf/Um/
         iReQ==
X-Gm-Message-State: AOAM531UpIfjrKSLDBA5LiTs94GgjzPsIRDvYG7KbgK1gbU1fQVWiriv
	14NWvLwA8U1SIi8QfOpnj+VexwudqZviWrXKMDpvFg==
X-Google-Smtp-Source: ABdhPJwV0N0PlqcM+Su0nI8REWSaYR6dMLwymUnGN6Nu4pB+tWZhPdmKmvGwTCrH++5IviHuKeh/wpYFuPq6csRDaQw=
X-Received: by 2002:a19:c194:: with SMTP id r142mr10036516lff.102.1612771865022;
 Mon, 08 Feb 2021 00:11:05 -0800 (PST)
MIME-Version: 1.0
References: <31249.1612659478103525956@lists.yoctoproject.org> <31241.1612742495128137731@lists.yoctoproject.org>
In-Reply-To: <31241.1612742495128137731@lists.yoctoproject.org>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Mon, 8 Feb 2021 09:10:38 +0100
Message-ID: <CAEt6Nwp3Q40c+cfBDPXKfCGTn=r8AFtVa+1aJoPhEFw9HALGUg@mail.gmail.com>
Subject: Re: [yocto] devtool question/issue
To: David Gartner <gartnerd@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi David!

Am Mo., 8. Feb. 2021 um 01:01 Uhr schrieb David Gartner <gartnerd@gmail.com>:
> I found the issue that was causing my problem. Just an FYI if anyone else happens to run into this.
>
> There was a file named ".devtoolbase" in /mnt/YB. I think this was a remenant of some previous work I was doing with yocto. I'm not sure what the purpose of this file is but once I removed it devtool no longer errorred out.

Oh great, thanks for the heads up. I am actually the one who did the
video, and just returned into office mondayishly and would have tried
probably this afternoon. But that I would have never found, as I
usually start out in clean slate containers, and I use devtool a lot
in there with builds even scattered out over multiple mount points.So
glad you figurede out and took the time to share!

Greetz
