Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web08.50451.1606682256099820307
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Nov 2020 12:37:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tr/nglzZ;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: alessioigorbogani@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id e81so9574329ybc.1
        for <yocto@lists.yoctoproject.org>; Sun, 29 Nov 2020 12:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=CCA+zsC3YnKe3AGZZ5gIvrljabJUDBi59C3d+i57Ifs=;
        b=tr/nglzZF6WRYBwgq+NTDe4V+cwy13fNpthiiblMRyxDJ6XxQHZLTaCkYNoiyZMmDP
         rucjng9KRAzWB70uc1nAvtzbKgBJ8AJzurNgpIBa43hVw/2lBCVW6WjfzUMs6B7W0JCX
         DRCyIViddpApJmvyPNYC7rbSUrByu5KqmP6yKBzuLe7wa6y03ULsWP+4oWWUCLP6bU+8
         0GOKoMM36mlUyaxl0xLuCjk7wO7pv9J6mvrdc79g8H4PqGhK4/2/fHWLanyoO5D3tr7I
         mO3vD2vVmFprl9SdH0Xm1Dbf8921GoGECiL+Ilqch1jF8RvYWTk9Lk/qo3IW0FDxSpMe
         K4Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CCA+zsC3YnKe3AGZZ5gIvrljabJUDBi59C3d+i57Ifs=;
        b=U2v+dYgNvGOy/spY6vXZsu+IpMd/alA1b4IhCNUxgluMFpLEkG7OcylZjqBPtNsGxM
         1ItUiCVMvhP9Z0WBLE3ZUApi3ILw5batLGT4iLtR9BeZijUX7AL6j0TMcWZ9lkmNtMdO
         PK1P1gAciawSkAG1qujJ6jrMcIH9QgfM61jc5cOuN7KRT9Yif6S/U6QRbnkVmCXgNCQ1
         YMJpOdOabmafnmv2e4WBDS5mTMZX44E4zIDmH45lFQ7SO+2+s1LaeirzWwxyBNuYExoo
         nuhbYG4eTjcWiB32dUVLPyxD0vPKtySw6yCFWwvdU4YpPQPqaL7ME9C+q2Bxt9DLznfV
         O5bA==
X-Gm-Message-State: AOAM532mxwyvjjCyfZgpTEzrc1tNRga+Om9CwGeRXmS72fv1NiD6/Pr+
	YYJmT8/N7CdPJAPhwsXGUy0cVjMWbU2UgJjAbbt8CKJJfbM=
X-Google-Smtp-Source: ABdhPJzbGuBahGZHHWToCfixq7EI15s3Us71cHzWo6Pq2wi8vD54cawFpT1Y901yZ5gppvWuvJk6yNd6tAoeXffNe1Q=
X-Received: by 2002:a25:bc02:: with SMTP id i2mr25123471ybh.478.1606682255029;
 Sun, 29 Nov 2020 12:37:35 -0800 (PST)
MIME-Version: 1.0
From: "Alessio Igor Bogani" <alessioigorbogani@gmail.com>
Date: Sun, 29 Nov 2020 21:36:59 +0100
Message-ID: <CAPk1OjHmB_d8byt6yPp2YEKGERyjBk449KYXYKX=6M-ArndEqQ@mail.gmail.com>
Subject: Include a clpru compiler in the SDK
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi all,

I would like produce an SDK for the my image which includes the clpru
compiler  (a closed-source compiler made available by meta-ti) for the
PRUSS (an MCU embedded in the TI Sitara CPUs) so I have added in my
image's recipe:
TOOLCHAIN_HOST_TASK_append += "nativesdk-ti-cgt-pru"
Unfortunately it doesn't work:
[...]
Error:
Problem: conflicting requests
- nothing provides libpthread.so.0 needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libdl.so.2 needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libm.so.6 needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libc.so.6(GLIBC_2.3) needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libdl.so.2(GLIBC_2.0) needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libdl.so.2(GLIBC_2.1) needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libm.so.6(GLIBC_2.0) needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libpthread.so.0(GLIBC_2.0) needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libpthread.so.0(GLIBC_2.1) needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libpthread.so.0(GLIBC_2.2) needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libpthread.so.0(GLIBC_2.2.3) needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
- nothing provides libpthread.so.0(GLIBC_2.3.2) needed by
nativesdk-ti-cgt-pru-2.3.2-r0.x86_64_nativesdk
(try to add '--skip-broken' to skip uninstallable packages or
'--nobest' to use not only best candidate packages)

Please consider that the ti-cgt-pru-native works without any flaws.
What have I made wrong? What can I do to make it works?

Thank you!

Ciao,
Alessio
