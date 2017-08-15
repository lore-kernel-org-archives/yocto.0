Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD4F1E00D33; Mon, 14 Aug 2017 22:32:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BFD7E00CEF
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 22:31:47 -0700 (PDT)
Received: by mail-pg0-f44.google.com with SMTP id u5so48865pgn.0
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 22:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Fr448nTvPu4jMu7+D2E5jwXOS54SyvJAeDE83bB81hA=;
	b=MkI9V+ia/sCvm7InZUT9LnnHnqz0we9FEGviMFVJOjncr7wDoU6e+S27L7CDgz7XCR
	ib6+ypb8p62qEwTChwqWWz4n78zOmESlheeltXkM/Cn45yofz4MapMFZ01+9ZfOhxaAn
	s0URrdgr9NT4+1ww91m3zqWOvDPJ+f+VfaYunzgFZEBkCX+91jtLcm/3P/9J6HPm+l62
	tY56SesWLPL3EhLU3NEyA/QmE912U8afTlP/z3J9hyLqaTDYbhfvrg0UNOllTNJzvu1q
	Zm9Cfo3k3r3MdCY6NqXaSfKIlIW0/4Y69kXTZpsm4lC+xRr4lKg//l4Ysysy5P/cw5+T
	julg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Fr448nTvPu4jMu7+D2E5jwXOS54SyvJAeDE83bB81hA=;
	b=CZG9/ITb5b61+2omiQfl0Wlc8v2oWoJ6F8IW99ERrXG06n7nDTfBQN9ThDgrSFVKNN
	/HeaH8AWX5n/ab5QiqF+L8MiJR8tOGnu7fV88+a/8xxhoNjnLBqgZ0MedJ2UiaJEVWEg
	iVcK9rWD/zdRpTqPExE/lGjyBp0W7hYIAIqS9omAVvXMd9/Uvd8IZFIrDq+2h6tTtKyP
	V1bA6GLzydZDsJMgoEp71THuhCqojZy01OBOURc1rlLJDfr4A4DQp+o0tR+/5P52yfII
	Ja9LFGrl1k1rH1L11z9dEsEMOC29a8x5c0jO1iO/mkUcYngqTdWbnS/BntgD/dJQN7wT
	Tvjg==
X-Gm-Message-State: AHYfb5hfnq1YVLOt6NNKVXT56fYTFGt42Q+BiSKWvvupDNQFc2JW/vWF
	vRmZBk2dEpmru9Ui8bCO0+Z7jSKYeg==
X-Received: by 10.98.33.84 with SMTP id h81mr24214735pfh.302.1502775107612;
	Mon, 14 Aug 2017 22:31:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Mon, 14 Aug 2017 22:31:17 -0700 (PDT)
In-Reply-To: <a94a076e-50a3-bf78-e628-15128682128f@gmail.com>
References: <a94a076e-50a3-bf78-e628-15128682128f@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 14 Aug 2017 22:31:17 -0700
Message-ID: <CAMKF1sq9gu9fHDARcYkwH36ZBp_9OtaF_FfDHLz5CyThdvxq-A@mail.gmail.com>
To: Riko <antonius.riko@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: How can I use PREFERRED_VERSION_ ?
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
X-List-Received-Date: Tue, 15 Aug 2017 05:32:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Aug 14, 2017 at 7:15 PM, Riko <antonius.riko@gmail.com> wrote:
> Dear Yocto Team Members,
>
> How can I use PREFERRED_VERSION_ ?
>
>

read through
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PREFERRED_VERSION

> ERROR: Multiple versions of openssl are due to be built
> (/home/bianchi/poky/openembedded-core/meta/recipes-connectivity/openssl/openssl_1.1.0f.bb
> /home/bianchi/poky/meta/recipes-connectivity/openssl/openssl_1.0.2k.bb).
> Only one version of a given PN should be built in any given build. You
> likely need to set PREFERRED_VERSION_openssl to select the correct version
> or don't depend on multiple versions.
>
>
> Regards,
>
> Riko
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

