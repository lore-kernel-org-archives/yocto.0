Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8867.1580215063369706763
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 04:37:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EqG1e3Xs;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: mans.zigher@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEF58E01590; Tue, 28 Jan 2020 04:37:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (mans.zigher[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.172 listed in list.dnswl.org]
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87DC2E013EF
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 04:37:41 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id f25so1637517ljg.12
        for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 04:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=x+OLGpBxCFDr/7QeSeY/EKJhcUIr6RgGyo0jBx7+QBY=;
        b=EqG1e3XsrT3as4xU3X+k8GQgD/g/bKRTE9fNVvLxpSwpQ64cWR2LPwwi2VJD9feB0N
         dvbQF814Q4RJS4WSXkTft4rtG6kIJb5pAwI717fp+tU/tKNWTaa9rqsOnE4ycir8hVk0
         YN9QdJfM9gkZ7eyyteKqTInDRe7mpzHsStZoA6r+9EHWEe20jp9+ys+P1tyqmxVMjOH1
         IXRCtuXI6kS5bMiXCwcdp0wM6OphsoS6ZFKy7gLRcx8KIkuQepGcqZvExu94TYb3yIew
         oclyqDixdlNBkHVCL94MiRoGtDMv9N1sEUyZNH24eFFNKg3zkhvw51ak9EoQxHtzPuB+
         MGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=x+OLGpBxCFDr/7QeSeY/EKJhcUIr6RgGyo0jBx7+QBY=;
        b=E1cdniS1/746m6MxOTNSsfzTgIj0KU4gjguWHc72aaI/L4eejE8neONpYEHR3FXZ+b
         cu5Puoxhv4Eqhe3/hJ3pBDsEZTrBh+HOvc1E7UxjOJvU9h7x+OrFULkRFauHWmm6xJcX
         EZLnZ6iPtCas2Q6z/kGJwKUrCAq8hk9jCHmoh6wxgEwq+pwsm3+4SwkS8+Im872UTsSl
         /LPjKb8UTk2hlaAr10NqB6dE8DvMRaaI01oGJZD3KE3LNCGVMhRMyA9vz8aIUFf9sogn
         uDQSliwQLEv9CbOoL3qdY1xDESQ2j3GVxNi62IltsJ1qVJZN4M7U1P27+SxGUMdoy5az
         yenQ==
X-Gm-Message-State: APjAAAWXxopxae+A7gGSb/+N2ji0eRG9zg7siXDEbD1PWoyGwPUlUYLK
	nmMYp8pN1rNHIWChffLGZvi7L4LAm7muekmhaODEcsI8
X-Google-Smtp-Source: APXvYqwacFvLqw54ZjvDjFRboBnf6XP63ApsOiyG/cQMpgEqbSnxStDJtub5nZvbDhM4mSOVPNrw7xop/1SDCtwjd2Y=
X-Received: by 2002:a2e:2e11:: with SMTP id u17mr12889604lju.117.1580215060056;
 Tue, 28 Jan 2020 04:37:40 -0800 (PST)
MIME-Version: 1.0
From: "Mans Zigher" <mans.zigher@gmail.com>
Date: Tue, 28 Jan 2020 13:37:28 +0100
Message-ID: <CAEhQi8nVontmaBzT_Grmhv32A1tbeen7JqDYV0mCD1qzBCZZQA@mail.gmail.com>
Subject: [Question]:How to build kernel as externalsrc that is missing .git?
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

We have a build where the kernel is based on
https://source.codeaurora.org/quic/le/meta-qti-bsp/tree/recipes-kernel/linux-msm/linux-msm_4.14.bb?id=cbe4d954a9a37dd15e78e3dfdc823ffc6776d746

We are facing some issues with this recipe because I don't think it is
correctly setup. For
example they are not using the externalsrc.bbclass even though the
source code is an external src. The location for the source code is
just defined by

SRC_DIR = "${WORKSPACE}/kernel/msm-4.14"

The WORKSPACE is then defined in the bblayers.conf file. The problem
is that there are a lot of source code located in the WORKSPACE
directory so we decided to put all of that in it's own repo and check
it out before building. Because of that we had to remove the
individual .git directories in the repos that included the .git under
${WORKSPACE}/kernel/msm-4.14. Any suggestions? Is it possible to build
the kernel as an externalsrc even when it is missing the .git? And can
we still apply patches when having it as an externalsrc? Or should we
just change it so we are using a local tar file?

Thanks

BR
Mans Zigher
