Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2F505E0027C
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 12:47:08 -0800 (PST)
Received: by mail-ve0-f178.google.com with SMTP id db10so4290015veb.37
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 12:47:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=pLJBITr47Wb/Og0cokXsRqp3y5SeYbeswsW+oM3x1zo=;
	b=h8+ETK/0xKiMeW5d3btMzUbLvGKT8WBOe4Ij8OnGaVB23MZGRkEU1mplL07Bd2LVv3
	yYZKoWddO5TRQVgr4ro7DZH6xSX6jOGc9PQfnjwcJYrxfj1QUf+aI2Pn3wYgYocv1FMA
	vs/Jq7n98WtQpQYs6TnKJv+D5ovI01MQwAylzOjha8GP25L+Aky7Bg6TC18DCbU3D4cr
	CeNV6xKILxWhNnrDuxOq/aS83xNA8d7FaCQBAnc+F1zaHcg4DMXQzE/1GumjQtnlYSip
	tlZQiiFp8r8ewuzLraDevWuK9UB8yvtWZFuk4wwAaGFnz/7b9RO97N9ds+6rrEdV7nc4
	2VoQ==
X-Received: by 10.52.89.83 with SMTP id bm19mr10748312vdb.123.1361911627066;
	Tue, 26 Feb 2013 12:47:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.77.105 with HTTP; Tue, 26 Feb 2013 12:46:42 -0800 (PST)
In-Reply-To: <512D1B8F.7060705@mlbassoc.com>
References: <512CE547.10600@mlbassoc.com>
	<CAJTo0LZaoP5i=Zf2UnX2435DeDmgSO0Zb4FZ7PnzQ9v1257Hfw@mail.gmail.com>
	<512CF9FC.9060303@mlbassoc.com>
	<CAJTo0LadNQ1DEhKg6sHKt8M5-76xiijndMiDwY4E6Ratbw8OMA@mail.gmail.com>
	<512D1B8F.7060705@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 26 Feb 2013 20:46:42 +0000
Message-ID: <CAJTo0LZdy+2WuOGbLDra-zLm8kTpAzWuUucGfcr89wpj0y502A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQmIgTtomNuYR2mWq66fUNe2nevzl5Jn2JR3Mzo/u02afqJihea/8dVfqqSBtmM0Phox4kIa
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: X video extensions
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
X-List-Received-Date: Tue, 26 Feb 2013 20:47:08 -0000
Content-Type: text/plain; charset=UTF-8

On 26 February 2013 20:31, Gary Thomas <gary@mlbassoc.com> wrote:
> xf86-video-omap on OMAP4430

Honestly, no idea.  If no-one else knows, speak to TI to see if you
need specific runtime options/hardware support/something else.

Ross

