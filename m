Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE340E00894; Wed, 23 Mar 2016 09:36:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 778FBE004F1
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 09:36:53 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id fe3so266pab.1
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 09:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=4Qj01y9M7MovGVDgTJg+1GcMoGrImu2rsPNzp3Y/vaE=;
	b=D22HLsPJBCi9tcWH/J5SgQHcKYKMAtsT/IyUS8VOiaX9T0ZBnWlA2iYsKAd49rncGM
	Hzh1rIuOeumMzM5ocNDTI6abIFZ9cD3bblAiPkXEy1xRvlXqUg6ft8yrGmgjWixld49a
	WbH3knHP2rE5B0uHBoXbXv65oR+Dyq6gVL7SwqjeVqiu4JpsfGntOeWd70kDKCPXInCd
	iGgvmbbQIznZzGS0E5SeaTtrLQ/o2GsrgKxjVvMBf9D+adk1oLhfOUFatfdeEWS9NIjj
	y0bQDTDHhIyDGHWhlxKrNxECt8FlO3KUxwzS3qa3l/MPJECb0ooW+1SZeH07zcb3HXfZ
	V7Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=4Qj01y9M7MovGVDgTJg+1GcMoGrImu2rsPNzp3Y/vaE=;
	b=Qa7/eZy+0SR+m+IExzIgsP8Y2DaujZywHL/6tKJ/lQjga9H8Y56R81umJ1xbA9krak
	woHa8aFMc4XTugzMXqxLmrUM+3rGmazbSKAFnu1HZI6x9+lcpgbGzUMVaSMFxDtgXbj6
	M59gHNd7EDKN4cYyP07A6yfCRNArv+9zwIdpBKrz8wcpR4hbIEHl6T+uxpZqjGq6LCGP
	/gOFUSJilhO27PW6c/zbZTeoTNTavh8XQH0LagqIN23i3w946/tAfg4ADmNLNMRW5Cel
	0ovWgHoNvpe1K3twq4SMrENtD8YQK7ifNO570mnfGrtJUstsaWluYTvUz3DR98jYgAgQ
	3LNA==
X-Gm-Message-State: AD7BkJKQ0lbjRhYCmDZjTeKwtjv9Ye6tFZwcIUVvZTWok+hNFtjlqGW36UIuOEUeZP/ARA==
X-Received: by 10.66.222.129 with SMTP id qm1mr5605664pac.22.1458751012992;
	Wed, 23 Mar 2016 09:36:52 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:4df:d6eb:1e52:fc5f?
	([2601:202:4000:1239:4df:d6eb:1e52:fc5f])
	by smtp.googlemail.com with ESMTPSA id
	s87sm5309339pfa.89.2016.03.23.09.36.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 23 Mar 2016 09:36:51 -0700 (PDT)
To: openembedded-devel@lists.openembedded.org,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>
References: <56DEF97F.9070306@balister.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56F2C618.3050205@gmail.com>
Date: Wed, 23 Mar 2016 09:36:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56DEF97F.9070306@balister.org>
Subject: Re: [oe] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Wed, 23 Mar 2016 16:36:57 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 03/08/2016 08:10 AM, Philip Balister wrote:
> On the Friday after ELC in San Diego (Yocto Project Dev Day is
> Thursday), we will have a developer meeting near the conference venue
> (need to double check with Jefro about exact location).

There are only 10 people signed up.

Is that enough people to justify the expense room or even meet?

- armin
> 
> http://openembedded.org/wiki/OEDAM_2016
> 
> At these meetings we try to follow an agenda we develop before hand on
> the wiki page. I've created a rough agenda by posting notes from the
> meeting in Dublin. Everyone, please go over the notes and add remarks
> for completed items.
> 
> You can also bring up issues at the meeting. We only have one day
> scheduled for the meeting, so a little pre-planning helps keep us on time.
> 
> Everyone involved in the project is welcome to attend, no how
> knowledgeable in the overall OpenEmbedded project We like to hear from
> people from many different use cases.
> 
> Thanks,
> 
> Philip
> 

