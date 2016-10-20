Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D576E00C20; Thu, 20 Oct 2016 14:36:26 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 302F1E00BB0
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 14:36:23 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id r16so6564237pfg.3
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 14:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=1IDk/tANpLbg+1JYIfOTqd7HQdGs84smMtAMHpMH1Qw=;
	b=vLCzcV8GCFDE9qQvvwRIf71IySRhNEw3hVAcsCiuWLE10EHehEUbG9gs8tgdv/AZYY
	nKoA9pV7Lk4l9h9JB8y5ZHG56vdAnKziOS7SL25Ybny2YWwXJ2kdevGDODa5iWgVy2mK
	Vzf7SlAQtErk9s4lSzyRkdIlxyYazSTcx95lyRoEsLnDtZftNeZQWgK4zuiGQWR4VoyT
	1tDGNxP2JIY6m+IcnGmheJmfSnas79r3yk8MgKgi6CIqdAa2QDfvqk2vlZptp2mGYuY3
	Yf409vipNsnuQQL/K15rcj+uVG0GacdW2CLEnB3MJePN0Eg9WL7Es9HOl8nfgTTLrMGp
	FRmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=1IDk/tANpLbg+1JYIfOTqd7HQdGs84smMtAMHpMH1Qw=;
	b=hnqY60aGN8jjeJ9nnGa0N0CTBE/DrylH8d4+9ttaBgk5RMxNzIOlzK2ZstnUT81/OM
	0jH+nC3y2L6Th6RpehB+ALz4OQR5gjrYQPnwmDewj4B/2HNusnOxUB2HNbh+7j94Eg8c
	Ied9xvgWCp0nu1vXY6MmIOIIzTnOKxWyJORs6Q9b3E4z2rzAtKYHdWUwoBnogvWf9eiO
	qq1vIdcGEw8OIPQhI+Vp4GVQgZ8mX7Sy/uDwqrXRPf/OwykxxAgckKECz9iVCVMQOaIb
	KSYXgBVTLyAt4EsENBnTlBxtNqcCQ5nGMJ1K2ctM1hoNzARaQz1ZcYpfm+D1SkN/cYD/
	7IbA==
X-Gm-Message-State: AA6/9RlXAupz9JkXFA/oXLjYQoLR1iFSgOTEvNr2WT//evEgp9ND6Trepc/5jVFb70cvgw==
X-Received: by 10.98.192.24 with SMTP id x24mr4896879pff.118.1476999383030;
	Thu, 20 Oct 2016 14:36:23 -0700 (PDT)
Received: from Akusters-laptop.local ([2601:202:4001:9ea0:7898:8e8:3ca1:2ab8])
	by smtp.googlemail.com with ESMTPSA id
	a88sm73888565pfe.21.2016.10.20.14.36.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Oct 2016 14:36:22 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@intel.com>, akuster808 <akuster808@gmail.com>
References: <1669674.XxUMWkXXym@peggleto-mobl.ger.corp.intel.com>
	<d6402792-2a48-60f4-bf27-c9758128eabb@gmail.com>
	<2598431.tXBTFlZuD7@peggleto-mobl.ger.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <b2feb884-8d4f-00c3-f6d0-45b9ea2af1f2@gmail.com>
Date: Thu, 20 Oct 2016 14:36:21 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <2598431.tXBTFlZuD7@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: 2.2 release note material
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
X-List-Received-Date: Thu, 20 Oct 2016 21:36:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 10/20/16 12:32 PM, Paul Eggleton wrote:
> Hi Armin,
> 
> On Thu, 20 Oct 2016 08:26:37 akuster808 wrote:
>> Regarding the CVE list. I see some info is based on what was in the
>> commit messages for package updates. I suspect the list would be bigger
>> because of general package updates. Should the release notes make note
>> of that?
>>   Should the community in general provide more info in the commits to
>> help with release notes if that is a source used for that process?
> 
> We really should include that - unfortunately I didn't have time to track down 
> all of those, assembling this list took several days of grinding through the 
> commits as it was. 

This is why I bring it up. We tend to take the easy route when
submitting changes not understanding the work it may cause someone else
down stream. I appreciate your effort in this task.


I did check upstream for some of the upgrades where a CVE
> patch was removed just to verify that fix was indeed included in the upgrade, 
> and for those I collected any others that were listed as having been fixed, 
> but I wasn't really systematic about that.
> 
> Do you know if there's any central resource we can use to find out which 
> versions of upstream software included which CVE fixes, 

There are but I am not sure how complete they are. Its not uncommon for
the NVD to have "reserved" listed for something that has been out for a
while. Let me look into it.

or is it perhaps time
> we started gathering links to the changelogs for each recipe? (Maybe we should 
> do the latter anyway.)

Some packages use a common link for all changes.

I think people just need to be aware we use the commit messages to help
with release notes. I am not proposing using a keyword in the commit
messages that we can suck in with a tool to help create the release
notes. That would just be silly.

- armin
> 
> Cheers,
> Paul
> 

