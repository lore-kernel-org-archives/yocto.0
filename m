Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28322E006D9
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:16:56 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1827518eek.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=BIdidZTRGtVPf7OQ4MqMenNy1IGOAH9skxh4YvRFCTQ=;
	b=k0cHfytmuurdLMK7QJ0hd2Q2DepLTdo6gX5LouBDxFOCHlTHhDf9GKA6SJ1O8xLn+S
	wKT8EIMrhPeZtM8z2jsQ01GgQVF/XrILGvuxowF+hvFrJEm5fn0K0YncRFtAD6ZLMZ12
	zm31cKiGOtnxrbZc2mzWcEt0NLsLh0c+OR/jqXdG1CvHQ3O8m0C2+oxJwAHUtSBdJohB
	pa8lIlthouZvouYeRAP7/FgeMOStt6oj25PED8Nsbt7ZksiwD+tQT07uCt7QDtED2m2M
	ozE1/5/5xO2nQfNn9vuWwgCuYWZwYuV8Is8NtZP70qL9qNCw1QcAlibF+hFwnrdlmRvc
	mNEA==
Received: by 10.14.37.132 with SMTP id y4mr2463916eea.142.1340659015134; Mon,
	25 Jun 2012 14:16:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Mon, 25 Jun 2012 14:16:24 -0700 (PDT)
In-Reply-To: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
References: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 14:16:24 -0700
Message-ID: <CAMKF1sqfGsPs_2rvsnwBcqYCha1dp47WvaDv2-WNPubpjWbnQw@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Selecting gcc version
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
X-List-Received-Date: Mon, 25 Jun 2012 21:16:56 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 25, 2012 at 12:56 PM, Chris Tapp <opensource@keylevel.com> wrote:
> I'm having some issues building a working kernel for the RPi under Denzil, which is using gcc 4.6.3. The 'official' kernel uses gcc 4.5.1.

Do you have issues building it with 4.6.3 ?

