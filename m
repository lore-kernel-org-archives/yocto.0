Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2558BE00ABE; Mon, 17 Oct 2016 15:41:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 974D1E00A21
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 15:41:06 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id fn2so8749406pad.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 15:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=tUtD5FAU4Sy3cQGK6YO9FHoZQ5XbdsIgoU51UaeknB4=;
	b=vTA2WFh/M20l7PdpWhT9mg0TlGmX5mKUbnh+9nBHgNsdPUr0fWYXltG3Ij+Oq4eHqc
	hnLFo0YOoPfU1w0BgnjEk/tq+DgqJGLxhss8u7kWZIsbZcU8p9L0kvSvShtkYAymatu5
	fEcqKs8t7HVk1chTV0mwPq9Nzq2znidrQk/BSVLFpfiA8oyfmMPJtSlZijg9r19Kj5Re
	JyYnwtONe1jW2iNHnPyKkYzg6Pc1dFH7Jke9IPxekIbPxTxGsG6dy3OGFXE5Rr3v2ryQ
	7M24rA0lRA5jXSDSv78i9gJgNOAkBzPIGpxhh5jIUliHOvS8AA/CCXOAcDW9CjDjOn/X
	lGEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=tUtD5FAU4Sy3cQGK6YO9FHoZQ5XbdsIgoU51UaeknB4=;
	b=IQa4fd2JWIxF/czEGABWS1TNEKm3g2Pltil3mUOtZsVxz+T43kv8gyS7GRH8X2JUXH
	UpCi/67oTPwvG+75HgRaQ+lwuHzR+tzIFr65Vy23kQvvr7ZNnYHeZMvM7ZwDlYNO0+B5
	IHJ0JCXjaYI40qJ3ivZQY5dWUy9QuuKFHhhYUWJZAAWDClZgNVUf3h6WM5qYvjC3Tuf9
	1jraQOL3ZN+Efq8W60fj7o1ZzuT3xKHTorEg4zOfN5VDtfWTPgLmPGzL2vP9F0ZcoPSb
	Xnsll4Ummqor7NtNwzghRi+Yli0HZJYb3v1VinTlf4P/t3j5XUH07MMqxw56R5n75SOX
	wKQw==
X-Gm-Message-State: AA6/9Rl1JrFMNZstQ4PibGO5wx1xL7MbEZ9x7u0X7u47t6dPb/4XAg3r5wBzWvHFzg86QQ==
X-Received: by 10.66.81.42 with SMTP id w10mr34063766pax.141.1476744066014;
	Mon, 17 Oct 2016 15:41:06 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:5ef:e28f:5dce:e040?
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	d79sm8007099pfj.68.2016.10.17.15.41.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Oct 2016 15:41:05 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Sona Sarmadi <sona.sarmadi@enea.com>
References: <3230301C09DEF9499B442BBE162C5E48ABE85854@sestoex09.enea.se>
	<8a3cfb71-037b-08d2-78ba-223e85ab6ba6@windriver.com>
	<2707323.ORKxCqrsOD@peggleto-mobl.ger.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <d0f477af-facf-8a78-7cd8-9db858e8d9bd@gmail.com>
Date: Mon, 17 Oct 2016 15:41:04 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <2707323.ORKxCqrsOD@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: General policies for CVE fixes
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
X-List-Received-Date: Mon, 17 Oct 2016 22:41:07 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 10/17/2016 02:34 PM, Paul Eggleton wrote:
> On Mon, 17 Oct 2016 15:23:55 Bruce Ashfield wrote:
>> On 2016-10-17 03:11 PM, Sona Sarmadi wrote:
>>>  From https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance:
>>>
>>> /General policies: /
>>>
>>>    * /Fixes must go into master first unless they are applicable only to
>>>    
>>>      the stable branch; if back-porting to an older stable branch, the
>>>      fix should first be applied to the newer stable branches before
>>>      being back-ported to the older branch/
>>>
>>> Does anyone know the reason for the policy above i.e. why fixes have to
>>> go to master first?
>> The kernel has the same policy for -stable kernels. Speaking at a very
>> high level, it simply ensures that the development of maintenance/stable
>> branches does not move ahead of master in terms of fixes.
>>
>> That keeps development focused on the tip, where it belongs (versus
>> companies/people working in silos for an extended period of time), since
>> once in master many branches can benefit from it.
> Another way to think about this is what would happen if we didn't fix it in
> master first, then forgot to go back and do that? master (and the stable
> release that eventually follows from it) would potentially be left without the
> fix, so when you upgraded the vulnerability would come back.
That applies for any fix , security or not.

-armin

>
> Cheers,
> Paul
>


