Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A650AE010A7; Thu, 19 Jul 2018 15:03:33 -0700 (PDT)
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
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38AF5E00CC8
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 15:03:33 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id c126-v6so5199375qkd.7
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 15:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=y7MDZwBgrqWVAgaiZyyP4Qly1D07IILQIDp89RpR+OY=;
	b=NP72GrifS8ndSul73Yw/XYTxaHDVyzso70xXhF4fUsvknWfNf6Mr9PGsrjcoDv5979
	TeuO1pgTPBx9mW9r44sfFprZD5qf8ngttJ2wZAomBSspT4LoqODfKuGuph1t5Gj0uIgn
	/8DuXwGtCYt/yOa8QxVDxf/UrT0V1L/dWLJWa5GM3hUkKV905xtpFYVzqdtycjY717yB
	H2Lgu3UFH5E6pn1MzLTvi3GzExhMDrdh4GQxDHbFBNpDOIYP3bT9+P2bCCPSxattlTd9
	KIIofGhtmCUVphTLYEiwUDpNs0TiFEkqhJ6N7H2pB+RG9rWdi5NvU8HJBFqvHl3YcFy2
	p12g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=y7MDZwBgrqWVAgaiZyyP4Qly1D07IILQIDp89RpR+OY=;
	b=mnmggBLA9Dzp2GprqysVmyFo/UBq43+sDqNKsJi/BjjaC/W6lhXqqwRmWgRHvgBvN8
	H87ie1yJws8UVtSMWWplgyEMGzVbbC5fSMoa8mXekgJlMRLZpB1nJgHw8E9Ut4c9ne+1
	0MT3KbVZkbERR6pBuKygixBERoQYCNMTp+qCt+JDyYU9JwUTdP5Ij/XimbECgjVSjdtk
	fYXLmr+OkOtqzKY5UP3duU8AlOquRSTroXN3OIqFmqOK9mxXNrOnpFzj/hRE+9YQgzeM
	eJRRRzn8YTxupwz8F/oDB3JzozkZ2zQ+AsohrM7BXDrms0PNhJyIHyXu8QN8M/JJ/8lk
	fg6Q==
X-Gm-Message-State: AOUpUlEpOr9xxR7+2i9A6kgsDTcAmByTIGqB0YIjUtcH2oPN6z2MCabo
	9Vfs0bIlbP733b9QZI7A2HMLKtENUu3V+ERyh4w=
X-Google-Smtp-Source: AAOMgpcH6kh3Mgo1XrWgHXqrqBMXUH9ZdNSJ+kBU9U3oY6Fu1Gmx3mGZ3DiGuF25NT4AG0vkS3+shhjjYISt6hkbZ30=
X-Received: by 2002:a37:8f41:: with SMTP id
	r62-v6mr11135460qkd.412.1532037812119; 
	Thu, 19 Jul 2018 15:03:32 -0700 (PDT)
MIME-Version: 1.0
References: <DE98B1892D46BB468E30D103AE07E7BC253E765F@ORSMSX102.amr.corp.intel.com>
In-Reply-To: <DE98B1892D46BB468E30D103AE07E7BC253E765F@ORSMSX102.amr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 Jul 2018 15:03:05 -0700
Message-ID: <CAMKF1sq9rOEkz=XouDGN_rK4mEJOKthWoRm54FBJ1m8s0ELpBQ@mail.gmail.com>
To: amanda.r.brindle@intel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Error Report Tool Purge
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
X-List-Received-Date: Thu, 19 Jul 2018 22:03:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 19, 2018 at 11:30 AM Brindle, Amanda R
<amanda.r.brindle@intel.com> wrote:
>
> Hello,
>
>
>
> The Error Reporting Tool=E2=80=99s database (http://errors.yoctoproject.o=
rg/Errors/Latest/Autobuilder/)  has grown to a huge size, and this is affec=
ting the performance of the application. We are planning to run a purge to =
get rid of reports that we don=E2=80=99t need. We will keep reports from th=
e last thirty days, as well as reports that have been viewed or linked to. =
If you have a specific report that you don=E2=80=99t want purged, please le=
t me know by the end of the month.
>
>

this is a good step, I have almost stopped using this tool due to
slowness, however for pruning, I think it would
be good to see if we can throw away duplicate logs and just keep the
counts, May be its already done.
secondly, release branches dont get built that often as compared to
dev branches so we need to keep that in mind
may be per branch policy would be good to have.

>
> Amanda Brindle, Software Engineer
>
> 503-264-3970
>
> amanda.r.brindle@intel.com
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

