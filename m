Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05710E00CFD; Sat, 20 Apr 2019 17:57:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96731E00AB0
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2019 17:57:22 -0700 (PDT)
Received: by mail-it1-f178.google.com with SMTP id s3so13311882itk.1
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2019 17:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=2WSov6N95Yx+YCdVKW8CCZpt3BE5zZjTwc3p3hE0EoU=;
	b=mXLWzhg3DFKfGX32qnViOqZNLfk1OOV3vN09vtbzLQUttZzKtjJxmE+SYj6smOOMmb
	p3QJUL4G6kVATviHYpXZ8/qnU89SZdsgtJ3U3ytPb98SBhJ1J5oztQbWtQ8fpmFAgKhA
	0rrR7rI4NMyhRyROm++6Eiqwz+g5HSVFt7lF7/syjv4Vc3lJVtVLCice/Fj0BBnG+HnR
	NIXJXsCgURiwkzEvflD2Alu6lAi7uesIfB8FFr2ATF0hKTwbxVErm/AgROpWT8I/I5eX
	KSCUGVWkIizu+bFjeh9ZOAG/K2S9EaWKsbQFBlAtZYpEstHH7Gz841kwovLc/F2gZH16
	QTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=2WSov6N95Yx+YCdVKW8CCZpt3BE5zZjTwc3p3hE0EoU=;
	b=erHHB4bUx4DGpuviNYjNoRrMU17M5Ha4C0pn4Q9krbloxxtr4+rvTjXGOBSVQ9YiBT
	P6d+ETQrFxoctSCNIbY+Xv0N04yRhGiPdo3j3ROAa2fAMqESLeBY/xRK0tKErSXSgZvP
	952bup7Fb8EeElxB7QJyk8ciDYmI5pB1AuQT7+37UAUdWQDJ6nOwTudnMSoErtm0zDqR
	nGCA/Y8sNpchKtwjRjqE5LpjNoj1v/1SVckMRAfPqbCYuUP8rkWeNWYuOuBZKrcJBbU9
	Af+Wm8BoO+tspS2JZ9FOtX9WyPvawPT2EBfNi+ONmCV3+rX2PzsNzUjFrtBuP9y29NF2
	6kRQ==
X-Gm-Message-State: APjAAAVdtiuAIxfCp02HQpDM/ltTq7f06KD+TpdCGSpfoyA1L7MsYJcu
	jjutK3ChTMxAukcmfX7caUOVYVofj06HFkLpVZmHDA==
X-Google-Smtp-Source: APXvYqxMN1CaxL65d2pFEoHON+js/auSXHtpEXSHibzF/q6a77neU/UvvqogsvTWXmOiOM1edr4qEdHEeSr2jKaVKJk=
X-Received: by 2002:a02:b053:: with SMTP id q19mr8608436jah.21.1555808241857; 
	Sat, 20 Apr 2019 17:57:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad5:5d10:0:0:0:0:0 with HTTP; Sat, 20 Apr 2019 17:57:21
	-0700 (PDT)
In-Reply-To: <CAA=hcWQk+gOfOU6LsHWFcLtZJ9V9VfTfGRXDMfLD_0gAA1QqBQ@mail.gmail.com>
References: <CAA=hcWQk+gOfOU6LsHWFcLtZJ9V9VfTfGRXDMfLD_0gAA1QqBQ@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Sun, 21 Apr 2019 10:57:21 +1000
Message-ID: <CAA=hcWRfFKhQzqS8yKRyth14dWN=VPQqhXejbew01EnOtUtAJg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: What is the right SRC_URI syntax for git@bitbucket.org?
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
X-List-Received-Date: Sun, 21 Apr 2019 00:57:23 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Could someone kindly clarify what is the syntax to access git source
from bitbucket.org? I tried following different patterns, nothing
works:

SRC_URI = "git://bitbucket.org/<account name>/<repository
name>;protocol=http;branch=${BRANCH}"

SRC_URI = "git://<username>@bitbucket.org/<account name>/<repository
name>.git;protocol=ssh";branch=${BRANCH}"

Thank you.

Kind regards,

- jupiter
On 4/20/19, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> Sorry for a new starter questions, I searched Internet, there are a
> few examples to set up:
>
> SRC_URI = "git://<username>@bitbucket.org/<account name>/<repository
> name>.git;protocol=ssh";branch=${BRANCH}"
>
> Not only that does not work, I have set up the public key to access
> the git bitbucket repository:
>
> $ ssh -v git@bitbucket.org
>
> The Yocto also complained SRCREV, following some blog to add the
> SRCREV = "${AUTOREV}" that not work either.
>
> Thank you.
>
> Kind regards,
>
> - jh
>

