Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.33741.1612185301912922154
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Feb 2021 05:15:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=HiqAtTQ1;
 spf=softfail (domain: burtonini.com, ip: 198.145.29.25, mailfrom: ross@burtonini.com)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B2D1638C065F
	for <yocto@yoctoproject.org>; Mon,  1 Feb 2021 13:15:01 +0000 (UTC)
Received: by mail-lj1-f174.google.com with SMTP id e18so19490836lja.12
        for <yocto@yoctoproject.org>; Mon, 01 Feb 2021 05:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8MzXjF1iKbhO2JLi6COluPtb3KXXjdrJa3o/36SCh5I=;
        b=HiqAtTQ17/0P/9rdT6K4QogpgbcYHQYUilFb8jMJ6e/2lTMxQMgbzW+NAUu+f2f/8a
         IZ4fFNHs5d9Bgp76omQdQ1WT3gyp5PbwhWVzOTV/EBwHvXMuiD9ukRuXuBjRIcpkrTUu
         jOK0FR1NcEHSqUUbPwvVgj3C3IXa65aXECwE8TKjsBgUv7IDn5cLMDvFnP9skjo8Wie7
         EY/PoQkY4R8uxSAB2cHDlxndpd/qF1CbRAv4FtJQJLxXnMj2/biRfmWW400+JWhVVCn/
         NRqzZJepWTah8HI4K3f2LchS7GLhII9qfUvMfMuBrU45XwsiXUi0zbKDL7FdFF7MN7ZV
         VVpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8MzXjF1iKbhO2JLi6COluPtb3KXXjdrJa3o/36SCh5I=;
        b=ggWeBH3LX3W/aBfnqKyeAmAsIwnU5h51ImZDv+WTHibxNwyDLJLcpeCci6NR9emozy
         /B/ubVNlcK3bwTw9iqm+irP+HHosA358VFICpTsbyISBF/7Tr23wuS+PMln0/eWe+tu4
         BvGAX5MNzpqvhgUOWdmnhvxDf1EEyHB5zd0w1PXVOAyi0E4ae4v+adBkGXV3by1IAS4f
         YVvow/yQmjOzuW+R5Z4IZlkfz3BbBrPr+mduiVOvURHBI+iLAfbr9CU59WcVDit0whku
         /eb/+SIh1L9Ilhz1jvogYF8f7EzTGlNDeR5bzkALbQ0w4m3ZEcWWOJsvp+FOClMFOx7l
         hSag==
X-Gm-Message-State: AOAM530MiLHytSWzNoKF7JZX8J+vHXjvomwV6RpNOt5Mha/Eb5WlIN64
	vgas7RnfhL7Jaj+ubH222tFkQSRhXfJvgZhz1K8JpX9ptSIwLbmz
X-Google-Smtp-Source: ABdhPJzBpMYs8fOkxtfE0APIBpxPVZWtqZmP89sT+ebjndYdN7smgQAglBqtzl7t07+eqzcoPeCkyaE4C+za0nZgiSE=
X-Received: by 2002:a2e:974f:: with SMTP id f15mr10215356ljj.412.1612185298229;
 Mon, 01 Feb 2021 05:14:58 -0800 (PST)
MIME-Version: 1.0
References: <63c3b144-991-f277-91b2-15ff94dca5a6@crashcourse.ca>
In-Reply-To: <63c3b144-991-f277-91b2-15ff94dca5a6@crashcourse.ca>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 1 Feb 2021 13:14:47 +0000
Message-ID: <CAAnfSTuEqwzKEgPr59QrnhqJ312zBEazvGWjxe+7JFCAeJHNoQ@mail.gmail.com>
Subject: Re: [yocto] oddity: file_5.37 printing unexpected "octet-stream" mime type for ISO
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You might have better luck talking to the file maintainers.

Ross

On Sat, 30 Jan 2021 at 11:27, Robert P. J. Day <rpjday@crashcourse.ca> wro=
te:
>
>
>   (i asked about this on the OE list a couple days ago, but i have
> more info and wanted to get a bit wider coverage as i really, really
> want to de-mystify this issue.)
>
>   on current project, upgrading from wind river WRL9 to LTS19
> (effectively morty to zeus) involves going from file_5.28 to file_5.37
> recipe, which is used by various install and upgrade scripts to
> validate something is an actual ISO image by checking its mime type
> (not the way i would have done it, but it's done).
>
>   in WRL9, the mime type of an ISO image as printed by "file -i"
> included the string "application/x-iso9660-image", and that's what
> these scripts use to "verify" ISOness. so far, so good.
>
>   suddenly, in LTS19, the very same "file -i" invocation instead
> prints "application/octet-stream" -- this very same weirdness was
> noticed elsewhere, like here in ubuntu launchpad:
>
>   https://bugs.launchpad.net/ubuntu/+source/file/+bug/1763570
>
> that bug report describes *precisely* the behaviour we're seeing.
>
>   it's hard to believe the "file" command could have been that broken
> so i looked around for another explanation, and noticed that any
> single file could match multiple mime types, and that the file command
> had a "--keep-going" option, so my colleague tried that and, sure
> enough:
>
> #   file -i --keep-going /var/tmp/ptx.iso
>   /var/tmp/ptx.iso:
>   application/x-iso9660-imageapplication/x-dosexec\012-
>   application/octet-stream; charset=3Dbinary
>
> so now we see both mime types being displayed, but it's not feasible
> to change all the scripts to add the "--keep-going" option so i'm
> baffled as to why the newer file command suddenly decides to print
> "octet-stream" as the mime type rather than the more precise
> "x-iso9669-image".
>
>   more puzzlingly, the man page for the command states:
>
>      -k, --keep-going
>              Don't stop at the first match, keep going.  Subsequent
>              matches will be have the string =E2=80=98\012- =E2=80=99 pr=
epended.  (If
>              you want a newline, see the -r option.)  The magic pat=E2=
=80=90
>              tern with the highest strength (see the -l option) comes
>              first.
>
> hang on ... if the pattern with the highest strength is allegedly
> printed first, in the above, that is "x-iso9660-iamge", so why would
> that not be the single mime type displayed by a normal invocation?
>
>   has anyone else seen this? can it be reproduced? i'll try the latest
> version of file later this weekend, but i'm open to assistance since
> this weirdness is currently breaking all sorts of install and upgrade
> procedures.
>
> rday
>
>=20
>
