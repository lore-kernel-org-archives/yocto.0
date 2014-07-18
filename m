Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31698E0056A; Fri, 18 Jul 2014 11:15:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23697E00796
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 11:15:23 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id hu12so7884695vcb.20
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 11:15:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=kYHf/aTCyVDhVQbwJqMR9fPQRqfmiuoiWVHWIAmnZ3Q=;
	b=KVlz88Y+EmZFmXWYBSMGsh6HgxDGa9eLzcOVuNie8PzLcE15//iiv3hspl4JHRitxw
	TI5HtPuoQJwlOvWdgSo3FmyOVZj6yJIKb9GtU6Rpa4wW9Gg4xWGtYLamBBpHQNqoabsB
	C+5z+o+J5yzWxZECcrtKdRtINr8FPPaFAVwU+m5j3cvHJSQbe8AQYiNMhFLPXyZmRq+M
	ah+HK3QTZlYJ+vpaW7ANR1pAQnLqDIzTWOTpc5F2NjA0uPIb8JM2KO7d2oJm7idXEsqO
	qxpkFR7M5+i3ohXgXcY0gmZo83EuCZoAKjcIlgpaz8x4lvtf8NX36gp2qjl4ukLFTz+t
	kxCw==
X-Gm-Message-State: ALoCoQmEyq+FzkGpzhCRqXBLQQvXFTNqzi0HA3IAyrOvIkGbNkHdQ0YFHQp/YaPgvzOiZn++v4Dc
MIME-Version: 1.0
X-Received: by 10.220.7.131 with SMTP id d3mr8297363vcd.49.1405707322872; Fri,
	18 Jul 2014 11:15:22 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Fri, 18 Jul 2014 11:15:22 -0700 (PDT)
In-Reply-To: <53C43E17.9050308@mindchasers.com>
References: <A88E647F34719A4CBBE7FD69260396E2A731E2F9@POLSRV001.polatis.com>
	<53C43E17.9050308@mindchasers.com>
Date: Fri, 18 Jul 2014 11:15:22 -0700
Message-ID: <CAPhnLPCeVZAmrGu+F5jHR6XKQ143_fYFtkwoN5qx9oGt-dDNVQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Status of Dylan 9.0.4
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
X-List-Received-Date: Fri, 18 Jul 2014 18:15:28 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 14, 2014 at 1:31 PM, Bob Cochran <yocto@mindchasers.com> wrote:
> On 07/14/2014 04:00 PM, Adam Hughes wrote:
>>
>> Hi there,
>>
>> I'm sorry this is a very dull question, and I feel I should be able to
>> find the information elsewhere, but my google-fu has failed.  Please tell me
>> if there is a better place to ask.
>>
>> At https://www.yoctoproject.org/downloads it seems that the latest Dylan
>> release is 1.4.3.
>>
>> However, https://wiki.yoctoproject.org/wiki/Releases implies that 1.4.4 is
>> the latest shipping version.
>>
>> I've checked the last few months of this mailing list in the archive, and
>> I've not found an announcement for 1.4.4 (1.4.3 was announced 4th April
>> 2014).
>
>
>
> I'm sure someone else will give a more helpful reply, but there is a
> dylan-9.0.4 tag in the Poky repo created by Elizabeth on 5/14.
>
> I agree that the mail archives don't show an obvious announcement though.
>
>

Let me clear this up a bit. We had begun to spin a 1.4.4. It went
through QA and we were preparing to release it when a whole bunch of
CVEs came out against OpenSSL.

Instead of releasing with known security issues, we decided to hold
off, kill 1.4.4, get 1.6.1 and 1.5.3 out first and then revisit what
will now be 1.4.5.

So, yes. We have a tag for it but never (fortunately) officially released it.

-b


>
>>
>> With my limited understanding,
>> https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status and
>> https://wiki.yoctoproject.org/wiki/WW20_-_2014-05-12_-_Dylan_1.4.4 seem to
>> say that everything is OK.
>>
>> It there any problem with 1.4.4 that is delaying the announcement?
>> (Subtext: is there anything I can do to help?)
>>
>> Thanks,
>>
>> Adam
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

