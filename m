Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web11.7876.1602148314469860881
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 02:11:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=PVzEk9hE;
 spf=pass (domain: konsulko.com, ip: 209.85.167.172, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f172.google.com with SMTP id u17so5615148oie.3
        for <yocto@lists.yoctoproject.org>; Thu, 08 Oct 2020 02:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=aEzvmz+VZ+TVMGZlHDJA/B9LqdKDDTC9XQwYz8xpf5s=;
        b=PVzEk9hEb7ulcLtNAW8b9GRtFau0TGqBsocMiLCukA29yGaafTjuhPrpDY4wmlrXJx
         t456XTLsGx4jbJALToJDEotny4X92XQ2dZeQkeJv3ByXvq1HzPwhZpQaLAugQsh8nZ8k
         2jxej1IdzjkyQN4XmZ/Y0EEYtP/Fa2T/q+uxw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=aEzvmz+VZ+TVMGZlHDJA/B9LqdKDDTC9XQwYz8xpf5s=;
        b=g1C4GdmqdZfyo2YeGUj7oPVp8LGnHyDgSq3oPwW6X21OFgt7OI1q6glA+3va4I9ZTY
         HxXPts+3zx28yj8xkSWW1s/PLk7YSCDORoFG4vXcDxvZyEROianpnVsqBJu1aN297xNw
         1uoVe6vE2dPNalEP09bXFPnLG56pa1OTmLN4fvqZ0A8ODG+u2L5cZOQiO1A3Wac0SgvB
         Y16IM1TitoSV2MiqQTCEkskFqDeD9IQeqGkhUD4FNpI4DvSPlJs3/opnufgky3jmsnzF
         /pZzKNBcV5ucmMpIA19qK26XyLz03E4rtxuMw5Z03nhJLg10/WN2qqjk1qzleiDcOa9F
         WX6A==
X-Gm-Message-State: AOAM530v5GY1LszUj9ZxL6Dhn+YuDcbxZPzbZGXHrPaxI4y9OUSL/g0Z
	fTCL4CbdzMyKID/WYZtycY0BHcsazw1w5TCzIq5bZQ==
X-Google-Smtp-Source: ABdhPJxVM2uV/GgBg7NYy8K64rDsyPH4AImbOS7ntdi/ncqQMdLQ7HZdCd3EWyB1L5fGcfaknVZq/4wfSVQMan+Cc/0=
X-Received: by 2002:aca:d946:: with SMTP id q67mr4443980oig.27.1602148313762;
 Thu, 08 Oct 2020 02:11:53 -0700 (PDT)
MIME-Version: 1.0
References: <aCvF.1602139866465607883.3w6m@lists.yoctoproject.org>
In-Reply-To: <aCvF.1602139866465607883.3w6m@lists.yoctoproject.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 8 Oct 2020 10:11:44 +0100
Message-ID: <CAM9ZRVvVNPq9AkN3JxLOMQ50rf1UPSFnR-10yFBHV4Z2nAmVEg@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IFt5b2N0b10gQnVnemlsbGEg4oCTIEJ1ZyAxMzUyOSAjeW9jdG8=?=
To: idadelm@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 8 Oct 2020 at 07:51, <idadelm@gmail.com> wrote:
>
> Hey everybody, I introduced myself yesterday being new to the Yocto proje=
ct and also hoping to become an outreachy intern for this project. I came a=
cross the Bugzilla link and chose a bug I wish to fix. What I am to do is "=
add SPDX headers to all source files of the prelink-cross repository". I al=
ready cloned the repo and started working on it. What I did in all the .c a=
nd .h source files was remove the license text at the top of the files and =
place only the SPDX license identifiers which is commented out. I'm about c=
ommitting my changes and I hope I am doing things right.
>
> Thanks you all for the support.

This sounds like a helpful contribution.

To submit this please follow the guidelines in
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded.
You should also check the README in the repository you're making
changes to for additional contribution instructions.

If you have any questions or difficulties please reach out via IRC or
email and we'll be happy to help.

Thanks,

--=20
Paul Barker
Konsulko Group
