Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.4399.1587812095255939903
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Apr 2020 03:54:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=tZhY6rwq;
 spf=pass (domain: konsulko.com, ip: 209.85.128.51, mailfrom: pbarker@konsulko.com)
Received: by mail-wm1-f51.google.com with SMTP id y24so14616992wma.4
        for <yocto@lists.yoctoproject.org>; Sat, 25 Apr 2020 03:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:organization:mime-version
         :content-transfer-encoding;
        bh=u2v4rS3w4AVBEqZYKncSWxFlYy698ce7FO+qc9MXwHo=;
        b=tZhY6rwqAEgzQn+cnRyxIfAiqefoQiB2n1v0qfdCWEPOjMbGyZ3uppc18eSHAI26Ll
         aKKrJ1xVjWSjGw9hNx0p05CM1vXwLd8spKogBS1FPcdJruFE1ywHnYdP6YRngtSJn+i+
         9eO5I+Ahlcjj0EOCVSr4uijHpAtO8hWnfedYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:organization
         :mime-version:content-transfer-encoding;
        bh=u2v4rS3w4AVBEqZYKncSWxFlYy698ce7FO+qc9MXwHo=;
        b=cRus69/gYMTQvL7MLBCQ51WfY4MnQeDnyaQqCOvrFxqYJMZgUovBHuduL0dhc3swT/
         eg9AhyJCEACSaeuQgnBcX5Oas3xemSMVJZedbL9Mx0wVP0mTEk2aEkoqAcG9DxJCE+G5
         TBsUyaFWxmCJ0pHFAfPi7IvCENBMf0iu+Ssmm9tQkqALUCs6paD28ZkQ2LEttHQ/ZgQB
         eDyQs/z4zndtnZB0C5C9T9YlI+MimBIu5yXv1Wa3KuRezU5wN9HuEwpujSxyCZQDjlbZ
         rwOh6cFaJNg/ln/h11dn4zBfroFl7PGHi+7viH5mZhfNFpPCBhOwH/OfNI/ZV+43uQFg
         pF0A==
X-Gm-Message-State: AGi0Pub56GRL3gx8PK3OOedf9efoNq2HB25HOTcjvQW0FwuYNj3ZjIla
	A4CRAzOO/x3MjRqGVtOQ4eItkw==
X-Google-Smtp-Source: APiQypLjQF7jk9guSi/sljZAB5BBy3c2cGmyuJk07o+p5aM6t7MBcibfwu2xgJiZFKoNROrDZuddUw==
X-Received: by 2002:a05:600c:2945:: with SMTP id n5mr15430428wmd.148.1587812093126;
        Sat, 25 Apr 2020 03:54:53 -0700 (PDT)
Return-Path: <pbarker@konsulko.com>
Received: from ub1910 ([213.48.11.149])
        by smtp.gmail.com with ESMTPSA id e2sm12008784wrv.89.2020.04.25.03.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2020 03:54:52 -0700 (PDT)
Date: Sat, 25 Apr 2020 11:54:50 +0100
From: "Paul Barker" <pbarker@konsulko.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: =?UTF-8?B?QmFydMWCb21pZWo=?= Burdukiewicz
 <bartlomiej.burdukiewicz@gmail.com>, yocto@lists.yoctoproject.org
Subject: Web interface for Yocto & OE mailing lists defaults to Reply to Sender
Message-ID: <20200425115450.7c581f0d@ub1910>
Organization: Konsulko Group
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Michael,

I've just been discussing on IRC with Bart=C5=82omiej who used the groups.i=
o web
interface to reply to an email on the list. It defaulted to sending a priva=
te
reply off the list. If I try to do the same "Reply to Sender" is the default
for me as well: https://imgur.com/1RGH9Aw

Looking at the AGL lists on groups.io they have "Reply to Group" as the
default. Perhaps this is a configuration issue? Could you take when you get
chance?

Thanks,

--=20
Paul Barker
Konsulko Group
