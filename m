Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E31B9E00D07; Thu,  4 Apr 2019 10:31:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51B5AE00CBC
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 10:31:46 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id f6so2724053iop.3
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 10:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=I2AKRDEoc4BVwlLe6QPSOk77QthzUNojjgZ+BzqmJfE=;
	b=swA1dVwufqN7wmbC5zsRBpKi8qUnmYj7kKpubOzXrH9qIlf9S4ZmXQMtAMACNhhO34
	bA36hSXP1ai1sbygVC7VkLLLSS1a9IhOj2anCvAzIKC+0gL8TBxuXG9kaqNVJl0PZgka
	w6/R3CmOd9pfpLdhY0k0Nfj0IariWPztogwajoJwL5lhk4gDuHD/DEcanfe7Zmmt0ZjT
	Sz74Ur62dF3/pNx/SDsYyPkkA3sMrSLTLHoM2wakQczUSHjjefkwyru38Jm+FIKDA0ZO
	L/6swqmDkFYYXj4uK8zAGquHwF1mCgNzRce9ENWkRowgq0dlLVFB2U+2O3XU87Iitm+/
	5OMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=I2AKRDEoc4BVwlLe6QPSOk77QthzUNojjgZ+BzqmJfE=;
	b=kRaGOervXdX2mVxHdZ6aQIKwh/3yjt9RYh95rpATAk6ld5X3A5CgyqHKdd+4eMNPA7
	GYIcpIZF9vg1bz2zOCtAEnqkK+2H9dqfNZsf1Eo0e4d4h38d0hSe/kvIMPJUhj2a1DP0
	3mIt3IHHtwZS/6mcIuPeuyLF2voX9Tl0GH8MSrLtY4NK9iAtAO7j96Re9wmBUqX8oPL8
	RcpwGMc/lRPsV3tJ9WLmmS/LtYPmadCiLdG/26mkep2IzgjfisBv00XXyfjN4dIwNoZF
	3zcU/P0KrQhGYVCMA5o3kqxF0npZ8K3OVcf2m1fkEzTVwDSCkarQiLF2fF1RDxbeuvi9
	42ww==
X-Gm-Message-State: APjAAAU07xgbsJGIs6eEAm+NpU7q63GBUjKFsG53qBR6I9jNr+iFMPr6
	ETeoTC7b0bL1Gqm1DMkRGxM=
X-Google-Smtp-Source: APXvYqyzVCjaRvJ7uRJBhWwFOQARg/6rAYrZlUIYfUK3TRvBYNsuBHZ9293VserDlA9B0jBIqb2z7w==
X-Received: by 2002:a5d:9908:: with SMTP id x8mr451817iol.223.1554399105644;
	Thu, 04 Apr 2019 10:31:45 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	v10sm7876330iom.45.2019.04.04.10.31.44
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 04 Apr 2019 10:31:44 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <d56639d928551bbc586e89e33f5efab656b2f3b3.camel@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@yoctoproject.org, 
	anibal.limon@linaro.org
Date: Thu, 04 Apr 2019 12:31:43 -0500
In-Reply-To: <20190404160015.39306-1-alex.kanavin@gmail.com>
References: <20190404160015.39306-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [ptest-runner] Run ptests via stdbuf configured to line-buffering
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Apr 2019 17:31:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-04-04 at 18:00 +0200, Alexander Kanavin wrote:
> As ptest-runner communicates with child processes via pipe2(),
> the corresponding channels are not attached to a pty. In that
> situation stdio facilities like printf() or fwrite() are fully
> buffered. If a ptest would use them, without bothering
> to fflush() the output, ptest-runner will only receive what
> was written by the child ptest process after a buffer gets filled.
> If the unit tests are proceeding slowly, this may mean that
> ptest-runner will erroneously timeout due to an apparent lack of
> 'signs of life' from the child process.
> 
> stdbuf utility from coreutils adjusts the buffering to a line-
> buffered
> one, and so ptest-runner will get the lines as soon as they are
> written.
> 
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  utils.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/utils.c b/utils.c
> index 504df0b..1376e39 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -243,16 +243,13 @@ filter_ptests(struct ptest_list *head, char
> **ptests, int ptest_num)
>  static inline void
>  run_child(char *run_ptest, int fd_stdout, int fd_stderr)
>  {
> -	char **argv = malloc(sizeof(char) * 2);
> +	char* argv[] = {"stdbuf", "-oL", "-eL", "./run-ptest", NULL};

Should be run_ptest the from the function argument, not the string
literal "./run-ptest" ?


>  	chdir(dirname(strdup(run_ptest)));
>  
> -	argv[0] = run_ptest;
> -	argv[1] = NULL;
> -
>  	dup2(fd_stdout, STDOUT_FILENO);
>  	// XXX: Redirect stderr to stdout to avoid buffer ordering
> problems.
>  	dup2(fd_stdout, STDERR_FILENO);
> -	execv(run_ptest, argv);
> +	execvp(argv[0], argv);
>  
>  	exit(1);
>  }
> -- 
> 2.17.1
> 
-- 
Joshua Watt <JPEWhacker@gmail.com>


