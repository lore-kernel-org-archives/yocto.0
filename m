Return-Path: <morne.lamprecht@melangex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6F43E00D51; Wed,  5 Jun 2019 09:17:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7B57E00CF4
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 09:17:26 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id v19so2906932wmj.5
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 09:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=melangex-com.20150623.gappssmtp.com; s=20150623;
	h=sender:date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=E1U1wSwXthF8ImMO8xTxfQjpSY8Gh5tdoscvLdKC2JQ=;
	b=Kpyu6hlhbWh80iU9ezwyhbcfsqXCMLGnol35HposJt1SHHA9pamjaO/+klWmM67s3D
	wURiYsw+ADAr/G35W0bQ0S+BoFjMZpxcmXjgs0SBtriue1UCH3GCk/ASjcnKQxrtJF2W
	BnLqkjCYdSI6tfU4IjD4WplmYJ7CrdmNSsnjV4Cn+yRNQjGvjiV5hB1BG0ABV/+cYeu+
	LaUUQ0LyFv44W/82/WP20jw4IvTlwkQn4xDDhSzjRbbxRO/q82alO8txaQEJb/n0P/HA
	nJArpVY/4BIYNKTb/gvbqPRzBgw6u5pJ9NHF17snMBmfq/h96jq+hUsFZqtgakBnoKG+
	Xuxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=E1U1wSwXthF8ImMO8xTxfQjpSY8Gh5tdoscvLdKC2JQ=;
	b=uD255oEf3Ht9V24QbMzxpIlUoMnODFzMESFIcU/2uOp2nZ0k5xCxGru2t1oXM25bIw
	w4RsdfdxvnQCfKryT6JW47fdVVA5kfkc34Qlx7jONiulm72GnmxMQid+fTqv8saFIgrQ
	SiGlh50DA6Pt8CKlbbMRSUP/p2JT5PFFRR6Nj0XrAAaUgqHG7vEwInYF+y0o3K4lPid0
	3Z2dyf7WE9rmXPz62N5Nsv1XdV4/mHfZtEd47x28EYAw6hMTZJZXcog89d1rmtw1af3V
	eUB8T1Z9xbH8NF+Q8c6wMRjRv5QMh7pMP6c1JCJbTyC1wY9JOkD90iOvEnnkUbJLBbE0
	PNug==
X-Gm-Message-State: APjAAAVmwnA51/uq5x5pT9r04BQLon93tEzZogu8o7GSv5AtA48rHfkT
	KAiItioVRxc8pzwAG/yMEPwHqgfFv5s=
X-Google-Smtp-Source: APXvYqwFczwVj23IXJIu2vN8GiO1XA5JV0bJKJzrtMmfbm/wYqgC6YqTSDFTwgzqUeqLRtjlqHBdcg==
X-Received: by 2002:a1c:44d4:: with SMTP id
	r203mr20752142wma.158.1559751445204; 
	Wed, 05 Jun 2019 09:17:25 -0700 (PDT)
Received: from localhost ([209.203.60.70]) by smtp.gmail.com with ESMTPSA id
	65sm38730218wro.85.2019.06.05.09.17.23 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 05 Jun 2019 09:17:24 -0700 (PDT)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Wed, 5 Jun 2019 18:17:20 +0200
From: =?iso-8859-1?Q?Morn=E9?= Lamprecht <morne@linux.com>
To: Yocto Project <yocto@yoctoproject.org>
Message-ID: <20190605161720.GA9461@archworkstation>
Mail-Followup-To: Yocto Project <yocto@yoctoproject.org>
References: <CAGAf8Lxb88uf_zw0Hzkc74zSD3GG4zQh-UwzQmBhMTLCxqRd5Q@mail.gmail.com>
	<20190603190711.GB24026@archworkstation>
	<CAGAf8LxXdZADK+ScSXLr1Ov-xAY24YsS2nZ-1-SpSKDbS3cBHw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAf8LxXdZADK+ScSXLr1Ov-xAY24YsS2nZ-1-SpSKDbS3cBHw@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: Potential (?) systemd YOCTO problems
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
X-List-Received-Date: Wed, 05 Jun 2019 16:17:27 -0000
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tue, Jun 04, 2019 at 11:34:15PM +0200, Zoran 
Stojsavljevic wrote:
>(I did not find it anywhere in the manuals, 
>maybe I missed the paragraph - please, advice 
>where it is?).

This is where I found it previously:
https://www.yoctoproject.org/docs/2.7/dev-manual/dev-manual.html#using-systemd-exclusively

>Thank you again,

Glad I could help.

		- Morné

