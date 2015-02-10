Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D74BE00815; Tue, 10 Feb 2015 14:44:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38FA1E005A9
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 14:44:37 -0800 (PST)
Received: by pdbft15 with SMTP id ft15so42128213pdb.5
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 14:44:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=UrL9jWax5ofr0YrSJ/nbRs2n5BjPMp8LZSZkMuCNFkk=;
	b=ReY32a45I/wrbqndqHJUkftB+J5H0wPj/cKahCrxN7XIs2CkvSjz8i45BJ5IWs8Nco
	HDw49VZtfUYjLQAcSnZHHhXdKHtte8uJ6GkR2HYZmF/TmWMUFU1n5UepSNwOpbtrWIJJ
	I/Pj2fRJBiHZ9gwjHFNmDBgwS5AJfc/kEkCgBYHOYtAcI4jvEkk9avAupVKGSHQ7TEaG
	CHTwqDokUe3RgSQ3lcYwtOwtW96rjtXQgGWG3nqDdY8sBiWJ2JPEZgucrDEK42RLh32g
	uMXEzrzXP5DbEza9Tp5Z3nhbdBQwrL9R4H5rQUBczICMbB5Xn0RfEeP6gLJSd8S89DKN
	bmxA==
X-Gm-Message-State: ALoCoQnetkuWA3nTqgjoMtniOhjYM8/ptGti2yX/2b0rpX+ngGIW5gqMqHRRmxY5UYphe/XmvPx1
X-Received: by 10.70.96.194 with SMTP id du2mr7175498pdb.163.1423608277492;
	Tue, 10 Feb 2015 14:44:37 -0800 (PST)
Received: from [10.22.11.16] (64.2.3.194.ptr.us.xo.net. [64.2.3.194])
	by mx.google.com with ESMTPSA id bw3sm13241194pbb.9.2015.02.10.14.44.36
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Feb 2015 14:44:36 -0800 (PST)
Message-ID: <54DA89D3.5010007@mvista.com>
Date: Tue, 10 Feb 2015 14:44:35 -0800
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Denys Dmytriyenko <denis@denix.org>, 
	openembedded-members@lists.openembedded.org
References: <54DA69AB.1020204@balister.org> <20150210204719.GE14949@denix.org>
In-Reply-To: <20150210204719.GE14949@denix.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: OpenEmbedded Developer America's Meeting
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
X-List-Received-Date: Tue, 10 Feb 2015 22:44:43 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 02/10/2015 12:47 PM, Denys Dmytriyenko wrote:
> On Tue, Feb 10, 2015 at 03:27:23PM -0500, Philip Balister wrote:
>> We've scheduled a meeting in San Jose at a Monte Vista facility for
>
> Correction, it's MontaVista with an 'a':
> http://en.wikipedia.org/wiki/MontaVista
>
> Do you have an address of said facility?
>

  2315 North 1st Street, San Jose, CA 95131

  In the Farm House out back. Behind the two high-rise buildings.

- Armin

>> March 27-28. This is after ELC (also in San Jose). There is a Yocto
>> Project developer Day the day after ELC.
>>
>> I've made a page on the wiki to start collecting information:
>>
>> http://openembedded.org/wiki/OEDAM_2015
>>
>> To get an idea of what we cover, see the page from the prior year:
>>
>> http://openembedded.org/wiki/OEDAM_2014
>>
>> I apologize for the late notice. There were issues that led to a delay
>> with dates due to the YP Dev day.
>>
>> Philip
>> --
>> _______________________________________________
>> Openembedded-members mailing list
>> Openembedded-members@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-members

