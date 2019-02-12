Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FC79E0090C; Tue, 12 Feb 2019 09:22:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com
	[209.85.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54A34E0048C;
	Tue, 12 Feb 2019 09:22:36 -0800 (PST)
Received: by mail-ot1-f51.google.com with SMTP id m1so5758072otf.5;
	Tue, 12 Feb 2019 09:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=f19dRTFQfERrUlfDW6Zd1WtlgZvDNJ7t3ZEqdCn3Q10=;
	b=OGzlYJulE2B2Pon/EReZAEBw7YTpze6pT5gcIXEDSQe/cksXyYkYH6alnouxMD+74h
	k0VGiwNcCezoUHkkfPr6vEvaJaSm4VphOBzemM4Y9vgz3sk/4rTiu8YjevnsHqu0js+c
	s5H6OSHWovLTs7C1wIaKGUtcqwsS9gPHKAaMzCMmC1Co8iwvhx5KcaMZE2MhJ6INB+n7
	XeG+o5tlqiao+ZEEG5lzTbX/lWPhJaGG/sqTYHxAIf6Q41S5gwUCJ4RtJ0jc/gKhVmmT
	jK2fTf0csZW10RXPwNWqh2d8gPoVW5JI14dZnILhB2JvnqyKVwHDGuNseanGlqqFYIC4
	kqQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=f19dRTFQfERrUlfDW6Zd1WtlgZvDNJ7t3ZEqdCn3Q10=;
	b=NX2bgex2jfLY0NvN36zao5JmHq9LHQwlV4wZz6xlEP8VQOiVCg4t43Ue/WONl5HyOX
	AgLFFJhYJbgBdosa1Q3wMEKJBP64bR8lZEMNxE19IqBes/gFPaAkBagLRM++zuXphDNa
	PW78hpfvPGcK66KVdj/NxnrVuTG6Yczm2JKDcEX9II3EUJ0BZkwR6ugE/oXaAsiw3Su8
	HRThrMWp4E1+q07hiYXy+hoWIwT67ZBcDZwhiINJDGFvHtwHAiNXB/wA5iz5n/h6pKRG
	8yEakvl8KuSmeXeypb8aMghhIjkgRDSHOb4kcOuyy+W7BL/QmuiD9CLkIBQG2WeJLQPF
	iygA==
X-Gm-Message-State: AHQUAuYy7cKhrWkc10RVwjiaGxp330wUGp00/+dRbj5m4T2crFJLomgG
	6szklpqNEmD5Omfa9V0RWnrSsADf9KUBtaglvb0=
X-Google-Smtp-Source: AHgI3Ibn94nWu40P/D6d8oZzY9OPNEvgsBbNlvcE69FS0QskdUvwcDoBroSBUu7a95b0m2XQneYsNlZzzXe1l8ZL9+U=
X-Received: by 2002:a9d:640d:: with SMTP id h13mr4922219otl.153.1549992155679; 
	Tue, 12 Feb 2019 09:22:35 -0800 (PST)
MIME-Version: 1.0
References: <03b301d4c2ed$7497f360$5dc7da20$@gmail.com>
In-Reply-To: <03b301d4c2ed$7497f360$5dc7da20$@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 Feb 2019 18:22:23 +0100
Message-ID: <CANNYZj_PY61tmw=JjP7PPqqSVJff6kd=rsv=daNscx9eSkNWSA@mail.gmail.com>
To: sjolley.yp.pm@gmail.com, Michael Halstead <michael@yoctoproject.org>, 
	"Paul Eggleton (paul.eggleton@linux.intel.com)"
	<paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW07'19
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
X-List-Received-Date: Tue, 12 Feb 2019 17:22:37 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 12 Feb 2019 at 17:10, <sjolley.yp.pm@gmail.com> wrote:
> The recipe reporting system integration with the layer index is available at: https://layers.openembedded.org/rrs/recipes/OE-Core/2.7/M3/ and the historical data has now been imported.

Sadly the new RRS still seems to be suffering from the 'outdated info'
problem. For example glibc, or python3 recipes have been updated to
latest versions, yet RRS still shows that they haven't been.

Alex

