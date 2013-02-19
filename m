Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id A249DE006C9
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 03:17:22 -0800 (PST)
Received: by mail-vc0-f170.google.com with SMTP id p16so4205126vcq.1
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 03:17:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=dIf+A/pH2pxrsWe4px+ppsw9nFWpyvwROhQ7TUriqow=;
	b=HPY3ytpjIykvrSfZWWBzLaTUJgaNwO3iZajdWlc4I7tQ8UOM+fvDiHiUNHgAJvj8Wo
	1fgL6dMZY0C8TuL5PsDa3enyP5WmZu+qQh4aHYhBBECTumXKhNKJ29O40PN1JwOcr199
	B5lfGdvni5DPjP7Aa3BGbFv+qxHTj1fhJxJOpwO6pSfcEJVoTM9c16iV2JX5oWLjC1V8
	5cYYEyMfGNxkNKobj32kQUSKx6gXSrPhHjBYr/TxSQ/ZCNZz4jjY5ANP+AZOG2NgC6D0
	7EMUfEt22REwlKhxUSY6lQHAIhBICCImOK8gJqsRelWCFq58NDy8JZQmG0r6+thyBCRt
	W2eA==
X-Received: by 10.220.107.202 with SMTP id c10mr19874262vcp.59.1361272641409; 
	Tue, 19 Feb 2013 03:17:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.85.36 with HTTP; Tue, 19 Feb 2013 03:17:01 -0800 (PST)
In-Reply-To: <CAJTo0LYNBdaa7mirU+aNqO8e-hv=o91nrCkn4dMqsB7K7RRdmw@mail.gmail.com>
References: <CAF6bG8fg4nUAg5aDRFoH=T2jTZ-cMHwY+VmX2hhUcUoiWke=jA@mail.gmail.com>
	<CAJTo0La+-Sghu1X4-ja-DnzjHY9Sm3ATczD2pwGu6hed8qfsGQ@mail.gmail.com>
	<CAJTo0LYNBdaa7mirU+aNqO8e-hv=o91nrCkn4dMqsB7K7RRdmw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 19 Feb 2013 11:17:01 +0000
Message-ID: <CAJTo0LZ4inZJ2yjOdSVaMCcFL4pE7okoz_Fm4JufK+cRhyDNtw@mail.gmail.com>
To: Marko Lindqvist <cazfi74@gmail.com>
X-Gm-Message-State: ALoCoQn4G/4RCj7fft3DhbPotLKqvykJRAka2vceYtr5YrR/r3UyMH+4Hl13v7GWgQ6iKFKs0bOY
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Fix oprofileui build with automake-1.13
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
X-List-Received-Date: Tue, 19 Feb 2013 11:17:22 -0000
Content-Type: text/plain; charset=UTF-8

On 18 February 2013 17:33, Burton, Ross <ross.burton@intel.com> wrote:
> On 18 February 2013 17:31, Burton, Ross <ross.burton@intel.com> wrote:
>> Merged to oprofileui master, thanks.
>
> I lie - I don't have permission to push there.  I'll find someone who
> either can push or can give me access to push.

Actually pushed now, thanks Marko.

Ross

