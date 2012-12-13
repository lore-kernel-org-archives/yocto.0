Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89AC1E00348
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 14:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=XHPJ4mY+1vDR8a/PxldP5niDHJM8JPoJje65qrl8Wsc=; 
	b=VRnM4YLmjp/BjJA7wFQ/U0bhR0kppLQdaxIZuolg4DCWXEw9Vja2pzkRZdEx+xX/SG23gAlLzhbT73PSbH3BHn/kOc/gNzMvMS5tYESPxk2+BVJMp5j/udHxxAhrEiWN;
Received: from [109.224.129.17] (port=17677
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1TjHcE-00015O-G1; Thu, 13 Dec 2012 22:50:54 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <6E2C4456B0C04C20952CCD8694B0B56F@intel.com>
Date: Thu, 13 Dec 2012 22:50:52 +0000
Message-Id: <BDB77FD9-2563-4703-BFA8-707101CA366D@keylevel.com>
References: <6D85911C-A82F-4029-A41E-D289D8050C79@keylevel.com>
	<03D0A6FB83364ABF99FCB0481EA3EE0F@intel.com>
	<D082E3D9-189B-4C66-A272-F28BB743D309@keylevel.com>
	<6E2C4456B0C04C20952CCD8694B0B56F@intel.com>
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
X-List-Received-Date: Thu, 13 Dec 2012 22:50:56 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On 13 Dec 2012, at 22:38, Ross Burton wrote:

> On Thursday, 13 December 2012 at 22:22, Chris Tapp wrote:
>> Good catch. This shows there is no video/x-surface decoder available. =
Off to find which plugin I need...
>>=20
>> I should have thought of trying that. Thanks! I'll have to find out =
why my gstreamer error handler isn't spotting the problem!
> Yeah=85 that's a bug I meant to fix in danny-next but failed.  Install =
gst-plugins-xvimagesink (or something like that, not at my work machines =
right now).

Thanks, I'll give that a try.

>>> It's possible that you've got some horrible GLES/VA interaction, =
specifically the download from VA-land to however you're getting the =
video into the textures. Speaking of which, how are you getting from =
frames to textures?
>> I'm using appsink to give me access to the raw pixel data which I =
then glTexSubImage into a texture. I'm using appsink as I've got legacy =
code that uses it for an SDL app. I may try and switch to gstreamer GL =
plugin support when I find the best option ;-)
>=20
> There'll be a better way - gstreamer-gl is worth a look at if you can =
assume VAAPI you should be able to construct a fairly efficient vaapi-gl =
pipeline (with gstreamer 1.0 I believe you'll be able to get zero-copy)

I had a quick scan of that the other day and thought it looked like it =
would be worth a try. I'm hoping to be able to stick with the DN2800MT =
board for a while, so VAAPI will be available. Zero-copy would be really =
nice :-)

> Ross =20
>=20
>=20

Chris Tapp

opensource@keylevel.com
www.keylevel.com




