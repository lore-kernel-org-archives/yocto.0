Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web10.3193.1627401270506333109
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 08:54:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EaGwuvp+;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id y12so7925396edo.6
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 08:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=HFl1+n5LRgIvnZ7cDMiu5tj6kdZh71cORlK+eAhYK5E=;
        b=EaGwuvp+qo7tRTIH2u8UgTjYcoCfp0zW9p8pSFVCFdozp+nLjXQS9YEvjbylGbxP9h
         8HgIwdw/jt60cCU+LPj1Ry9PfC+z+i6zPBeRqAnjl4YeoWa0LCrNjjgIcIwbeDmDQ6ZB
         zWCL/03JnwT5wcIkQlTynVwm9R0/s1AcWwG8w7zW+8Kr5MO2toR5A4DbeIDELuGjuZlT
         ffoyrW2jEvvX/Cn/wa/Hp8zGNWkuYxYB6f6scYafjfza7HZKpS3rShzIuZCi1inW7HMm
         49hTESzWqsAOTvIINsvautLBrwKKhewyvXYQLwPfI/kDdHHnfCdUawcWAm5tun6EaM9g
         tQag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HFl1+n5LRgIvnZ7cDMiu5tj6kdZh71cORlK+eAhYK5E=;
        b=J6xS5NQ7D7RFrjQC/V9YLfmv4W9kxdfqnPmZycdFAkbZPboc2As6J/taN/IkF9yjF4
         5wMp8hb/oLz+cFn8J5oUccA+3yjVWIEsVDSU0QPbYLJ04R5e1b8JOLaDR3TO6RHCG2BV
         1I16QJSAj31oCe2/Oc2TVMDdJRaDS8lcGMyFiRcGu7Q5PtHHMChGwp2eOSjVh4LqEhfg
         HOtq0Duw5LTgC465LXy9N+ZYCPE9pf7D5Z12hXSXnI17UYmQuASB4wk6wXgMjwrp5iX7
         pYXjnWoAFKnrl1iVCKMefsXkSvaAEtL4lInkCF1r2zx3dd8nwygvbqBiWz6S6buG45Rw
         Z+5A==
X-Gm-Message-State: AOAM531I25PYXhhkYmVv7o9RixI8LJgL1f/s6q6KRChHe5CthJ38a16F
	ySGQjEK2kBvBT+BWMouqGe8=
X-Google-Smtp-Source: ABdhPJxrMPUUXib20zZahbDklYRWH0ESqHejdlocQ31YV5RRk8xDmyZgqZBaJ14Y8tPOtNiC91a9rw==
X-Received: by 2002:a05:6402:3507:: with SMTP id b7mr4619618edd.293.1627401269026;
        Tue, 27 Jul 2021 08:54:29 -0700 (PDT)
Return-Path: <adrian.freihofer@gmail.com>
Received: from md2ramxc.lan.ffah.ch ([62.32.0.69])
        by smtp.gmail.com with ESMTPSA id c7sm1441154edn.45.2021.07.27.08.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 08:54:28 -0700 (PDT)
Message-ID: <13afb37bb8b8b609a2ec39509732d8963d9771f9.camel@gmail.com>
Subject: Re: [yocto] [ptest-runner 5/5] main: Do not return number of failed tests when calling ptest-runner
From: "Adrian Freihofer" <adrian.freihofer@gmail.com>
To: ?ukasz Majewski <lukma@denx.de>
Cc: yocto@lists.yoctoproject.org
Date: Tue, 27 Jul 2021 17:54:27 +0200
In-Reply-To: <20210721094627.29833-6-lukma@denx.de>
References: <20210721094627.29833-1-lukma@denx.de>
	 <20210721094627.29833-6-lukma@denx.de>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi Lukasz

Also our test infrastructure expects an exit value not equal to 0 in
case of a failed test.

Regards,
Adrian

On Wed, 2021-07-21 at 11:46 +0200, ?ukasz Majewski wrote:
> Up till now ptest-runner2 returns number of failed tests with its
> exit status code. Such use case is not recommended [1] and may cause
> issues when there are more than 256 tests to be executed.
> 
> To alleviate this issue the number of total tests with number of failed
> ones is printed before exit. To be more specific - failure of a single
> test doesn't indicate that the ptest-runner itself encounter any issue
> during its execution.
> 
> One can test this change with executing:
> ./ptest-runner -d tests/data fail
> 
> Links:
> [1] - https://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
> 
> Signed-off-by: Lukasz Majewski <lukma@denx.de>
> ---
>  main.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/main.c b/main.c
> index efa21b2..9f03857 100644
> --- a/main.c
> +++ b/main.c
> @@ -219,6 +219,9 @@ main(int argc, char *argv[])
>  		ptest_list_remove(run, opts.exclude[i], 1);
>  
> 
>  	rc = run_ptests(run, opts, argv[0], stdout, stderr);
> +	fprintf(stdout, "TOTAL: %d FAIL: %d\n", ptest_list_length(run), rc);
> +	if (rc > 0)
> +		rc = 0;
>  
> 
>  	ptest_list_free_all(&run);
>  
> 
> 
> 


