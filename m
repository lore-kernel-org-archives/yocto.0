Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D52EE00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 09:50:07 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id ADE72F81224; Mon, 30 Jan 2012 10:50:05 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 77324F81214;
	Mon, 30 Jan 2012 10:50:03 -0700 (MST)
Message-ID: <4F26D84B.6080709@mlbassoc.com>
Date: Mon, 30 Jan 2012 10:50:03 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
	<CAMKF1sodYnhvVBt852x4BD8XUP193m7d=DrbNrN3-GHJ6E8q_w@mail.gmail.com>
In-Reply-To: <CAMKF1sodYnhvVBt852x4BD8XUP193m7d=DrbNrN3-GHJ6E8q_w@mail.gmail.com>
Subject: Re: Yocto & long-term reproducibility of rebuilds
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jan 2012 17:50:07 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-30 10:37, Khem Raj wrote:
> On Mon, Jan 30, 2012 at 8:34 AM,<paul_nathan@selinc.com>  wrote:
>> Hi,
>>
>> I am investigating Yocto for a build system here. Part of my requirements
>> for a build system is auditable/traceable builds that can be replicated long
>> into the future (our company has a 10 year warranty on our products, and we
>> build products for the multidecade term). Initial examination of Yocto shows
>> that it builds packages from a number of different domains online, which
>> will not meet our requirements - we'll have to store these packages to
>> ensure these packages exist in the correct version long into the future.  I
>> know we can manually edit the SRC_URI setting in .bb files, but the more
>> general problem of package archiving exists.
>>
>> I am interested in any information or recommendations other users of the
>> Yocto system have on how they have solved this sort of design constraint.
>
> Hi Paul
>
> You can cache all the source tars as you mentioned and then
> store them internally and use PREMIRROR facility which should
> check premirrors before it hits src_uri so provided you cache
> all the sources it should always get it from your internal
> mirror

Check the archives - there was an extensive discussion of this last week
   '[yocto] tar ball vs. git development questions'

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

