Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71C1EE0085D; Wed, 24 May 2017 23:05:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3CC6E00724
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 23:05:05 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id 7so80692740wmo.1
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 23:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0iAjKelpP3/IYGnUToLfQOasagrw7qn4kDnGIw/nDEk=;
	b=raKkHXRll5rcuDf36+Wfu8sPfWpg5ZFq8GvbmMcHJSN687Wyeq1Lr4F/pB4EBWQV55
	7NJYTMeFy19Q5g7FeOcM7pLeF1kWkN9pLTO/tlqhjQlA91ShbAyXMtO9VLNFrqrXH5lj
	tnSckBxsTKOIEGdU4rY2b7NjbyItbG8+81HY6W5tuQlbIgm/s/GR4+bRR5dkm1G7TFKf
	+TNd9dt0QGH2PZHmY1RFuvsw9ynFMJsHnRMfEneIq8KD4LUNb5umMu6uqaN+hR3jSXdL
	6dzHGvFvh8iS64LnGkoqa/C46C+yd4VZ+RvDtj6F+YSrfWP+BTV85sAPn6L3YfM6hxzP
	CPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0iAjKelpP3/IYGnUToLfQOasagrw7qn4kDnGIw/nDEk=;
	b=oSyL50gozTzwE4aQqegBVNo+mI8qeOGLqkPkeeiIfSbvtIe9ofKXICl7oez/kj3MxH
	QxVm+QlaP5GsFVuyXSiymPz6x1a/gb9cAfmyQIN+leV9t7kvdJjQCK5FADNCk7c6UlAp
	ZTYESOj952QSuw2MzWAZdP0R0gHFBgxh/LjOyQMTs/aUZ6c2H8pl+8EJH1HPFy1Zx7GV
	TIaj1UEyUD9C/E2AEBqh9qXiIN/AgI1GTi1MqZW+OpFcNQJK6ADwIKDXmx/eMe5pgiQt
	FAJb2+3JdjkWHzUbJYT7DsFv6PgoAJuDEAZuPimPO2NWb7+fIavJNej8FhfFh+OMHc12
	7yKA==
X-Gm-Message-State: AODbwcDs74INOJ1Aq34QwqGBWojPNAzy6JufEZiqxvCw4sAG03mL5FRy
	NRlagMjJzTcTr9avSmOsp2L2tEc/Xw==
X-Received: by 10.80.154.165 with SMTP id p34mr27086888edb.127.1495692304164; 
	Wed, 24 May 2017 23:05:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Wed, 24 May 2017 23:04:33 -0700 (PDT)
In-Reply-To: <CAHUNapS84mosYCebgN2wNvd=NV-WQN9rT5XRK8vOSBcd0JNf_A@mail.gmail.com>
References: <1c18599c-5bf5-d382-0bba-fc7cebb4b2ce@mlbassoc.com>
	<50e98ce0-ba47-6071-062a-b2ca557c419c@linux.intel.com>
	<CA+chaQeKQqN-6M49Myi91RBxVM5ADT8Qu=oFQkik9sqKZKEbsA@mail.gmail.com>
	<CAHUNapS84mosYCebgN2wNvd=NV-WQN9rT5XRK8vOSBcd0JNf_A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 24 May 2017 23:04:33 -0700
Message-ID: <CAMKF1sq8wqnkVbx6Ab3Cd+itUEFpiorNNGirATUL33eu7VkyuQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: webkitgtk2 progress bar
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
X-List-Received-Date: Thu, 25 May 2017 06:05:08 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 24, 2017 at 9:17 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Wed, May 24, 2017 at 1:16 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>> My "bitbake world" builds have few components like this, webkitgtk (used to
>> have webkit1, webkit2 and webkit2-efl as separate builds), 2 chromiums (x11
>> and wayland), cef (luckily broken and whitelisted for a while), firefox,
>> qtwebengine, qtwebkit. Each taking usually even more time than "simplest"
>> webkitgtk2.
>
> ...speaking of which...
>
> It's probably about time someone sends a patch to remove cef, it has
> been a while since anyone cared for it.

yes please remove it. I was the one who was probably most interested
in it in past.

