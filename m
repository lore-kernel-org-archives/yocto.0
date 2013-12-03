Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87DD0E0078C
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 07:47:01 -0800 (PST)
Received: by mail-vc0-f173.google.com with SMTP id ia6so9914229vcb.18
	for <yocto@yoctoproject.org>; Tue, 03 Dec 2013 07:47:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=9vENFNzdMvdFAA7HP7KPIW3lhyhWLwtvjfPOaf1mclI=;
	b=AlETgxFoLz+Wm3+nQAUGzlKo5EC2Jz0dcD8+zCRf9fgljvQ6XqxAAFit0E8LVv1NZ+
	BvkgytQALRy0FaYyMliX7XeAUUQU3zQs+4/uR4JQr5BhhcUUKZNF4e1feQpxpVKo5Utv
	fhHl8GfIUqbunpded8NFnL15vCCOwHle3YltbTky7yUcwty3vDTxXqqIv+U+YeksTsc2
	QnVnL0lp2kn4qHdBqz7ajRQ5xiD7nC0/7ANgq+OfDzi7O/Nd7SgFMwb8037IQeO+ibWu
	nMD764acqHCMfPeFfwuBGaGjWzakUcafWzLLHtM20q7VcTXdlAwXGx31mMV+eaxwR9nn
	rcQw==
X-Gm-Message-State: ALoCoQn+hgtwDN0FPII2jIUgBRARcpxLnKbQGD5u8hOjvHfZ2AXvacHKwz2mS3nwR8rrRXIggYnj
MIME-Version: 1.0
X-Received: by 10.52.191.98 with SMTP id gx2mr65822vdc.71.1386085621004; Tue,
	03 Dec 2013 07:47:01 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Tue, 3 Dec 2013 07:47:00 -0800 (PST)
In-Reply-To: <52938539.2050204@yoctoproject.org>
References: <528FEC3E.8060304@yoctoproject.org> <6760837.T0hJxS54r8@helios>
	<52938539.2050204@yoctoproject.org>
Date: Tue, 3 Dec 2013 15:47:00 +0000
Message-ID: <CAPhnLPC4NieXitiZWAQ6nVq--1xrh2UEnasFcgBZ7SdNe_H7rg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Michael Halstead <michael@yoctoproject.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC Autobuilder Naming
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
X-List-Received-Date: Tue, 03 Dec 2013 15:47:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

I approve of this. It would certainly help us with figuring out why
builds error out if it's distro specific.

On Mon, Nov 25, 2013 at 5:13 PM, Michael Halstead
<michael@yoctoproject.org> wrote:
> On 11/25/2013 07:01 AM, Paul Eggleton wrote:
>> Hi Michael,
>>
>> On Friday 22 November 2013 15:43:58 Michael Halstead wrote:
>>> Currently all builders are simply named ab00-ab13 based on when we
>>> acquired them. The name doesn't change except for ab01 which has been
>>> reused on new hardware. As we increase the number of builders and make
>>> the build process more flexible this becomes inconvenient. I'd like to
>>> switch to embedding useful information in the name.
>>>
>>> Going forward as I refresh builders I'd like to name them with their
>>> distro and location.
>>>
>>> For example at OSL:
>>>
>>> fedora19.osl.yoctoproject.org
>>> fedora20.osl.yoctoproject.org
>>> opensuse131.osl.yoctoproject.org
>>> ubuntu1310.osl.yoctoproject.org
>>> etc.
>>>
>>> And if we added a build clusters in the EasyStreet datacenter in Portland:
>>>
>>> centos64.pdx.yoctoproject.org
>>> debian7.pdx.yoctoproject.org
>>> etc.
>>>
>>> This allows for additional build clusters to be added and makes the
>>> distro clear to anyone viewing the logs. The current available build
>>> slaves can be found on the relevant cluster's buildbot interface
>>> (http://autobuilder.yoctoproject.org/main/buildslaves) so as names
>>> change there is an easy place to look them up.
>>>
>>> Comments?
>> I guess this works fine until you want to have two builders with the same
>> distro. Maybe we plan not to do that anymore...?
>
> I've been asked to run many different distros in order to find distro
> specific incompatibilities and bugs. So ideally we wouldn't have two
> builders running the same distro and version in the same location.
> Sometimes when refreshing all of the builders at once we will install
> the same software on all of them to speed up the process. They were all
> openSUSE for awhile 2 years ago and they are all Fedora at the moment.
> In these cases, should they arise again, I would append a letter to
> distinguish the hostname.
>
> fedora20.osl.yoctoproject.org
> fedora20-a.osl.yoctoproject.org
> fedora20-b.osl.yoctoproject.org
> fedora20-c.osl.yoctoproject.org
>
>
>
>>
>> Cheers,
>> Paul
>>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

