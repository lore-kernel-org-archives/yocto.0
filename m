Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 109E1E00CE8; Wed,  8 Jun 2016 07:35:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.244.64.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 19590 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Jun 2016 07:35:00 PDT
Received: from mx18-13.smtp.antispamcloud.com (mx18-13.smtp.antispamcloud.com
	[207.244.64.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B099E00CB8
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 07:35:00 -0700 (PDT)
Received: from 100-208.ftth.onsbrabantnet.nl ([88.159.208.100]
	helo=TOP-EX01.TOPIC.LOCAL)
	by mx18.antispamcloud.com with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.85) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1bAZTK-0006MP-TA; Wed, 08 Jun 2016 11:08:26 +0200
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 8 Jun 2016 11:08:19 +0200
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Paul Eggleton
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
References: <575456D5.4080800@mlbassoc.com>
	<CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
	<CAJTo0La74HkwkgqQZwECS2ruzSe-guCCBJFG0_u=e1FBT8q3CA@mail.gmail.com>
	<2350549.ml0Nc00s8v@peggleto-mobl.ger.corp.intel.com>
	<1465338026.13979.88.camel@linuxfoundation.org>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <5757E081.7000402@topic.nl>
Date: Wed, 8 Jun 2016 11:08:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <1465338026.13979.88.camel@linuxfoundation.org>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Filter-ID: s0sct1PQhAABKnZB5plbIbbvfIHzQjPVmPLZeVYSu3xU9luQrU+8/8qthi+0Jd/W6KAUC/fjyuDn
	NXFr4uarw2qn2YSnBaxCIAHbc091Tc1/63A71K+jqMokMNyfk/adbyaQChaP+zhgmYFtvQOnVip6
	+Pl+XObyWSi+5qFJUocGH/YYgvV0QgfTypJwMtkIUG+JqvchcqeUSTK+P0oOE+QJjXGCAey6Oofy
	fMIm8WhIn4aj8xVVMkQZd9s9Pp2a3AcPwSEsPa5+EzCIl51Pjydf0sGju/j28j5r0hGtJYz6s7w7
	zb5BAKWE25eLs3OnItlcci/xhcZ+tBOfALGaxSG7X+t1TW39Ja77LGPpOwAoFFGehu/LjH1dgy1A
	6CWEjwsD088NtsGHV99RTGFzjhZeQYHXdMcG3xNMo40KqiAhEWyJzIkwSFAW0Pw8uiKeSfwEntQd
	IVrxCCuXDwWnGCrn4AewWnpS5DUxt4NS/udzmGKvPRvC08RKufiNuNl/92PNDpgLsd6Ddd/s7VM5
	3iu8T/iw/hWryOzpe3vaR/z3uFL8N7VKh/CG+lj0Rj1mdfvusPD6mLi4Bm+7u7WSpLH600st9eU/
	nkJwwvEP/eiRVYKU9W9tbmVXJBqdHHDmFmZOz2bO4w7flXGSMbAWocG0WCljDbUTmCn27mgGERKB
	gwNZt6OqE37gGsPxkW2/mWxgBaaPt9++LWwpCu5NcYjZXQ7W+MICam90hBzYtU+FVHWJ3UYsockG
	/KOUjXDUlq+BQEhIP40l441Jczqzm+CbYzyeEen7f/5Yn9cmKSy4ixWSYWIo3iDqxvNn8MbZbxI0
	hoiocxB6HC+2IRaY/g==
X-Report-Abuse-To: spam@mx99.antispamcloud.com
X-Originating-IP: 88.159.208.100
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 88.159.208.100
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=88.159.208.100@topic.nl
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.04)
X-Recommended-Action: accept
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: Re: What's this
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
X-List-Received-Date: Wed, 08 Jun 2016 14:35:07 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 08-06-16 00:20, Richard Purdie wrote:
> On Wed, 2016-06-08 at 09:24 +1200, Paul Eggleton wrote:
>> On Tue, 07 Jun 2016 17:20:12 Burton, Ross wrote:
>>> On 7 June 2016 at 17:02, Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>>> It means the hash calculated my the bitbake master was different
>>>> to the
>>>> hash calculated when the worker started up.  This usually means
>>>> that
>>>> you're
>>>> using something like ${TIME} in the recipe but not marking it
>>>> appropriatly
>>>> so the cache ignores it.  Do you have a base-files bbappend that
>>>> writes a
>>>> timestamp?
>>>
>>> The always wise Joshua reminds me that if your DISTRO_VERSION
>>> contains
>>> ${DATETIME} then this happens.  If you're doing this then you'll
>>> want to
>>> set [vardepsexclude] on DISTRO_VERSION to stop the DATETIME from
>>> getting
>>> into the cache (or not put the current date/time into the distro
>>> version).
>>
>> I think we need to handle this situation better - if it's really
>> worth
>> producing an error about then it's worth producing an error message
>> that
>> people can actually understand, particularly as it's recently added
>> validation.
>
> It was silently running into problems due to this all along but not
> reporting it. Its now reporting it which is better than silently things
> behaving strangely.
>
> Its very hard for bitbake to know why the hashes differ, it only knows
> the values afterwards and hence that they've changed, the information
> about how that hash was constructed is not present in any of bitbake's
> caches. That implies to have better messages we need to write out more
> data.
>
> I did add a patch to make bitbake write out data to allow
> reconstruction of basehash (which is part of taskhash). Sadly the
> parsing performance was diabolical (10 times slower). I think that
> could perhaps be improved if the files don't require an atomic move
> during creation but I haven't had time to look further at it.
>
> So whilst I do agree, what is the price people are willing to pay to
> have those better messages?

I have a build machine that every so often runs into "basehash mismatch"=20
problems (but never when you want it to, such as now), so getting some=20
information on what might cause it would be "priceless". I'd happily let th=
e=20
machine run for 10 days straight if at the end I get a message that I can w=
ork=20
with.

Which implies that any performance hit is acceptable, if there's a switch t=
o=20
enable and disable that extra diagnostic. Oh dear, just what we need, yet=20
another switch...

M.



Kind regards,

Mike Looijmans
System Expert

TOPIC Embedded Products
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail






