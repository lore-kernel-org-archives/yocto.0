Return-Path: <pvanberlo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56621C433F5
	for <webhook@archiver.kernel.org>; Tue,  8 Feb 2022 16:09:08 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web09.13278.1644336547169648669
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 08:09:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OcoI4H+O;
 spf=pass (domain: gmail.com, ip: 209.85.167.45,
 mailfrom: pvanberlo@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id z19so34166642lfq.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 08 Feb 2022 08:09:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=6rJIZdOX830nTH8/Z/5vhResk8vHRICVZSegvlcGtbE=;
        b=OcoI4H+O2eZCkQ/0azXIPGbWN3CwsylEbd82AEskj3NEeIY81ipLSru+zqTGl8Yc8i
         VYqhfn8GBoOklqNJU/iNRlYNpmpmp4oIgzILFqAZ5n5wOlLHKMvm6xvIeIXRbJls61Be
         XHuBEJSjgU9oMcSjcYPL/qpAF8hwVxKu8BZKa2/bGQggh5xUPglBCQ2RvFVRsPPijQis
         9fjxfpilVVyW8r92h57D+43y+ZmGkklpo0y/e0oz8H2LD2k56eI9ALRTxFnOmW4G0Dk/
         bZNJ+QkZWChDpBQ2IV52yXKeCwGO3ouH9L4ebjs2kSrYuBnX8ZWkRJ/cohmLzwa8qDa1
         UMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6rJIZdOX830nTH8/Z/5vhResk8vHRICVZSegvlcGtbE=;
        b=U5BL6RIbAq1kyVROp8tjRLnOhMS+/OMMuN2Oy1atjuxoRAV++HRZ30seCa0kMms8Wy
         rQ3XLRwMhDu17qpgLkX4RBwFNuh15oywVHbxHaooj55A/y69aUcmdo7Tjs8PGokgpx1G
         lvtPUsC8/BmMdWQul5VF4MH2buwPtLZ3AAWDpIbd86G8soP4hVgYUpxXrSuBT0XC0Idf
         eeJas5IOmtMMz9BfmHSba7N0KMlNzNC4STTWB4SMLmWUHPnehYCuqxZfujtKkMiQhlp5
         1UElD1bBz/BvleA+Zm9EXc6eyGDJ3jsNYcf40BWS7wyF0DJIS3GYJZggf+92GGihCvQO
         r1AQ==
X-Gm-Message-State: AOAM533THCKc8DXZ6wXmcNlhoCMpViOo+7VGIsPpaQW5oI9HQ/8SMw8E
	8U6N04QsmqLmJ/1jtVxeWxxklZ627+TYuYjVE+9EEPYLV3w=
X-Google-Smtp-Source: 
 ABdhPJyclzaiuXKuQaaNkdvc5NAb8dAKVbe88QSFRxBox7VT1KchQZVjzq3k/niSxXYli60AzrVomrPeIO2YHIvYSvc=
X-Received: by 2002:a05:6512:2354:: with SMTP id
 p20mr3391335lfu.215.1644336545073;
 Tue, 08 Feb 2022 08:09:05 -0800 (PST)
MIME-Version: 1.0
From: Paul van Berlo <pvanberlo@gmail.com>
Date: Tue, 8 Feb 2022 17:08:54 +0100
Message-ID: 
 <CAJxFkmqx=oQzcjbMxjnJ5+e0PbAogLRejjFuuBsZ0RgnTkHrbA@mail.gmail.com>
Subject: Zeek recipe
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a910b105d783ef21"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Feb 2022 16:09:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56105

--000000000000a910b105d783ef21
Content-Type: text/plain; charset="UTF-8"

Hi,

does anyone happen to have a working Zeek recipe? Whatever I do, I cannot
get it to compile properly :(

Regards,

Paul van Berlo

--000000000000a910b105d783ef21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><br></div><div>does anyone happen to have a wo=
rking Zeek recipe? Whatever I do, I cannot get it to compile properly :(=C2=
=A0</div><div><br></div><div>Regards,</div><div><br></div><div>Paul van Ber=
lo</div></div>

--000000000000a910b105d783ef21--

