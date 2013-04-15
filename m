Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3257E00597
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 07:58:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3FEwo6g004839
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 15 Apr 2013 07:58:50 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 15 Apr 2013 07:58:50 -0700
Message-ID: <516C15A0.3080505@windriver.com>
Date: Mon, 15 Apr 2013 10:58:40 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: "Saridakis, Dean (US SSA)" <dean.saridakis@baesystems.com>
References: <20130411231941.C175BE0146C@yocto-www.yoctoproject.org>
	<51675860.3030204@windriver.com>
	<B98BBFB67D89184E8E876F332BDBC3E0A23616@GLDMS85001.goldlnk.rootlnka.net>
In-Reply-To: <B98BBFB67D89184E8E876F332BDBC3E0A23616@GLDMS85001.goldlnk.rootlnka.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Config fragment not being picked up
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
X-List-Received-Date: Mon, 15 Apr 2013 14:58:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-15 10:53 AM, Saridakis, Dean (US SSA) wrote:
>>>>> Think I've followed the example in the manual correctly. My append file
>> is
>>>> pretty simple:
>>>>>
>>>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
>>>>
>>>> It looks like you forgot the colon at the end of the path.
>>>> Try this:
>>>>     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>>
>>>> -Kevin
>>>
>>> Good eye, but afraid that didn't help (maybe the path was empty
>> before???). I think the files are getting picked up, since fetch will fail if
>> change the file name to force a not found error.
>>>
>>
>> What release are you using ? I tested this just last night before the
>> 1.4 release final RC .. so it definitely still works!
>>
>> How are you determining that it isn't being picked up?
>
> I believe the SDK is based on Yocto 1.2 / Poky 7.0 -- bitbake is 1.15.2.
> kernel.bbclass kernel_do_configure() looks like it only does a make oldconfig on defconfig...?
> Should I expect to see the .cfg files being eppended there?
>
> The .config I end up with doesn't have the definitions from my .cfg fragment files.

Fragments are processed later in the build procedure. Assuming
this is a linux-yocto based bbappend, they'll be added in the 
kernel_configme
task, and will modify the base BSP configuration.

That doesn't mean that all the settings will make it to the final
.config, since normal LKC processing and missing dependencies would
drop invalid/incorrect settings.

Cheers,

Bruce

>
>>
>> Cheers,
>>
>> Bruce


