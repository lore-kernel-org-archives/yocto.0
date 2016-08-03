Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3303E00D34; Wed,  3 Aug 2016 08:17:17 -0700 (PDT)
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
	*      [209.85.192.172 listed in list.dnswl.org]
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B17A8E009AC
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2016 08:17:14 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id y134so78449631pfg.0
	for <yocto@yoctoproject.org>; Wed, 03 Aug 2016 08:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=durMrox2ebaoImQla0yhrtXWneCg+l0fMHjFXF2O/mA=;
	b=DRac6wBgeGIg0Pmh9gEfI5jCBt7Deq/Hg2rTVLD3sS1HgIfCR0G0+oD4KaaioeirOa
	HJQ7nd+jr9J10rneAMr74GEupGlLCXnQmv6NlRumM8+CcX+pEEXhDtWLn8FJxxp/mOOx
	w//MlzuGZXa8ii8f0dz/Ayz9YYqm0gZ9PEfLY/aBViCpSOL6UzGPNkO95dcZNvdBsZEv
	onsXSchKJ7xizn1khEIJFXyukaRJ6gv3M4HIlUPctSVADsBkLck1Uprty6nnQKPSf8Hj
	M6MjdNQJfpfDoGxKuF3xVHdTeYw5Eb2GdY7gA0S6Lchk8ZcQMV0U74Z8JTaBpOQVF6sk
	L2Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=durMrox2ebaoImQla0yhrtXWneCg+l0fMHjFXF2O/mA=;
	b=adWYpOrveIzzgO+j18o/9e/EbPk6zzvg69yKfoo7ZJ+Hcd8X0+6PLoNoM/0eGjIIax
	L+lXAsJ321ZuLRp1O1G0KByb2psNbCECza7MLC/2hrzaiec+ZY+TBjkhw6o/MxPTHKe4
	vtQz+9k6tE4f+ZNG6vZhdEkCqb9a57WTV7zZGWbvfNp4p+0txVV9od5qJzzi0iRuoj/1
	JNPzD9TaTEXHcWeUEO0MK8X0x+KR4gtJiiOHW6Krye14Jxbzh516wy6QKs38Z0uweG2b
	3U8E20A8lnYYFeIgL6bzxciEh5pIqptTk+qrE2xI5tp2bHGFSl56w5fGrzALNwqwYipm
	/hrQ==
X-Gm-Message-State: AEkooutmYHLewy1FFcWUQlHDPOvHseo9BJORnqysCcurADxfA4cmKVUZZ4M1Svzcr5ZspQ==
X-Received: by 10.98.208.1 with SMTP id p1mr117183662pfg.10.1470237433770;
	Wed, 03 Aug 2016 08:17:13 -0700 (PDT)
Received: from Akusters-laptop.local ([2601:202:4001:9ea0:e0fd:73c8:47d3:3d91])
	by smtp.googlemail.com with ESMTPSA id
	n13sm13540727pfj.16.2016.08.03.08.17.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Aug 2016 08:17:12 -0700 (PDT)
To: Philip Balister <philip@balister.org>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1470151429.3175.189.camel@linux.intel.com>
	<5598b740-e529-52a3-91e0-e4b34d2bde01@balister.org>
From: akuster808 <akuster808@gmail.com>
Message-ID: <32f35f59-c150-838f-4a53-d7dab0648252@gmail.com>
Date: Wed, 3 Aug 2016 08:17:16 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <5598b740-e529-52a3-91e0-e4b34d2bde01@balister.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 7, 2016 8:00 AM US Pacific Time
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
X-List-Received-Date: Wed, 03 Aug 2016 15:17:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 8/3/16 6:19 AM, Philip Balister wrote:
>
> On 08/02/2016 11:23 AM, Jolley, Stephen K wrote:
>> Attendees: Saul, David Wolfe, Joshua, Belen, Ross, Mark, Bill
>>  
> ....
>
>>         Poky - LTS/LTM Branch
>>         - Community Driven
>>         - 2 Years
>>         - Companies continue to push on older branches that they are
>> interested in.
>>         - Most patches would be in Oe-Core meta-data
> This kind of jumped out at me. Can anyone explain why the Yocto Project
> needs an LTS version of the reference distribution?

I am glad you asked.

In order for a Yocto Member to be Yocto Compatible, any changes made to
Bitbake or OE-core have to be submitted to the mailing list. If I have
to submit changes then is makes sense that there be a central place like
a repo where these changes can live. We have this for the first year.
MontaVista and I am sure other Member's support products beyond the
first year.  It seems natural to have a process in place to continue the
behavior and work Yocto Members are required to perform to maintain
Yocto compatibility. Or are you saying Yocto Compatible is only good for
1 year?

It not so much having an LTS Poky as much as having LTS branches for OE
core and bitbake. This means Poky would not have to be kept updated nor
would the Yocto Project need to build or QA the LTS branches.

As I see it, an LTS branch would only exist if there is a need and is
supported by the ones who desire the LTS branch.  I am sure there will
be some prerequisites in doing this.  I don't see this as a bad thing
for the community or the Project.

regards,
Armin



>
> Philip
>
>
>> * Team Sharing - 10 min
>>  RP has branch with multi-config in parallel
>>   - fixes various other tools
>>   - Distributed builds in 2.2 is unlikely due to resource constraits
>>
>> Thanks,
>>  
>> Sau!
>>


