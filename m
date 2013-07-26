Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E589E013EC
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 09:07:38 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BC73BF81206; Fri, 26 Jul 2013 10:07:37 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C979BF811FF;
	Fri, 26 Jul 2013 10:07:35 -0600 (MDT)
Message-ID: <51F29EC9.7060400@mlbassoc.com>
Date: Fri, 26 Jul 2013 10:07:37 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51EFDD09.3030909@mlbassoc.com>
	<CAJTo0LaHOJtt=RvofQEvuZ+K1fYL3u8acv5dUD3XNZvx+pH9wg@mail.gmail.com>
	<51EFE508.8060004@mlbassoc.com>
	<CAJTo0LbYYzeG0-kti7sj_cH7ji_b8xXJxYxSu6T=Snq++wJeUQ@mail.gmail.com>
	<51F29905.5040606@mlbassoc.com>
	<CAJTo0LaBhvu9+hJtU7fdO58d+sTAjsfW3VxBJ1Ke+oJ-cNtDkA@mail.gmail.com>
In-Reply-To: <CAJTo0LaBhvu9+hJtU7fdO58d+sTAjsfW3VxBJ1Ke+oJ-cNtDkA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Packaging questions
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
X-List-Received-Date: Fri, 26 Jul 2013 16:07:40 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-07-26 09:52, Burton, Ross wrote:
> On 26 July 2013 16:43, Gary Thomas <gary@mlbassoc.com> wrote:
>> One final packaging question.  In my build I have these files:
>>    /etc/amanda/
>>    /etc/amanda/MyConfig/
>>    /etc/amanda/MyConfig/tapelist
>>    /etc/amanda/MyConfig/disklist
>>    /etc/amanda/MyConfig/amanda.conf
>>
>> I want the /etc/amanda/MyConfig to be packaged separately in "amanda-demo"
>> package.
>>    PACKAGES += " ${PN}-demo "
>>    FILES_${PN}-demo += " \
>>                   /etc/amanda/MyConfig/ \
>>                   /amanda \
>>    "
>>    FILES_${PN} += "${libdir} \
>>              ${libexecdir}/amanda/* \
>>              /var/amanda \
>>              /etc/amanda \
>>    "
>>
>> Sadly, the /etc/amanda/MyConfig tree is ending up in the main package.  How
>> can I stratify it the way I want?
>
> Various things interacting explain this.  Package takes files in the
> order that they appear in PACKAGES, so by using += you're *appending*
> amanda-demo to PACKAGES, so it's at the end.  FILES_$PN defaults to a
> long list of "useful" paths, including ${sysconfdir}.
>
> So, two options, both of which will work:
>
> 1) prepend amanda-demo to PACKAGES, so it gets to take files first. =+
> is the prepend operator.
> 2) Change FILES_$PN to explictly set the entire value instead of
> appending the default, then you can leave out $sysconfdir.

Option #1 is perfect and does just what I want, thanks!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

