Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD0CDE00A81; Tue, 18 Apr 2017 11:11:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7187EE00A31
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:11:38 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id c45so127788qtb.0
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=0y5WeNljSnsnOmP8JjLgBfWAlaSMfq93CXgIRIRBBPw=;
	b=xhgTaO+S8t2vpd5gnNaCS869CZGkKnn2Bb7zn3wdbP93jUnMjJcNrqzht5Qg/74sEk
	k4FlfqvpDuozzrT/ENG8iux7YNz1d+jPiW0VNHCBHAgBM+ouXDt43u72xqOGk3hnnK9r
	Hd3o3xiOJwV9mREPfx4acKH9kHSgpjiKekBEjmDOgGAXcPOnV/SITCmbrbuye+YfXZ91
	cGAvwppH3OBgw5R/zjO6qvPyubtufnyDseqK20cg0x4seJeJt3j8bGsJMkdyzd62TmYP
	8IiKh3ivi4RFkkfy4A/H/hE9//tWtuxTdL5sZUvA7Z1yWee9qy2Y6u3R+3TcUMyCIsgA
	o1gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=0y5WeNljSnsnOmP8JjLgBfWAlaSMfq93CXgIRIRBBPw=;
	b=IrYY3GHDKPqOpHTDHPU4f8UhpKhcMyRj/goz5Dtd/BapxWvoEVBi/yd837aGk3pfrO
	2OV9yT/4Emford+v1cqnqQHahtVbE6m3MnSzMHN7juh6jyNKPVa8BO3dKzi5B07XDjPN
	0yH9HF4fRYs6nFrcM42+KzdfonP6vd0bqzXplVJ6evBCHgsa+mw1qJLkHpYGrUhdxuSH
	ytEHpTIUCeXXP/I0C4uNkZalrDd/wz7LVcjCjSo1a7R8DpBe9GASB/HsNG0jLEmR/nwp
	pOAM5VB6w/mQcNEpSNtcfIChTYeXC0WRtG9i3E89Suhxm4FejG8kfn7CruEu+CsiF4v6
	zsLg==
X-Gm-Message-State: AN3rC/7RU0PXkT3STX78NAjYhh9+NONIUL+7ZxsEBvEll+4LPzXlvovk
	sOKPM3xjabOvZAMBlVeDu6wLrobiow==
X-Received: by 10.200.35.73 with SMTP id b9mr14833613qtb.268.1492539098208;
	Tue, 18 Apr 2017 11:11:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.44.116 with HTTP; Tue, 18 Apr 2017 11:11:37 -0700 (PDT)
X-Originating-IP: [82.34.23.153]
In-Reply-To: <CAK18fxH1NRGuUBp+4cbKCjFK1SdXvC69mOq9ftwy3nY5qev2AA@mail.gmail.com>
References: <20170414201313.3138-1-andrei@gherzan.ro>
	<20170414201313.3138-4-andrei@gherzan.ro>
	<CAPyrkgx4stTPY-kEV5rMtJYyXwPkag47bP8N8KaRLCnAf3wWeA@mail.gmail.com>
	<20170418125837.GA2724@carbonA>
	<CAPyrkgycU=hMySnqGi7aPGdJeqmh2zqwfJOisOyk1J2uaRcYNw@mail.gmail.com>
	<CAK18fxH1NRGuUBp+4cbKCjFK1SdXvC69mOq9ftwy3nY5qev2AA@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Tue, 18 Apr 2017 19:11:37 +0100
Message-ID: <CAPyrkgzTVwYwZ5C_RdNDoosHnP6BiHH4wwUh_tttF8UeNq3C+Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/7] linux-raspberrypi_4.9: Bump to 4.9.21
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
X-List-Received-Date: Tue, 18 Apr 2017 18:11:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 18, 2017 at 7:07 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Tue, Apr 18, 2017 at 6:23 PM, Paul Barker <pbarker@toganlabs.com> wrot=
e:
>>
>> I'll have a go at backporting the addition of the extra machines. I
>> can test raspberrypi3-64 on hardware myself but I don't have a
>> raspberrypi0-wifi to test on.
>
> I already pushed a PR for rpi0 wifi for morty and I'm testing it now.

I must have missed that. Still getting used to switching email systems!

It looks like you've got rpi0 wifi and firmware upgrades. I'll send
patches for the kernel upgrade and rpi3 64 once I've given them a
spin. Probably late tonight or early tomorrow.

Cheers,

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

