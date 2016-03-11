Return-Path: <leon.anavi@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C8D5E0090E; Fri, 11 Mar 2016 05:43:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94DA2E008C6
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 05:43:27 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id l68so18147699wml.1
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 05:43:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=SC9meWR+fU/fVky70olL4BIF1GqpO3SxxbFBguvBoY4=;
	b=MxPJL9I3aFh6mgYKvU30suVmWu/ADqKAkqj3g2LbfpnnmPyySJegz6EhryxeJipUI7
	wH9ywPrkgUVpiSYdYoSvauHZxxg4cYQE/JQ3g3PhPVJfJ4c3SHAkIeMREaRHDRb3HA6E
	3UQ3bb4bV+0K6XEkQGnMs85sHtL0uUa30HUew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=SC9meWR+fU/fVky70olL4BIF1GqpO3SxxbFBguvBoY4=;
	b=eCVP0D1k66SnVyX3iHM2+iflpwXHC7wZCKC2HzQ2Rec3sc0XjIO+DACUnOKLAR7c8w
	ThmF7e1OrmyRKGiayQa7amhHWD8khy/ZTBP4rLluuC6iD65BE1PIlXSawxHcvHK+LnNl
	5zn1HwvqQAFAAPIAcJzzN0AFbydDMaXD+w8xxF7YCxRujptx9tiIqknZflawJtJ4/a4i
	Iit1s9HNqj2J6uQyXjto+PDUREo1XpnoR2pXuRpK73OJU4puFcfe/5VjfLejMe8lqOcC
	SuzTwX73pPEJG2ZZpiyMYO82R6QIXSBhO1Y1GTIPDg5NGgh/vgWiVNPXDl2DOQnV9R00
	SvhA==
X-Gm-Message-State: AD7BkJIaXfO7oVsxzvtxoBgCgxvQWmplXqwoOSZFm/NtFlh2JZ1NKc1+8Ef+LrY8A9s+eg==
X-Received: by 10.28.95.131 with SMTP id t125mr3070451wmb.80.1457703806932;
	Fri, 11 Mar 2016 05:43:26 -0800 (PST)
Received: from [192.168.4.190] ([5.53.209.92])
	by smtp.googlemail.com with ESMTPSA id
	z127sm2381339wme.5.2016.03.11.05.43.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Mar 2016 05:43:26 -0800 (PST)
To: Joshua G Lock <joshua.g.lock@linux.intel.com>, yocto@yoctoproject.org
References: <56E293BD.1080009@konsulko.com>
	<CAJTo0LZDKBYHmKHH56MJESEcpj1KZuDpDOcEBYNRT0JQNnGwEw@mail.gmail.com>
	<56E298F0.50200@konsulko.com> <1457703639.7305.4.camel@linux.intel.com>
From: Leon Anavi <leon.anavi@konsulko.com>
Message-ID: <56E2CB7D.6070206@konsulko.com>
Date: Fri, 11 Mar 2016 15:43:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1457703639.7305.4.camel@linux.intel.com>
Subject: Re: Nettle from release Fido fails to build
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
X-List-Received-Date: Fri, 11 Mar 2016 13:43:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Joshua,

On 11.03.2016 15:40, Joshua G Lock wrote:
> On Fri, 2016-03-11 at 12:07 +0200, Leon Anavi wrote:
>> On 11.03.2016 11:50, Burton, Ross wrote:
>>> On 11 March 2016 at 09:45, Leon Anavi <leon.anavi@konsulko.com>
>>> wrote:
>>>> Yesterday I noticed that the build of recipe nettle 2.7.1 from
>>>> release Fido fails:
>>>> https://gist.github.com/leon-anavi/dfd3afab567a9dc9fa2f
>>>>
>>> Theres a patch from a few days ago on this list to fix the issue: h
>>> ttp://patchwork.openembedded.org/patch/117355/.
>>>
>>   OK, thank you for the feedback. I will wait for the fix in the Poky
>> repository.
> This fix has now been merged to the fido branch of the poky repository.

Thank you. I am already building my image with the head of branch fido 
from the poky repository.

Best regards, Leon

>
> Regards,
>
> Joshua

-- 
Leon Anavi
Software Engineer
konsulko.com


