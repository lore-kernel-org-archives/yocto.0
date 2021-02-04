Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web09.4903.1612426359073361589
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 00:12:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=FjdUAecl;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.54, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f54.google.com with SMTP id a12so3281500lfb.1
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 00:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=uueSFLqSL+0Aruiph9Hh1jEZ4oSpmCPodu74Zj9A+W0=;
        b=FjdUAeclTIZ/d9Iy/40HfvkiWWO92sMaEi6TfNBz2YX2XVRma5riEGraHcqM+rOR0F
         id0N53LV6NrxGkL7SbNVvt0SacQ4NumY7KSSk9ishTv28YHyFG0tgVm/K16w0cE07nES
         dYMJqU9Ps4+5W7dacoZc4X+N2pN29TabIlj1UwlmOKEjsE0IAht7UdkfxNyKruI4Q143
         F3bv/ulGVr+mQPNLoUbm24rYAYKzvsiT9eJEbkpg5spuc5WPwpHW+LLK3b4rGedOM71O
         OF+ZU0OaIuXjl+KJOaQYQHv0kYgL3lsWMkFv1LpUnuVgRwHtZCrutgOQfrhi6ie0A2mO
         +5Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=uueSFLqSL+0Aruiph9Hh1jEZ4oSpmCPodu74Zj9A+W0=;
        b=Q6TCmS4uxhejRInL6qIPXkcHJEXkdTylLLjNKmx1XanYsBIbrDK+5FNsWrz+1BoKfh
         hzq8wXsu0p/dVOgxp4agL69AxTrzUiuRFkC7+AV8p5aBoOG3oXhSawSVgAswEKxplTug
         6tBm5+FxV9VjXhgzP1+jmDA2EFjx0Z8cL4jeHbSfn5RPZfsaaO/58ZlA8MnsqKbJYiOA
         3gdM27OPLhsJkPHoXke7+Fsiievx1pAOZnNYI71iGyaDpJ0leI7/U4bSHtPl0o3rsNsT
         pYFUDvlZn/AXwvZNbnOzoRTMcxWe2YmxBknk7TVQHbvAcH7tGeY2MudP8ocRdVQX9uwc
         RsDA==
X-Gm-Message-State: AOAM5307QMTsZjnEkx1vw9VQKrV0J4P1hft82Tw3kh6r+qMiHGYbAtpB
	EOGKYzDbQUr9yzJBYzk4hfLqJr8AXgRwW5+i3l4mRA==
X-Google-Smtp-Source: ABdhPJx1lZgLre3ErgZs0bjQ5WDECMPXwsI417f8ze7tvdFuhFxwFYY9eVHm+NcPN+eXhid2kogoJUIOb5OA1M3koAI=
X-Received: by 2002:a19:1c9:: with SMTP id 192mr4109663lfb.467.1612426357197;
 Thu, 04 Feb 2021 00:12:37 -0800 (PST)
MIME-Version: 1.0
References: <45bT.1612391155068335774.AQwA@lists.yoctoproject.org>
In-Reply-To: <45bT.1612391155068335774.AQwA@lists.yoctoproject.org>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Thu, 4 Feb 2021 09:12:09 +0100
Message-ID: <CAEt6NwoJjfE5Xvt0TtuDj8u9KOpuNpUV2Jf2y1ge1M+EJtwx-Q@mail.gmail.com>
Subject: Re: [yocto] #yocto CORE_IMAGE_EXTRA_INSTALL Where can I find a list of valid package names?
To: ddbabich@bootseeds.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Howdy!

Am Mi., 3. Feb. 2021 um 23:26 Uhr schrieb <ddbabich@bootseeds.com>:
> Hi, I've just started making use of the CORE_IMAGE_EXTRA_INSTALL variable=
 in my local.conf.  I'm really confused about where everyone is finding val=
id names for the packages?  I though maybe it was the recipe names in meta =
but I've run into build errors if I add something like "dhcp" to the list f=
or example.  I looked it up in the yocto manual and it just basically resta=
tes what I already know but without telling me how to find package names.  =
When I search around on google all I find are examples of people adding pac=
kages to it and having some issue, but I haven't seen any reference to wher=
e those names come from.  Could someone please point me to the documentatio=
n, or point me where to look for a list of valid names?

Well for the most of us its pure experience and knowledge -most
package names actually match the recipe name, its a somewhat rough
best practise. However, to get a list of packages available in a
specific build, you can use

oe-pkgdata-util list-pkgs

... and pipe it trough your most loved pager/searcher :)

Greetz!
