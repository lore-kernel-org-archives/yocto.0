Return-Path: <fntoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7AA9C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 14:15:41 +0000 (UTC)
Received: from ciao.gmane.io (ciao.gmane.io [116.202.254.214])
 by mx.groups.io with SMTP id smtpd.web11.64151.1672755333330505167
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 06:15:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: m.gmane-mx.org, ip: 116.202.254.214, mailfrom: gley-yocto@m.gmane-mx.org)
Received: from list by ciao.gmane.io with local (Exim 4.92)
	(envelope-from <gley-yocto@m.gmane-mx.org>)
	id 1pCi4g-0003wV-RA
	for yocto@lists.yoctoproject.org; Tue, 03 Jan 2023 15:15:30 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@lists.yoctoproject.org
From: Ferry Toth <fntoth@gmail.com>
Subject: Re: bitbake controlling memory use
Date: Tue, 3 Jan 2023 15:15:22 +0100
Message-ID: <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
In-Reply-To: <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 14:15:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58896

Op 13-06-2021 om 02:38 schreef Randy MacLeod:
> On 2021-06-12 12:31 p.m., Ferry Toth wrote:
>> Hi
>>
>> Op 10-06-2021 om 22:35 schreef Ferry Toth:
>>> Hi,
>>>
>>> Op 10-06-2021 om 21:06 schreef Trevor Gamblin:
>>>>
>>>>
>>>> On 2021-06-10 5:22 a.m., Ferry Toth wrote:
>>>>>
>>>>> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>>>>>
>>>>> Hi Trevor,
>>>>>
>>>>> Gmane is really messing things up here, sorry about that. I need to 
>>>>> create a new thread I'm afraid.
>>>>>
>>>>> I'd like to your reworked patch.
>>>>>
>>>>> But note, I reworked it too (but maybe wrongly). I builds like 90% 
>>>>> of my image, but fails building cmake-native. Or more accurately it 
>>>>> fails do_configure while trying to build a small test program.
>>>>
>>>> Hi,
>>>>
>>>> I've pushed the patch onto my fork of the poky repo at 
>>>> https://github.com/threexc/poky
>>>>
>>>> Let me know how your testing turns out - I am still running tests as 
>>>> well, but it would be good to know how others' attempts turn out, 
>>>> and more changes could still end up being necessary.
>>>>
>>> Your patch didn't apply clean on Gatesgarth, but fix seemd trivial. 
>>> With this it builds cmake-native fine, thanks!
>>>
>>> You can find it here: 
>>> https://github.com/htot/meta-intel-edison/commit/8abce2f6f752407c7b2831dabf37cc358ce55bc7
>>>
>>> I will check if any other build errors occurs, and if not will try to 
>>> time image build with and without the patch to compare performance 
>>> and see if it worth the effort.
>>
>> It works fine. To measure time I first built 
>> https://github.com/htot/meta-intel-edison (gatesgarth), so everything 
>> needed is downloaded and cached. Then prior to each run I `rm -rf out` 
>> and `rm -rf bbcache/sstate-cache/*` to force everything to rebuild. 
>> And then `time bitbake -k edison-image`
>>
>> With patch:
>> real    218m12,686s
>> user    0m24,058s
>> sys     0m4,379s
>>
>> Without:
>> real    219m36,944s
>> user    0m24,770s
>> sys     0m4,266s
>>
>> Strange, I expected more.

I have a new machine now. I has 16 HT, but only 16GB RAM. So memory 
starvation has now become a serious issue, especially when building 
nodejs in parallel to nodejs-native.

There are 2 issues:
1 - nodejs tries to link 5 executables in parallel, each requires 4GB 
RAM. This I solved by serializing the linker using `flock` for the 
nodejs recipe.
2 - nodejs starts 16 compile submakes and so does nodejs-native. Each is 
between 0.5GB - 1GB RAM.

For the 2nd problem the "Add shared make jobserver support" patch would 
likely be effective. I've fixed it up for Kirkstone, but it is not working.

I noted: since make v4.2 we need to use `--jobserver-auth=fifo:" + fifoname`

But the real problem seems to be `if "BB_MAKEFIFO" in os.environ:` in 
make-intercept fails, even though `self.cfgData.setVar("BB_MAKEFIFO", 
fifoname)` succeeds in `def setup_make_fifo(self):`.

So, either BB_MAKEFIFO is not yet created at make time, or no longer 
exists.

Confused again.

> Hi Ferry,
> 
> Thanks for the update.
> 
> Trevor and I saw similar (lack of ) results.
> 
> Trevor even trying getting kea, which uses 'make' to be done the
> 'configure' stage, for two builds in differect dirs. Then to run the two
>     'bitbake -c compile kea'
> with and with out the patch with the expectation that with the
> job server patch and the right number of jobs, the two builds would
> take longer. I don't know the exact timing but there was no
> noticeable difference.
> 
> We did strace things to confirm that the make wrapper was being called
> and the actual make was being called by the wrapper. I suspect that
> the next thing we try will be to patch 'make' to log when the jobserver
> kicks in or to play with some make jobserver demo such as:
>     https://github.com/olsner/jobclient
> to get some experience with how things are supposed to work and
> to be able to strace a successful use of the job server feature.
> 
> A little RTFM / UTSL may also be required.
> 
> ../Randy
> 
> 
>>
>> This is on 4 core/8ht i7-3770 CPU @ 3.40GHz with 16Gb RAM and nodejs 
>> restricted to -j 2 (so that alone takes ~ 60min to build).
>>
>>>> - Trevor
>>>>
>>>>>
>>>>> Ferry
>>>>>
>>>>>
>>>>>
>>
>>
>>
>>
> 
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#53849): https://lists.yoctoproject.org/g/yocto/message/53849
> Mute This Topic: https://lists.yoctoproject.org/mt/82015730/4382963
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [gley-yocto@m.gmane-mx.org]
> -=-=-=-=-=-=-=-=-=-=-=-
> 



