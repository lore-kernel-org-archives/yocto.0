Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AF4EE00CA6; Tue, 29 May 2018 08:01:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 432BFE00CD9
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 08:00:09 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id o78-v6so41625520wmg.0
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 08:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cpdHUuPFUTQTphmLZpg1kygRdvze7yg03ANFsFAfiGo=;
	b=vfX2ZH868kIykcuHkeloLC93RvZBBjQ13kPXbo0cArw85mMVbtJ2564khUui868JD+
	Uglv/wI1YKiBo5ZQkmz6OL1Oqgl82kU5w8PEkhG7DsvpIMFI+Iq16o5bc9VsYRAoLiFk
	5VfGLDxrtjZMZtPIs5cPiL3Ib+8COd+uHHFvLkpj/3a97q8Xun4jFzdAYqfYBOEF21lv
	qg1vg8kL7SULtNCTtzQ2KHefGpa3t9nH5GiDLWxsHNL99l8zRwVy1e2zkkJmgWEZHC4I
	fAtV/M3Mx4rrRnD3u10ZXISOeKBrRGO+N49m+uhQNDaWYhcLfXGxJ18Gt4FaXKew/cWJ
	yS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cpdHUuPFUTQTphmLZpg1kygRdvze7yg03ANFsFAfiGo=;
	b=nb3nGrRi4Pz1mcFpCr3+UQWH4rEYr7es8RqKquMQNvWJhRWZEGbK7FoKV3rw5GegjR
	Ga1ncTzuj9PyyMUOfp7WFyubzCX8TeF1gLoWyNHDQhYqMG0rOE+t223YDc2YZo+KOCeJ
	Bqg5OefvbM0LadGwQ+IdnD7k7P1je27012maEdoZb3C1xQfm+mOGQuEotfa1bkCJyZ72
	qQB+Ly5KBSqm/Uv0cHeppJQL0WipkL5hVDOdvfkN/QpvgF6LEIGzNvT3W1JLnB7QGtVX
	NtEvYBf3KldG3yN1qXjVTTt1XJs78XQ3ZTe3qgiUfSPhazEF3MRgxwQUlXKhMkBTTQQ2
	L5aA==
X-Gm-Message-State: ALKqPwcwFeR8rNfNlQqnIehpetH2SQPdlgwiiH5ANPOWHJTB7iH1ozQD
	h7aMeSvfWmF/kThk+H3M/J6KJwxa7joizsxZBkw=
X-Google-Smtp-Source: ADUXVKKIylNxKD4LhyPCuHloANeGWdeJTbOMzqCHzpE0tYYthMibu7lKkKGNC1/5QkoUjK4fpKQOVDOHJ2uXXMMOxK4=
X-Received: by 2002:a2e:29cf:: with SMTP id
	p76-v6mr7163844ljp.12.1527606008674; 
	Tue, 29 May 2018 08:00:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:cb07:0:0:0:0:0 with HTTP; Tue, 29 May 2018 08:00:07
	-0700 (PDT)
In-Reply-To: <2c9b354f-cb29-d8ae-875f-123a45b045e6@linux.intel.com>
References: <2c9b354f-cb29-d8ae-875f-123a45b045e6@linux.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 29 May 2018 11:00:07 -0400
Message-ID: <CAHUNapSC1zBx8vq1Z2p8pU-TV_r_-uXLHv_P+C4MuSti5Yz3_Q@mail.gmail.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Call to Action] Yocto Project Bug Triage
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
X-List-Received-Date: Tue, 29 May 2018 15:01:22 -0000
Content-Type: multipart/alternative; boundary="00000000000080fe90056d597da5"

--00000000000080fe90056d597da5
Content-Type: text/plain; charset="UTF-8"

Is someone working on putting together a (google?) calendar of the various
project (OE Yocto) meetings?

--00000000000080fe90056d597da5
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Is someone working on putting together a (google?) calendar of the various project (OE Yocto) meetings?<br></div>

--00000000000080fe90056d597da5--
