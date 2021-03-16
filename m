Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web08.591.1615908496645600925
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 08:28:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l8Cppc2+;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id q9so4235642qvm.6
        for <yocto@lists.yoctoproject.org>; Tue, 16 Mar 2021 08:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=wQFOSQ7isiq4Kp3+VS8uHemG2SZdVsUL71lFolULBCU=;
        b=l8Cppc2+UvQz+mXNmNY+7hoHQqXB3xTFiZ3SWKsKmhgI8G1q5Rz9oQOjw6GltwZ2OE
         QFTUB2prr5R6Wx05Ym/Z3DJ5zhc+zOHq+Y8j9oDGMobIeKG4Ku6ohqAfW3mFtJ8EI51p
         IC+xiXpU2O7WtdzFcYPi3nnIS+rI4LmmGM3XBxCdukqL1mD7Z0A+jFcUf1py4vLVCU8S
         dgoqcNGgzjihF72W8KVVv3YehlxqMHIcMFvnAg7cnKiat2UebE/Nga1ycjNRk8RJtMEY
         n3OVZu0WxZ+/fqByesisStcMvDX63Z4ZPFbAgGEIHiKE6gYaXChRuMgW9UO4/72f47k1
         EUzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=wQFOSQ7isiq4Kp3+VS8uHemG2SZdVsUL71lFolULBCU=;
        b=EuF7Xt/0Gbo0XFP0ewiKiCAuJ7XsybVxgeCdbPti2v7G7L7NIYZaJ4S4VunwVOZukw
         6oLO/KNAgJCfez9dDQ9T7vtQ/cmpirJV0FfuPNSv/o5zRTLks1HCjpIxibQEt1bYWeny
         aLmEpsxwNdpsfw22EiCCuuESsF8c5QhXIi3eIHDdCSHEhNfyb6YAkSoAefMjd5CUkFbd
         wFlXcueddZR6Q5+AeD7uWdVFnQgu/gy76mlcR5/Z8OiLCEgmcrHPGOY/2Pg7gbBwrVff
         jPxbPZawIPoZ9Q4O21VFWZHGI2/1r1ltf4cLDRmiKSNniz7VWAkHO08IurlNpj4GhYIU
         M5CQ==
X-Gm-Message-State: AOAM530eB6XQYAthoh23KkmxzxPnBW4G18g6fQ7PPSgvBRguSYUW0pSd
	nahqWEALPD/B/V8/hp5TkCfP8MnHgTs=
X-Google-Smtp-Source: ABdhPJyN6WzGr2F6bA/sraLRhKcrZRcdxVb7885ELFL6TNq83UXEJOl9bm5SD334pQjXcPK2LP/4RA==
X-Received: by 2002:a0c:f7d1:: with SMTP id f17mr16062308qvo.38.1615908495285;
        Tue, 16 Mar 2021 08:28:15 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id s19sm15127259qks.130.2021.03.16.08.28.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 08:28:14 -0700 (PDT)
Date: Tue, 16 Mar 2021 11:28:12 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for March 16, 2021
Message-ID: <20210316152812.GA33901@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for March 16, 2021
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolley, Jan-Simon Möller, Armin Kuster, Steve
Sakoman, Scott Murray, Michael Halstead, Jon Mason, Richard Purdie, Bruce
Ashfield, Saul Wold, Randy MacLeod, Paul Barker, Joshua Watt, Denys
Dmytriyenko

== notes ==
- -m3 built and in QA
- bitbake preferred version mandatory
- ovmf, meson updates for reproducibility (issues in Go remain)
- qemu risc-v machines added
- new storage fetcher added to bitbake
- AB-int issues increasing

== general ==
RP: time to update layer names to hardknott


RP: some high-profile issues have highlighted the need for reproducible
    builds, which puts us in a good light. good timing. all that’s left now
    are ruby-docs and Go, so that’s really good
SS: some of these things are version-specific, so they can’t all go in
    dunfell
RP: might want to update the version of diffoscope for dunfell, lots of
    improvements
JPEW: on the reproducibility website you can select a branch, but it doesn’t
    work for dunfell
RP: does gatesgarth work?
JPEW: hmm… gatesgarth doesn’t work either
RP: the test results are there and those should work, there’s probably an
    issue with the interface or formatting
JPEW: i’ll look into it


RP: util-linux split caused build failures (“files already exist”). there
    is high-level code that was supposed to catch this, but it was missed
    because the collision isn’t caused by different packages. i’m hoping
    to take a look at this issue, although it sounds like it might be too big
    of a change for -m4.
