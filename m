Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ABC1E008C6; Sat,  3 Jan 2015 19:54:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EECAE003AB
	for <yocto@yoctoproject.org>; Sat,  3 Jan 2015 19:53:57 -0800 (PST)
Received: by mail-pa0-f52.google.com with SMTP id eu11so26439548pac.39
	for <yocto@yoctoproject.org>; Sat, 03 Jan 2015 19:53:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=vMDaWGe7RX5dMpYKxSLsj7/ycBfAhr4PRXaIdpJYXiA=;
	b=WnkLk0aCxMvHC7fP8d5Ny/6HpRRXtI9DtnKFXaEZ92/ZE6NOE+Za9m64d6o3WDSJUH
	vMJ9ZgbuIjXCXF3HPjZ0TMnDLei1I0bXpsenvLlYspz3Xe/3GXTZwWoZpgqsQJsudJMH
	AIpYgDmSLKkxWLIQE9+IwilPPjDBFR6/MOG9g6R1aHDKmb5WMK/ErGV1TaRXDmDBQXE8
	SKhUPQ1cFVtDHMcJ6P3Zl4J/W1tzVfhLk/mae97Ie7JLWJeqqL2mU1p0W/RyL3r7eneT
	TFVf6RkxbapTDvuxTsmc3GDmTEeG2SvMMEwcaeDc7vNW8s8MXSIFgBDr7hJHRR+npjZN
	OIAw==
X-Gm-Message-State: ALoCoQlSEOP69V8LAtBNUHLofHHLdBNAGiBljo49qSJJL8NXHZFGqOk5+ILp8L84h6b6dPodsycs
X-Received: by 10.70.35.207 with SMTP id k15mr133895567pdj.166.1420343637161; 
	Sat, 03 Jan 2015 19:53:57 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:a5a9:3777:6846:fa5e?
	([2601:c:a700:272f:a5a9:3777:6846:fa5e])
	by mx.google.com with ESMTPSA id z5sm50466139pbt.89.2015.01.03.19.53.55
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Jan 2015 19:53:56 -0800 (PST)
Message-ID: <54A8B94E.7040506@mvista.com>
Date: Sat, 03 Jan 2015 19:53:50 -0800
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Mahdi Saadat <MahdiS@nimakco.net>, yocto@yoctoproject.org
References: <001101d02740$94faa9b0$beeffd10$@nimakco.net>
In-Reply-To: <001101d02740$94faa9b0$beeffd10$@nimakco.net>
Subject: Re: CLAMAV
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
X-List-Received-Date: Sun, 04 Jan 2015 03:54:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Mahdi,

I had too much free time on my hands today so I created a recipe for 
this. This compiles on x86. I have not tested it. Its more or less a 
starting point.

https://github.com/akuster/meta-security.git

branch: clamav

let me know what issue you find and I will try to correct them.

I intend on adding this to meta-security.

regards,
Armin

On 01/03/2015 02:32 AM, Mahdi Saadat wrote:
> Hi
>
> Does anyone knows about ClamAv recipes, I read some ClamAv on Github but
> all of them have problem to do_install and do_configure steps and also
> old version.
>
> Could you please help me to create or useClamAv.98.5  recipes?
>
> ---------------
>
> Regards
>
>
>

