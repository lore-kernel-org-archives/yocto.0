Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A61C0E00E85; Thu, 10 May 2018 12:21:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B139E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 12:21:38 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id n1-v6so1376733pgs.2
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 12:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=KXMZDc1aQluANBc9wP4ZonRCJ9XcQWt8gMOfPusGENs=;
	b=BXXb4ouVLNQrvVm3Kh9La4qH1n8aHQtWiMbG0d8SpcanqOlZxLu5wHbMkaB0Fr6DIS
	P28GC4QGr38C7u9dR1iX1xtwIdf4AgPYTIHVV7flYuuTZfPW3cteC8zWp1RbVusmb/Hr
	lIr5e6TdeoshEuC9hIzROgZ1I0jYVX2o4bgeh6/O6iQyqdnLaYifccNIOEJpKtQjLrHU
	XnGceVnpGw/G2nU5KeUwkiOhMrjDV9GHJjYg+2uZi2lFiypQefon8Gk4egftTraqlS56
	AWEjnhP4Nr26V0KlFzSfMpWNUptK7/1Xt3opL3EufUWqrK8U2crQB24SBRSSLeqNEV8c
	M7BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=KXMZDc1aQluANBc9wP4ZonRCJ9XcQWt8gMOfPusGENs=;
	b=Xs1f30P50UydiURV6mcyrKlNUAKi8DyPnoGObOXjt5JBfFcrJpVQ71TbYEp21FBADn
	+NLpSLLtJv3fnDvuFNMZ7m9yGDTDX7L6bkaTAWK2dEevBYauxDWi7ihKZCntgU3ZKhkh
	W6/o/h1BLtUgrufwr7sZ5ClYgmlN68fBtG0XlGyhht/FeNNyjaRFLyvYsGuGUxtDrq8K
	VDzU4HtkQ+jUlknesPgyZ4MOkkCbN52bp36Stjy7XA9jDXRp+9qjeFzwUJqQrglC2wEt
	Oxg7ZFIFX6fe8aSQX06FEc0TIdeT1mJjPNGrSXXSreUeFARN7e5HzxP3h85ENz5o6tvp
	QEaA==
X-Gm-Message-State: ALKqPwfXt9t3Pg9yjRxyBRSqwrF04eSK+ewVQXgQ4/DpL/xAP27vUspp
	DJPdBBBuT4cnWxiVEdRD8Rp3pr7+
X-Google-Smtp-Source: AB8JxZo/llQJR2CrQJAWZPLj4CV0hBhMAqjunThZ4JDSbY6OOnFvIgomxRKPzDwVFvwX2WskTGxTEQ==
X-Received: by 2002:a62:a65c:: with SMTP id
	t89-v6mr2507323pfe.27.1525980098259; 
	Thu, 10 May 2018 12:21:38 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:49fa:9382:bcbc:28ae])
	by smtp.gmail.com with ESMTPSA id
	y197-v6sm3451776pfg.184.2018.05.10.12.21.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 May 2018 12:21:37 -0700 (PDT)
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CAGAf8LxceSXvK-pgfWYDvYLmcvMMK0D5q==PKG9jeRWs6YEbGA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <9ce7ff3b-c139-6e4e-638c-1a5c864e53ef@gmail.com>
Date: Thu, 10 May 2018 12:21:36 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8LxceSXvK-pgfWYDvYLmcvMMK0D5q==PKG9jeRWs6YEbGA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 10 May 2018 19:21:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 5/5/18 12:31 AM, Zoran Stojsavljevic wrote:
>> May fourth be with you !!
> 
> @off topic!
> 
> Who is here (and in wider context) Darth Vader? Bourne Kingpin (BK)? ;-)

Well the message was sent on "may 4th" hence it was meant to be a 
light-hearted encouragement to test the patchset

> 
> Zoran
> _______
> 
> On Sat, May 5, 2018 at 2:26 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> Hi All
>>
>> As you might have noticed that gcc 8.1 was released this week, I am
>> calling out for some testing help on testing branch so we can weed out
>> issues you might see in your setups. so if you have your
>> builders idling over weekend, then you know what they can do this weekend :)
>>
>> Highlighted changes are
>>
>> https://gcc.gnu.org/gcc-8/changes.html
>>
>> and porting doc is
>>
>> https://gcc.gnu.org/gcc-8/porting_to.html
>>
>> The branch is here
>>
>> http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/gcc-8
>>
>> Its uptodate on top of current master oe-core
>>
>> May fourth be with you !!
>>
>> Cheers!
>>
>> -Khem
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

