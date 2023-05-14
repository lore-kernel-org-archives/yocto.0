Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9278C77B7D
	for <webhook@archiver.kernel.org>; Sun, 14 May 2023 23:55:38 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web11.77433.1684108530516344330
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 May 2023 16:55:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=z3nQy58F;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.222.178, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-75939de402dso56064485a.1
        for <yocto@lists.yoctoproject.org>; Sun, 14 May 2023 16:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1684108529; x=1686700529;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zBAgQ6DYWyEtGUAwIcZ6leB6VMSDUsMJBYWv1RoZ0IY=;
        b=z3nQy58FY7sCkRi/Kb0507ZkKMLprhk5VUusMC4rDh/60rX9G/+j4PuuWH6CXb5RTr
         len83vEHFdbE2WrFlJTx823M32TLQklW7zMom0ZZdHCsPYAZDnGdX3e1DDFJBsC0T60A
         PSVn8euVNRS5rT+CO3tDxcuh/j8vIR2dA4emSxyC0OZx8HLj9ENy8hC6gu+TB9BU+kM5
         2hUOt7nheD3BkN1N+CqBBIKqTX6jeI5w+9o3Ijo99G6Xk9p6wGjZyUOb0Gr3uGrzKD2s
         QcXjM1Gmym7tC8q1dTIWQeY+sj6UkUsznjkfpWmrHUhwd6C7Cs/TacEKExxL57G06z8N
         mQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684108529; x=1686700529;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zBAgQ6DYWyEtGUAwIcZ6leB6VMSDUsMJBYWv1RoZ0IY=;
        b=CZyBh5cMP3qwcbJ90Lphn8s87ommylIQ7IfQhyZJkFiDZ1/aVWmNhvu9Fs/Ak5S2m2
         jj//eMfE+T73uMu2S/EOEz1pawyT8M/5fP93wwI/qocqR7AAp5SMCl58w3CYu49Oy2zp
         iPzPJm43bUhLyCJRYmKkPYzwo89kY7HE6bBQEvaNT/SyxEiesU1udrmHKsO8PJAWlRkZ
         VbFAqsKVf7Tji1X8D6b1Vda8xOAPCvpHvDhyviqIwubf20K3s4AnefARZlh2QKgInW8z
         CG2FuuCOlatsLyrFLR0HHwnAfE80nwbkELiUEtn8Sf/HE4dsQG7tVk2s1UbqEoS34BBi
         fDaQ==
X-Gm-Message-State: AC+VfDyCvyE1asJbQ/ZkPanHZFCe4j+jTnalCyrZS6h3/8lshU0yyHnd
	2cQhTtzLt4HQmUXD0JTZs5D5rRzPvf5EeKR86JIpdSsJ8h6EJNRRFPA=
X-Google-Smtp-Source: ACHHUZ72hfmL2LfV9E/1VR5Ij3CaiYKi96UFota/mkbAketgcTzEIL/Cfl3VdKhI+q1K2aypuHTTBcvDGmggjJCtuEw=
X-Received: by 2002:ad4:5aaa:0:b0:61b:5ca6:b7ef with SMTP id
 u10-20020ad45aaa000000b0061b5ca6b7efmr52666031qvg.42.1684108529332; Sun, 14
 May 2023 16:55:29 -0700 (PDT)
MIME-Version: 1.0
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Mon, 15 May 2023 11:55:25 +1200
Message-ID: <CA+EiEZJrnJYYY7NMF521HemwaGKTFotkUdxC56w-qgYvm_j_Ng@mail.gmail.com>
Subject: LTS EOLs
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 May 2023 23:55:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60011

I was just looking up the Yocto LTS and I found
https://endoflife.date/yocto. It says:
3.1 'Dunfell' (LTS) Ends in 10 months (01 Apr 2024)
4.0 'Kirkstone' (LTS) Ends in 11 months (27 Apr 2024)

Are these dates correct? If so, what's the point of the later LTS
going EOL the same month as the previous one? There's not much point
in upgrading.

Is a new LTS planned?

Thanks.

Tom Isaacson

