Return-Path: <dv@pseudoterminal.org>
Received: from ptmx.org (ptmx.org [178.63.28.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6649BE0086B
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2014 23:26:43 -0800 (PST)
Received: from [192.168.178.14] (chello080108009040.14.11.vie.surfer.at
	[80.108.9.40]) by ptmx.org (Postfix) with ESMTPSA id 23DCC2267F;
	Fri, 17 Jan 2014 08:26:40 +0100 (CET)
Message-ID: <52D8DBA7.4070700@pseudoterminal.org>
Date: Fri, 17 Jan 2014 08:28:39 +0100
From: Carlos Rafael Giani <dv@pseudoterminal.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>, 
	Khaja Hussain Shaik <khajahussain-s@hcl.com>,
	Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AECFFC@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
	<1938188.T29nr9UITP@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1938188.T29nr9UITP@peggleto-mobl5.ger.corp.intel.com>
X-Mailman-Approved-At: Fri, 17 Jan 2014 08:06:04 -0800
Cc: yocto@yoctoproject.org
Subject: Re: Rgardring GSTreamer1.0 integration on Yocto dylan
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
X-List-Received-Date: Fri, 17 Jan 2014 07:26:46 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2014-01-15 13:19, Paul Eggleton wrote:
> On Wednesday 15 January 2014 12:05:03 Nicolas Dechesne wrote:
>> On Wed, Jan 15, 2014 at 11:49 AM, Khaja Hussain Shaik <
>> khajahussain-s@hcl.com> wrote:
>>> Greetings from Khaja.
>>>
>>> We are trying to make a Dylan build with GStreamer 1.0 support, however we
>>> are facing lots of dependencies. We like to know whether it’s possible to
>>> incorporate GStreamer 1.0 in Dylan? If yes then could it be possible to
>>> direct us to some documents/procedure.
>> such large 'features' are not generally backported to old/stable releases.
>> only bug fixes.
>>
>> gst1.0 was introduced in 'dora' where you can find gst 1.0.x branch, and
>> you have gst 1.2.x support in current master. so you either need to
>> backport these changes into dylan, or switch to a newer release.
> BTW, it's worth pointing out that these recipes can be added in an additional
> layer, so you don't need to patch the core - in fact there is a
> meta-gstreamer10 layer that says it's compatible with dylan already:
>
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-gstreamer10/
>
> I'm not sure how well maintained it is, you'd need to talk to the maintainer
> (who I've added to CC).
>
> Cheers,
> Paul
>

I am the maintainer. Support for GStreamer 1.2 in meta-gstreamer1.0 
dylan has not been on my immediate TODO list so far, since there has 
been no demand for it. I can backport it in a few days.

cheers

