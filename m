Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7153.1596634536169593211
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 06:35:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=LixW1oxI;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEA2EE01F2B; Wed,  5 Aug 2020 06:35:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,URIBL_RED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.48 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F57CE01EFD
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2020 06:35:34 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id v21so26047915otj.9
        for <yocto@yoctoproject.org>; Wed, 05 Aug 2020 06:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hVEGB08iZD+64q0d4O5cjgE1TkPtyJHk1IlT3ky8Mj8=;
        b=LixW1oxIgnY7+uaDq5StAhH2yEvq5SL7FBe18c4fV9c48wF8nEWL4DlGvVzgi676vV
         FmiKd/cDFsG8m/edp3M3nr0OuR/kZaje9oIm3m6LHkJzzN+3usQe/rOfhQeDw4rcGIWS
         HyPZSLavyXZ2l1iypAU7r6L0IjvialerXV6nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hVEGB08iZD+64q0d4O5cjgE1TkPtyJHk1IlT3ky8Mj8=;
        b=c93q+v/xBszpWfl6MbC0yZRFReMiNFITwE1whhB5cD0xju6IhYxiCyxJ1KkDFmw/mm
         afM4zhhq0ISY30sq+gW6M6huU3McYKGavJmA0Tsih81Ywe1f++NN5VMAxjPLtaqlT2Aq
         dSzXnYbCNgdL3ux4rdNzr8+T0vk7JMqVEnvXWqcKb8fq0nCbf+qlKIC8UnP/0njj8U0x
         5cgFpZiQuF32x+cFqOU3v15RZyl3ke8kLkn317F+FANVVAFLtFdgoGGcsFmGAyqN2Ciw
         F35jY6ecuCe/qbkzieWe0XQLwJ8EwNNOmMFmMoyGbM1oAXP4wupvBGRAySf8JUpkIepa
         eiyQ==
X-Gm-Message-State: AOAM532uK2Jv7yCt3jZoGTo2fcGeRMan842JVx9v9n4AOJ1IcyqPmM1j
	pKHwdviU6sdNBDps5VRBpxVFdVFzLO5/QEa7k0DVgVUy
X-Google-Smtp-Source: ABdhPJzSLj2Y7QhlxX/VfH3L1lSq+kmcu2YHaiCFRURfhcE+SC+I252w/5Hlf1o2bD4DGFWoYT8zPp06s1FvbxiHEI8=
X-Received: by 2002:a9d:5786:: with SMTP id q6mr2723993oth.258.1596634534358;
 Wed, 05 Aug 2020 06:35:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAM9ZRVvRYmxjUcm7BmCX6ArPAn7JaEhGukbU4zGhvedmc8NcFA@mail.gmail.com>
 <46f432ee580bbabf1b4378a89cbe49829da4ce0a.camel@linuxfoundation.org>
In-Reply-To: <46f432ee580bbabf1b4378a89cbe49829da4ce0a.camel@linuxfoundation.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 5 Aug 2020 14:35:17 +0100
Message-ID: <CAM9ZRVu7_0NP4Jqk5gqYk7W_86-GxGChuPZeDjh4ipj9caUeqw@mail.gmail.com>
Subject: Re: Mirroring meta-kernel on git.yoctoproject.org
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Ross Burton <ross@burtonini.com>, 
	Michael Halstead <mhalstead@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 5 Aug 2020 at 14:09, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Mon, 2020-08-03 at 09:56 +0100, Paul Barker wrote:
> > I'd like to get the meta-kernel layer mirrored on
> > git.yoctoproject.org
> > so that we've got a backup available in case of any issues with
> > GitLab. This has been requested by one of our users
> > (https://gitlab.com/openembedded/community/meta-kernel/-/issues/11).
> > I
> > also think it's important now that meta-arm-bsp and a few other
> > layers
> > depend on meta-kernel.
> >
> > I can enable an automatic push from GitLab whenever the repository is
> > updated so all we would need on git.yoctoproject.org is a meta-kernel
> > repository and push access from the relevant SSH keys.
>
> I've had to think carefully about this and I think we can only say no.
>
> The reason is the namespacing. This is taking a special namespace and
> its doing it by stealth, not a conscious decision. If we do this, its
> going to create confusion for users and also create friction with other
> Yocto Project components.
>
> This was warned about when "meta-kernel" was started and now its coming
> back to bite us :(.
>
> I suspect this is something which will you'll want to appeal against
> and I should therefore refer it to the YP TSC?

If there was any comment about the layer naming I don't think it got
to me. The only feedback I saw was that yocto-announce could not be
used to announce releases as it's not the product of a Yocto Project
member organisation.

I don't think appealing and trying to force the decision is the way to
go. We should look for some consensus on how to fit this into the
Yocto ecosystem going forward even if that involves renaming things or
doing something else. I'll raise this on the next weekly call.

Thanks,

-- 
Paul Barker
Konsulko Group
