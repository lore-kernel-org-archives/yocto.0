Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B7F0E006C9
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 14:22:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=fpyjqZ61jXkL0QYatZCUvvN4Zsk0t8rwMB+DFgTaIoc=; 
	b=hqRfoQBH6Z51mtqadFr8kKw9FBOAfTVkIcZGqvMeMOMXxwzhVVajhKts97FlrXSeaK8pYSDz6ThbamN59WhF4xozJmQbsljL2Nu31prIzKHcF4byICtVTE5auriHfJtE;
Received: from [109.224.129.17] (port=13259
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1TjHAV-00036P-4X; Thu, 13 Dec 2012 22:22:15 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <03D0A6FB83364ABF99FCB0481EA3EE0F@intel.com>
Date: Thu, 13 Dec 2012 22:22:13 +0000
Message-Id: <D082E3D9-189B-4C66-A272-F28BB743D309@keylevel.com>
References: <6D85911C-A82F-4029-A41E-D289D8050C79@keylevel.com>
	<03D0A6FB83364ABF99FCB0481EA3EE0F@intel.com>
To: Ross Burton <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: libva failing for mp4 using gstreamer under 'danny' with cedartrail BSP
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
X-List-Received-Date: Thu, 13 Dec 2012 22:22:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 13 Dec 2012, at 21:55, Ross Burton wrote:

> On Thursday, 13 December 2012 at 21:10, Chris Tapp wrote:
>> I've got an X application that uses gstreamer to capture frames from =
video files and display them using GLES textures.
>>=20
>> This works fine for webm and flv files, but if I try and use mp4 (or =
avi) then I get no frames. I'm not seeing any gstreamer errors, but the =
console shows:
>>=20
>> libva: VA_API version 0.32.1
>> libva: va_getDriverName() returns 0
>> libva: Trying to open /usr/lib/dri/pvr_drv_video.so
>> libva: va_openDriver() returns 0
>>=20
>> 1) I'm building under 'danny' for cedartrail with PVR.
>> 2) The pvr_drv_video.so file mentioned above exists.
>> 3) The same gstreamer pipeline works fine on my host build system.
>> 4) I'm fairly sure the required gstreamer plugins are present.
>=20
> To verify (4) which is obviously fairly important, can you confirm =
that a simple playbin will play the videos correctly on the CedarTrail?

Good catch. This shows there is no video/x-surface decoder available. =
Off to find which plugin I need...

I should have thought of trying that. Thanks! I'll have to find out why =
my gstreamer error handler isn't spotting the problem!


> It's possible that you've got some horrible GLES/VA interaction, =
specifically the download from VA-land to however you're getting the =
video into the textures.  Speaking of which, how are you getting from =
frames to textures?

I'm using appsink to give me access to the raw pixel data which I then =
glTexSubImage into a texture. I'm using appsink as I've got legacy code =
that uses it for an SDL app. I may try and switch to gstreamer GL plugin =
support when I find the best option ;-)

> Ross
>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




