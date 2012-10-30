Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 862FFE0027E
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 15:04:14 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id u2so647790lag.35
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 15:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UtjiPKmMJUTJzkYKfw9NOiP8WZAWO5jSJSCVj1kFEak=;
	b=JPcnrpMkZIxna1hJGxHTgp3AKw0GJCzXG+4Hlbtgwz109+L7sgJOrXpUhx+EsaUtKT
	wBaEB04NuQFxhDXZHctISZ1kFP6uRi1OLaJsDQUm/OhWhOXRnXeRTZ+Yyq/GuEqPsHot
	v1/ygWaRmzPpBCVuOvBVGYFL6zGH+PdQrxji4tOrYN2qRD+CrGkeCp2LflughtVyPV7S
	IdJCZpZc9WDtDZkv4U/iiwqFyz6Einu7ec/U39GQ6FYFqyqeFtnSnDBHaBQsDK72puil
	a9JmvrRhE1+ltUag8iVTY72NLbbeGqP5R987QMHJN1Es9m4lBJiGxFrWzrM/mWGhQNwY
	ICOQ==
MIME-Version: 1.0
Received: by 10.152.148.40 with SMTP id tp8mr31773332lab.30.1351634653067;
	Tue, 30 Oct 2012 15:04:13 -0700 (PDT)
Received: by 10.112.117.194 with HTTP; Tue, 30 Oct 2012 15:04:13 -0700 (PDT)
In-Reply-To: <50901799.2090408@am.sony.com>
References: <50901799.2090408@am.sony.com>
Date: Tue, 30 Oct 2012 18:04:13 -0400
Message-ID: <CAHUNapQeV0-+o0FFzwLO48EnzB0b3uUQ+n1fzsz66Y4tOe_7YQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Tim Bird <tim.bird@am.sony.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: supported IMAGE_FSTYPES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 Oct 2012 22:04:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Oct 30, 2012 at 2:08 PM, Tim Bird <tim.bird@am.sony.com> wrote:
> How does one query this variable?  Other than reading the source, is
> there a way to know that such variables (which list the allowed values
> for other variables) exist?

This question, essentially, was asked back in June, and the answer at
that time was, essentially, "read the source" :-)
https://lists.yoctoproject.org/pipermail/yocto/2012-June/009319.html

