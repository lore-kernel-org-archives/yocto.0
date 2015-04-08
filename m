Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FE16E0098D; Wed,  8 Apr 2015 02:28:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15D80E00959
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 02:28:27 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 5A70060028F6;
	Wed,  8 Apr 2015 12:28:25 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1428485305; bh=9a3daUb/JtQc1o3WPD4OYQlxNIf+LukyWMMAKa6Tagg=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=YWyhDtnU1uGyHUTMb5gDq+y65ORKitTAK6wuF6NqD6AlndpBSuNiaMv4ZiQQCeAcg
	z2jBBLncK5HPEL8RrD5VDAMCoPYKG1LQuo6CqgDG0bgsljnzec93JRC/t2nPNe5pFQ
	bKotsO1BvTexlLj7zYvtLm8nzfcA458G8EpGwtm4=
Message-ID: <5524F4B9.9000108@mail.bg>
Date: Wed, 08 Apr 2015 12:28:25 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	Tobias Olausson <tobias.olausson@pelagicore.com>
References: <CAMg8ce8C3k6L0MOBKtk2i9QGbgmXyza0Kn1sfSZBbfO9kX9EzQ@mail.gmail.com>
	<1521935.2Je9FCNQNj@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1521935.2Je9FCNQNj@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: bblayer priorities ignored for bbappends?
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
X-List-Received-Date: Wed, 08 Apr 2015 09:28:32 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul, Tobias,

On 04/08/2015 11:55 AM, Paul Eggleton wrote:
> Hi Tobias,
>
> On Wednesday 08 April 2015 08:54:20 Tobias Olausson wrote:
>> I just had a weird experience with yocto and I wanted to know if the
>> described behaviour is intentional.
>>
>> I have a layer with priority 7 containing a recipe, foo.bb. In another
>> layer, with priority 8, there is a foo.bbappend. Finally, I just added
>> another layer, with priority 9, where foo.bb is redefined as a binary
>> recipe.
>>
>> When I added the last layer, I expected that to take precedence over the
>> other two. However, the bbappend for foo is still applied (which in this
>> case changed the SRC_URI, making the whole binary recipe moot). Is this
>> really the way it's supposed to be? I would expect that lower layers cannot
>> influence layers with higher priority at all, but that does not seem to be
>> the case.
>
> That is the case, yes - bbappends are always applied. As far as I am aware
> this is the first time this kind of situation has been asked about though so
> it's probably just that we didn't consider it before.
>
> Presumably you could use a bbappend rather than a recipe in the last layer?
> You might need to stub out some of the functions of course, but it should be
> possible.

Thanks for touching the important subject. Indeed, this is an issue as
sometimes the bbappend change is generic and can be reused by the
customer layer(s), and sometimes the change is not appropriate and
needs to be undone.

I would agree that both cases are legitimate and would look for ideas
how it can be resolved in a logical way.

Regards,
Nikolay

PS: I can give examples, but don't want to drift the discussion towards
my topics.

