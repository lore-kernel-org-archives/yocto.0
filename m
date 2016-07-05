Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FB50E00DC9; Tue,  5 Jul 2016 09:03:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1938FE00D8F
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 09:03:26 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i123so19379491pfg.3
	for <yocto@yoctoproject.org>; Tue, 05 Jul 2016 09:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=ZcRLbeLSrWPmBd5U0OXWSgDW1Io3JaIM8rRXoC2mwXQ=;
	b=L58UrSanc6m72WZu9bNRqGvVdy6mQ3k75HjKnGo05PqwgaW/Cs3QC1r4xUpUPjUZEK
	9amIbeV6N/FOk5baXbE+00XUbiQvB7mZOz3ihDoCLcB90j3g91un4Nq7FnRbZEXTZAfa
	4UvFN9V0Vtn8Fx+xPH3JG297TGVKx6mrCSdzr/hq8LwBo4+5sz4zN8Y70bm0TsJKwV3R
	seB9bIOBj1GsnuFbuUu3S0XIi/SDcFMX/+h8D0Mc+KxPYh9o63x8S25bqxfXwFieZ4uW
	fVtDsV2CJhwFiloA3oYkKtPbJshDBG6w5Sv0xabmj2QW98bz8Bm8ADoeKQ5mkywGQKjy
	TfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ZcRLbeLSrWPmBd5U0OXWSgDW1Io3JaIM8rRXoC2mwXQ=;
	b=ESYvv5mkC66VXJwXi9TEppOAxTxUguPJ2/UvnoOfXAWiLbH2jR/r6Se3cH+lk9izF/
	PxTiDlGO4e8Qh5lYjdaJVbxohjaFMGZj2F2yL9uu8y9eIaKRTEtsdO6wtZgL1hwVBaWu
	bACNZLhozVkcwUCIoSUmTrImQS0y4F9rmovfRDESYLW65CG+V8MeUuXfYv+qSMop8ceY
	rPnLBEjeqzWP4FxBu83j/HlvZDNV/qDteJ9ayJMvqyKvQ/GsEv+MXk6zP/vHncbEtNUr
	taK8EBIx9ppkuQo5hMfLV3M0HX7KB5YtF/ltNxj91PegLWqLJAsVx5DacKYDJdoPwWJV
	qvcw==
X-Gm-Message-State: ALyK8tIhVwGLWivmZiPESk97cArvoaWrRAfNPdbRJOgUF2aKLy+XjLnEKJpPl5qT5Y0SQA==
X-Received: by 10.98.10.148 with SMTP id 20mr33329519pfk.154.1467734605069;
	Tue, 05 Jul 2016 09:03:25 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:b1be:6fce:a62e:10a6?
	([2601:202:4001:9ea0:b1be:6fce:a62e:10a6])
	by smtp.googlemail.com with ESMTPSA id
	su7sm6399120pab.44.2016.07.05.09.03.22 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Jul 2016 09:03:23 -0700 (PDT)
To: yocto@yoctoproject.org
References: <1467732325.6912.229.camel@linux.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <577BDA49.4080800@gmail.com>
Date: Tue, 5 Jul 2016 09:03:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <1467732325.6912.229.camel@linux.intel.com>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 5, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Tue, 05 Jul 2016 16:03:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 07/05/2016 08:25 AM, Saul Wold wrote:
> Attendees: Saul, Richard, Randy, Armin, Joshua
> 
> Agenda:
> 
> Yocto Project:
>  - YP 2.2 M1 Build has gone through QA
>    - Issues with Toaster and Eclipse
>    - WIC Issues but not blockers
>    - Planning to release it regardless
>    - Very front loaded
>      - Number of enhancements for M1 uncompleted
>      - Number of bugs is still high
>    - Python3 issues still surfacing
>      - Locale issues
>    - M2 will close on July 18 5:00pm GMT
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status
> https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule
> https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features
> 
>  pseudo
>   - lost Peter Seabach (seebs), maintainer of pseudo

So is this a call for a pseudo maintainer?

>   - Issues still exist in pseudo and master did not resolve
> 
>  - 2.1.1 Stable Release Status - Armin
>   - Looking Green, patches merged
>   - Are we ready to QA and Release?
>   - A few more patches pending

The 2 patches mentioned in the meeting have been backported. 4
additional ones being included. My staging builds under way.

Will send pull request later today or tomorrow.

- armin

>      would be good to have before 11th for QA window
> 
>  - 2.0.2 Stable Release - Robert
>   - Patches pending
>   - pydevshell patch is pending
> 
> 
> Opens
> 
> Tips and Tricks
> - Richard is requesting interesting idea for short blog entries and the
> wiki page above is the tracking location, please take a look and add
> any thoughts/ideas you might have.
> https://wiki.yoctoproject.org/wiki/TipsAndTricks
> 
> Randy asked about dropping UClibc, RP replied in affirmative, proposed
> dropping main recipe, but not the associated patches in recipes for a
> short term and then dropping patches in a future release/recipe updates
> 
> 
> 

