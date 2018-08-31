Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07E8AE009AA; Fri, 31 Aug 2018 04:47:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AC28E007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:47:51 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id k81-v6so15015246oib.9
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 04:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Eq3AHp/hbszYUjLYdbigerl3XB2zv+VZr5HObzRIAh0=;
	b=nDUu1ZKPEHSUqwAXNhaH1uvZ/dXmycs7PBLvsvs/3Z/Ri1LzfZDWoy2JDKNRCEIj8M
	/yomxC8brSj1xn0dIGYMaUodghtkcL/BloK7+LF24CBiPk30hR/DO0nPybIH0UqPVeqB
	6u/i8jlCtfLCiYsOilHoIy87wdGYtm5ZrE0mJx3LvSFm3LT3iKc9dgulUp0YAA0IeT39
	a+7Z0uRsq15waqRBSGIjPeMdDK5QUlj4Z9F0A/8xae4phKSTUmoFXFBIgkKW3HV6ApWI
	OPscELthUvtVKzZEzLt5SRdGUtz1peZbrKhGzwbgdCtwC6hB2E5V6rmW3xRYmG8ZoHDK
	8N2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Eq3AHp/hbszYUjLYdbigerl3XB2zv+VZr5HObzRIAh0=;
	b=Q9s5B6fq9XhTBHgQlyu3kCfT0JdJ73+EJsxAxntK28o/WcUERlnq0PeUvpDtlxmNDe
	EUdu8RyalyGWGwtcHNSEO0QlCu5qnLcGr7jiOSxtmJjUYh7dT8UL7LYYI9h/w6Zc0eMa
	opirOMZBBZhJ0dLy1G4mA3fphBSUVSPl9KwgrNtWDmJHDcwWaFcz1xx8EgtVwDLBy89L
	7NWOoBEJWEV5yGAfGrr5Xb4/ASAE9Yz85ihZl8yUBVZFoGyU5QWYuIwzm2Ry5toriP8w
	TYy+MNvnQwVnSNV+/UxdrsoG3jGlKQHr/VbaXdsUquXtlWsv97lPB8YtFi6pusNfvkdZ
	K95Q==
X-Gm-Message-State: APzg51CkVNNJNg0bbSkOK9itTxe9K7y/+sfhber+JjLU6dgBC5nuEjHp
	A60mMzq4cGcNp9b8uv6ZmpDyz3oHjwjmyL7QAjpdTQ==
X-Google-Smtp-Source: ANB0VdbQy3hxN/xDFWp3Zpdpem89e9usVwWU4ckrupWdjVEBjeTQTEf3mnLByK347h2EkuiDFBaS2QCIbq4TdYPrI2E=
X-Received: by 2002:aca:506:: with SMTP id 6-v6mr7185584oif.23.1535716071058; 
	Fri, 31 Aug 2018 04:47:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7c0c:0:0:0:0:0 with HTTP; Fri, 31 Aug 2018 04:47:30
	-0700 (PDT)
In-Reply-To: <CAOT_U5bJVDqQRepCSxfgP_yF5P4jym1s6E489NMJgQR_8E=hMw@mail.gmail.com>
References: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
	<CANNYZj_HLD3qC30b32W-hH2n4QaGYsNQ=XP2Xa1EHcMJny1Syw@mail.gmail.com>
	<CAJTo0LafDpq-n3j8zjkk0jKBy-gtp5pd5Xr94D8k8he1mCmSmA@mail.gmail.com>
	<CAOT_U5bX8HE_8tEtqSLhxdGrqkz2oW7icNuc20r7yf9NxRJCrg@mail.gmail.com>
	<CAJTo0LbZErNQz=cmq4ZrKRt3wYcN5cR-+1BTnqDU+kireAoT=w@mail.gmail.com>
	<CAOT_U5bJVDqQRepCSxfgP_yF5P4jym1s6E489NMJgQR_8E=hMw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 Aug 2018 12:47:30 +0100
Message-ID: <CAJTo0LYX9d0kqNcs-gXB8PXwptJ7Bsvr=_j43ikrd0vFG=g_TQ@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: (How) did you script bitbake/set up nightly builds?
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
X-List-Received-Date: Fri, 31 Aug 2018 11:47:52 -0000
Content-Type: text/plain; charset="UTF-8"

On 31 August 2018 at 12:45, Alan Martinovic <alan.martinovic@senic.com> wrote:
> Fair enough, I gave an example with a simple workaround. :)
>
> But you do have a point there, if I'm getting you answer right on a broader
> level.
> Is it something like this?
>
>> Instead of setting the environment only once and running bitbake multiple
>> times
>> just make the environment sourcing and bitbake execution an atomic
>> operation.
>
>
> So if I wanted to automate i.e.:
>
> . oe-init-build-env mybuild
> bitbake -c cleanall failure_prone_package
> bitbake failure_prone_package
> bitbake foo #image build
>
> It's fine to do it like this:
>
> subprocess.call(". oe-init-build-env mybuild ; bitbake -c cleanall
> failure_prone_package", shell=True)
> subprocess.call(". oe-init-build-env mybuild ; bitbake
> failure_prone_package", shell=True)
> subprocess.call(". oe-init-build-env mybuild ; bitbake foo", shell=True)

Yes, that's exactly the idiom.  The alternative would be to invoke
oe-init-build-env once and then run export, and parse that to
construct an environment to pass to future bitbake calls.  That would
work, but would be more complex.

Ross

