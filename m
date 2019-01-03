Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70B78E0091D; Thu,  3 Jan 2019 04:23:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED7BBE00901
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 04:23:48 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id x6so26841183ioa.9
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 04:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Bx+Ml+rvL9/vE8m7+eD0JMKArXJnw0xlI3mkgC7Kns0=;
	b=dc6D1NIWSRp+Q16AlySUsLMuhu+LCnlBnh+Y0+u9OF9wT+bxaZUpzJhgdQIukOFChq
	vPYM3Ozv/hEMk1XTBYW6nFn8IaMo+rhrxsir9wwUj/hge0hNsQLMqqXnT5LzQYbSUIxa
	sAHwREYX4L2yEdiQ84q55WmVG6RUI0wCksHrX/fIkIL6NfrkZjTK7QspMH1kUeEbV3WO
	h3hMTu8jwNPB9M49bypdRBeoJqdkdOYKqJjxyXXbXGS5nUoyg14/ATZa3zwExLWblSeC
	3WGSrD0Jf1qFKhOhjSgUBJG8+29gnjQDfH8ZvD3SGW/EJtY74cU0sbdrwtuSeqxDD8yd
	VK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Bx+Ml+rvL9/vE8m7+eD0JMKArXJnw0xlI3mkgC7Kns0=;
	b=rV1kPgBjSlyZT7GqUQlkPc3jce7l980yADc05A/HBei8dMwOq+klqRfu8Dy0Tfi+Og
	FDcGk7i+6hx07CMFPnkl7E/GstSLGMugq2g8Vjhs1IaCIjvx1b9iVVQg7tXwOF1mo0Z+
	EL2pbif07T0icjY5+ej4lv0SIxq2uAX4r4iuE2XazRxyldrly8P3aRNrFc7DFCb96hvZ
	CKsvuca4dce20IcAi84YP8DsX7tf3Y3Aa3ykOJ3vSAD3E2GfBKdjZaNNWuwYVgeqs9Xo
	RUaSTT2V5m/XcR6WeauM77DVNtiLpO3PFsuhJX9qK6F/CpoJqfggtw3sjfHhPDrPwfu8
	mxrw==
X-Gm-Message-State: AJcUukcd0kFoj8z7Lo9rMKgPHOuLtxUJ3AZab6zSfF5Hb5doORu101Uk
	MIYgXsLJ7sQt+YLrYXqiRZ+34RaJ9Kvp5atpHu8l+w==
X-Google-Smtp-Source: ALg8bN5v2mEiRUuRLT+XAw137fIZ9axcNZ27yZd/5i6p91A8Keaw3eFNPg9yQMXcojYNDPdEcepscWDZUSDH2TC3Zl4=
X-Received: by 2002:a5e:820d:: with SMTP id l13mr3470993iom.201.1546518228337; 
	Thu, 03 Jan 2019 04:23:48 -0800 (PST)
MIME-Version: 1.0
References: <CAKRytNwgRJO_7mEpYbNoxX73Pr70RThYd0TEjEmUg_QyVHcRTQ@mail.gmail.com>
In-Reply-To: <CAKRytNwgRJO_7mEpYbNoxX73Pr70RThYd0TEjEmUg_QyVHcRTQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 Jan 2019 12:23:37 +0000
Message-ID: <CAJTo0Lb5tMiHnyxTQvACVawW98z5xzEagJ9F3Y9JV=RUrJMamg@mail.gmail.com>
To: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to skip a receipe from security_flags by its name?
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
X-List-Received-Date: Thu, 03 Jan 2019 12:23:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have a look at security_flags.inc, you'll see that the bulk of it is
exactly this per-recipe exclusion.

Ross

On Fri, 28 Dec 2018 at 17:19, Stefano Cappa
<stefano.cappa.ks89@gmail.com> wrote:
>
> Hi!
>
> Let say that I have a receipe called "third-party-receipe" and I want to =
use security flags for everything except for "third-party-receipe".
>
> How can I do this? Is there a general blacklist to skip all the stuff inc=
luded in security_flags.inc for a specific receipe? I don't want to remove =
only a flag, because I cannot predict what it's interfering, but I want to =
skip all flags to be sure that It will work.
>
> Do you have any suggestions?
>
> Thank you.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

