Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CAD5E0083A; Mon, 26 Jan 2015 14:01:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3612E00836
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 14:01:30 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F0011F811D9; Mon, 26 Jan 2015 15:01:29 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CE9C7F81199;
	Mon, 26 Jan 2015 15:01:28 -0700 (MST)
Message-ID: <54C6B952.7030907@mlbassoc.com>
Date: Mon, 26 Jan 2015 15:01:54 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@outlook.com>
References: <BAY169-W3CF94A018FE9CEDCFDA90AE360@phx.gbl>
	<54C286DC.2030708@mlbassoc.com>
	<BLU436-SMTP223FC22BD6C5BBA26D4AC67AE350@phx.gbl>
	<54C645E4.9090801@mlbassoc.com>
	<BLU436-SMTP61151140DD0DF27EB64FC4AE350@phx.gbl>
	<54C662AD.5070209@mlbassoc.com>
	<BLU436-SMTP2158922E8CB275AC5BEC8FDAE350@phx.gbl>
	<BLU437-SMTP87D0A5E6ADCA0CE3EDCE83AE350@phx.gbl>
In-Reply-To: <BLU437-SMTP87D0A5E6ADCA0CE3EDCE83AE350@phx.gbl>
Cc: yocto@yoctoproject.org
Subject: Re: adding all the pieces of WiFi to core-image-minimal
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
X-List-Received-Date: Mon, 26 Jan 2015 22:01:43 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-01-26 12:31, James Abernathy wrote:
> I get a clean build when I add: CORE_IMAGE_EXTRA_INSTALL += " packagegroup-base-wifi”
>
> However, I have no wireless drivers.  I must have to add something to add the drivers and firmware to the kernel.  Not sure what though.

That's a whole separate issue.  To get the drivers you typically need
to add kernel-modules and linux-firmware (as others have stated).  However,
if you want a truly minimal system, those are poor choices as they bring
in TONS of packages.  You probably want to just include the kernel-module-XXX
and linux-firmware-XXX that are actually needed by your hardware.

>> On Jan 26, 2015, at 11:09 AM, James Abernathy <jfabernathy@outlook.com <mailto:jfabernathy@outlook.com>> wrote:
>>
>>>
>>> On Jan 26, 2015, at 10:52 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>>>
>>> On 2015-01-26 08:26, James Abernathy wrote:
>>>>
>>>>> On Jan 26, 2015, at 8:49 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com>> wrote:
>>>>>
>>>>> On 2015-01-26 06:29, James Abernathy wrote:
>>>>>>
>>>>>>> On Jan 23, 2015, at 12:37 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com>> wrote:
>>>>>>>
>>>>>>> On 2015-01-23 10:24, Jim Abernathy wrote:
>>>>>>>> I'm starting a project mostly for self-education.  I have already done the project using Ubuntu Server 14.04 using a Intel NUC and a Pandaboard as targets.  Now I want to
>>>>>>>> see how
>>>>>>>> easy it is to move it to Yocto.
>>>>>>>>
>>>>>>>> Starting with the NUC, I can boot Dizzy 1.7.1 core-image-minimal and core-image-sato, both built with bitbake and not the prebuilt images. However, core-image-minimal
>>>>>>>> doesn't have
>>>>>>>> WiFi and core-image-sato does, but I don't need all the GUI stuff.  It's a headless application.
>>>>>>>>
>>>>>>>> So what is recommended; eliminating the GUI from sato or adding wifi and wpa-supplicant, etc to minimal??  Also any pointers to how to do the adding/subtracting would be most
>>>>>>>> helpful.
>>>>>>>>
>>>>>>>> Once this is working all I have to do is put apache-tomcat, and openjdk-7-jre, then my application.
>>>>>>>
>>>>>>> We use just iw & wpa-supplicant and set up the configuration
>>>>>>> files manually (e.g. the wpa-supplicant configurations).
>>>>>>
>>>>>> Could you help with a little more details.  What I envision is adding an append statement of some kind to local.conf to load in the wireless related files to core-image-minimal,
>>>>>> same with openjdk-7-jre and tomcat7, but my first efforts have generated some unintelligible error for me.  So that’s why I’m looking for direction on where to start with this.
>>>>>
>>>>> What was the error you got?  I'll bet it was for 'iw' which
>>>>> is a package from meta-oe, so you'll need to add that layer
>>>>>
>>>>> Once you've added the meta-oe layer, you should be able to
>>>>> put this line in your local.conf:
>>>>> CORE_IMAGE_EXTRA_INSTALL += " iw wpa-supplicant”
>>>>>
>>>> Okay, what I don’t get is the fact that without any additional layers, bitbake core-image-sato builds all the WiFi features I need.  bitbake core-image-minimal does not.  So I’m
>>>> thinking that there is some CORE_IMAGE_EXTRA_INSTALL statement that can just add what is needed without extra layers.
>>>>
>>>> I guess it just doesn’t make sense to me right now.
>>>
>>> Try using
>>> CORE_IMAGE_EXTRA_INSTALL += " packagegroup-base-wifi"
>>> which will bring in 'wireless-tools' and 'wpa-supplicant'.
>>>
>>> I prefer 'iw' to 'wireless-tools' as it is newer and [IMO]
>>> simpler to use.
>>>
>> Thanks, I found that I can clean build with just the wpa-supplicant added and I’m hoping that will bring in the wifi drivers.  If it does, all I want to do is edit the
>> /etc/interfaces file with the Static IP of the wlan0, the static IP of the eth0 and the wpa-xxx for the WKPA2_PSK information.
>>
>> Do I really need the tools?  I don’t need CLI commands to change any network parameters later.
>>
>> Jim A
>>
>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------------------------------------
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

