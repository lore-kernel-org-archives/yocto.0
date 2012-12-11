Return-Path: <mail@timomueller.eu>
Received: from h1954115.stratoserver.net (h1954115.stratoserver.net
	[85.214.246.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC6AE006C3
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 00:11:46 -0800 (PST)
Received: from [192.168.101.57] (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@timomueller.eu)
	by h1954115.stratoserver.net (mailserver) with ESMTPSA id 8C8E66E943A9; 
	Tue, 11 Dec 2012 09:11:43 +0100 (CET)
Message-ID: <50C6EABE.40303@timomueller.eu>
Date: Tue, 11 Dec 2012 09:11:42 +0100
From: =?ISO-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1355127001.git.timo.mueller@bmw-carit.de>
	<9968067.d7HWQVlsrr@helios>
In-Reply-To: <9968067.d7HWQVlsrr@helios>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2 0/3][eclipse-poky] Add option to allow building from local repo
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
X-List-Received-Date: Tue, 11 Dec 2012 08:11:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

Paul Eggleton wrote, On 10.12.2012 18:36:
> Hi Timo,
>
> On Monday 10 December 2012 09:13:41 mail@timomueller.eu wrote:
>> From: Timo Mueller <timo.mueller@bmw-carit.de>
>>
>> Hi,
>>
>> I've rebased the patch series. It should now apply to the current master.
>>
>> Best regards,
>> 	 Timo
>>
>>  From the original cover letter:
>> <snip>
>> if you build eclipse-poky with the provided build script it will always use
>> the upstream version of the IDE.
>> During development I wanted to use my local repository to make sure that my
>> changes don't break the build system. Therefor I added an option to the
>> build script to allow building from the local eclipse-poky git repository.
>> </snip>
>>
>> Timo Mueller (3):
>>    scripts/build.sh: Added function to use the local repository for
>>      building
>>    scripts/build.sh: Added help option to the cmdline
>>    script/build.sh: Added option to enable building from local
>>      repository.
>>
>>   scripts/build.sh |   30 ++++++++++++++++++++++++++----
>>   1 files changed, 26 insertions(+), 4 deletions(-)
>
> Can you please include Signed-off-by in your commit messages?

Sure! I'll resend the series.

>
> Thanks,
> Paul
>

Best regards,
Timo

