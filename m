Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71095E00C28; Sun, 27 Jan 2019 03:03:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33E97E0090E
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2019 03:03:01 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id y185so8109647wmd.1
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2019 03:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=nR+ZJAePto6+OsmQUgm7UEi1SSKkISfG8NxQ1SC38MA=;
	b=mTqD7woHZe6zAryPlq0bgX9sEIesvFOYWC4zrSkOj+GUDESqnkY3/akEh+1bO9eIjk
	MjCuICbHhEIJg8eQZ4NOg/CbASXwAbw1/h5MoWsg68xojaGIpfLyKh5BgfSvoADzuo1I
	d+K58vB8kWWD4VrKZobOvGmH1x0iX2hXYe3u5Kv3UDdAMegnwZ5gQ1ZuAheTW1yOaH2T
	3LG4tr8PoB7Ft5HFngoLc2YaN5VoSj7SxY5hNsdskHfcM5xGTRf7bi/kBM3xhZcGMCN1
	0+gjmFXsdx3dgOXCUud46MSVDMf57f3lHXtITqEgV+VI4MWLE5wd6b71j0QS+jlh0wXt
	aTPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=nR+ZJAePto6+OsmQUgm7UEi1SSKkISfG8NxQ1SC38MA=;
	b=Gv9lF1ZzW7t8JXVFmxUa2cLb3yOF6Aewl/AkpVmkTc8pmnaWLIh12VycqzH/BBZuCF
	2Nz0xqV1FrfYKDtRDlzO2h0jrDtxx+ATt78dO5SOIL256csS0PZ+Cle99K5S/MNZd5QE
	M8Hr7EloyjYEE/oUV4QVNOOQZi4dArKT4AQIi3wMoU26i27Vd6coaFNYlOiG2nOZAIeO
	UBoWaQ57fvoMVqU70pMUJbcZb18vZ8zveLdzUB0HtcE+wNEM+2xu5FIaNpfejzPi16PW
	JxKE/ikwe6Z7GJ0+3hXkrREfBcQSTWHXMWfGHNo45ghOS9nWHik9021GEzHJHDlM68Bl
	tJjw==
X-Gm-Message-State: AJcUukfFG8uL4545I1Y//nn9YpJC283kChCn3V2rPa3o2w2P3EfC8AZC
	plnERxVlEOHKpy8xQpdcaKTEhzBh
X-Google-Smtp-Source: ALg8bN7FbfUcWkZw42qJUayZcY2q1GzKf0cyeGfN0U4n0BfpUuuvkSggnN9b012HdDdMoNIojW4wDw==
X-Received: by 2002:a1c:de57:: with SMTP id v84mr13038647wmg.55.1548586979638; 
	Sun, 27 Jan 2019 03:02:59 -0800 (PST)
Received: from [192.168.42.50] (ppp-2-86-152-210.home.otenet.gr.
	[2.86.152.210]) by smtp.gmail.com with ESMTPSA id
	e16sm194218533wrn.72.2019.01.27.03.02.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 27 Jan 2019 03:02:58 -0800 (PST)
To: Mauro Ziliani <mauro@faresoftware.it>, yocto@yoctoproject.org
References: <0dd6be51-9a1c-c514-6cfb-2f8bc3464b2a@faresoftware.it>
	<2fb177cf-844c-6127-521b-bbb2eb49fee4@faresoftware.it>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <d70de6ed-e7c4-46d1-b78a-ecdaf285fadd@gmail.com>
Date: Sun, 27 Jan 2019 13:02:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <2fb177cf-844c-6127-521b-bbb2eb49fee4@faresoftware.it>
Subject: Re: Fetch from git every bitbake
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
X-List-Received-Date: Sun, 27 Jan 2019 11:03:02 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Mauro,

Can you please elaborate a bit what exactly you try to do?

SRCREV = "${AUTOREV}"

will get the latest and greatest version from your git repo (the first 
time and afterwards only if something changed in the git repo) and a 
rebuild will only be triggered if something changed on your git repo.

If I understand it correctly you are trying to "fetch" and "build" every 
time, even if nothing changed in the git repo.

Keep in mind, that bitbake will "only" fetch a new version from git if 
there is a new version available.

In case you changed nothing in you git repo bitbake will most likely use 
the cached version and also no new build will be triggered.

In case you want to "compile" every time even if nothing changed you can 
try this:

do_compile[nostamp] = "1"

[nostamp]: When set to "1", tells BitBake to not generate a stamp file 
for a task, which implies the task should always be executed.

In case you can provide an example .bb and explain your problem I guess 
we can better help.

Regards,

Robert

On 26.01.19 17:54, Mauro Ziliani wrote:
> Hi all.
> 
> I try AUTOREV in my recipe, but bitbake doesn't check the git repository 
> for newer versions.
> 
> I need to do
> 
> bitbake app -c cleanall
> 
> bitbake app
> 
> 
> to update sources from repository.
> 
> 
> Where I mistake?
> 
> 
> Regards,
> 
>    MZ
> 
> 
> Il 17/01/19 15:06, Mauro Ziliani ha scritto:
>> Hi all.
>>
>> How can I force the pull from git repository of my app every time I do
>>
>> bitbake app
>>
>>
>> Best regards,
>>
>>   MZ
>>


