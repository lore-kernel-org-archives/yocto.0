Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43180E006CD; Tue, 28 Mar 2017 09:28:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.50 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7113E00985
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 09:28:49 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id 21so77442728pgg.1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 09:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hEeGyOHILljH3FoMlerPwzuWjXHAx2fh/77Le1ZysbA=;
	b=q9lTaKkUD0ZvPICc4qRIQxfE7EHFlzgm42KWRwrtAiAGlLWhl8r/JUC/+B3Lh6M6cJ
	h+oYPLJffcokFpFqZHMIx5tav80nDVz4ofMRGN9+APJ7ez/WcQc/wl/NKpnKSynXZoqx
	B1v7D0AvK53gq66pR99oRyEVUFfEbu9Ua3EzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hEeGyOHILljH3FoMlerPwzuWjXHAx2fh/77Le1ZysbA=;
	b=Q2inMNPTv2NHM+u9mcDxGYJjSafrO1N0+vHutwxdMWCCDp0rr3We98MeYGE2dGi+ei
	akK0PNdwgHG61mDdcNzz0ne+5JAEfraMNWaX3t4iaO1aZyGkpADCEBdGTWb79pwiPobb
	LrX1L+MrckJG/91HK8POMnR40GTwduCiwzDuMUT7TOrafZ5XVUP/LIqtj0oo4g5BLk/D
	1QsRiz8/7kgQuByW+0JFZ59B/oF5pB0dKGgN1w/oekMUlGN8xP0PMsN2pZ2+D/NIuHgs
	XlxT1GIuVfK8qCha+/vcaxpKbWNv+X9fyPYbhH46+Dl5QMoOzpwCstXiymGWkhFxyu74
	Kkiw==
X-Gm-Message-State: AFeK/H0yXtNfHEs3hYWOCRbcPbYsg9Ok4TOxIo9Xic/pmlWS/4s/ff9O+bL3Xg00cb2v6kKR5xLncvqmmrOVSw==
X-Received: by 10.99.39.71 with SMTP id n68mr31626000pgn.85.1490718528725;
	Tue, 28 Mar 2017 09:28:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.179.44 with HTTP; Tue, 28 Mar 2017 09:28:28 -0700 (PDT)
In-Reply-To: <CAKEinFwC58g5q9wmvwhTfn5Au3n3Qrx8xRkSy7yUpehyedLiog@mail.gmail.com>
References: <CAKEinFwC58g5q9wmvwhTfn5Au3n3Qrx8xRkSy7yUpehyedLiog@mail.gmail.com>
From: Matthew McClintock <msm-oss@mcclintock.net>
Date: Tue, 28 Mar 2017 11:28:28 -0500
Message-ID: <CAEsOVNcppP=jbnZcYPCm3jor3kB_ukKs=nbumtEY818VPAsH6Q@mail.gmail.com>
To: Cody Piersall <cody@arrc.ou.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Tue, 28 Mar 2017 16:28:59 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 23, 2017 at 5:28 PM, Cody Piersall <cody@arrc.ou.edu> wrote:
> Hello,
>
> I am building zsh from meta-oe layer, and it has a do_install_append()
> function defined like this:
>
> do_install_append () {
>     rm -fr ${D}/usr/share
> }
>
> which gets rid of lots lots of useful functionality, like
> context-aware autocompletion.  Can a bbappend file get rid of that
> function, or do I need to edit the actual recipe? I've attempted
> defining an empty do_install_append() { : } but it didn't work.

We hit this sometime so curious if anyone has better suggestions. But
you can add a do_install_prepend to save the data somewhere, and an
append to put it back. Also, you can use the priority of your layer
could come into play here.

-M

